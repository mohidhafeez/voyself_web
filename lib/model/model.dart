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

class Listing {
  final String image;
  final String locationName;
  final String locationCity;
  final double rating;
  final int price;

  Listing({
    required this.image,
    required this.locationName,
    required this.locationCity,
    required this.rating,
    required this.price,
  });
}

List<Listing> listingDetails = [
  Listing(
      image: "assets/images/burjKhalifa.jpeg",
      locationName: "Burj khalifa",
      locationCity: "Dubai",
      rating: 5.0,
      price: 200),
  Listing(
      image: "assets/images/effileTower.jpeg",
      locationName: "Effie Tower",
      locationCity: "Paris",
      rating: 4.5,
      price: 200),
  Listing(
      image: "assets/images/phuket.jpeg",
      locationName: "Patong Beach",
      locationCity: "Phuket",
      rating: 3.5,
      price: 200),
  Listing(
      image: "assets/images/rome.jpeg",
      locationName: "Colossuem",
      locationCity: "Rome",
      rating: 3.0,
      price: 200),
  Listing(
      image: "assets/images/turkey.jpeg",
      locationName: "Goreme National Park",
      locationCity: "Cappadocia",
      rating: 4.5,
      price: 200),
  Listing(
      image: "assets/images/whiteBuildings.jpeg",
      locationName: "White Buildings",
      locationCity: "Santorini",
      rating: 4.0,
      price: 200),
  Listing(
      image: "assets/images/tajMehal.jpg",
      locationName: "Taj Mehal",
      locationCity: "Agra",
      rating: 3.4,
      price: 200),
];

class Booking {
  final int bookingID;
  final String clientName;
  final String bookingPlace;
  final String guest;
  final DateTime checkIn;
  final DateTime checkOut;
  final String payment;
  final bool status;
  final DateTime date;
  Booking({
    required this.bookingID,
    required this.clientName,
    required this.bookingPlace,
    required this.guest,
    required this.checkIn,
    required this.checkOut,
    required this.payment,
    required this.status,
    required this.date,
  });
}

List<Booking> bookingDetails = [
  Booking(
      bookingID: 12312,
      clientName: "Kaze",
      bookingPlace: "Opera House",
      guest: "5",
      checkIn: DateTime(2023, 11, 04, 09, 30),
      checkOut: DateTime(2023, 11, 04, 18, 30),
      payment: "Credit Card",
      status: true,
      date: DateTime(2023, 11, 04)),
  Booking(
      bookingID: 12312,
      clientName: "JV",
      bookingPlace: "Burj Khalifa",
      guest: "5",
      checkIn: DateTime(2023, 11, 04, 09, 30),
      checkOut: DateTime(2023, 11, 04, 18, 30),
      payment: "Credit Card",
      status: false,
      date: DateTime(2023, 11, 04)),
  Booking(
      bookingID: 12312,
      clientName: "Ronnie",
      bookingPlace: "Effile Tower",
      guest: "5",
      checkIn: DateTime(2023, 11, 04, 09, 30),
      checkOut: DateTime(2023, 11, 04, 18, 30),
      payment: "Credit Card",
      status: true,
      date: DateTime(2023, 11, 04)),
  Booking(
      bookingID: 12312,
      clientName: "Vick",
      bookingPlace: "Colosome",
      guest: "5",
      checkIn: DateTime(2023, 11, 04, 09, 30),
      checkOut: DateTime(2023, 11, 04, 18, 30),
      payment: "Credit Card",
      status: true,
      date: DateTime(2023, 11, 04)),
  Booking(
      bookingID: 12312,
      clientName: "JV",
      bookingPlace: "Burj Khalifa",
      guest: "5",
      checkIn: DateTime(2023, 11, 04, 09, 30),
      checkOut: DateTime(2023, 11, 04, 18, 30),
      payment: "Credit Card",
      status: false,
      date: DateTime(2023, 11, 04)),
  Booking(
      bookingID: 12312,
      clientName: "Lzzy",
      bookingPlace: "Opera House",
      guest: "5",
      checkIn: DateTime(2023, 11, 04, 09, 30),
      checkOut: DateTime(2023, 11, 04, 18, 30),
      payment: "Credit Card",
      status: true,
      date: DateTime(2023, 11, 04)),
  Booking(
      bookingID: 12312,
      clientName: "JV",
      bookingPlace: "Burj Khalifa",
      guest: "5",
      checkIn: DateTime(2023, 11, 04, 09, 30),
      checkOut: DateTime(2023, 11, 04, 18, 30),
      payment: "Credit Card",
      status: false,
      date: DateTime(2023, 11, 04)),
  Booking(
      bookingID: 12312,
      clientName: "Earl",
      bookingPlace: "Taj Mehal",
      guest: "5",
      checkIn: DateTime(2023, 11, 04, 09, 30),
      checkOut: DateTime(2023, 11, 04, 18, 30),
      payment: "Credit Card",
      status: true,
      date: DateTime(2023, 11, 04)),
  Booking(
      bookingID: 12312,
      clientName: "JV",
      bookingPlace: "Burj Khalifa",
      guest: "5",
      checkIn: DateTime(2023, 11, 04, 09, 30),
      checkOut: DateTime(2023, 11, 04, 18, 30),
      payment: "Credit Card",
      status: false,
      date: DateTime(2023, 11, 04)),
];
