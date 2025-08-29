import 'package:flutter/services.dart';

import '../../enums/base_regex_enum.dart';
import 'base_input.dart';

class BaseNumberInput extends BaseInput {
  BaseNumberInput({
    super.key,
    required super.label,
    super.controller,
    super.onChanged,
    super.initialValue,
    super.readOnly,
    super.hint,
  }) : super(
         keyboardType: TextInputType.numberWithOptions(decimal: true),
         inputFormatters: [
           FilteringTextInputFormatter.allow(BaseRegexEnum.number.getRegex()),
         ],
       );
}
