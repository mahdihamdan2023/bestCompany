import 'package:best_comapny/constants/color_app.dart';
import 'package:flutter/material.dart';

class SearchTextField extends StatelessWidget {
  const SearchTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: TextFormField(
        decoration: const InputDecoration(
          border: UnderlineInputBorder(
            borderSide: BorderSide(color: ColorsApp.whiteColor),
          ),
          enabledBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: ColorsApp.whiteColor),
          ),
          focusedBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: ColorsApp.whiteColor),
          ),
          suffixIcon: Icon(
            Icons.search,
            color: ColorsApp.whiteColor,
          ),
          hintText: "Search",
          hintStyle: TextStyle(color: ColorsApp.whiteColor),
        ),
        cursorColor: ColorsApp.whiteColor,
        style: const TextStyle(color: ColorsApp.whiteColor),
      ),
    );
  }
}
