import 'package:hotel_management/model/service.dart';

class ServiceGenerator {
  List<Service> row1 = new List<Service>();
  List<Service> row2 = new List<Service>();

  ServiceGenerator() {
    Service rs1 = new Service("images/bar.png", "Bar", "lorem", false);
    Service rs2 = new Service("images/bulter.png", "Butler", "Details", true);
    Service rs3 = new Service("images/gym.png", "Gym", "Details", false);
    Service rs4 =
        new Service("images/massage.png", "Massage", "Details", false);

    row1.add(rs1);
    row1.add(rs2);
    row1.add(rs3);
    row1.add(rs4);

    Service r2s1 = new Service("images/yoga.png", "Yoga", "Details", true);
    Service r2s2 = new Service("images/spa.png", "Spa", "Details", false);
    Service r2s3 = new Service("images/swim.png", "Swimming", "Details", false);
    Service r2s4 = new Service(
        "images/room_service.png", "Room Service", "Details", false);

    row2.add(r2s1);
    row2.add(r2s2);
    row2.add(r2s3);
    row2.add(r2s4);
  }
}
