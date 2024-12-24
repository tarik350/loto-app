mixin RegisterValidator {
  String? validatePhoneNumber(String? phoneNumber) {
    if (phoneNumber == null || phoneNumber.isEmpty) {
      return "Phone number is required";
    }
    if (phoneNumber.length != 9) {
      return "Phone number must be 9 digits";
    }
    if (!RegExp(r'^[0-9]+$').hasMatch(phoneNumber)) {
      return "Phone number can only contain numbers";
    }
    if (!phoneNumber.startsWith('9') && !phoneNumber.startsWith('7')) {
      return "Phone number must start with 9 or 7";
    }
    return null;
  }

  String? validatePassword(String? password) {
    if (password == null || password.isEmpty) {
      return "Password is required";
    }
    if (password.length < 8) {
      return "Password must be at least 8 characters long";
    }

    return null;
  }

  String? validateFullName(String? fullName) {
    if (fullName == null || fullName.isEmpty) {
      return "Full name is required";
    }
    return null;
  }
}
