class UnboardingContent {
  String image;
  String title;
  String description;
  UnboardingContent(
      {required this.image, required this.description, required this.title});
}

List<UnboardingContent> contents = [
  UnboardingContent(
      image: 'assets/images/foods/spaghetti-carbonara.png',
      description: 'Pick your foodfrom our manu\n More that 35 times',
      title: 'Select from our best menu'),
  UnboardingContent(
      image: 'assets/images/foods/pizza.png',
      description: 'You can pay cash on delivery',
      title: 'Suitable payment methods'),
  UnboardingContent(
      image: 'assets/images/foods/sushi.jpeg',
      description: 'You can pay cash on delivery',
      title: 'Suitable payment methods'),
];
