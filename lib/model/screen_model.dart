class OnboardModel {
  String img;
  String desc;
  OnboardModel({
    required this.img,
    required this.desc,
  });
}

List<OnboardModel> screens = <OnboardModel>[
  OnboardModel(
      img: "assets/image-5.jpg",
      desc: "Experience peace of mind while tracking your food in real time"),
  OnboardModel(
      img: "assets/image-6.png",
      desc: "Enjoy delivery from a friendly vetted fleet."),
  OnboardModel(
      img: "assets/image-3.jpg",
      desc: "Get food from the best restaurant with ease.")
];
