import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:landing_page/utils/styles.dart';

class DashboardScreen extends StatefulWidget {
  @override
  _DashboardScreenState createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: Colors.grey, //or set color with: Color(0xFF0000FF)
    ));
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 20.0),
                  child: Align(
                    alignment: Alignment.centerRight,
                    child: Container(
                      height: 56,
                      width: 56,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.grey,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 20.0),
                  child: Text(
                    "Good Morning \n Mr. Momshad",
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: MediaQuery.of(context).size.width * 0.10),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Container(
                          height: 250,
                          width: 150,
                          padding: EdgeInsets.symmetric(vertical: 15, horizontal: 10),
                          color: AppColor.waterBoxColor,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "Water",
                                    style: TextStyle(color: AppColor.darkBlueColor),
                                  ),
                                  Icon(Icons.pin_drop)
                                ],
                              ),
                              Container(
                                height: 100,
                                width: 180,
                                decoration: BoxDecoration(
                                    border: Border.all(color: AppColor.darkBlueColor),
                                    shape: BoxShape.circle,
                                   ),
                              ),
                              Text("You are doing well", maxLines: 2,)
                            ],
                          ),
                        ),
                        SizedBox(height: 15),
                        Container(
                          height: 200,
                          width: 150,
                          decoration: BoxDecoration(border: Border.all(color: Colors.grey)),
                          
                        )
                      ],
                    ),
                    SizedBox(width: 15),
                    Column(
                      children: [
                        Container(
                          height: 200,
                          width: 150,
                          decoration: BoxDecoration(border: Border.all(color: Colors.grey)),
                        ),
                        SizedBox(height: 15),
                        Container(
                          height: 250,
                          width: 150,
                          color: AppColor.bmiBoxColor,
                        )
                      ],
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
