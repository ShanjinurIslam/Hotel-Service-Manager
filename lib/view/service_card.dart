import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hotel_management/model/service.dart';
import 'package:lipsum/lipsum.dart' as lipsum;

class ServiceCard extends StatelessWidget {
  Service service;
  ServiceCard(this.service);

  @override
  Widget build(BuildContext context) {
    return new Container(
      child: Stack(
        children: <Widget>[
          Positioned(
              top: 40,
              left: 30,
              child: CircleAvatar(
                radius: 20,
                backgroundImage: AssetImage(service.imgURL),
              )),
          Positioned(
              top: 100,
              left: 30,
              child: Text(
                service.serviceName,
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.w900),
              )),
          Positioned(
              top: 150,
              left: 30,
              right: 30,
              child: Text(
                lipsum.createWord(numWords: 10),
                style: TextStyle(fontSize: 12, fontWeight: FontWeight.w100),
              )),
          Positioned(
            top: 210,
            left: 30,
            height: 30,
            child: !service.booked
                ? RaisedButton(
                    highlightColor: Colors.white,
                    elevation: 0,
                    shape: RoundedRectangleBorder(
                        borderRadius: new BorderRadius.circular(5.0)),
                    color: Colors.green.withOpacity(0.25),
                    onPressed: () {},
                    child: Container(
                      child: Text(
                        'BOOK A SLOT',
                        style: TextStyle(
                            color: Colors.green,
                            fontSize: 10,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  )
                : RaisedButton(
                    elevation: 0,
                    shape: RoundedRectangleBorder(
                        borderRadius: new BorderRadius.circular(5.0)),
                    color: Colors.white.withOpacity(.5),
                    onPressed: null,
                    child: Container(
                      child: Text(
                        'SLOTS FULL',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 10,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
          ),
        ],
      ),
      margin: EdgeInsets.fromLTRB(20, 10, 10, 10),
      height: 250,
      width: 220,
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: new BorderRadius.circular(10.0)),
    );
    ;
  }
}
