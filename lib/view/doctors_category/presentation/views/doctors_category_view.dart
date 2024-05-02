import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:team_project/helpers/extentions.dart';
import 'package:team_project/view/doctors_category/presentation/view_model/doctor_category_cubit.dart';
import 'package:team_project/view/doctors_category/presentation/widgets/grid_book_item_listview.dart';
import '../../../../theming/colors.dart';
import '../widgets/book_doctor_items_list_view.dart';
import '../widgets/book_doctor_widget.dart';
import '../widgets/doctor_category_item_list_view.dart';
import '../widgets/popular_doctor_title.dart';

class DoctorsCategoryView extends StatelessWidget {
  const DoctorsCategoryView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.black,
      appBar: AppBar(
        actions: [
          IconButton(
              onPressed: () {},
              icon: const Icon(
                  size: 35, color: Colors.white, Icons.search_rounded))
        ],
        leading: IconButton(
            onPressed: () {
              context.pop();
            },
            icon: const Icon(
              Icons.arrow_back_ios_new,
              color: Colors.white,
            )),
        backgroundColor: AppColor.mainColor,
        elevation: 0.0,
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: CustomScrollView(
          slivers: [
            const SliverToBoxAdapter(
              child: PopularDoctorTitle(),
            ),
            const DoctorCategoryItemListView(),
            const SliverPadding(
              padding: EdgeInsets.only(top: 41),
            ),
            const SliverToBoxAdapter(
              child: Divider(
                color: Color(0xffACA7A7),
              ),
            ),
            const BookDoctorWidget(text: 'Book a doctor'),
            BlocBuilder<DoctorCategoryCubit, DoctorCategoryState>(
              builder: (context, state) {
                var cubit = BlocProvider.of<DoctorCategoryCubit>(context);
                return cubit.isListView
                    ? const BookDoctorItemsListView()
                    : const GridBookDoctorItemsList();
              },
            )
          ],
        ),
      ),
    );
  }
}
