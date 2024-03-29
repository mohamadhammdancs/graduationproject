class ValidatorUtil {
  static String? validateUsername(String? username) {
    if (username == null || username.isEmpty) {
      return 'Username is required';
    }
    // You can add more specific validation rules for the username if needed.
    return null;
  }

  static String? validatePassword(String? password) {
    if (password == null || password.isEmpty) {
      return 'Password is required';
    }

    if (password.length < 3) {
      return 'Password is too short !! ';
    }

    return null;
    // You can add more specific validation rules for the password if needed.
  }

  static String? validateEmail(String? email) {
    if (email == null || email.isEmpty) {
      return 'Email is required';
    }

    if (!email.contains("@")) {
      return 'Not Valid Email !! ';
    }
    return null;
    // You can add more specific validation rules for the password if needed.
  }

  static String? validateFullName(String? fullname) {
    if (fullname == null || fullname.isEmpty) {
      return 'Full Name is required';
    }
    return null;
    // You can add more specific validation rules for the password if needed.
  }
}
