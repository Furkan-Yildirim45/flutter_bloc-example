
import 'package:bloc_example/feature/main_page/cubit/main_page_cubit.dart';
import 'package:bloc_example/feature/main_page/cubit/main_page_cubit_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../core/widget/custom_button.dart';
part 'main_page_parts/part_of_advancing_bar.dart';
part 'main_page_parts/part_of_play_buttons.dart';

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => MainPageCubit(),
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.transparent,
          leading: const BackButton(),
          actions: [
            IconButton(
                onPressed: () {}, icon: const Icon(Icons.more_horiz_outlined))
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.all(18),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _pageImage(context),
              _singName(context),
              _singerName(context),
              const AdvancingBar(),
              _singTime(),
              const _PlayButtons(),
              _bottomButtons()
            ],
          ),
        ),
      ),
    );
  }

  Row _bottomButtons() {
    return Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconButton(
                  onPressed: () {}, icon: const Icon(Icons.airplay_outlined)),
              IconButton(
                  onPressed: () {}, icon: const Icon(Icons.output_outlined)),
            ],
          );
  }

  BlocBuilder _singTime() {
    return BlocBuilder<MainPageCubit, MainPageState>(
      builder: (context, state) {
        return Padding(
          padding: const EdgeInsets.only(top: 10.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(context.read<MainPageCubit>().counterCustomTextMethod()),
              Text(state.totalFinishText),
            ],
          ),
        );
      },
    );
  }

  Padding _singerName(BuildContext context) {
    return Padding(
            padding: const EdgeInsets.only(top: 10.0),
            child: Text(
              'TOM HEART',
              style: Theme.of(context)
                  .textTheme
                  .titleMedium
                  ?.copyWith(color: Colors.grey),
            ),
          );
  }

  Padding _singName(BuildContext context) {
    return Padding(
            padding: const EdgeInsets.only(top: 20.0),
            child: Text('Procrastination is it really that bad?',style: Theme.of(context).textTheme.headlineSmall?.copyWith(fontWeight: FontWeight.w500),),
          );
  }

  Container _pageImage(BuildContext context) {
    return Container(
            width: MediaQuery.sizeOf(context).width,
            height: MediaQuery.sizeOf(context).height * 0.44,
            decoration: const BoxDecoration(
              image: DecorationImage(image: AssetImage("assets/images/b.jpg",),fit: BoxFit.cover)
            ),
          );
  }
}



