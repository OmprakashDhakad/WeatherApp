import 'package:flutter/material.dart';

import 'dashedline.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Column(
        children: [
          Text(
            "Harlem",
            style: TextStyle(
              color: Color(0xffE3E2E6),
              fontSize: 40,
            ),
          ),
          SizedBox(height: 10),
          Text(
            "Tuesday, August 13, 2021",
            style: TextStyle(
              color: Color(0xffE3E2E6),
              fontSize: 20,
            ),
          ),
          SizedBox(height: 20),
          Text(
            "15\u2103",
            style: TextStyle(
              color: Color(0xffE3E2E6),
              fontSize: 50,
            ),
          ),
          SizedBox(height: 20),
          Container(
            width: 100,
            child: Center(
              child: DashedLine(
                height: 2.0,
                color: Colors.white.withOpacity(1.0),
              ),
            ),
          ),
          SizedBox(height: 20),
          Text(
            "Cloudy",
            style: TextStyle(
              color: Color(0xffE3E2E6),
              fontSize: 20,
            ),
          ),
          SizedBox(height: 10),
          Text(
            "23\u2103 / 28\u2103",
            style: TextStyle(
              color: Color(0xffE3E2E6),
              fontSize: 20,
            ),
          ),
          SizedBox(height: 40),
          Icon(
            Icons.local_drink,
            color: Color(0xffE3E2E6),
            size: 40,
          ),
          SizedBox(height: 40),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Footer(
                icon: Icons.cloud,
                day: "Today",
                temp: 25,
              ),
              Footer(
                icon: Icons.cloud,
                day: "Friday",
                temp: 24,
              ),
              Footer(
                icon: Icons.cloud,
                day: "Saturday",
                temp: 26,
              )
            ],
          ),
          SizedBox(
            height: 40,
          ),
          Container(
            height: 35,
            width: 35,
            decoration: BoxDecoration(
              shape: BoxShape.rectangle,
              color: Colors.yellowAccent[700],
              borderRadius: BorderRadius.circular(100),
            ),
            child: InkWell(
              child: Icon(Icons.expand_less),
              onTap: () {
                print("New City");
              },
            ),
          )
        ],
      ),
    );
  }
}

class Footer extends StatelessWidget {
  final String day;
  final IconData icon;
  final double temp;

  const Footer({Key key, this.day, this.icon, this.temp}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(
          icon,
          color: Color(0xffE3E2E6),
          size: 20,
        ),
        //if(day=='Today'){temp}
        Text(
          setTemp(day),
          style: TextStyle(
            color: Color(0xffE3E2E6),
            fontSize: 17,
          ),
        ),
        Text(
          day,
          style: TextStyle(
            color: Color(0xffE3E2E6),
            fontSize: 18,
          ),
        ),
      ],
    );
  }

  String setTemp(String day) {
    if (day == 'Today') {
      return (temp + 2).toString() + "\u2103" + "/" + temp.toString() + "\u2103";
    } else {
      return temp.toString() + "\u2103";
    }
  }
}
