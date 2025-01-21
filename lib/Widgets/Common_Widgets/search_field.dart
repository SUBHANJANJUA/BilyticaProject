import 'package:flutter/material.dart';

import '../../Constant/app_color.dart';

class SearchField extends StatelessWidget {
  const SearchField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        filled: true,
        fillColor: AppColor.white,
        prefixIcon: Icon(
          Icons.search,
          size: 30,
        ),
        hintText: 'Search',
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(40),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(40),
          borderSide: BorderSide(
            color: AppColor.white,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(40),
          borderSide: BorderSide(
            color: AppColor.white,
          ),
        ),
      ),
    );
  }
}
