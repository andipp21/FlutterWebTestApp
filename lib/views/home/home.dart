import 'package:flutter/material.dart';
import 'package:secondaryflutterapps/controller/data_controller.dart';

class HomeScreens extends StatefulWidget {
  @override
  _HomeScreensState createState() => _HomeScreensState();
}

class _HomeScreensState extends State<HomeScreens> {
  @override
  Widget build(BuildContext context) {
    var data = DataController().fetchData();

    var data2 = DataController().fetchPartner();

    print("Data => $data");
    print("Data => $data2");
    // var data = getData() as HttpClientResponse;
    return Container(
      child: Text("Text Ini Loh"),
    );
  }
}
