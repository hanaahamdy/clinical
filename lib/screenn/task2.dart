import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Task2 extends StatelessWidget {
  List scrollItems = [
    ScrollItems(
      icon: FontAwesomeIcons.tooth,
      subject: "Dental",
      num: 26,
    ),
    ScrollItems(subject: "Heart", num: 18, icon: FontAwesomeIcons.heart),
    ScrollItems(subject: "Dentals", num: 32, icon: FontAwesomeIcons.brain),
    ScrollItems(subject: "Eyes", num: 26, icon: FontAwesomeIcons.eye)
  ];
  List listitems = [
    Info(
        name: "Dr.FredMask",
        distance:"5.3km",
        rate: 4.9,
        image: "images/doctor.jpg",
        job: "Heart Surgen"),
    Info(
        name: "Dr.FredMask",
        distance: "2.1km",
        rate: 4.7,
        image: "images/second.jpg",
        job: "Bone Specialists"),
    Info(
        name: "Dr.Zac Wolff",
        distance: "4.6km ",
        rate:4.5 ,
        image: "images/hird.jpg",
        job: "Eyes Specialists"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.indigo[900],
      appBar: AppBar(
        backgroundColor: Colors.indigo[900],
        elevation: 0,
        leading: Icon(Icons.article_rounded),
        actions: [
          Icon(Icons.add_alert_rounded),
          Padding(
            padding: const EdgeInsets.all(12),
            child: Image(image: AssetImage("images/bar.jpg")),
          )
        ],
      ),
      body: Container(
        clipBehavior: Clip.antiAlias,
        width: double.infinity,
        decoration: BoxDecoration(
            color: Colors.grey[200],
            borderRadius: BorderRadius.only(
                topRight: Radius.circular(20), topLeft: Radius.circular(20))),
        child: Padding(
          padding: const EdgeInsets.all(12),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Hi, Olivia",
                style: TextStyle(fontSize: 15),
              ),
              SizedBox(
                height: 15,
              ),
              Text(
                "Welcome Back",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Container(
                    width: 300,
                    height: 50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white,
                    ),
                    child: TextFormField(
                      decoration: InputDecoration(
                          hintText: "Search.....",
                          border: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.white))),
                    ),
                  ),
                  Container(
                    height: 50,
                    width: 35,
                    decoration: BoxDecoration(
                        color: Color(0xFF1B5E20),
                        borderRadius: BorderRadius.circular(3)),
                    child: Icon(
                      Icons.search,
                      color: Colors.white,
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 15,
              ),
              Row(
                children: [
                  Text(
                    "Category",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  Spacer(),
                  Text(
                    "See all",
                    style: TextStyle(color: Colors.grey, fontSize: 15),
                  )
                ],
              ),
              SizedBox(
                height: 15,
              ),
              Container(
                height: 110,
                child: ListView.separated(
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) =>
                        ScrollItem(scrollItems[index]),
                    separatorBuilder: (context, index) => SizedBox(
                          width: 20,
                        ),
                    itemCount: scrollItems.length),
              ),
              SizedBox(
                height: 15,
              ),
              Row(
                children: [
                  Text(
                    "Top rate",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  Spacer(),
                  Text(
                    "See all",
                    style: TextStyle(color: Colors.grey, fontSize: 15),
                  )
                ],
              ),
              SizedBox(
                height: 15,
              ),

Expanded(child:ListView.separated(itemBuilder: (context,index)=>BuildListItem(listitems[index]), separatorBuilder:(context,index)=>SizedBox(height: 5,), itemCount: 3))
            ],
          ),
        ),
      ),
    );
  }

  Widget ScrollItem(ScrollItems item) {
    return Container(
        width: 100,
        decoration: BoxDecoration(
            color: Color(0xFF1B5E20).withOpacity(.8),
            borderRadius: BorderRadius.circular(10)),
        height: 150,
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            children: [
              Icon(
                item.icon,
                color: Colors.white,
              ),
              SizedBox(
                height: 15,
              ),
              Text(
                item.subject,
                style: TextStyle(color: Colors.white),
              ),
              SizedBox(
                height: 5,
              ),
              Text(
                "${item.num}",
                style: TextStyle(color: Colors.white),
              )
            ],
          ),
        ));
  }
}

class ScrollItems {
  IconData icon;
  final String subject;
  final int num;

  ScrollItems({required this.subject, required this.num, required this.icon});
}

class Info {
  final String name;
  final String image;
  final String job;
  final double rate;
  final String distance;

  Info(
      {required this.name,
      required this.job,
      required this.rate,
      required this.distance,
      required this.image});
}

Widget BuildListItem(Info item) {
  return Container(
    decoration: BoxDecoration(
        color: Colors.white, borderRadius: BorderRadius.circular(10)),
    width: double.infinity,
    child: Column(
      children: [
        Row(
          children: [
            Container(
                margin: EdgeInsets.all(5),
                child: Image(
                  image: AssetImage(
                  item.image
                  ),
                  width: 70,
                  height: 70,
                )),
            SizedBox(
              width: 10,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                 item.name,
                  style: TextStyle(
                      fontSize: 15,
                      color: Colors.black,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 9,
                ),
                Row(
                  children: [
                    Text(
                      item.job,
                      style: TextStyle(
                        color: Colors.grey,
                      ),
                    ),
                    SizedBox(
                      width:25,
                    ),
                    Icon(
                      Icons.star,
                      color: Colors.amber,
                    ),
                    Text("${item.rate}"),
                    SizedBox(
                      width: 5,
                    ),
                    Icon(
                      Icons.location_on_sharp,
                      color: Colors.amber,
                    ),
                    Text(item.distance)
                  ],
                ),
              ],
            ),
          ],
        ),
      ],
    ),
  );
}
