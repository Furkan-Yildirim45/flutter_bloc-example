import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'main_page_cubit_state.dart';


class MainPageCubit extends Cubit<MainPageState> {
  MainPageCubit() : super(MainPageState());

  double changingSliderWidth(BuildContext context){
    //x = v * t;
    double v;
    double x = MediaQuery.sizeOf(context).width;
    int t = state.finishPoint!;
    v = x / t;
    return v * (state.counter! + (state.totalCounter! * 60));
  }

  Future<void> startCounting() async {
    emit(state.copyWith(isPlay: state.isPlay ? false : true));
    while(state.isPlay && state.counter! + state.totalCounter! * 60 != state.finishPoint){
      await Future.delayed(const Duration(seconds: 1));
      emit(state.copyWith(
        counter: state.counter! + 1,
      ));
      emit(state.copyWith(
        totalCounter: (state.counter == 60) ? state.totalCounter! + 1 : state.totalCounter,
      ));
      emit(state.copyWith(
        counter: state.counter == 60 ? 0 : state.counter,
      ));
    }
  }

  String counterCustomTextMethod(){
    if(state.counter! <= 9){
      return "${state.totalCounter}:0${state.counter}";
    }
    else if(state.counter! >= 10){
      return "${state.totalCounter}:${state.counter}";
    }
    return "";
  }
}

