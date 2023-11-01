class ButtonTile {
  final String text;
  final int value;
  ButtonTile({required this.text, required this.value});
}

List<ButtonTile> tileDetails = [
  ButtonTile(text: "Total Users", value: 100),
  ButtonTile(text: "Active Users", value: 35),
  ButtonTile(text: "Current Bookings", value: 10),
  ButtonTile(text: "Total Locations", value: 7),
  ButtonTile(text: "Total Listing", value: 4),
];

class LocationTile {
  final String image;
  final String locationName;
  final String countryName;
  LocationTile({
    required this.image,
    required this.locationName,
    required this.countryName,
  });
}

List<LocationTile> locationTileDetails = [
  LocationTile(
      image: "assets/images/burjKhalifa.jpeg",
      locationName: "Dubai",
      countryName: "UAE"),
  LocationTile(
      image: "assets/images/effileTower.jpeg",
      locationName: "Paris",
      countryName: "France"),
  LocationTile(
      image: "assets/images/phuket.jpeg",
      locationName: "Phuket",
      countryName: "Thailand"),
  LocationTile(
      image: "assets/images/rome.jpeg",
      locationName: "Rome",
      countryName: "Italy"),
  LocationTile(
      image: "assets/images/tajMehal.jpg",
      locationName: "Agra",
      countryName: "india"),
  LocationTile(
      image: "assets/images/turkey.jpeg",
      locationName: "Cappadocia",
      countryName: "Turkey"),
  LocationTile(
      image: "assets/images/whiteBuildings.jpeg",
      locationName: "Santorini",
      countryName: "Greek Land"),
];
