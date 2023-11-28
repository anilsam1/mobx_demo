class Recipe{
  String name;
  String catagory;
  String chef;

  Recipe({required this.name ,required this.catagory,required this.chef});

}


final List<Recipe> recipes = [
  Recipe(name: "fafda", catagory: "farsan", chef: "joker"),
  Recipe(name: "sattu", catagory: "drink", chef: "asdf"),
  Recipe(name: "abc", catagory: "xyz", chef: "asd"),
  Recipe(name: "fsdfas", catagory: "farsan", chef: "joker"),
];