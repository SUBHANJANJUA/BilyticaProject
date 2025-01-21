import 'package:flutter/material.dart';

import '../../Constant/app_color.dart';

class HomeCard extends StatelessWidget {
  const HomeCard({
    super.key,
    required this.title,
    required this.dp,
    required this.name,
    required this.distence,
    required this.date,
    required this.time,
    required this.location,
  });
  final String title;
  final String dp;
  final String name;
  final String distence;
  final String date;
  final String time;
  final String location;
  @override
  Widget build(BuildContext context) {
    return Container(
      //height: 250,
      width: double.infinity,
      decoration: BoxDecoration(
          color: AppColor.lightGrey, borderRadius: BorderRadius.circular(20)),
      child: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Icon(
                      Icons.calendar_month_sharp,
                      color: AppColor.primary,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      title,
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 16,
                      ),
                    )
                  ],
                ),
                Icon(Icons.more_horiz_rounded)
              ],
            ),
            Divider(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    CircleAvatar(
                      radius: 25,
                      backgroundColor: AppColor.primary,
                      //  child: Image.asset(dp),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          name,
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 14,
                          ),
                        ),
                        SizedBox(
                          height: 3,
                        ),
                        Text(
                          distence,
                          style: TextStyle(fontSize: 13, color: AppColor.grey),
                        ),
                      ],
                    )
                  ],
                ),
                Row(
                  children: [
                    Icon(
                      Icons.message_outlined,
                      color: AppColor.primary,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Icon(
                      Icons.call,
                      color: AppColor.primary,
                    ),
                  ],
                )
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  spacing: 10,
                  children: [
                    Row(
                      children: [
                        Icon(Icons.calendar_month),
                        SizedBox(
                          width: 10,
                        ),
                        Text("Date")
                      ],
                    ),
                    GeneralText(
                      text: date,
                    ),
                    GeneralText(
                      text: time,
                    )
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: Container(
                    width: 1,
                    height: 80,
                    color: AppColor.grey,
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  spacing: 10,
                  children: [
                    Row(
                      children: [
                        Icon(Icons.location_on_outlined),
                        SizedBox(
                          width: 10,
                        ),
                        Text("Location")
                      ],
                    ),
                    GeneralText(
                      text: location,
                    ),
                  ],
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

class GeneralText extends StatelessWidget {
  const GeneralText({
    super.key,
    required this.text,
  });
  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(fontWeight: FontWeight.w600, fontSize: 14),
    );
  }
}
