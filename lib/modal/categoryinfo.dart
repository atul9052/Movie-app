class Categoryinfo {
  static List<Categoryinfo> getCategoryinfo() => [
    Categoryinfo("Thriller movies",["assets/images/thriller1.jpg","assets/images/thriller2.jpg","assets/images/thriller3.jpg","assets/images/thriller4.jpg","assets/images/thriller5.jpg"]
    ), Categoryinfo("Horror",["assets/images/horror1.jpg","assets/images/horror2.jpg","assets/images/horror3.jpg","assets/images/horror4.jpg","assets/images/horror5.jpg"]
    ), Categoryinfo("Suspense",["assets/images/sus1.jpg","assets/images/thriller2.jpg","assets/images/thriller3.jpg","assets/images/thriller4.jpg","assets/images/thriller5.jpg"]
    ),Categoryinfo("Thriller Comedies",["assets/images/comedy1.jpg","assets/images/comedy2.jpg","assets/images/comedy3.jpg","assets/images/Comedy4.jpg","assets/images/Comedy5.jpg"]
    ),


  ];
  String title;
 List <String> images;

  Categoryinfo(this.title,this.images);
}
