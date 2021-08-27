import 'package:flutter/material.dart';

import 'weatherApi.dart';

class Header extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Icon(
            Icons.menu,
            color: Color(0xffE3E2E6),
            size: 20,
          ),
          Text("Weatherman",
              style: TextStyle(
                color: Color(0xffE3E2E6),
                fontSize: 20,
              )),
          IconButton(
            onPressed: () {
              print("Add new City");
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => WeatherApi()),
              );
            },
            icon: Icon(
              Icons.add_circle,
              color: Color(0xffE3E2E6),
              size: 20,
            ),
          )
        ],
      ),
    );
  }
}
