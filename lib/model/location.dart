class TopJourney {
  final String liked;
  final String image;
  final String price;
  final String calendar;
  final String date;
  final String title;
  TopJourney({
    required this.liked,
    required this.image,
    required this.price,
    required this.calendar,
    required this.date,
    required this.title,
  });

  static final topjourneys = [
    TopJourney(
      liked: '1247',
      image: 'assets/location/image1.png',
      price: '400.00',
      date: '3 days',
      calendar: 'Jan 30,2020',
      title: 'Da Nang - Ba Na - Hoi An'
    ),
    TopJourney(
        liked: '1247',
        image: 'assets/location/image2.png',
        price: '600.00',
        date: '3 days',
        calendar: 'Jan 30,2020',
        title: 'Thailand'
    ),
  ];
}

class FeaturedTour {
  final String liked;
  final String image;
  final String price;
  final String calendar;
  final String date;
  final String title;

  FeaturedTour({
    required this.liked,
    required this.image,
    required this.price,
    required this.calendar,
    required this.date,
    required this.title,
  });

  static final featuredtours = [
    FeaturedTour(
        liked: '1247',
        image: 'assets/location/image8.png',
        price: '400.00',
        date: '3 days',
        calendar: 'Jan 30,2020',
        title: 'Da Nang - Ba Na - Hoi An'
    ),
    FeaturedTour(
        liked: '1247',
        image: 'assets/location/image4.png',
        price: '600.00',
        date: '3 days',
        calendar: 'Jan 30,2020',
        title: 'Melbourne - Sydney'
    ),
    FeaturedTour(
        liked: '1247',
        image: 'assets/location/image3.png',
        price: '300.00',
        date: '3 days',
        calendar: 'Jan 30,2020',
        title: 'Hanoi - Ha Long Bay'
    ),
  ];
}

class TravelNew {
  final String liked;
  final String image;
  final String price;
  final String calendar;
  final String date;
  final String title;

  TravelNew({
    required this.liked,
    required this.image,
    required this.price,
    required this.calendar,
    required this.date,
    required this.title,
  });

  static final travelnews = [
    TravelNew(
        liked: '1247',
        image: 'assets/location/image5.png',
        price: '',
        date: '',
        calendar: 'Feb 5,2020',
        title: 'New Destination in Danang City'
    ),
    TravelNew(
        liked: '1247',
        image: 'assets/location/image6.png',
        price: '400',
        date: '',
        calendar: 'Jan 30,2020',
        title: '\$1 Flight Ticket'
    ),
    TravelNew(
        liked: '1247',
        image: 'assets/location/image7.png',
        price: '400',
        date: '',
        calendar: 'Jan 30,2020',
        title: 'Visit Korea in this Tet Holiday'
    ),
  ];
}

class Story {
  final String title;
  final String location;
  final String image;
  Story ({
    required this.title,
    required this.location,
    required this.image
});

  static final stories = [
    Story(
        title: '2 Hour Bicycle Tour exploring Hoian',
        location: 'Hoian, Vietnam',
        image: 'assets/location/hoian.png'
    ),
    Story(
        title: '1 day at Bana Hill',
        location: 'Bana, Vietnam',
        image: 'assets/location/hoian1.png'
    )
  ];
}
