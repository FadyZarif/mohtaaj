// lib/features/chats/ui/screens/chats_list_screen.dart

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../core/di/dependency_injection.dart';
import '../../../../core/helpers/extensions.dart';
import '../../../../core/routing/routes.dart';
import '../../../../core/theming/colors.dart';
import '../../../../core/theming/styles.dart';
import '../../data/models/chat_model.dart';
import '../../logic/chats_list/chats_list_cubit.dart';
import '../../logic/chats_list/chats_list_state.dart';
import '../widgets/chat_item_card.dart';

class ChatsListScreen extends StatelessWidget {
  const ChatsListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<ChatsListCubit>(),
      child: const _ChatsListScreen(),
    );
  }
}


class _ChatsListScreen extends StatefulWidget {
  const _ChatsListScreen({super.key});

  @override
  State<_ChatsListScreen> createState() => _ChatsListScreenState();
}

class _ChatsListScreenState extends State<_ChatsListScreen>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;
  final _searchController = TextEditingController();

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
    _tabController.addListener(_onTabChanged);

    // Load chats
    context.read<ChatsListCubit>().loadChats(
      userId: getIt<String>(), // Current user ID from DI
    );
  }

  void _onTabChanged() {
    if (!_tabController.indexIsChanging) {
      final filter = ChatFilterType.values[_tabController.index];
      context.read<ChatsListCubit>().changeFilter(filter);
    }
  }

  @override
  void dispose() {
    _tabController.dispose();
    _searchController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorsManager.backgroundColor,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Text('المحادثات', style: TextStyles.font20BlackBold),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {
              _showSearchDialog();
            },
            icon: const Icon(Icons.search, color: Colors.black),
          ),
        ],
        bottom: TabBar(
          controller: _tabController,
          labelColor: ColorsManager.mainColor,
          unselectedLabelColor: ColorsManager.textSecondary,
          indicatorColor: ColorsManager.mainColor,
          labelStyle: TextStyles.font16BlackMedium,
          tabs: const [
            Tab(text: 'الكل'),
            Tab(text: 'شراء'),
            Tab(text: 'بيع'),
          ],
        ),
      ),
      body: BlocBuilder<ChatsListCubit, ChatsListState>(
        builder: (context, state) {
          return state.when(
            initial: () => const SizedBox(),
            loading: () => const Center(child: CircularProgressIndicator()),
            success: (chats, filter) => _buildChatsList(chats),
            error: (message) => Center(
              child: Text(message, style: TextStyles.font16GreyRegular),
            ),
          );
        },
      ),
    );
  }

  Widget _buildChatsList(List<ChatModel> chats) {
    if (chats.isEmpty) {
      return Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.chat_bubble_outline,
              size: 80.sp,
              color: ColorsManager.textTertiary,
            ),
            SizedBox(height: 16.h),
            Text(
              'لا توجد محادثات',
              style: TextStyles.font18GreyMedium,
            ),
          ],
        ),
      );
    }

    return RefreshIndicator(
      onRefresh: () async {
        await context.read<ChatsListCubit>().loadChats(
          userId: getIt<String>(),
        );
      },
      child: ListView.separated(
        padding: EdgeInsets.symmetric(vertical: 8.h),
        itemCount: chats.length,
        separatorBuilder: (_, __) => Divider(
          height: 1,
          color: ColorsManager.dividerColor,
        ),
        itemBuilder: (context, index) {
          return ChatItemCard(
            chat: chats[index],
            currentUserId: getIt<String>(),
            onTap: () {
              context.pushNamed(
                Routes.chatRoomScreen,
                arguments: chats[index].id,
              );
            },
          );
        },
      ),
    );
  }

  void _showSearchDialog() {
    showDialog(
      context: context,
      builder: (dialogContext) => AlertDialog(
        title: Text('البحث في المحادثات', style: TextStyles.font18BlackBold),
        content: TextField(
          controller: _searchController,
          decoration: const InputDecoration(
            hintText: 'ابحث عن شخص أو منتج...',
            border: OutlineInputBorder(),
          ),
          onChanged: (value) {
            context.read<ChatsListCubit>().searchChats(value);
          },
        ),
        actions: [
          TextButton(
            onPressed: () {
              _searchController.clear();
              context.read<ChatsListCubit>().searchChats('');
              Navigator.pop(dialogContext);
            },
            child: Text('إلغاء', style: TextStyles.font14GreyMedium),
          ),
        ],
      ),
    );
  }
}