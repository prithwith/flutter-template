abstract class ApiEndpoints {
  ApiEndpoints._();

  static const String signUp = "signup";
  static const String signUpVerification = "signup/verification";
  static const String signIn = "signin";

  static const String logout = "auth/logout";

  static const String resetPassword = "reset/own/password";
  static const String changePassword = "change/own/password";

  static const String userDetails = "own/details";
  static const String storeDeviceToken = "store/own/devicetoken";
  static const String updateProfile = "update/profile";
  static const String uploadUserAssets = "update/resume/avaters";

  static const String fetchAllUsers = "users";
}
