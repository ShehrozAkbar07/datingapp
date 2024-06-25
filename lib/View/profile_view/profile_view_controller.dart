// import 'package:appinio_swiper/appinio_swiper.dart';
import 'package:get/get.dart';

class PeopleViewController extends GetxController {
  RxBool isEnd = false.obs;
  RxInt cardIndex = 0.obs;
  RxList<String> card = [
    "assets/images/fayaz.png",
    "assets/images/halima.png",
    "assets/images/vanesa.png",
    "assets/images/berlin.png"
  ].obs;
  RxList<String> namelist = [
    "Fayaz, 20",
    "Halima, 30",
    "Vanesa, 40",
    "Bereta, 50",
  ].obs;
  RxList<String> location = [
    "HAMBURG, GERMANY",
    "BERLIN, GERMANY",
    "ENGLAND, LONDON",
    "FRANCE PARIS",
  ].obs;
}
