import 'package:flutter/material.dart';

class SearchInput extends StatelessWidget {
  String label;
  TextEditingController controller;
  IconData icon;
  SearchInput({
    Key? key,
    required this.label,
    required this.controller,
    this.icon = Icons.search_rounded,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.07,
      margin: EdgeInsets.symmetric(
          horizontal: MediaQuery.of(context).size.width * 0.02),
      decoration: BoxDecoration(
          color: Colors.grey[100],
          borderRadius: const BorderRadius.all(Radius.circular(10))),
      child: TextFormField(
        textAlignVertical: TextAlignVertical.center,
        controller: controller,
        textInputAction: TextInputAction.search,
        decoration: InputDecoration(
          hintText: label,
          border: const OutlineInputBorder(),
          enabledBorder: borderStyle(),
          focusedBorder: borderStyle(),
          disabledBorder: borderStyle(),
          hintStyle: const TextStyle(color: Colors.black54, fontSize: 16),
          prefixIcon: Icon(
            icon,
          ),
        ),
      ),
    );
  }

  InputBorder borderStyle() {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(10.0),
      borderSide: const BorderSide(color: Colors.transparent),
    );
  }
}
