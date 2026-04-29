import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_template/core/model/user_model.dart';
import 'package:flutter_template/core/styles/app_colors.dart';
import 'package:flutter_template/core/styles/app_text_style.dart';
import 'package:flutter_template/screens/base/shared/providers.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';

class UsersPage extends ConsumerStatefulWidget {
  const UsersPage({super.key});

  @override
  ConsumerState<UsersPage> createState() => _UsersPageState();
}

class _UsersPageState extends ConsumerState<UsersPage> {
  final RefreshController _refreshController = RefreshController();

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _loadUsers();
    });
  }

  @override
  void dispose() {
    _refreshController.dispose();
    super.dispose();
  }

  Future<void> _loadUsers() async {
    final notifier = ref.read(baseNotifierProvider.notifier);
    await notifier.fetchAllUsers(refreshController: _refreshController);
  }

  Future<void> _loadMore() async {
    final notifier = ref.read(baseNotifierProvider.notifier);
    await notifier.fetchAllUsers(
      loadMore: true,
      refreshController: _refreshController,
    );
  }

  Future<void> _refresh() async {
    ref.read(baseNotifierProvider.notifier);

    await _loadUsers();
  }

  @override
  Widget build(BuildContext context) {
    final state = ref.watch(baseNotifierProvider);
    final users = state.usersList;

    return Scaffold(
      backgroundColor: AppColors.colorBackground,
      appBar: AppBar(
        backgroundColor: AppColors.colorPrimary,
        title: Text(
          'Users (${state.totalUsersCount})',
          style: AppTextStyles.textStylePoppinsBold.copyWith(
            color: AppColors.colorWhite,
            fontSize: 18.sp,
          ),
        ),
        actions: [
          if (state.isfetchUsersLoading)
            Padding(
              padding: EdgeInsets.only(right: 16.w),
              child: SizedBox(
                width: 20.w,
                height: 20.w,
                child: CircularProgressIndicator(
                  color: AppColors.colorWhite,
                  strokeWidth: 2,
                ),
              ),
            ),
        ],
      ),
      body: SmartRefresher(
        controller: _refreshController,
        enablePullDown: true,
        enablePullUp: true,
        onRefresh: _refresh,
        onLoading: _loadMore,
        child: users.isEmpty && !state.isfetchUsersLoading
            ? _buildEmptyState()
            : ListView.builder(
                padding: EdgeInsets.all(16.w),
                itemCount: users.length,
                itemBuilder: (context, index) {
                  final user = users[index];
                  return _UserCard(user: user, index: index);
                },
              ),
      ),
    );
  }

  Widget _buildEmptyState() {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(Icons.people_outline, size: 64.w, color: AppColors.colorGrey),
          SizedBox(height: 16.h),
          Text(
            'No users found',
            style: AppTextStyles.textStylePoppinsMedium.copyWith(
              fontSize: 16.sp,
              color: AppColors.colorGrey,
            ),
          ),
          SizedBox(height: 8.h),
          Text(
            'Pull down to refresh',
            style: AppTextStyles.textStylePoppinsRegular.copyWith(
              fontSize: 12.sp,
              color: AppColors.colorGrey,
            ),
          ),
        ],
      ),
    );
  }
}

class _UserCard extends StatelessWidget {
  final UserModel user;
  final int index;

  const _UserCard({required this.user, required this.index});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 12.h),
      padding: EdgeInsets.all(16.w),
      decoration: BoxDecoration(
        color: AppColors.colorWhite,
        borderRadius: BorderRadius.circular(12.r),
        boxShadow: [
          BoxShadow(
            color: AppColors.colorBlack.withOpacity(0.05),
            blurRadius: 8,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Row(
        children: [
          _buildAvatar(),
          SizedBox(width: 12.w),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  _getUserName(),
                  style: AppTextStyles.textStylePoppinsBold.copyWith(
                    fontSize: 14.sp,
                    color: AppColors.colorBlack,
                  ),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
                SizedBox(height: 4.h),
                if (user.primaryEmail != null)
                  Text(
                    user.primaryEmail!,
                    style: AppTextStyles.textStylePoppinsRegular.copyWith(
                      fontSize: 12.sp,
                      color: AppColors.colorGrey,
                    ),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                SizedBox(height: 4.h),
                Row(
                  children: [
                    _buildRoleChip(),
                    if (user.activationStatus != null) ...[
                      SizedBox(width: 8.w),
                      _buildStatusChip(),
                    ],
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildAvatar() {
    final avatarUrl = user.avater;
    final initials = _getInitials();

    return Container(
      width: 48.w,
      height: 48.w,
      decoration: BoxDecoration(
        color: AppColors.colorPrimary.withOpacity(0.1),
        borderRadius: BorderRadius.circular(24.r),
      ),
      child: avatarUrl != null && avatarUrl.isNotEmpty
          ? ClipRRect(
              borderRadius: BorderRadius.circular(24.r),
              child: Image.network(
                avatarUrl,
                width: 48.w,
                height: 48.w,
                fit: BoxFit.cover,
                errorBuilder: (_, __, ___) => _buildInitials(initials),
              ),
            )
          : _buildInitials(initials),
    );
  }

  Widget _buildInitials(String initials) {
    return Center(
      child: Text(
        initials,
        style: AppTextStyles.textStylePoppinsBold.copyWith(
          fontSize: 16.sp,
          color: AppColors.colorPrimary,
        ),
      ),
    );
  }

  Widget _buildRoleChip() {
    final role = user.userRole ?? 'User';
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 4.h),
      decoration: BoxDecoration(
        color: _getRoleColor().withOpacity(0.1),
        borderRadius: BorderRadius.circular(4.r),
      ),
      child: Text(
        role.toUpperCase(),
        style: AppTextStyles.textStylePoppinsMedium.copyWith(
          fontSize: 10.sp,
          color: _getRoleColor(),
        ),
      ),
    );
  }

  Widget _buildStatusChip() {
    final isActive = user.activationStatus?.toLowerCase() == 'active';
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 4.h),
      decoration: BoxDecoration(
        color: isActive
            ? Colors.green.withOpacity(0.1)
            : Colors.red.withOpacity(0.1),
        borderRadius: BorderRadius.circular(4.r),
      ),
      child: Text(
        (user.activationStatus ?? 'Inactive').toUpperCase(),
        style: AppTextStyles.textStylePoppinsMedium.copyWith(
          fontSize: 10.sp,
          color: isActive ? Colors.green : Colors.red,
        ),
      ),
    );
  }

  String _getUserName() {
    final firstName = user.firstName ?? '';
    final lastName = user.lastName ?? '';
    final name = '$firstName $lastName'.trim();
    return name.isNotEmpty ? name : 'User ${index + 1}';
  }

  String _getInitials() {
    final firstName = user.firstName ?? '';
    final lastName = user.lastName ?? '';
    final first = firstName.isNotEmpty ? firstName[0] : '';
    final last = lastName.isNotEmpty ? lastName[0] : '';
    return '$first$last'.toUpperCase().isNotEmpty
        ? '$first$last'.toUpperCase()
        : 'U';
  }

  Color _getRoleColor() {
    switch (user.userRole?.toLowerCase()) {
      case 'admin':
        return Colors.purple;
      case 'manager':
        return Colors.orange;
      case 'user':
      default:
        return AppColors.colorPrimary;
    }
  }
}
