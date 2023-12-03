import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:food_unleash/app_state/nav_state/nav_state.dart';

class TabManager extends StateNotifier<NavState> {
  TabManager() : super(const NavState());

  void goToTab(int index) {
    state = state.copyWith(index: index);
  }

  void goToRecipe() {
    state = state.copyWith(index: 1);
  }
}

final tabManagerProvider = StateNotifierProvider<TabManager, NavState>((ref) => TabManager());
