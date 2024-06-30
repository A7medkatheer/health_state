import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:healthystate/core/cubit/cubit.dart';
import '../../../core/cubit/state.dart';

class MainView extends StatelessWidget {
  const MainView({super.key});

  @override
  Widget build(BuildContext context) {
    var cubit = BlocProvider.of<AppCubit>(context).get(context);
    return BlocConsumer<AppCubit, AppState>(
      builder: (context, state) {
        var pages = cubit.getPages(context);
        return Scaffold(
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
            ],
          ),
          body: pages[cubit.currentPage],
          bottomNavigationBar: cubit.bottomNav(),
        );
      },
      listener: (context, state) {},
    );
  }
}
