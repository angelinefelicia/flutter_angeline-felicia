import 'package:alta_section27_praktikum/model/api/food_api.dart';
import 'package:alta_section27_praktikum/model/food_model.dart';
import 'package:test/test.dart';
import 'package:mockito/mockito.dart';
import 'package:mockito/annotations.dart';
import 'food_api_test.mocks.dart';

@GenerateMocks([FoodApi])
void main() {
  group('FoodApi', () {
    FoodApi foodApi = MockFoodApi();

    test('get all foods returns data', () async {
      // when(foodApi.getFoods()).thenAnswer(
      //   (_) async => <Food>[
      //     Food(id: 1, name: 'a'),
      //   ],
      // );
      // var foods = await foodApi.getFoods();
      var foods = await FoodApi.getFoods();
      expect(foods.isNotEmpty, true);
    });
  });
}
