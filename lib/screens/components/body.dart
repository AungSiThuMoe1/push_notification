import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'header_with_searchbox.dart';
import 'title_with_more_btn.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: [
          HeaderWithSearchBox(size: size),
          TitleWithMoreBtn(title: "Recommended",press: (){},),
          Text('Address',
          style: TextStyle(
            fontSize: 20,
          ),),
          FlatButton(
            onPressed: () async{
              Geolocator geolocator = Geolocator()..forceAndroidLocationManager = true;
              GeolocationStatus geolocationStatus  = await geolocator.checkGeolocationPermissionStatus();
              print(geolocationStatus);
            },
            color: Colors.blue,
            child: Text('GetLocation'),
          ),
        ],
      )
    );
  }
}




