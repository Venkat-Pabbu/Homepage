

import '../Cart_models/menuItemsModel.dart';
import 'items.dart';

List<MenuItemsModel> MenuItemsModelList = [];

List menuList = [
  {
    'image': 'asset/pizaa.png',
    'name': 'Pizza',
    'totalItems': pizzaItems.length.toInt(),
    'items': pizzaItems,
  },
  {
    'image': 'asset/img.png',
    'name': 'Biryani',
    'totalItems': BiryaniItem.length.toInt(),
    'items': BiryaniItem,
  },
  {
    'image': 'asset/dess.png',
    'name': 'Desserts',
    'totalItems': dessertsItem.length.toInt(),
    'items': dessertsItem,
  },
  {
    'image': 'asset/pasta.png',
    'name': 'Pasta',
    'totalItems': pastaItem.length.toInt(),
    'items': pastaItem,
  },
  {
    'image': 'asset/beverages.png',
    'name': 'Beverages',
    'totalItems': beveragesItem.length.toInt(),
    'items': beveragesItem,
  },
];
