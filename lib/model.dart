class ModelClass {
  String name;
  String country;
  String dish;
  String fruit;

  ModelClass(
      {required this.name,
      required this.country,
      required this.dish,
      required this.fruit});
}

List<ModelClass> data = [
  ModelClass(
      name: 'Khushal Khan', country: 'Pakistan', dish: 'Rice', fruit: 'Mango'),
  ModelClass(
      name: 'ahmad Khan', country: 'Pakistan', dish: 'Rice', fruit: 'Mango'),
  ModelClass(
      name: 'waqas Khan', country: 'Pakistan', dish: 'Rice', fruit: 'Mango'),
  ModelClass(
      name: 'tabish Khan', country: 'Pakistan', dish: 'Rice', fruit: 'Mango'),
  ModelClass(
      name: 'fahad Khan', country: 'Pakistan', dish: 'Rice', fruit: 'Mango'),
  ModelClass(
      name: 'farman  Khan', country: 'Pakistan', dish: 'Rice', fruit: 'Mango'),
];
