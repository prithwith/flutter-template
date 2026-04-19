String? validatePassword(String password) {
  if (password.trim().isEmpty) {
    return 'Password field is required';
  } else if (password.length < 8) {
    return 'Password should contain minimum 8 characters';
  } else if (RegExp(r'[A-Z]').hasMatch(password) == false) {
    return 'Password should have at least 1 uppercase letter';
  } else if (RegExp(r'[a-z]').hasMatch(password) == false) {
    return 'Password should have at least 1 lowercase letter';
  } else if (RegExp(r'[0-9]').hasMatch(password) == false) {
    return 'Password should contain at least 1 digit';
  } else if (RegExp(r'[!@#$%^&*(),.?":{}|<>]').hasMatch(password) == false) {
    return 'Password should contain at least 1 special character';
  }

  return null;
}

String? validateEmail(String email) {
  if (email.trim().isEmpty) {
    return 'Email cannot be empty';
  } else if (RegExp(
        r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+",
      ).hasMatch(email) ==
      false) {
    return 'Invalid email format';
  }

  return null;
}

String? validateMobileNumber(String number) {
  if (number.trim().isEmpty) {
    return 'Mobile number is required';
  } else if (RegExp(r'^[0-9]{10}$').hasMatch(number) == false) {
    return 'Enter a valid 10-digit mobile number';
  }

  return null;
}

bool? isImageFile(String path) {
  const imageExtensions = ['jpg', 'jpeg', 'png', 'gif', 'bmp', 'webp', 'tiff'];

  final extension = path.split('.').last.toLowerCase();

  return imageExtensions.contains(extension);
}

bool? isTodayOrPast(DateTime date) {
  DateTime now = DateTime.now();
  DateTime today = DateTime(now.year, now.month, now.day);
  DateTime givenDate = DateTime(date.year, date.month, date.day);

  return givenDate.isBefore(today) || givenDate.isAtSameMomentAs(today);
}

String? validateUrl({
  required String url,
  bool platformInstagram = false,
  bool platformFacebook = false,
  bool platformTwitter = false,
  bool platformLinkedin = false,
  bool platformGithub = false,
  bool platformPortfolio = false,
}) {
  if (url.trim().isEmpty) {
    return 'URL field is required';
  }

  final value = url.trim();

  if (platformInstagram) {
    if (!RegExp(r'^https?:\/\/(www\.)?instagram\.com\/.+$').hasMatch(value)) {
      return 'Enter a valid Instagram profile URL';
    }
  } else if (platformFacebook) {
    if (!RegExp(
      r'^https?:\/\/(www\.)?(facebook|m\.facebook)\.com\/.+$',
    ).hasMatch(value)) {
      return 'Enter a valid Facebook profile URL';
    }
  } else if (platformTwitter) {
    if (!RegExp(r'^https?:\/\/(www\.)?(twitter|x)\.com\/.+$').hasMatch(value)) {
      return 'Enter a valid Twitter/X profile URL';
    }
  } else if (platformLinkedin) {
    if (!RegExp(
      r'^https?:\/\/(www\.)?linkedin\.com\/in\/.+$',
    ).hasMatch(value)) {
      return 'Enter a valid LinkedIn profile URL';
    }
  } else if (platformGithub) {
    if (!RegExp(r'^https?:\/\/(www\.)?github\.com\/.+$').hasMatch(value)) {
      return 'Enter a valid GitHub profile URL';
    }
  } else if (platformPortfolio) {
    if (!RegExp(r'^https?:\/\/.+\..+$').hasMatch(value)) {
      return 'Enter a valid portfolio website URL';
    }
  }

  return null;
}
