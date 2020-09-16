class FilterModal {
  static List<FilterModal> getCategoryinfo() => [
    FilterModal("Thriller movies",["assets/images/thriller1.jpg","assets/images/thriller2.jpg","assets/images/thriller3.jpg","assets/images/thriller4.jpg","assets/images/thriller5.jpg"]
    ), FilterModal("Horror",["assets/images/horror1.jpg","assets/images/horror2.jpg","assets/images/horror3.jpg","assets/images/horror4.jpg","assets/images/horror5.jpg"]
    ), FilterModal("Hindi-Language gangster movies",["assets/images/sus1.jpg","assets/images/thriller2.jpg","assets/images/thriller3.jpg","assets/images/thriller4.jpg","assets/images/thriller5.jpg"]
    ),FilterModal("Thriller comedies",["assets/images/comedy1.jpg","assets/images/comedy2.jpg","assets/images/comedy3.jpg","assets/images/Comedy4.jpg","assets/images/Comedy5.jpg"]
    ),FilterModal("Suspense",["assets/images/thriller1.jpg","assets/images/thriller2.jpg","assets/images/thriller3.jpg","assets/images/thriller4.jpg","assets/images/thriller5.jpg"]
    ),FilterModal("Hindi dubbed",["assets/images/hidu1.jpg","assets/images/hidu2.jpg","assets/images/hidu3.jpg","assets/images/hidu4.jpg","assets/images/endgame.jpg"]
    ),FilterModal("english movies",["assets/images/ultron.jpg","assets/images/war","assets/images/jack.jpg","assets/images/infinity.jpg","assets/images/endgame.jpg"]
    ),FilterModal("hindi movies",["assets/images/comedy1.jpg","assets/images/thriller1.jpg","assets/images/horror2.jpg","assets/images/horror5.jpg","assets/images/Comedy5.jpg"]
    ),FilterModal("New released",["assets/images/new1.jpg","assets/images/new2.jpg","assets/images/new3.jpg"]
  ),FilterModal("Comedy Movies",["assets/images/comedy1.jpg","assets/images/comedy2.jpg","assets/images/comedy3.jpg","assets/images/Comedy4.jpg","assets/images/Comedy5.jpg"]
  ),FilterModal("Hindi comedy shows",["assets/images/co1.jpg","assets/images/co2.jpg","assets/images/co3.jpg"]
  ),FilterModal("english comedy shows",["assets/images/enco.jpg","assets/images/enco2.jpg","assets/images/enco3.jpg","assets/images/enco4.jpg"]
    ),FilterModal("Mystery shows",["assets/images/co1.jpg","assets/images/co2.jpg","assets/images/co3.jpg"]
    ),FilterModal("Sports Movies",["assets/images/sp1.jpg","assets/images/sp2.jpg","assets/images/sp3.jpg","assets/images/sp4.jpg"]
    )


  ];
  String title;
  List <String> images;

  FilterModal(this.title,this.images);
}
