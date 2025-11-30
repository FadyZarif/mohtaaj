import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../core/theming/colors.dart';
import '../../../../core/theming/styles.dart';

class CategoryItemsSearchBar extends StatefulWidget {
  final Function(String) onSearch;

  const CategoryItemsSearchBar({
    super.key,
    required this.onSearch,
  });

  @override
  State<CategoryItemsSearchBar> createState() => _CategoryItemsSearchBarState();
}

class _CategoryItemsSearchBarState extends State<CategoryItemsSearchBar> {
  final TextEditingController _controller = TextEditingController();

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 48.h,
      decoration: BoxDecoration(
        color: ColorsManager.searchBarBackground,
        borderRadius: BorderRadius.circular(12.r),
      ),
      child: TextField(
        controller: _controller,
        textAlign: TextAlign.right,
        style: TextStyles.font14BlackRegular,
        decoration: InputDecoration(
          hintText: 'ابحث عن منتج...',
          hintStyle: TextStyles.font14GreyRegular,
          prefixIcon: const Icon(
            Icons.search,
            color: ColorsManager.iconSecondary,
          ),
          suffixIcon: _controller.text.isNotEmpty
              ? IconButton(
                  icon: const Icon(
                    Icons.clear,
                    color: ColorsManager.iconSecondary,
                  ),
                  onPressed: () {
                    _controller.clear();
                    widget.onSearch('');
                    setState(() {});
                  },
                )
              : null,
          border: InputBorder.none,
          contentPadding: EdgeInsets.symmetric(
            horizontal: 16.w,
            vertical: 12.h,
          ),
        ),
        onChanged: (value) {
          setState(() {});
        },
        onSubmitted: (value) {
          widget.onSearch(value);
        },
      ),
    );
  }
}
