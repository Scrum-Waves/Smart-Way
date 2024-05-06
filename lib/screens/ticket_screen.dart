import 'package:barcode_widget/barcode_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import '../utils/app_layout.dart';
import '../utils/app_styles.dart';
import '../widgets/circle_shape.dart';

class TicketScreen extends StatelessWidget {
  const TicketScreen({Key? key}) : super(key: key);

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
            Text("Tickets",
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
                          "Upcoming",
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
                          "Previous",
                          style: Styles.headLineStyle4
                              .copyWith(color: Colors.grey),
                        ),
                      ))
                ],
              ),
            ),

            Gap(AppLayout.getHeight(18, context)),
            //tickets-----------------

            Container(
                margin: EdgeInsets.all(AppLayout.getHeight(10, context)),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(
                        Radius.circular(AppLayout.getHeight(20, context)))),
                child: Column(
                  children: [
                    Column(
                      children: [
                        Container(
                          padding:
                              EdgeInsets.all(AppLayout.getHeight(15, context)),
                          child: Row(
                            children: [
                              Text("Sfax",
                                  style: Styles.headLineStyle3
                                      .copyWith(color: Colors.black)),
                              const Spacer(),
                              RoundShape(
                                shapeColor: Colors.blue,
                              ),
                              Expanded(
                                  child: Stack(
                                children: [
                                  SizedBox(
                                    height: AppLayout.getHeight(24, context),
                                    child: LayoutBuilder(
                                      builder: (BuildContext buildContext,
                                          BoxConstraints boxConstrains) {
                                        return Flex(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          direction: Axis.horizontal,
                                          mainAxisSize: MainAxisSize.max,
                                          children: List.generate(
                                              (boxConstrains.constrainWidth() /
                                                      6)
                                                  .floor(),
                                              (index) => SizedBox(
                                                    height: AppLayout.getHeight(
                                                        1, context),
                                                    width: AppLayout.getWidth(
                                                        3, context),
                                                    child: const DecoratedBox(
                                                      decoration: BoxDecoration(
                                                          color: Colors.blue),
                                                    ),
                                                  )),
                                        );
                                      },
                                    ),
                                  ),
                                  Transform.rotate(
                                      angle: 0,
                                      child: const Center(
                                          child: Icon(
                                        Icons.directions_bus,
                                        color: Colors.blue,
                                      ))),
                                ],
                              )),
                              RoundShape(
                                shapeColor: Colors.blue,
                              ),
                              const Spacer(),
                              Text("TN", style: Styles.textStyle),
                            ],
                          ),
                        ),
                        const Gap(3),
                        Container(
                          padding: EdgeInsets.only(
                              left: AppLayout.getHeight(16, context),
                              right: AppLayout.getHeight(16, context)),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text("Sfax", style: Styles.headLineStyle4),
                              Text("2H 20M", style: Styles.headLineStyle4),
                              Text("Tunisia", style: Styles.headLineStyle4),
                            ],
                          ),
                        )
                      ],
                    ),
                    Container(
                      padding: const EdgeInsets.only(top: 10),
                      decoration: const BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(21),
                              bottomRight: Radius.circular(21))),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              SizedBox(
                                height: AppLayout.getHeight(20, context),
                                width: AppLayout.getWidth(10, context),
                                child: const DecoratedBox(
                                  decoration: BoxDecoration(
                                      color: Colors.black,
                                      borderRadius: BorderRadius.only(
                                          bottomRight: Radius.circular(10),
                                          topRight: Radius.circular(10))),
                                ),
                              ),
                              Expanded(
                                child: LayoutBuilder(
                                  builder: (BuildContext buildContext,
                                      BoxConstraints boxConstraints) {
                                    return Flex(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        mainAxisSize: MainAxisSize.max,
                                        direction: Axis.horizontal,
                                        children: List.generate(
                                            (boxConstraints.constrainWidth() /
                                                    15)
                                                .floor(),
                                            (index) => const SizedBox(
                                                width: 5,
                                                height: 1,
                                                child: DecoratedBox(
                                                  decoration: BoxDecoration(
                                                      color: Colors.black),
                                                ))));
                                  },
                                ),
                              ),
                              SizedBox(
                                height: AppLayout.getHeight(20, context),
                                width: AppLayout.getWidth(10, context),
                                child: const DecoratedBox(
                                  decoration: BoxDecoration(
                                      color: Colors.black,
                                      borderRadius: BorderRadius.only(
                                          bottomLeft: Radius.circular(10),
                                          topLeft: Radius.circular(10))),
                                ),
                              )
                            ],
                          ),
                          const Gap(10),
                          Container(
                            padding: const EdgeInsets.only(
                                left: 16, right: 16, bottom: 16),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  children: [
                                    Text("1 MAY",
                                        style: Styles.headLineStyle3
                                            .copyWith(color: Colors.black)),
                                    Text("Date", style: Styles.headLineStyle4)
                                  ],
                                ),
                                Column(
                                  children: [
                                    Text("08:20 AM",
                                        style: Styles.headLineStyle3
                                            .copyWith(color: Colors.black)),
                                    Text("Departure Time",
                                        style: Styles.headLineStyle4)
                                  ],
                                ),
                                Column(
                                  children: [
                                    Text("20",
                                        style: Styles.headLineStyle3
                                            .copyWith(color: Colors.black)),
                                    Text("Number", style: Styles.headLineStyle4)
                                  ],
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                    Divider(
                      thickness: AppLayout.getHeight(1.5, context),
                    ),
                    Container(
                      padding: EdgeInsets.only(
                          left: AppLayout.getHeight(16, context),
                          right: AppLayout.getHeight(16, context),
                          top: AppLayout.getHeight(8, context)),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            children: [
                              Text("Hammadi",
                                  style: Styles.headLineStyle3
                                      .copyWith(color: Colors.black)),
                              Gap(AppLayout.getHeight(5, context)),
                              Text("Passenger", style: Styles.headLineStyle3)
                            ],
                          ),
                          Column(
                            children: [
                              Text("89XXX85XX",
                                  style: Styles.headLineStyle3
                                      .copyWith(color: Colors.black)),
                              Gap(AppLayout.getHeight(5, context)),
                              Text("ID", style: Styles.headLineStyle3)
                            ],
                          )
                        ],
                      ),
                    ),
                    Gap(AppLayout.getHeight(5, context)),
                    SizedBox(
                      child: Container(
                        child: SizedBox(
                          height: AppLayout.getHeight(24, context),
                          child: LayoutBuilder(
                            builder: (BuildContext buildContext,
                                BoxConstraints boxConstrains) {
                              return Flex(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                direction: Axis.horizontal,
                                mainAxisSize: MainAxisSize.max,
                                children: List.generate(
                                    (boxConstrains.constrainWidth() / 6)
                                        .floor(),
                                    (index) => SizedBox(
                                          height:
                                              AppLayout.getHeight(1, context),
                                          width: AppLayout.getWidth(3, context),
                                          child: const DecoratedBox(
                                            decoration: BoxDecoration(
                                                color: Colors.blue),
                                          ),
                                        )),
                              );
                            },
                          ),
                        ),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(
                          left: AppLayout.getHeight(16, context),
                          right: AppLayout.getHeight(16, context),
                          top: AppLayout.getHeight(8, context)),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            children: [
                              Text("789 8975 98720",
                                  style: Styles.headLineStyle3
                                      .copyWith(color: Colors.black)),
                              Gap(AppLayout.getHeight(5, context)),
                              Text("Number of E-Ticket",
                                  style: Styles.headLineStyle3)
                            ],
                          ),
                          Column(
                            children: [
                              Text("R20M02Y20",
                                  style: Styles.headLineStyle3
                                      .copyWith(color: Colors.black)),
                              Gap(AppLayout.getHeight(5, context)),
                              Text("Booking Code", style: Styles.headLineStyle3)
                            ],
                          )
                        ],
                      ),
                    ),
                    Gap(AppLayout.getHeight(5, context)),
                    SizedBox(
                      child: Container(
                        child: SizedBox(
                          height: AppLayout.getHeight(24, context),
                          child: LayoutBuilder(
                            builder: (BuildContext buildContext,
                                BoxConstraints boxConstrains) {
                              return Flex(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                direction: Axis.horizontal,
                                mainAxisSize: MainAxisSize.max,
                                children: List.generate(
                                    (boxConstrains.constrainWidth() / 6)
                                        .floor(),
                                    (index) => SizedBox(
                                          height:
                                              AppLayout.getHeight(1, context),
                                          width: AppLayout.getWidth(3, context),
                                          child: const DecoratedBox(
                                            decoration: BoxDecoration(
                                                color: Colors.blue),
                                          ),
                                        )),
                              );
                            },
                          ),
                        ),
                      ),
                    ),
                    Gap(AppLayout.getHeight(5, context)),
                    Container(
                      padding: EdgeInsets.only(
                          left: AppLayout.getHeight(16, context),
                          right: AppLayout.getHeight(16, context),
                          top: AppLayout.getHeight(8, context)),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            children: [
                              Row(
                                children: [
                                  Container(
                                    height: AppLayout.getHeight(30, context),
                                    width: AppLayout.getWidth(40, context),
                                    decoration: const BoxDecoration(
                                        image: DecorationImage(
                                            image: AssetImage(
                                                "assets/images/visa.png"))),
                                  ),
                                  Gap(AppLayout.getWidth(8, context)),
                                  Text("***2465",
                                      style: Styles.headLineStyle3
                                          .copyWith(color: Colors.black)),
                                ],
                              ),
                              Gap(AppLayout.getHeight(5, context)),
                              Text("Payment Method",
                                  style: Styles.headLineStyle3)
                            ],
                          ),
                          Column(
                            children: [
                              Text("20TND",
                                  style: Styles.headLineStyle3
                                      .copyWith(color: Colors.black)),
                              Gap(AppLayout.getHeight(5, context)),
                              Text("Price", style: Styles.headLineStyle3)
                            ],
                          )
                        ],
                      ),
                    ),
                    Gap(AppLayout.getHeight(40, context)),
                    Container(
                      padding: EdgeInsets.only(
                          left: AppLayout.getWidth(8, context),
                          right: AppLayout.getWidth(8, context),
                          bottom: AppLayout.getWidth(10, context)),
                      child: BarcodeWidget(
                        barcode: Barcode.code128(),
                        data: "https://github.com/Ahmed-Jedidi",
                        drawText: false,
                        color: Colors.black,
                        width: double.infinity,
                        height: 70,
                      ),
                    )
                  ],
                )),
          ],
        ),
      ),
    );
  }
}
