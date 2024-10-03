import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SearchForm extends StatelessWidget {
  const SearchForm({
    super.key,
    this.formKey,
    this.isEnabled = true,
    this.onSaved,
    this.validator,
    this.onChanged,
    this.onTabFilter,
    this.onFieldSubmitted,
    this.focusNode,
    this.autofocus = false,
  });
  final GlobalKey<FormState>? formKey;
  final bool isEnabled;
  final ValueChanged<String?>? onSaved, onChanged, onFieldSubmitted;
  final FormFieldValidator<String>? validator;
  final VoidCallback? onTabFilter;
  final FocusNode? focusNode;
  final bool autofocus;
  @override
  Widget build(BuildContext context) {
    return Form(
      child: TextField(
        autofocus: autofocus,
        focusNode: focusNode,
        enabled: isEnabled,
        onChanged: onChanged,
        // onSaved: onSaved,
        onSubmitted: onFieldSubmitted,
        textInputAction: TextInputAction.search,
        decoration: InputDecoration(
            hintText: 'Find Something....',
            filled: false,
            // border: secondaryOut
            prefixIcon: Padding(
              padding: const EdgeInsets.all(5),
              child: SvgPicture.asset(
                "assets/icons/Search.svg",
                height: 24,
                color: Colors.black,
              ),
            ),
            suffixIcon: SizedBox(
              width: 40,
              child: Row(
                children: [
                  const SizedBox(
                    height: 24,
                    child: VerticalDivider(
                      width: 1,
                    ),
                  ),
                  Expanded(
                      child: IconButton(
                          onPressed: onTabFilter,
                          icon: SvgPicture.asset(
                            "assets/icons/Filter.svg",
                            height: 24,
                            color: Colors.black,
                          )))
                ],
              ),
            )),
      ),
    );
  }
}
