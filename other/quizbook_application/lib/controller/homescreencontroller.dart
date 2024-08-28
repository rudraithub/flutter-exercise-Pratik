import 'package:get/get.dart';
import 'package:quizbook_application/models/homescreenmodel.dart';
import 'package:quizbook_application/services/homescreenservices.dart';

class Standardcontrolller extends GetxController
{
  var isLoading = true.obs;
  var stdList = <Datum>[].obs;

  @override
  void onInit() {
    
    fetchStdser();
    super.onInit();
  }
  void fetchStdser() async{
    try{
      isLoading(true);
      var fetchdata = await apiservices().fetchStdser();
      stdList.value = fetchdata.cast<Datum>();
    }
    finally{
      isLoading(false);
    }
  }
}