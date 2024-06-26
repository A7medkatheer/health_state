import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:healthystate/presention/main/screens/diets/widgets/model_diets.dart';
import 'package:healthystate/presention/main/screens/widgets/cubit/cubit.dart';
import '../../resources/color_manager.dart';
import 'widgets/cubit/state.dart';

class MainView extends StatelessWidget {
  const MainView({
    super.key,
    // required this.diet, required this.index,
  });
  // final Diets diet;
  // final int index;

  @override
  Widget build(BuildContext context) {
    var cubit = BlocProvider.of<AppCubit>(context).get(context);
    return BlocConsumer<AppCubit, AppState>(
      builder: (context, state) {
        return Scaffold(
          // backgroundColor: Color(0xff000000),
          appBar: AppBar(
              leading: Row(
                children: [
                  IconButton(
                    icon: const Icon(Icons.menu),
                    onPressed: () {},
                  ),
                ],
              ),
              title: const Text('Health State'),
              actions: [
                IconButton(
                  icon: Image.asset(
                    'assets/images/health.png',
                    height: 50,
                    width: 50,
                  ),
                  onPressed: () {},
                ),
                IconButton(
                  icon: const Icon(Icons.more_vert),
                  onPressed: () {},
                ),
              ]),

          body: cubit.pages[cubit.currentPage],
          bottomNavigationBar: cubit.bottomNav(),
        );
      },
      listener: (context, state) {},
    );
  }
}
