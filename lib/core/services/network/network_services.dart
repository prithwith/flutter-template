import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_template/core/services/network/nointernet_connection_page.dart';
import 'package:flutter_template/screens/splash/shared/provider.dart';

class NetworkServices extends ConsumerWidget {
  final Widget child;

  const NetworkServices({super.key, required this.child});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(splashNotifierProvider);
    final String? currentRoute = ModalRoute.of(context)?.settings.name;

    if (currentRoute == '/') {
      return child;
    }

    if (state.isHasInternetLoading) {
      return child;
    }

    if (!state.hasInternet) {
      return const NointernetConnectionPage();
    }

    return child;
  }
}
