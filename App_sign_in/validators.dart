

abstract class StringValidators {
  bool isValid(String value);
}

class NonEmptyStringValidator implements StringValidators{
  @override
  bool isValid(String value) {
    return value.isNotEmpty;
  }
}

class EmailAndPasswordValidators {
  final StringValidators emailValidator = NonEmptyStringValidator();
  final StringValidators passwordValidator = NonEmptyStringValidator();
  final String invalidEmailErrorText = 'Email can\'t be empty';
  final String invalidPasswordErrorText = 'Password can\'t be empty';
}