import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:form_builder_validators/form_builder_validators.dart';

import 'defText.dart';

class DefaultDropDown extends StatelessWidget {
  final String paramName;
  final List listItem;
  const DefaultDropDown({
    required this.listItem,
    required this.paramName,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FormBuilderDropdown(
      name: "groupAccount",
      decoration: InputDecoration(
        label: DefText("Group Category").semiLarge,
      ),
      validator: FormBuilderValidators.compose([
        (val) {
          return val == null ? "Field is empty" : null;
        },
        FormBuilderValidators.required(context),
      ]),
      items: listItem
          .map((item) => DropdownMenuItem<String>(
                value: item.toString(),
                child: Text(
                  item["$paramName"]!,
                  style: const TextStyle(
                    fontSize: 14,
                  ),
                ),
              ))
          .toList(),
    );
  }
}
