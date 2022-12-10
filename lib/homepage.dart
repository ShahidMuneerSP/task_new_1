import 'package:flutter/material.dart';
import 'package:flutter_folding_card/flutter_folding_card.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:task_new_1/const.dart';
import 'package:task_new_1/inside_screen.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List<bool> foldOutList = [
    false,
    false,
    false,
    false,
    false,
    false,
    false,
  ];

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.purple[900],
          centerTitle: true,
          title: const Text('TASK'),
        ),
        body: ListView.separated(
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: FoldingCard(
                foldOut: foldOutList[index],
                curve: foldOutList[index] == true
                    ? Curves.easeInCubic
                    : Curves.easeOutCubic,
                duration: const Duration(milliseconds: 1400),
                coverBackground: InkWell(
                    onTap: () {
                      setState(() {
                        foldOutList[index] = true;
                      });
                    },
                    child: Row(children: [
                      Container(
                        width: 80.w,
                        height: 200.h,
                        decoration: BoxDecoration(
                          color: Colors.purple[900],
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(10.r),
                            bottomLeft: Radius.circular(10.r),
                          ),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            SizedBox(
                              height: 20.h,
                            ),
                            Text(
                              "${index + 1}",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 19.sp,
                                  fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              height: 35.h,
                            ),
                            Text(
                              "Today",
                              style: TextStyle(
                                  fontSize: 14.sp,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white70),
                            ),
                            KHight10,
                            Text(
                              "8:30 PM",
                              style: TextStyle(
                                  fontSize: 15.sp,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            )
                          ],
                        ),
                      ),
                      Expanded(
                        child: Container(
                            width: size.width - 80.w,
                            height: 200.h,
                            decoration: BoxDecoration(
                              border:
                                  Border.all(color: Colors.grey, width: 2.w),
                              color: Colors.white,
                              borderRadius: BorderRadius.only(
                                topRight: Radius.circular(10.r),
                                bottomRight: Radius.circular(10.r),
                              ),
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Container(
                                  margin: const EdgeInsets.only(left: 20),
                                  height: 35.h,
                                  width: double.infinity.w,
                                  child: const TextField(
                                    decoration: InputDecoration(
                                        border: InputBorder.none,
                                        hintText: 'FROM',
                                        hintStyle: TextStyle(
                                            fontSize: 16, color: Colors.black)),
                                  ),
                                ),
                                Divider(
                                  indent: 20,
                                  endIndent: 20,
                                  height: 10.h,
                                  thickness: 2,
                                  color:
                                      const Color.fromARGB(255, 193, 174, 174),
                                ),
                                Container(
                                  margin: const EdgeInsets.only(left: 20),
                                  height: 35.h,
                                  width: double.infinity.w,
                                  child: const TextField(
                                    decoration: InputDecoration(
                                        border: InputBorder.none,
                                        hintText: 'TO',
                                        hintStyle: TextStyle(
                                            fontSize: 16, color: Colors.black)),
                                  ),
                                ),
                                Row(
                                  children: [
                                    SizedBox(
                                      width: 10.w,
                                    ),
                                    Text(
                                      "REQUEST",
                                      style: TextStyle(
                                          color: Colors.grey,
                                          fontSize: 14.sp,
                                          fontWeight: FontWeight.normal),
                                    ),
                                    SizedBox(
                                      width: 15.w,
                                    ),
                                    Text("PLEDGE",
                                        style: TextStyle(
                                            color: Colors.grey,
                                            fontSize: 14.sp,
                                            fontWeight: FontWeight.normal)),
                                    SizedBox(
                                      width: 14.w,
                                    ),
                                    Text("WEIGHT",
                                        style: TextStyle(
                                            color: Colors.grey,
                                            fontSize: 14.sp,
                                            fontWeight: FontWeight.normal)),
                                    SizedBox(
                                      width: 10.w,
                                    )
                                  ],
                                ),
                                SizedBox(
                                  height: 10.h,
                                ),
                                Row(
                                  children: [
                                    SizedBox(
                                      width: 10.w,
                                    ),
                                    Text(
                                      "2",
                                      style: TextStyle(
                                          color: Colors.grey,
                                          fontSize: 15.sp,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    SizedBox(
                                      width: 68.w,
                                    ),
                                    Text("\$150",
                                        style: TextStyle(
                                            color: Colors.grey,
                                            fontSize: 15.sp,
                                            fontWeight: FontWeight.bold)),
                                    SizedBox(
                                      width: 34.w,
                                    ),
                                    Text("light",
                                        style: TextStyle(
                                            color: Colors.grey,
                                            fontSize: 16.sp,
                                            fontWeight: FontWeight.bold)),
                                    SizedBox(
                                      width: 10.w,
                                    )
                                  ],
                                )
                              ],
                            )),
                      )
                    ])),
                expandedCard: index == 1
                    ? Stack(
                        children: [
                          InsideScreen(
                            index: index,
                          )
                        ],
                      )
                    : GestureDetector(
                        onTap: () {
                          setState(() {
                            foldOutList[index] = false;
                          });
                        },
                        child: InsideScreen(
                          index: index,
                        )),
                foldingHeight: 150.h,
                expandedHeight: 450.h,
                cover: Text(""),
              ),
            );
          },
          itemCount: 7,
          separatorBuilder: (BuildContext context, int index) {
            return SizedBox(
              height: 10.h,
            );
          },
        ),
      ),
    );
  }
}
