import 'package:dio/dio.dart';
import 'package:food_recipe/src/models/area/area_meals.dart';

class FoodApiProvider {
  Dio dio = Dio();
  final _baseUrl = "https://www.themealdb.com";

  Future<AreaMeals> getAreaMeals() async {
    final response = await dio.get("$_baseUrl/api/json/v1/1/random.php");
    if (response.statusCode == 200) {
      return AreaMeals.fromJson(response.data);
    } else {
      throw Exception("Failed to get area meals");
    }
  }
}
