import 'package:flutter/material.dart';
import 'package:mobx_demo/model/recipe_model.dart';

class RecipeScreen extends StatelessWidget {
  final List<Recipe> recipes;
  final ValueChanged<Recipe> onTap;

  const RecipeScreen({super.key, required this.recipes, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          for (var recipe in recipes)
            ListTile(
              title: Text(recipe.name),
              subtitle: Text(recipe.catagory),
              onTap: () => onTap(recipe),
            )
        ],
      ),
    );
  }
}
