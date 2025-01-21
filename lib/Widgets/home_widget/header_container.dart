import 'package:flutter/material.dart';

import '../../Constant/app_color.dart';
import '../Common_Widgets/search_field.dart';

class HeaderContainer extends StatelessWidget {
  const HeaderContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      //  height: 120,
      width: double.infinity,
      decoration: BoxDecoration(
          color: AppColor.primary, borderRadius: BorderRadius.circular(20)),
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Icon(
                  Icons.arrow_back,
                  color: AppColor.white,
                ),
                Text("Dating List",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      color: AppColor.white,
                    )),
                SizedBox(
                  width: 20,
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            SearchField(),
          ],
        ),
      ),
    );
  }
}
