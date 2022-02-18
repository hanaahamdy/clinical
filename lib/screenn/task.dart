import 'package:date_picker_timeline/date_picker_timeline.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

import 'package:smooth_star_rating_null_safety/smooth_star_rating_null_safety.dart';

class Home extends StatelessWidget {
  List chipsData = [
    ChipBuilder(labal: "8:30 Am", icon: Icons.access_time_sharp),
    ChipBuilder(labal: "8:30 Am", icon: Icons.access_time_sharp),
    ChipBuilder(labal: "8:30 Am", icon: Icons.access_time_sharp),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[200],
        appBar: AppBar(
          leading: Icon(
            Icons.arrow_back,
            size: 20,
          ),
          actions: [
            IconButton(
              icon: Icon(
                Icons.add_alert_rounded,
                size: 20,
              ),
              onPressed: () {},
            )
          ],
          bottom: PreferredSize(
              preferredSize: Size.fromHeight(120),
              child: Row(
                children: [
                  Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10)),
                      clipBehavior: Clip.antiAlias,
                      margin: EdgeInsets.all(15),
                      child: Image(
                        image: AssetImage(
                          'images/doctor.jpg',
                        ),
                        width: 80,
                        height: 100,
                      )),
                  SizedBox(
                    width: 10,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "DR.Fred Mask",
                        style: TextStyle(
                            fontSize: 20,
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 9,
                      ),
                      Text(
                        "Heart Surgen",
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(
                        height: 9,
                      ),
//                    SmoothStarRating(size: 40,color: Colors.amber,)
                      RatingBar.builder(
                        initialRating: 3,
                        minRating: 1,
                        direction: Axis.horizontal,
                        allowHalfRating: true,
                        itemCount: 5,
                        itemBuilder: (context, _) => Icon(
                          Icons.star,
                          color: Colors.amber,
                        ),
                        onRatingUpdate: (rating) {},
                      )
                    ],
                  )
                ],
              )),
          elevation: 0,
          backgroundColor: Colors.indigo[900],
          shape: (RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(15)))),
        ),
        body: Padding(
          padding: const EdgeInsets.all(12),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 13,
              ),
              Text(
                "April 2020",
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 13,
              ),
              Container(
                child: DatePicker(
                  DateTime.now(),
                  initialSelectedDate: DateTime.now(),
                  selectionColor: Color(0xFF1B5E20),
                ),
              ),
              SizedBox(
                height: 13,
              ),
              Text(
                "Morning",
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height:12,
              ),
              Row(
                children: [
                  Column(
                    children: [
                      Row(
                        children: [
                          ActionChip(
                            label: Text("8:30 Am"),
                            onPressed: () {},
                            avatar: Icon(Icons.access_time),
                          ),
                          SizedBox(width: 5,),
                          ActionChip(backgroundColor: Color(0xFF1B5E20),
                            label: Text("9:00 Am",style: TextStyle(color: Colors.white),),
                            onPressed: () {},
                            avatar: Icon(Icons.access_time,color: Colors.white,),
                          ),
                          SizedBox(width: 5,),
                          ActionChip(
                            label: Text("9:30 Am"),
                            onPressed: () {},
                            avatar: Icon(Icons.access_time),
                          ),
                        ],

                      ),    Row(
                        children: [
                          ActionChip(
                            label: Text("10:00 Am"),
                            onPressed: () {},
                            avatar: Icon(Icons.access_time),
                          ),
                          SizedBox(width: 5,),
                          ActionChip(
                            label: Text("10:30 Am"),
                            onPressed: () {},
                            avatar: Icon(Icons.access_time),
                          ),
                          SizedBox(width: 5,),
                          ActionChip(
                            label: Text("11:00 Am",),
                            onPressed: () {},
                            avatar: Icon(Icons.access_time),
                          ),
                        ],

                      ),
                    ],
                  )
                ],
              ),
              SizedBox(
                height:12,
              ),
              Text(
                "Evening",
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 12,
              ),
              Column(
                children: [
                  Row(
                  children: [
                    ActionChip(
                      label: Text("5:30 pm"),
                      onPressed: () {},
                      avatar: Icon(Icons.access_time),
                    ),
                    SizedBox(width: 5,),
                    ActionChip(
                      label: Text("6:00 pm"),
                      onPressed: () {},
                      avatar: Icon(Icons.access_time),
                    ),
                    SizedBox(width: 5,),
                    ActionChip(
                      label: Text("6:50 pm"),
                      onPressed: () {},
                      avatar: Icon(Icons.access_time),
                    ),
                  ],

                ),
                  Row(
                    children: [
                      ActionChip(
                        label: Text("7:00 pm"),
                        onPressed: () {},
                        avatar: Icon(Icons.access_time),
                      ),
                      SizedBox(width: 10,),
                      ActionChip(
                        label: Text("7:30 pm"),
                        onPressed: () {},
                        avatar: Icon(Icons.access_time),
                      ),
                      SizedBox(width: 10,),
                      ActionChip(
                        label: Text("8:00 pm"),
                        onPressed: () {},
                        avatar: Icon(Icons.access_time),
                      ),
                    ],

                  ),


                ],
              ),
              SizedBox(
                height: 15,
              ),
              Container(
                width: double.infinity,
                height: 50,
                child: ElevatedButton(
                  style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all(Color(0xFF1B5E20))),
                  onPressed: () {},
                  child: Text(
                    "Make An Appointment",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
              )
            ],
          ),
        ));
  }

  Widget buildChips(ChipBuilder chip) {
    return Wrap(
      children: chipsData
          .map((e) => ActionChip(
              avatar: Icon(chip.icon),
              label: Text(chip.labal),
              onPressed: () {}))
          .toList(),
    );
  }
}

class ChipBuilder {
  final String labal;
  final IconData icon;

  ChipBuilder({
    required this.labal,
    required this.icon,
  });
}
