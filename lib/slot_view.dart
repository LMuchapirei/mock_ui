// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:mock_ui/colors.dart';

class SLotView extends StatefulWidget {
  const SLotView({super.key});

  @override
  State<SLotView> createState() => _SLotViewState();
}

class _SLotViewState extends State<SLotView> {
  final _kSectiontextStyle = TextStyle(color: Colors.white, fontSize: 16);
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color(0xFFcea958),
        body: Stack(
          children: [
            CustomScrollView(
              slivers: [
                SliverAppBar(
                  automaticallyImplyLeading: false,
                  expandedHeight: 250,
                  backgroundColor: Colors.transparent,
                  floating: true,

                  flexibleSpace: Padding(
                    padding:
                        const EdgeInsets.symmetric(vertical: 10, horizontal: 5),
                    child: Column(children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          SizedBox(
                            height: 50,
                            width: 50,
                            child: DecoratedBox(
                              decoration: BoxDecoration(
                                border: Border.all(
                                    color: ParkadeColors.caramelWhite),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10)),
                                color: ParkadeColors.caramel,
                              ),
                              child: Icon(Icons.arrow_back_ios_new_sharp),
                            ),
                          ),
                          Text("Choose Slot"),
                          SizedBox(
                            height: 50,
                            width: 50,
                            child: DecoratedBox(
                              decoration: BoxDecoration(
                                border: Border.all(
                                    color: ParkadeColors.caramelWhite),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10)),
                                color: ParkadeColors.caramel,
                              ),
                              child: Icon(Icons.grid_view_rounded),
                            ),
                          ),
                        ],
                      ),
                      Spacer(),
                      Text('Rezende Parkade'),
                      Text('Harare, ZWE'),
                      Spacer(),
                      SizedBox(
                        height: 60,
                        child: DecoratedBox(
                          decoration: BoxDecoration(color: Color(0xFFa58746)),
                          child: Padding(
                            padding: const EdgeInsets.only(left: 10),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.stretch,
                              children: [
                                Padding(
                                  padding:
                                      const EdgeInsets.symmetric(vertical: 5),
                                  child: floorButton(
                                      title: "1st Floor", selected: false),
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.symmetric(vertical: 5),
                                  child: floorButton(
                                      title: "2nd Floor", selected: true),
                                )
                              ],
                            ),
                          ),
                        ),
                      )
                    ]),
                  ),
                ),
                SliverToBoxAdapter(
                  child: DecoratedBox(
                    decoration: BoxDecoration(color: ParkadeColors.navyBlue),
                    child: SizedBox(
                      height: 800,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: Stack(
                          clipBehavior: Clip.none,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                SizedBox(
                                  height: 15,
                                ),
                                SizedBox(
                                  height: 100,
                                  child: Row(children: [
                                    buildOccupiedSlotSelection(isUpper: true),
                                    buildSelectedSlot(isUpper: true),
                                    buildOccupiedSlotSelection(isUpper: true),
                                    buildEmptySlot(isUpper: true),
                                  ]),
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                                buildSectionHeader(sectionTitle: "A"),
                                SizedBox(
                                  height: 20,
                                ),
                                SizedBox(
                                  height: 100,
                                  child: Row(children: [
                                    buildOccupiedSlotSelection(isUpper: false),
                                    buildSelectedSlot(isUpper: false),
                                    buildOccupiedSlotSelection(isUpper: false),
                                    buildEmptySlot(isUpper: false),
                                  ]),
                                ),
                                SizedBox(
                                  height: 100,
                                  child: Row(children: [
                                    buildOccupiedSlotSelection(isUpper: true),
                                    buildSelectedSlot(isUpper: true),
                                    buildOccupiedSlotSelection(isUpper: true),
                                    buildEmptySlot(isUpper: true),
                                  ]),
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                                buildSectionHeader(sectionTitle: "B"),
                                SizedBox(
                                  height: 20,
                                ),
                                SizedBox(
                                  height: 100,
                                  child: Row(children: [
                                    buildOccupiedSlotSelection(isUpper: false),
                                    buildSelectedSlot(isUpper: false),
                                    buildOccupiedSlotSelection(isUpper: false),
                                    buildEmptySlot(isUpper: false),
                                  ]),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
            Positioned(
              left: MediaQuery.of(context).size.width * 0.2,
              bottom: 20,
              right: MediaQuery.of(context).size.width * 0.2,
              child: Container(
                width: MediaQuery.of(context).size.width / 2,
                height: 60,
                decoration: BoxDecoration(
                    color: ParkadeColors.yellow,
                    borderRadius: BorderRadius.circular(15)),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Choose Slot",
                        style: TextStyle(
                            color: ParkadeColors.navyBlue,
                            fontSize: 18,
                            fontWeight: FontWeight.w600),
                      ),
                      Text(
                        "C-L01",
                        style: TextStyle(
                            color: ParkadeColors.navyBlue,
                            fontSize: 18,
                            fontWeight: FontWeight.w400),
                      )
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  TextButton floorButton({required String title, required bool selected}) {
    return TextButton(
        style: TextButton.styleFrom(
            foregroundColor: ParkadeColors.navyBlue,
            backgroundColor:
                selected ? Colors.white : ParkadeColors.caramelWhite,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(10)))),
        onPressed: () {},
        child: Text(title));
  }

  Padding buildSectionHeader({required sectionTitle}) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            'Section $sectionTitle',
            style: _kSectiontextStyle,
          ),
          Row(
            children: [
              Text('In / Out', style: _kSectiontextStyle),
              SizedBox(
                width: 10,
              ),
              Icon(
                CupertinoIcons.arrow_left_right,
                color: Colors.white,
              )
            ],
          )
        ],
      ),
    );
  }

  final upperBorder = Border(
      top: BorderSide(color: Colors.white),
      left: BorderSide(color: Colors.white),
      right: BorderSide(color: Colors.white));
  final lowerBorder = Border(
      bottom: BorderSide(color: Colors.white),
      left: BorderSide(color: Colors.white),
      right: BorderSide(color: Colors.white));

  Widget buildSelectedSlot({required bool isUpper}) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Container(
          width: 100,
          height: 100,
          decoration: BoxDecoration(
              border: isUpper ? upperBorder : lowerBorder,
              gradient: isUpper?
                 LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                   ParkadeColors.navyBlue,ParkadeColors.green,
                 ]):
                 LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [ParkadeColors.green, ParkadeColors.navyBlue])),
          alignment: Alignment.center,
          child: Text("A-02", style: _kSectiontextStyle),
        ),
        isUpper?
         Positioned(
            left: 0,
            right: 0,
            bottom: -10,
            child: Container(
              width: 30,
              height: 30,
              decoration:
                  BoxDecoration(color: Colors.white, shape: BoxShape.circle),
              alignment: Alignment.center,
              child: Icon(Icons.check),
            )):
        Positioned(
            left: 0,
            right: 0,
            top: -8,
            child: Container(
              width: 30,
              height: 30,
              decoration:
                  BoxDecoration(color: Colors.white, shape: BoxShape.circle),
              alignment: Alignment.center,
              child: Icon(Icons.check),
            )),
      ],
    );
  }

  Widget buildOccupiedSlotSelection({required bool isUpper}) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Container(
          width: 100,
          height: 100,
          decoration:
              BoxDecoration(border: isUpper ? upperBorder : lowerBorder),
          alignment: Alignment.center,
          child: Image.asset(
            "assets/images/car.png",
            height: 80,
            width: 60,
          ),
        ),
      ],
    );
  }

  Widget buildEmptySlot({required bool isUpper}) {
    return Container(
      decoration: BoxDecoration(
        border: isUpper ? upperBorder : lowerBorder,
      ),
      width: 100,
      height: 100,
      child: Center(
          child: Text(
        "A-04",
        style: _kSectiontextStyle,
      )),
    );
  }
}
