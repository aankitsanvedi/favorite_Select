import 'package:get/get.dart';

class FavauriteController extends GetxController {
     RxList<String> name = [
    'Ankit',
    'Ravi',
    'Niraj',
    'Monu',
    'Sonu',
    'Vaibhav',
    'Shubham'
  ].obs ;
    RxList selectFavList = [].obs ;

  addToFavourite(String value){
    selectFavList.add(value);
  }



  removeToFavorite(String value){
    selectFavList.remove(value);
  }


}