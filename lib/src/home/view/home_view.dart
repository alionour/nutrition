import 'package:flutter/material.dart';
import 'package:nutrition/src/home/widgets/body.dart';
import 'package:nutrition/src/home/widgets/drawer.dart';
import 'package:nutrition/src/home/widgets/header.dart';

class HomeView extends StatefulWidget {
  const HomeView({Key? key}) : super(key: key);
  static const routeName = '/';
  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      endDrawer: const AppDrawer(),
      body: CustomScrollView(
        slivers: [
          SliverList(
            delegate: SliverChildListDelegate(
              [
                const Header(),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.1,
                ),
                const Body()
              ],
            ),
          ),
        ],
      ),
    );
  }
}
