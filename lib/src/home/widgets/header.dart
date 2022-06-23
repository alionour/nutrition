import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_wrapper.dart';

class Header extends StatefulWidget {
  const Header({Key? key}) : super(key: key);

  @override
  State<Header> createState() => _HeaderState();
}

class _HeaderState extends State<Header> {
  get style => const TextStyle(
      // decoration: TextDecoration.underline,
      fontSize: 18,
      fontWeight: FontWeight.bold);
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.1,
      child: Row(
        children: [
          Expanded(
            flex: 3,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Text(
                  'Nutrition',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
          Expanded(
            flex: 7,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Flexible(
                  child: Icon(
                    Icons.search_rounded,
                    size: 35,
                  ),
                ),
                Visibility(
                  visible: ResponsiveWrapper.of(context).isLargerThan(MOBILE),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.05,
                      ),
                      Text(
                        'Food',
                        style: style,
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.03,
                      ),
                      Text(
                        'Health',
                        style: style,
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.03,
                      ),
                      Text(
                        'low Carb',
                        style: style,
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.03,
                      ),
                      Text(
                        'Nutrition',
                        style: style,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Flexible(
            flex: 3,
            child: GestureDetector(
              onTap: () {
                Scaffold.of(context).openEndDrawer();
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Text(
                    'Menu',
                    style: TextStyle(fontSize: 20),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Icon(
                    Icons.menu_open_rounded,
                    size: 30,
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
