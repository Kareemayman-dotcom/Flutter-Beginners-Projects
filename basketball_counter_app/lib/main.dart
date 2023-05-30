import 'package:basketball_counter_app/cubit/counter_cubit.dart';
import 'package:basketball_counter_app/cubit/counter_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sizer/sizer.dart';

void main() {
  runApp(PointsCounter());
}

class PointsCounter extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => CounterCubit(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: HomePage(),
      ),
    );
  }
}

class HomePage extends StatelessWidget {
  HomePage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<CounterCubit, CounterState>(
      builder: (BuildContext context, state) {
        return Sizer(
          builder: (context, orientation, deviceType) {
            return Scaffold(
              appBar: AppBar(
                backgroundColor: Colors.orange,
                title: Text('Points Counter'),
              ),
              body: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        height: 500,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text(
                              'Team A',
                              style: TextStyle(
                                fontSize: 32,
                              ),
                            ),
                            Text(
                              '${BlocProvider.of<CounterCubit>(context).teamAPoints}',
                              style: TextStyle(
                                fontSize: BlocProvider.of<CounterCubit>(context)
                                            .teamAPoints <=
                                        99
                                    ? 110.sp
                                    : (BlocProvider.of<CounterCubit>(context)
                                                .teamAPoints <=
                                            999
                                        ? 85.sp
                                        : (BlocProvider.of<CounterCubit>(
                                                        context)
                                                    .teamAPoints <=
                                                9999
                                            ? 60.sp
                                            : 45.sp)),
                              ),
                            ),
                            ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                padding: EdgeInsets.all(8),
                                backgroundColor: Colors.orange,
                                minimumSize: Size(150, 50),
                              ),
                              onPressed: () {
                                BlocProvider.of<CounterCubit>(context)
                                    .teamAIncrement(team: 'A', points: 1);
                              },
                              child: Text(
                                'Add 1 Point ',
                                style: TextStyle(
                                  fontSize: 18,
                                  color: Colors.black,
                                ),
                              ),
                            ),
                            ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.orange,
                                minimumSize: Size(150, 50),
                              ),
                              onPressed: () {
                                BlocProvider.of<CounterCubit>(context)
                                    .teamAIncrement(team: 'A', points: 2);
                              },
                              child: Text(
                                'Add 2 Point',
                                style: TextStyle(
                                  fontSize: 18,
                                  color: Colors.black,
                                ),
                              ),
                            ),
                            ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.orange,
                                minimumSize: Size(150, 50),
                              ),
                              onPressed: () {
                                BlocProvider.of<CounterCubit>(context)
                                    .teamAIncrement(team: 'A', points: 3);
                              },
                              child: Text(
                                'Add 3 Point ',
                                style: TextStyle(
                                  fontSize: 18,
                                  color: Colors.black,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        height: 500,
                        child: VerticalDivider(
                          indent: 50,
                          endIndent: 50,
                          color: Colors.grey,
                          thickness: 1,
                        ),
                      ),
                      Container(
                        height: 500,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text(
                              'Team B',
                              style: TextStyle(
                                fontSize: 32,
                              ),
                            ),
                            Text(
                              '${BlocProvider.of<CounterCubit>(context).teamBPoints}',
                              style: TextStyle(
                                // fontSize: 110.sp
                                fontSize: BlocProvider.of<CounterCubit>(context)
                                            .teamBPoints <=
                                        99
                                    ? 110.sp
                                    : (BlocProvider.of<CounterCubit>(context)
                                                .teamBPoints <=
                                            99
                                        ? 85.sp
                                        : (BlocProvider.of<CounterCubit>(
                                                        context)
                                                    .teamBPoints <=
                                                9999
                                            ? 60.sp
                                            : 45.sp)),
                              ),
                              // textScaleFactor: 1 -
                              //     BlocProvider.of<CounterCubit>(context)
                              //             .teamBPoints /
                              //         1500,
                            ),
                            ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                padding: EdgeInsets.all(8),
                                backgroundColor: Colors.orange,
                                minimumSize: Size(150, 50),
                              ),
                              onPressed: () {
                                BlocProvider.of<CounterCubit>(context)
                                    .teamAIncrement(team: 'B', points: 1);
                              },
                              child: Text(
                                'Add 1 Point ',
                                style: TextStyle(
                                  fontSize: 18,
                                  color: Colors.black,
                                ),
                              ),
                            ),
                            ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.orange,
                                minimumSize: Size(150, 50),
                              ),
                              onPressed: () {
                                BlocProvider.of<CounterCubit>(context)
                                    .teamAIncrement(team: 'B', points: 2);
                              },
                              child: Text(
                                'Add 2 Point ',
                                style: TextStyle(
                                  fontSize: 18,
                                  color: Colors.black,
                                ),
                              ),
                            ),
                            ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.orange,
                                minimumSize: Size(150, 50),
                              ),
                              onPressed: () {
                                BlocProvider.of<CounterCubit>(context)
                                    .teamAIncrement(team: 'B', points: 3);
                              },
                              child: Text(
                                'Add 3 Point ',
                                style: TextStyle(
                                  fontSize: 18,
                                  color: Colors.black,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      padding: EdgeInsets.all(8),
                      backgroundColor: Colors.orange,
                      minimumSize: Size(150, 50),
                    ),
                    onPressed: () {
                      BlocProvider.of<CounterCubit>(context).TeamsReset();
                    },
                    child: Text(
                      'Reset',
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ],
              ),
            );
          },
        );
      },
      listener: (BuildContext context, Object? state) {},
    );
  }
}
