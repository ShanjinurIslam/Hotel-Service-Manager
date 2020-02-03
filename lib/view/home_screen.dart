import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hotel_management/controller/serv_gen_controller.dart';
import 'package:hotel_management/model/service.dart';
import 'package:hotel_management/view/service_card.dart';

class HomeScreen extends StatelessWidget {
  List<Service> row1 = new List<Service>();
  List<Service> row2 = new List<Service>();
  ServiceGenerator generator = new ServiceGenerator();

  HomeScreen() {
    row1 = generator.row1 ;
    row2 = generator.row2 ;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white.withOpacity(0.95),
        body: Stack(
          children: <Widget>[
            Positioned(
              child: Row(
                children: <Widget>[
                  Text(
                    'Radisson Blu\t',
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.w900),
                  ),
                  Image.asset("images/logo.jpg",scale: 15,)
                ],
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
