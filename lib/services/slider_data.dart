import 'package:flutter_newsapi_project/models/slider_model.dart';

List<SliderModel> getSliders() {
  List<SliderModel> sliders = [];
  SliderModel sliderModel = SliderModel();

  sliderModel.name = "Explore what's new in business in year 2024";
  sliderModel.image = "assets/images/business.jpg";
  sliders.add(sliderModel);
  sliderModel = SliderModel();

  sliderModel.name = "Latest News on education category";
  sliderModel.image = "assets/images/education.jpg";
  sliders.add(sliderModel);
  sliderModel = SliderModel();

  sliderModel.name = "What happened in last 24 hours in Healthcare";
  sliderModel.image = "assets/images/healthcare.jpeg";
  sliders.add(sliderModel);
  sliderModel = SliderModel();

  sliderModel.name =
      "Destination of your choice to travel this summer with your family";
  sliderModel.image = "assets/images/travel.jpg";
  sliders.add(sliderModel);
  sliderModel = SliderModel();

  sliderModel.name = "Upcoming movies in bollywood and hollywood";
  sliderModel.image = "assets/images/entertainment.jpg";
  sliders.add(sliderModel);
  sliderModel = SliderModel();

  return sliders;
}
