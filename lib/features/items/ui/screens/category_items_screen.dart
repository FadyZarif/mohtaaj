// lib/features/items/ui/screens/category_items_screen.dart
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../core/di/dependency_injection.dart';
import '../../../../core/widgets/items_list_screen.dart';
import '../../../categories/data/models/category_model.dart';
import '../../logic/items_list_cubit/items_list_cubit.dart';

class CategoryItemsScreen extends StatelessWidget {
  final CategoryModel category;

  const CategoryItemsScreen({
    super.key,
    required this.category,
  });

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<ItemsListCubit>(),
      child: ItemsListScreen(
        title: category.name,
        categoryId: category.id,
        searchHint: 'ابحث في ${category.name}...',
      ),
    );
  }
}