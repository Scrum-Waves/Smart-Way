import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:gap/gap.dart';
import 'package:ticket_booking/utils/app_layout.dart';
import 'package:ticket_booking/utils/app_styles.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);

    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: SafeArea(
        child: ListView(
          padding: EdgeInsets.symmetric(
              horizontal: AppLayout.getWidth(20, context),
              vertical: AppLayout.getHeight(20, context)),
          children: [
            Gap(AppLayout.getHeight(40, context)),
            Text("What are\nyou looking for?",
                style: Styles.headLineStyle1
                    .copyWith(fontSize: AppLayout.getHeight(35, context))),
            Gap(AppLayout.getHeight(40, context)),
            Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(
                      Radius.circular(AppLayout.getHeight(50, context))),
                  color: const Color(0xFFF4F6FD)),
              child: Row(
                children: [
                  Container(
                      width: size.width * 0.44,
                      padding: EdgeInsets.symmetric(
                          vertical: AppLayout.getHeight(17, context)),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(
                              AppLayout.getHeight(50, context))),
                          color: Colors.white),
                      child: Center(
                        child: Text(
                          "Nearby trips",
                          style: Styles.headLineStyle4
                              .copyWith(color: Colors.black),
                        ),
                      )),
                  Container(
                      width: size.width * 0.44,
                      padding: EdgeInsets.symmetric(
                          vertical: AppLayout.getHeight(17, context)),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(
                            Radius.circular(AppLayout.getHeight(50, context))),
                      ),
                      child: Center(
                        child: Text(
                          "Long trips",
                          style: Styles.headLineStyle4
                              .copyWith(color: Colors.grey),
                        ),
                      ))
                ],
              ),
            ),
            Gap(AppLayout.getHeight(20, context)),
            Container(
              padding: EdgeInsets.all(AppLayout.getHeight(15, context)),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(
                      Radius.circular(AppLayout.getHeight(15, context)))),
              child: Row(
                children: [
                  const Icon(Icons.bus_alert),
                  Gap(AppLayout.getWidth(10, context)),
                  Text(
                    "Departure",
                    style: Styles.headLineStyle3.copyWith(color: Colors.black),
                  )
                ],
              ),
            ),
            Gap(AppLayout.getHeight(15, context)),
            Container(
              padding: EdgeInsets.all(AppLayout.getHeight(15, context)),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(
                      Radius.circular(AppLayout.getHeight(15, context)))),
              child: Row(
                children: [
                  const Icon(Icons.directions_bus),
                  Gap(AppLayout.getWidth(10, context)),
                  Text(
                    "Arrival",
                    style: Styles.headLineStyle3.copyWith(color: Colors.black),
                  )
                ],
              ),
            ),
            Gap(AppLayout.getHeight(30, context)),
            //ticket btn
            InkWell(
              onTap: () {
                Fluttertoast.showToast(
                    msg: "Find Tickets", toastLength: Toast.LENGTH_SHORT);
              },
              child: Container(
                padding: EdgeInsets.all(AppLayout.getHeight(20, context)),
                decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.all(
                        Radius.circular(AppLayout.getHeight(15, context)))),
                child: Center(
                    child: Text(
                  "Find Tickets",
                  style: Styles.headLineStyle3.copyWith(color: Colors.white),
                )),
              ),
            ),
            Gap(AppLayout.getHeight(30, context)),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Upcoming Trips",
                    style: Styles.headLineStyle2.copyWith(color: Colors.black)),
                Text(
                  "View all",
                  style: Styles.headLineStyle3,
                )
              ],
            ),
            Gap(AppLayout.getHeight(30, context)),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: AppLayout.getHeight(400, context),
                  padding: EdgeInsets.all(AppLayout.getHeight(15, context)),
                  width: size.width * 0.42,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(
                          Radius.circular(AppLayout.getHeight(15, context)))),
                  child: Column(
                    children: [
                      Container(
                        height: AppLayout.getHeight(190, context),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(
                                AppLayout.getHeight(12, context)),
                            image: const DecorationImage(
                                fit: BoxFit.cover,
                                image: AssetImage("assets/images/sit.jpg"))),
                      ),
                      Gap(AppLayout.getHeight(8, context)),
                      Text(
                        "20% discount on 1st class tickets from Sfax",
                        style:
                            Styles.headLineStyle2.copyWith(color: Colors.black),
                      )
                    ],
                  ),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Stack(
                      children: [
                        Container(
                          height: AppLayout.getHeight(200, context),
                          width: size.width * 0.44,
                          padding:
                              EdgeInsets.all(AppLayout.getHeight(15, context)),
                          decoration: BoxDecoration(
                              color: const Color(0xFF3ABBBB),
                              borderRadius: BorderRadius.all(Radius.circular(
                                  AppLayout.getHeight(15, context)))),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Discount \nfor survey",
                                style: Styles.headLineStyle2
                                    .copyWith(color: Colors.white),
                              ),
                              Gap(AppLayout.getHeight(8, context)),
                              Text(
                                "Take the survey\nto get discount",
                                style: Styles.headLineStyle2.copyWith(
                                    color: Colors.white,
                                    fontWeight: FontWeight.normal),
                              )
                            ],
                          ),
                        ),
                        Positioned(
                          right: -40,
                          top: -20,
                          child: Container(
                            padding: EdgeInsets.all(
                                AppLayout.getHeight(25, context)),
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                border: Border.all(
                                    width: 18, color: const Color(0xFF189999))),
                          ),
                        )
                      ],
                    ),
                    Gap(AppLayout.getHeight(15, context)),
                    Stack(
                      children: [
                        Container(
                          height: AppLayout.getHeight(200, context),
                          width: size.width * 0.44,
                          padding:
                              EdgeInsets.all(AppLayout.getHeight(15, context)),
                          decoration: BoxDecoration(
                              color: Colors.deepOrange,
                              borderRadius: BorderRadius.all(Radius.circular(
                                  AppLayout.getHeight(15, context)))),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "We should \nimprove?",
                                style: Styles.headLineStyle2
                                    .copyWith(color: Colors.white),
                              ),
                              Gap(AppLayout.getHeight(8, context)),
                              Text(
                                "Feel free to tell us what we need.",
                                style: Styles.headLineStyle2.copyWith(
                                    color: Colors.white,
                                    fontWeight: FontWeight.normal),
                              )
                            ],
                          ),
                        ),
                        Positioned(
                          right: -40,
                          top: -20,
                          child: Container(
                            padding: EdgeInsets.all(
                                AppLayout.getHeight(25, context)),
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                border: Border.all(
                                    width: 18, color: Colors.deepOrangeAccent)),
                          ),
                        )
                      ],
                    )
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
