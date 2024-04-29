import 'package:easy_date_timeline/easy_date_timeline.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:team_project/theming/colors.dart';
import 'package:team_project/view/doctors_category/presentation/widgets/book_doctor_widget.dart';

import '../../../doctors_category/presentation/view_model/doctorcategory_cubit.dart';
import '../../../doctors_category/presentation/widgets/book_doctor_items_list_view.dart';
import '../../../doctors_category/presentation/widgets/grid_book_item_listview.dart';

class SelectDateAndTimeView extends StatelessWidget {
  const SelectDateAndTimeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: AppColor.mainColor,
          centerTitle: true,
          title: Text(
            'Select Date And Time',
            style: TextStyle(
              color: Colors.white,
              fontSize: 26.sp,
              fontWeight: FontWeight.w700,
            ),
          )),
      body: CustomScrollView(slivers: [
        SliverToBoxAdapter(
          child: EasyDateTimeLine(
            activeColor: AppColor.mainColor,
            headerProps: const EasyHeaderProps(
              dateFormatter: DateFormatter.fullDateDMonthAsStrY(),
              showHeader: true,
            ),
            initialDate: DateTime.now(),
            onDateChange: (selectedDate) {
              //`selectedDate` the new date selected.
            },
          ),
        ),
        const SliverToBoxAdapter(
          child: SizedBox(
            height: 28,
          ),
        ),
        SliverToBoxAdapter(
          child: Divider(
            color: AppColor.mainColor,
            indent: 20,
            endIndent: 20,
          ),
        ),
        const BookDoctorWidget(text: 'Available doctor'),
        BlocBuilder<DoctorCategoryCubit, DoctorCategoryState>(
          builder: (context, state) {
            var cubit = BlocProvider.of<DoctorCategoryCubit>(context);
            return SliverPadding(
                sliver: cubit.isListView
                    ? const BookDoctorItemsListView()
                    : const GridBookDoctorItemsList(),
                padding: const EdgeInsets.symmetric(
                  horizontal: 10,
                ));
          },
        )
      ]),
    );
  }
}
