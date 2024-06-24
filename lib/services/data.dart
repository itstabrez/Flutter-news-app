import 'package:flutter_newsapi_project/models/category_model.dart';

List<CategoryModel> getCategories() {
  List<CategoryModel> category = [];
  CategoryModel categoryModel = CategoryModel();

  categoryModel.categoryName = "Business";
  categoryModel.image = "assets/images/business.jpg";
  category.add(categoryModel);
  categoryModel = CategoryModel();

  categoryModel.categoryName = "Education";
  categoryModel.image = "assets/images/education.jpg";
  category.add(categoryModel);
  categoryModel = CategoryModel();

  categoryModel.categoryName = "Healthcare";
  categoryModel.image = "assets/images/healthcare.jpeg";
  category.add(categoryModel);
  categoryModel = CategoryModel();

  categoryModel.categoryName = "Travel";
  categoryModel.image = "assets/images/travel.jpg";
  category.add(categoryModel);
  categoryModel = CategoryModel();

  categoryModel.categoryName = "Entertainment";
  categoryModel.image = "assets/images/entertainment.jpg";
  category.add(categoryModel);
  categoryModel = CategoryModel();

  return category;
}
