import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'doctor_category_state.dart';

class DoctorCategoryCubit extends Cubit<DoctorCategoryState> {
  DoctorCategoryCubit() : super(DoctorCategoryInitial());
  bool isListView = true;
  void toggleBetweenListAndGrid() {
    isListView = !isListView;
    emit(ChangedSuccessfully());
  }
}
