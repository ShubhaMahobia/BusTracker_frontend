class SignUpEmailPasswordFailure {
  final String message;
  const SignUpEmailPasswordFailure([this.message = 'An unknow error occured']);

  factory SignUpEmailPasswordFailure.code(String code) {
    switch (code) {
      case 'weak-password':
        return const SignUpEmailPasswordFailure(
            'Please enter the strong password.');
      case 'invalid-email':
        return const SignUpEmailPasswordFailure('Please enter a valid email');
      default:
        return const SignUpEmailPasswordFailure();
    }
  }
}
