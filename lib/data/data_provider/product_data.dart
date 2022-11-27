// data seeding

import 'package:e_commerce/data/remoteService.dart';

import '../models/models.dart';
import 'package:get/state_manager.dart';

List<Welcome> favourite = [];

//
// List<Welcome> products=[];
class ProductController extends GetxController {
   var products = List<Welcome>.empty().obs;

  @override
  void onInit() {
    fetchProductss();
    // TODO: implement onInit
    super.onInit();
  }

  void fetchProductss() async {
    var productss = await RemoteService.fetchProducts();
    if (productss != null) {
      products.value = productss;
    }
  }
}

//
// List<Product> favourite=[];
//
// List<Product> products = [
//   Product(name: 'Orange',
//       price: 100,
//       description: "Benefits of eating oranges: High in Vitamin C,Healthy immune system,Prevents skin damage, and many more",
//       discount: 30,
//       image: 'images/orange.jpeg'),
//   Product(name: 'Apple',
//       price: 200,
//       description: "Scientists also give apples credit for helping:Your lung strength,Your heart,With asthma,Bone health, Weight loss,Your immune system.",
//       discount: 40, image: 'images/apple.jpeg'),
//   Product(name: 'Pineapple',
//       price: 300,
//       description: "Impressive Health Benefits of Pineapples: Loaded with nutrients, Contains disease-fighting antioxidants, May reduce your risk of cancer, May boost immunity and suppress inflammation, May speed recovery after surgery or strenuous exercise, Easy to add to your diet.",
//       discount: 60,image: 'images/pinapple.jpeg'),
//   Product(name: 'PawPaw',
//       price: 150,
//       description: "Impressive Health Benefits of PawPaw: Protection Against Heart Disease, Strengthen immune system, Potentially Protects Against Prostate Cancer,It contains high nutrients",
//       discount: 30,image: 'images/pawpaw.jpeg'),
//   Product(name: 'Orange',
//       price: 100,
//       description: "Benefits of eating oranges: High in Vitamin C,Healthy immune system,Prevents skin damage, and many more",
//       discount: 30,
//       image: 'images/orange.jpeg'),
//   Product(name: 'Apple',
//       price: 200,
//       description: "Scientists also give apples credit for helping:Your lung strength,Your heart,With asthma,Bone health, Weight loss,Your immune system.",
//       discount: 40, image: 'images/apple.jpeg'),
//   Product(name: 'Pineapple',
//       price: 300,
//       description: "Impressive Health Benefits of Pineapples: Loaded with nutrients, Contains disease-fighting antioxidants, May reduce your risk of cancer, May boost immunity and suppress inflammation, May speed recovery after surgery or strenuous exercise, Easy to add to your diet.",
//       discount: 60,image: 'images/pinapple.jpeg'),
//   Product(name: 'PawPaw',
//       price: 150,
//       description: "Impressive Health Benefits of PawPaw: Protection Against Heart Disease, Strengthen immune system, Potentially Protects Against Prostate Cancer,It contains high nutrients",
//       discount: 30,image: 'images/pawpaw.jpeg'),
//
//
// ];
