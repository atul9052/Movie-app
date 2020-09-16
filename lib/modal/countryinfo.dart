class Country {
  static List<Country> getcountry() => [
    Country("India","assets/images/india.jpg"
    ), Country("United States","assets/images/us.png"
    ), Country("United Kingdom","assets/images/uk.png"
    ), Country("Australia","assets/images/aus.png"
    ), Country("Russia","assets/images/rus.png"
    ), Country("Pakistan","assets/images/pak.png"
    ),

  ];
  String title;
 String image;

  Country(this.title,this.image);
}
