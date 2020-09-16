class Song {
  static List<Song> getsongs() => [
    Song(
        "Do you Love me","Nikhita Gandhi,Rene Bendali","14 Jan 2020","audios/Do.mp3"
    ),Song(
        "Dus","Shekhar and Vishal Dadlani","14 Jan 2020","audios/Dus.mp3"
    ),

  ];
  String Singer;
  String songname;
  String Music;
  String Released;
  Song(this.songname,this.Singer,
      this.Released, this.Music);






}
