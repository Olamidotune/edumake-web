String? validatePassword(String? value) {
  if (value == null) return 'Field cannot be empty';
  const pattern =
      r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,}$';
  if (!RegExp(pattern).hasMatch(value)) {
    return 'Password must contain:\n'
        '• At least 8 characters\n'
        '• 1 uppercase letter\n'
        '• 1 lowercase letter\n'
        '• 1 number\n'
        r'• 1 special character (!@#$&*~)';
  }
  return null;
}
