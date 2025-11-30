// lib/features/search/ui/screens/search_screen.dart
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../core/di/dependency_injection.dart';
import '../../../../core/widgets/items_list_screen.dart';
import '../../../items/logic/items_list_cubit/items_list_cubit.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<ItemsListCubit>(),
      child: const ItemsListScreen(
        title: 'البحث',
        searchHint: 'ابحث عن أي شيء...',
        autoFocus: true, // عشان يفتح الكيبورد في صفحة البحث
      ),
    );
  }
}