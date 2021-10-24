import 'package:sonr_plugin/sonr_plugin.dart';
import 'package:shared_preferences/shared_preferences.dart';

class StoreService extends GetxService {
  final profile = Profile().obs;
  final recents = ProfileList().obs;
  final history = PayloadList().obs;
  final prefs = SharedPreferences.getInstance();
}
