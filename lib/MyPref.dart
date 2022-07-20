import 'package:shared_preferences/shared_preferences.dart';

void putSHR(String email, String password) async {
  SharedPreferences shr = await SharedPreferences.getInstance();
  shr.setString('e1', email);
  shr.setString('p1', password);
}

Future<List> getSHR()async {
  SharedPreferences shr = await SharedPreferences.getInstance();
  String email = shr.get('e1').toString();
  String password = shr.get('p1').toString();

  List l1 = [email,password];


  return l1;
}
