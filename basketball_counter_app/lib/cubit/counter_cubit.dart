import 'package:basketball_counter_app/cubit/counter_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterCubit extends Cubit<CounterState> {
  CounterCubit() : super(CounterAIncrementState());

  int teamAPoints = 0;
  int teamBPoints = 0;
  void teamAIncrement({required String team, required int points}) {
    if (team == 'A') {
      teamAPoints += points;
      emit(CounterAIncrementState());
    } else {
      teamBPoints += points;
      emit(CounterBIncrementState());
    }
  }

  void TeamsReset() {
    teamAPoints = 0;
    teamBPoints = 0;
    emit(CounterAIncrementState());
  }
}
