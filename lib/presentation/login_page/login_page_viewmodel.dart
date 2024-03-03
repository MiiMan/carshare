import 'package:carshare/binding.dart';
import 'package:flutter/material.dart';

class LoginPageViewModel extends ChangeNotifier {
  late final Binding _binding = Binding(notifyListeners);

  late final BValue<int> page = _binding.add(0);

  late final BValue<List<TextEditingController>> times = _binding.add([]);

  @override
  void dispose() {
    _binding.dispose();
    super.dispose();
  }

}
