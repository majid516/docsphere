import 'package:docshpere/core/constants/app_theme/app_theme.dart';
import 'package:flutter/material.dart';

class CustomDropDownField extends StatefulWidget {
  final List<String> items;
  final String hintText;
  final String title;
  final String errorMessage;
  final TextEditingController controller;

  const CustomDropDownField({
    super.key,
    required this.items,
    required this.hintText,
    required this.title,
    required this.controller,
    required this.errorMessage,
  });

  @override
  _CustomDropDownFieldState createState() => _CustomDropDownFieldState();
}

class _CustomDropDownFieldState extends State<CustomDropDownField> {
  String? selectedValue;

  @override
  void initState() {
    super.initState();
    if (widget.items.contains(widget.controller.text)) {
      selectedValue = widget.controller.text;
    } else {
      selectedValue = null;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              RichText(
                text: TextSpan(
                  style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 20,
                      color: MyColors.blackColor),
                  text: widget.title,
                  children: [TextSpan(text: '*')],
                ),
              ),
            ],
          ),
          const SizedBox(height: 10),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            width: double.infinity,
            height: 50,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(5),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withValues(alpha: 0.3),
                  blurRadius: 2,
                  spreadRadius: 2,
                ),
              ],
            ),
            child: DropdownButtonHideUnderline(
              child: DropdownButton<String>(
                value: selectedValue,
                dropdownColor: Colors.white,
                hint: Text(
                  widget.hintText,
                  style: const TextStyle(
                    color: Colors.grey,
                    fontSize: 16,
                  ),
                ),
                icon: const Icon(Icons.arrow_drop_down, size: 24),
                isExpanded: true,
                items: widget.items.toSet().map((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(
                      value,
                      style: const TextStyle(
                        fontSize: 16,
                        color: Colors.black,
                      ),
                    ),
                  );
                }).toList(),
                onChanged: (newValue) {
                  setState(() {
                    selectedValue = newValue;
                    widget.controller.text = newValue!;
                  });
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
