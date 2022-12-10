import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:task_new_1/const.dart';

class InsideScreen extends StatelessWidget {
  const InsideScreen({Key? key, required this.index}) : super(key: key);
  final int index;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Container(
              height: 450.h,
              width: 385.w,
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey, width: 1.w),
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(15.r)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: 40.h,
                    width: MediaQuery.of(context).size.width.w,
                    decoration: BoxDecoration(
                      color: Colors.purple[900],
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(10.r),
                        topRight: Radius.circular(10.r),
                      ),
                    ),
                    child: Row(
                      children: [
                        KWidth10,
                        const Icon(
                          Icons.menu_open,
                          color: Colors.white,
                        ),
                        const Spacer(),
                        Text(
                          " ${index + 1}",
                          style: const TextStyle(
                            color: Colors.white,
                          ),
                        ),
                        const Spacer(),
                        const Text("\$25",
                            style: TextStyle(
                              color: Colors.white,
                            )),
                        KWidth10,
                      ],
                    ),
                  ),
                  Stack(
                    children: [
                      Container(
                        height: 80.h,
                        width: MediaQuery.of(context).size.width.w,
                        decoration: const BoxDecoration(
                          image: DecorationImage(
                              fit: BoxFit.cover,
                              image: NetworkImage(
                                  "https://images.pexels.com/photos/1961792/pexels-photo-1961792.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1")),
                          color: Colors.grey,
                        ),
                      ),
                      Column(
                        children: [
                          SizedBox(
                            height: 60.h,
                          ),
                          Row(
                            children: const [
                              KWidth10,
                              Text("2",
                                  style:
                                      TextStyle(fontWeight: FontWeight.bold)),
                              Spacer(),
                              Text("\$150",
                                  style:
                                      TextStyle(fontWeight: FontWeight.bold)),
                              Spacer(),
                              Text("light",
                                  style:
                                      TextStyle(fontWeight: FontWeight.bold)),
                              KWidth10,
                            ],
                          ),
                        ],
                      )
                    ],
                  ),
                  KHight10,
                  Row(
                    children: [
                      KWidth20,
                      Text(
                        "SENDER",
                        style: TextStyle(fontSize: 15.sp, color: Colors.grey),
                      ),
                    ],
                  ),
                  KHight5,
                  Row(
                    children: [
                      KWidth20,
                      Container(
                        height: 60.h,
                        width: 60.w,
                        decoration: BoxDecoration(
                            image: const DecorationImage(
                                fit: BoxFit.cover,
                                image: NetworkImage(
                                    "https://images.pexels.com/photos/220453/pexels-photo-220453.jpeg")),
                            borderRadius: BorderRadius.circular(5.r)),
                      ),
                      KWidth10,
                      Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            KWidth10,
                            Text(
                              "Edward Norton",
                              style: TextStyle(
                                  fontSize: 16.sp, fontWeight: FontWeight.bold),
                            ),
                            RatingBar.builder(
                              initialRating: 3,
                              minRating: 1,
                              direction: Axis.horizontal,
                              allowHalfRating: true,
                              itemCount: 5,
                              glowRadius: 1,
                              itemSize: 20,
                              itemBuilder: (context, _) => Icon(
                                Icons.star,
                                size: 20,
                                color: Colors.purple[900],
                              ),
                              onRatingUpdate: (rating) {
                                print(rating);
                              },
                            ),
                          ]),
                    ],
                  ),
                  Divider(
                    thickness: 3,
                    indent: 20,
                    endIndent: 20,
                    color: Colors.grey,
                    height: 20.h,
                  ),
                  KHight5,
                  Row(
                    children: [
                      KWidth20,
                      Text(
                        "FROM",
                        style: TextStyle(fontSize: 15.sp, color: Colors.grey),
                      ),
                      Spacer(),
                      Text(
                        "TO",
                        style: TextStyle(fontSize: 15.sp, color: Colors.grey),
                      ),
                      KWidth15,
                      Spacer(),
                    ],
                  ),
                  KHight5,
                  Row(
                    children: [
                      KWidth20,
                      Text(
                        "W 90th St",
                        style: TextStyle(
                            fontSize: 16.sp, fontWeight: FontWeight.bold),
                      ),
                      const Spacer(),
                      Text("46th Ave",
                          style: TextStyle(
                              fontSize: 16.sp, fontWeight: FontWeight.bold)),
                      const Spacer(),
                    ],
                  ),
                  KHight5,
                  Row(
                    children: [
                      SizedBox(
                        width: 20.w,
                      ),
                      Text("NewYork,NY 10025",
                          style: TextStyle(
                              fontSize: 15.sp, fontWeight: FontWeight.bold)),
                      SizedBox(
                        width: 20.w,
                      ),
                      Text("Woodtide,NY 11101",
                          style: TextStyle(
                              fontSize: 15.sp, fontWeight: FontWeight.bold)),
                      const Spacer(),
                    ],
                  ),
                  Divider(
                    thickness: 3,
                    color: Colors.grey,
                    height: 20.h,
                  ),
                  KHight5,
                  Row(
                    children: [
                      SizedBox(
                        width: 20.w,
                      ),
                      Text(
                        "DELIVERY DATE",
                        style: TextStyle(fontSize: 15.sp, color: Colors.grey),
                      ),
                      SizedBox(
                        width: 43.w,
                      ),
                      Text(
                        "REQUEST DEADLINE",
                        style: TextStyle(fontSize: 15.sp, color: Colors.grey),
                      ),
                    ],
                  ),
                  KHight5,
                  Row(
                    children: [
                      KWidth20,
                      Text(
                        "6:30 PM",
                        style: TextStyle(
                            fontSize: 16.sp, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        width: 94.w,
                      ),
                      Text("24 minutes",
                          style: TextStyle(
                              fontSize: 16.sp, fontWeight: FontWeight.bold)),
                    ],
                  ),
                  KHight5,
                  Row(
                    children: [
                      KWidth20,
                      Text(
                        "May 16,2015",
                        style: TextStyle(
                            fontSize: 15.sp, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  KHight10,
                  Container(
                    padding: const EdgeInsets.all(5),
                    height: 50.h,
                    width: 350.w,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: const Color.fromARGB(255, 241, 199, 73),
                        onPrimary: Colors.white,
                        shadowColor: Colors.greenAccent,
                        elevation: 3,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(32.0.r)),
                        minimumSize: const Size(100, 40), //////// HERE
                      ),
                      onPressed: () {},
                      child: Text('REQUEST',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 16.sp,
                              fontWeight: FontWeight.bold)),
                    ),
                  )
                ],
              )),
        ),
      ),
    );
  }
}
