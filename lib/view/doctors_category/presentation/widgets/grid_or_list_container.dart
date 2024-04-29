import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:team_project/view/doctors_category/presentation/view_model/doctorcategory_cubit.dart';

class GridOrListViewContainer extends StatelessWidget {
  const GridOrListViewContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 95.w,
      height: 41.h,
      decoration: BoxDecoration(
        color: const Color(0xffEFECEC),
        borderRadius: BorderRadius.circular(16.r),
      ),
      child: BlocBuilder<DoctorCategoryCubit, DoctorCategoryState>(
        builder: (context, state) {
          var cubit = BlocProvider.of<DoctorCategoryCubit>(context);
          return Row(mainAxisAlignment: MainAxisAlignment.center, children: [
            InkWell(
                onTap: () {
                  cubit.toggleBetweenListAndGrid();
                },
                child: Icon(
                  Icons.grid_view_outlined,
                  color: !cubit.isListView
                      ? const Color(0xff233B55)
                      : const Color(0xff9ECAE3),
                )),
            InkWell(
                onTap: () {
                  cubit.toggleBetweenListAndGrid();
                },
                child: Icon(Icons.list,
                    color: cubit.isListView
                        ? const Color(0xff233B55)
                        : const Color(0xff9ECAE3)))
          ]);
        },
      ),
    );
  }
}
