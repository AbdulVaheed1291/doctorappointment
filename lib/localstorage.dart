import 'package:shared_preferences/shared_preferences.dart';

class Localstorage{
Store(String value)async{
   SharedPreferences sh=await SharedPreferences.getInstance();
   sh.setString("key", value);
}

get()async{
  SharedPreferences sh=await SharedPreferences.getInstance();
  sh.getString("key");
}

}