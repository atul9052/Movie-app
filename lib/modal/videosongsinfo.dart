class VideoSong {
  static List<VideoSong> getvideosongs() => [
    VideoSong(
        "malang","karan aujla,Gurlej akhtar","02 Dec 2019","assets/images/malang.jpg","assets/videos/mg.mp4"
    ),
    VideoSong(
        "Dil bechara","karan aujla,Gurlej akhtar","02 Dec 2019","assets/images/dilbechara.jpg","assets/videos/mt.mp4"
    ),

  ];
  String Singer;
  String songname;
  String Music;
  String image;
  String Released;
  VideoSong(this.songname,this.Singer,
      this.Released,this.image, this.Music);


}
