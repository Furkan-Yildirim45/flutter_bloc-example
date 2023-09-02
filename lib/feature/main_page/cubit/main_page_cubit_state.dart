
class MainPageState{
  String totalFinishText = "";
  bool isPlay;

  int? totalCounter;
  int? totalFinishPoint;
  int? counter;
  int? finishPoint;
  double? visibleStartIndex;

  MainPageState copyWith({
       double? visibleStartIndex,
    int? counter,
    int? totalCounter,
    bool? isPlay,
    }){
      return MainPageState(
        visibleStartIndex: visibleStartIndex ?? this.visibleStartIndex,
        counter: counter ?? this.counter,
        totalCounter: totalCounter ?? this.totalCounter,
        isPlay: isPlay ?? this.isPlay,
      );
  }
  MainPageState({this.visibleStartIndex = 0,this.finishPoint = 216,this.counter = 0,this.totalCounter = 0,this.isPlay = false}){
    int remaining = finishPoint! % 60;
    totalFinishPoint = finishPoint! ~/ 60;
    totalFinishText = "$totalFinishPoint:$remaining";
  }


}