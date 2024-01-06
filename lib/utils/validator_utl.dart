
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
    // You can add more specific validation rules for the password if needed.

  }
}