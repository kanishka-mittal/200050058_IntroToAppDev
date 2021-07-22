import 'package:location/location.dart';
import 'package:geocoder/geocoder.dart';

class NewLocation {
  late String cityName;
  Future<void> getCurrentlocation() async {
    var location = new Location();
    LocationData userLocation;
    userLocation = await location.getLocation();
    double? latitude = userLocation.latitude;
    double? longitude = userLocation.longitude;
    final coordinates = new Coordinates(latitude, longitude);
    var addresses =
        await Geocoder.local.findAddressesFromCoordinates(coordinates);
    var first = addresses.first;
    cityName = first.locality;
  }
}
