import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:food_unleash/food_unleash_theme.dart';

import 'home.dart';

void main() {
  runApp(const FoodUnleash());
}

class FoodUnleash extends StatelessWidget {
  const FoodUnleash({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = FoodUnleashTheme.darkTheme();
   return ProviderScope(
     child: MaterialApp(
          theme: theme,
          title: 'Food Unleash',
          home: const Home(),
      ),
   );
  }
}

// Part 1
// You can call the provided async function fetchRole()
// to return the user role.
// Future<String> reportUserRole() async {
//   print('............');
//   var role =  await fetchRole();
//   print(role);
//   return 'User role is $role';
// }
//
// Future<String> reportLogin() async {
//   print('***********');
//   final numberLogin = await fetchLoginAmount();
//   print(numberLogin);
//   return 'The number of login : $numberLogin';
// }
//
// const oneSecond = Duration(seconds: 1);
// const logins = 42;
// Future<int> fetchLoginAmount() => Future.delayed(oneSecond, () => logins);
//
//
// const role = 'administrator';
// Future<String> fetchRole() => Future.delayed(oneSecond , () => role);
//
// Future<String> fetchUsername() => Future.delayed(oneSecond, () => 'Jean');
// bool logoutSucceeds = false;
// String failOnce() {
//   if (logoutSucceeds) {
//     return 'Success!';
//   } else {
//     logoutSucceeds = true;
//     throw Exception('Logout failed');
//   }
// }
// Future<String> logoutUser() => Future.delayed(oneSecond, failOnce);
//
// // Part 1
// String addHello(String user) {
//   return 'Hello $user';
// }
//
// // Part 2
// // You can call the provided async function fetchUsername()
// // to return the username.
// Future<String> greetUser() async {
//   final userName = await fetchUsername();
//   final hello = addHello(userName);
//   print(hello);
//   return hello;
// }
//
// // Part 3
// // You can call the provided async function logoutUser()
// // to log out the user.
// Future<String> sayGoodbye() async {
//   try {
//     var result = await logoutUser();
//     print('$result Thanks, see you next time');
//     return '$result Thanks, see you next time';
//   } catch (err) {
//     return 'Failed to log out user: $err';
//   }
// }
//
