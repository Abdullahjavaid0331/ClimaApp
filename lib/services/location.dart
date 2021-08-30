import 'package:geolocator/geolocator.dart';

class Location {
  double latitude;
  double longitude;

  Location({this.latitude, this.longitude});
  double getLatitude() {
    return latitude;
  }

  double getLongitude() {
    return longitude;
  }

  Future<void> getLocation() async {
    try {
      Position position = await Geolocator.getCurrentPosition(
          desiredAccuracy: LocationAccuracy.low);
      latitude = position.latitude;
      longitude = position.longitude;
    } catch (e) {
      print(e);
    }
  }

  // void getCurrentLocation() {
  //   print("latitude is $latitude and longitude is $longitude");
  // }
}
