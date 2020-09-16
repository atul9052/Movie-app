class Languageinfo {
  static List<Languageinfo> getLanguageinfo() => [
    Languageinfo("Hindi",["assets/images/thriller1.jpg","assets/images/thriller2.jpg","assets/images/thriller3.jpg","assets/images/thriller4.jpg","assets/images/thriller5.jpg"]
    ), Languageinfo("Malayalam",["assets/images/mal1.jpg","assets/images/mal2.jpg","assets/images/mal3.jpg","assets/images/mal4.jpg","assets/images/mal5.jpg"]
    ), Languageinfo("Bengali",["assets/images/ben1.jpg","assets/images/ben2.jpg","assets/images/ben3.jpg"]
    ),Languageinfo("English",["assets/images/ultron.jpg","assets/images/war","assets/images/jack.jpg","assets/images/infinity.jpg","assets/images/endgame.jpg"]
    ),Languageinfo("Marathi",["assets/images/mar1.jpg","assets/images/mar2.jpg","assets/images/mar3.jpg"]
    )


  ];
  String title;
  List <String> images;

  Languageinfo(this.title,this.images);
}
