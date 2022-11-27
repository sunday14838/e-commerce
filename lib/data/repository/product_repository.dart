import 'package:e_commerce/data/data_provider/product_data.dart';
import 'package:e_commerce/data/models/models.dart';

class ProductRepository{


  void addToCart(){

  }

  void addFavorite({required Welcome product}){
    favourite.add(product);
  }
  void removeFavorite({required int index}){
    favourite.removeAt(index);
  }

}