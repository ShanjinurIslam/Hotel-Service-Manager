import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hotel_management/model/service.dart';
import 'package:hotel_management/view/service_card.dart';


class HomeScreen extends StatelessWidget {
  List<Service> row1 = new List<Service>();
  List<Service> row2 = new List<Service>();

  HomeScreen() {
    Service rs1 = new Service("images/bar.png", "Bar", "lorem", false);
    Service rs2 = new Service("images/bulter.png", "Butler", "Details", true);
    Service rs3 = new Service("images/gym.png", "Gym", "Details", false);
    Service rs4 = new Service("images/massage.png", "Massage", "Details", false);

    row1.add(rs1);
    row1.add(rs2);
    row1.add(rs3);
    row1.add(rs4);

    Service r2s1 = new Service("images/yoga.png", "Yoga", "Details", true);
    Service r2s2 = new Service("images/spa.png", "Spa", "Details", false);
    Service r2s3 = new Service("images/swim.png", "Swimming", "Details", false);
    Service r2s4 = new Service("images/room_service.png", "Room Service", "Details", false);

    row2.add(r2s1);
    row2.add(r2s2);
    row2.add(r2s3);
    row2.add(r2s4);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white.withOpacity(0.95),
        body: Stack(
          children: <Widget>[
            Positioned(
              child: Text(
                'Radisson Blu',
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.w900),
              ),
              top: 45,
              left: 40,
            ),
            Positioned(
              child: Row(
                children: <Widget>[
                  Icon(CupertinoIcons.profile_circled),
                  Text('\tProfile')
                ],
              ),
              top: 45,
              right: 350,
            ),
            Positioned(
              child: Row(
                children: <Widget>[
                  Icon(CupertinoIcons.settings),
                  Text('\tSettings')
                ],
              ),
              top: 45,
              right: 250,
            ),
            Positioned(
              top: 35,
              right: 40,
              child: RaisedButton(
                  elevation: 0,
                  color: Colors.green,
                  padding: EdgeInsets.fromLTRB(25, 10, 10, 10),
                  shape: RoundedRectangleBorder(
                      borderRadius: new BorderRadius.circular(10.0)),
                  onPressed: () => {},
                  child: Container(
                    width: 130,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text(
                          'Add New',
                          style: TextStyle(color: Colors.white),
                        ),
                        Icon(
                          Icons.arrow_forward_ios,
                          color: Colors.white,
                        )
                      ],
                    ),
                  )),
            ),
            Positioned(
              top: 130,
              left: 35,
              right: 40,
              child: SizedBox(
                  height: 300,
                  width: MediaQuery.of(context).size.width,
                  child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: row1.length,
                      itemBuilder: (BuildContext ctxt, int index) {
                        return new ServiceCard(row1[index]);
                      })),
            ),
            Positioned(
              top: 450,
              left: 35,
              right: 40,
              child: SizedBox(
                  height: 300,
                  width: MediaQuery.of(context).size.width,
                  child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: row2.length,
                      itemBuilder: (BuildContext ctxt, int index) {
                        return new ServiceCard(row2[index]);
                      })),
            )
          ],
        ));
  }
}
