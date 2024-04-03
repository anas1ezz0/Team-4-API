String? validatorFunction({required String value, required String? text}) {
  if (value.isEmpty) {
    return "please enter your $text";
  }
}

String? passConfirmValidatorFunction(
    {required String value,
    required String? text,
    required String passControllerText,
    required String confirmPassControllerText}) {
  if (value.isEmpty) {
    return "please enter your $text";
  } else if (confirmPassControllerText != passControllerText) {
    return "Password doesn't match ";
  }
  return null;
}
