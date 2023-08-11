import 'package:flutter_form_builder/flutter_form_builder.dart';

class CustomFormValidators {
  /// Validates whether the given value matches the value of a specified field.
  ///
  /// This validator is typically used for confirming password fields.
  ///
  /// - [val]: The value to be validated, usually the confirmation field's value.
  /// - [state]: The current state of the `FormBuilder` holding the form fields.
  /// - [field]: The name of the field to compare the value with, usually the password field.
  /// - [error]: An optional custom error message to display if the fields do not match.
  ///            If not provided, a default error message is used.
  ///
  /// Returns `null` if the values match, or an error message if they do not.
  static String? matchWithField(val, FormBuilderState? state, String field,
      {String? error}) {
    final password = state?.fields['password']?.value;
    if (val != password) {
      return error ?? 'Fields do not match';
    }
    return null;
  }
}
