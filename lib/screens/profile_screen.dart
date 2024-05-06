import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:gap/gap.dart';
import 'package:ticket_booking/utils/app_layout.dart';
import 'package:ticket_booking/utils/app_styles.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: SafeArea(
        child: ListView(
          padding: EdgeInsets.only(
              left: AppLayout.getWidth(20, context),
              right: AppLayout.getWidth(20, context),
              top: AppLayout.getWidth(30, context)),
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                    width: AppLayout.getWidth(100, context),
                    height: AppLayout.getWidth(100, context),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(
                          Radius.circular(AppLayout.getHeight(20, context))),
                      color: Colors.white,
                      image: const DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage("assets/images/img_1.jpg")),
                    )),
                Gap(AppLayout.getWidth(8, context)),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Book Tickets",
                        style: Styles.headLineStyle1
                            .copyWith(color: Colors.black)),
                    Text(
                      "Sfax",
                      style: Styles.headLineStyle4,
                    ),
                    Gap(AppLayout.getHeight(8, context)),
                    Container(
                      padding: EdgeInsets.only(
                          left: AppLayout.getWidth(3, context),
                          right: AppLayout.getWidth(10, context),
                          top: AppLayout.getWidth(1, context),
                          bottom: AppLayout.getWidth(1, context)),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(Radius.circular(
                              AppLayout.getHeight(50, context)))),
                      child: Row(
                        children: [
                          Container(
                            padding:
                                EdgeInsets.all(AppLayout.getHeight(5, context)),
                            decoration: BoxDecoration(
                                color: Colors.deepPurple,
                                borderRadius: BorderRadius.circular(50)),
                            child: const Icon(
                              Icons.shield,
                              color: Colors.white,
                            ),
                          ),
                          Gap(AppLayout.getHeight(5, context)),
                          const Text(
                            "Premium Status",
                            style: TextStyle(
                                color: Colors.deepPurple,
                                fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                    ),
                    Gap(AppLayout.getHeight(30, context)),
                  ],
                ),
              ],
            ),
            Stack(
              children: [
                Container(
                  padding: EdgeInsets.all(AppLayout.getHeight(20, context)),
                  decoration: BoxDecoration(
                      color: Colors.deepPurpleAccent,
                      borderRadius: BorderRadius.all(
                          Radius.circular(AppLayout.getHeight(20, context)))),
                  child: Row(
                    children: [
                      Container(
                        padding:
                            EdgeInsets.all(AppLayout.getHeight(18, context)),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(
                                AppLayout.getWidth(50, context))),
                        child: Icon(
                          Icons.lightbulb,
                          color: Colors.deepPurple,
                        ),
                      ),
                      Gap(AppLayout.getWidth(15, context)),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "You got an award",
                            style: Styles.headLineStyle1
                                .copyWith(color: Colors.white),
                          ),
                          Text(
                            "You have 920 trips in a year",
                            style: Styles.headLineStyle3
                                .copyWith(color: Colors.white),
                          )
                        ],
                      )
                    ],
                  ),
                ),
                Positioned(
                  top: AppLayout.getHeight(-50, context),
                  right: AppLayout.getHeight(-28, context),
                  child: Container(
                    padding: EdgeInsets.all(AppLayout.getHeight(30, context)),
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(
                            color: Colors.purpleAccent,
                            width: AppLayout.getWidth(15, context))),
                  ),
                )
              ],
            ),
            Gap(AppLayout.getHeight(30, context)),
            Text(
              "Accumulated Miles",
              style: Styles.headLineStyle2.copyWith(color: Colors.black),
            ),
            Gap(AppLayout.getHeight(40, context)),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Text(
                  "6420",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 50,
                      fontWeight: FontWeight.bold),
                )
              ],
            ),
            Gap(AppLayout.getHeight(20, context)),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Miles accrued",
                  style: Styles.headLineStyle3,
                ),
                Text(
                  "20 May 2024",
                  style: Styles.headLineStyle3,
                ),
              ],
            ),
            Gap(AppLayout.getHeight(10, context)),
            const Divider(),
            Gap(AppLayout.getHeight(10, context)),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "20 945",
                  style: Styles.headLineStyle3.copyWith(color: Colors.black),
                ),
                Text(
                  "SNCFT",
                  style: Styles.headLineStyle3.copyWith(color: Colors.black),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Miles", style: Styles.headLineStyle3),
                Text("Received from", style: Styles.headLineStyle3),
              ],
            ),
            Gap(AppLayout.getHeight(10, context)),
            const Divider(),
            Gap(AppLayout.getHeight(10, context)),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "20",
                  style: Styles.headLineStyle3.copyWith(color: Colors.black),
                ),
                Text(
                  "Yoyo",
                  style: Styles.headLineStyle3.copyWith(color: Colors.black),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Miles", style: Styles.headLineStyle3),
                Text("Received from", style: Styles.headLineStyle3),
              ],
            ),
            Gap(AppLayout.getHeight(10, context)),
            const Divider(),
            Gap(AppLayout.getHeight(10, context)),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "2 320",
                  style: Styles.headLineStyle3.copyWith(color: Colors.black),
                ),
                Text(
                  "SORETRAS",
                  style: Styles.headLineStyle3.copyWith(color: Colors.black),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Miles", style: Styles.headLineStyle3),
                Text("Received from", style: Styles.headLineStyle3),
              ],
            ),
            Gap(AppLayout.getHeight(30, context)),
            InkWell(
              onTap: () {
                Fluttertoast.showToast(
                    msg: "More miles", toastLength: Toast.LENGTH_SHORT);
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "How to get more miles ?",
                    style: Styles.headLineStyle3
                        .copyWith(color: Colors.deepPurpleAccent),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
