import 'package:flutter/material.dart';

class ScreenSize extends StatefulWidget {
  final Widget child;
  const ScreenSize({Key? key, required this.child}) : super(key: key);

  @override
  State<ScreenSize> createState() => _ScreenSizeState();
}

class _ScreenSizeState extends State<ScreenSize> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Stack(children: [
          widget.child,
          Visibility(
            visible: false,
            child: Positioned(
              top: 15,
              width: MediaQuery.of(context).size.width,
              child:
                  Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                const Expanded(
                  flex: 1,
                  child: Divider(
                    thickness: 3,
                  ),
                ),
                Flexible(
                  flex: 1,
                  child: Text(MediaQuery.of(context).size.width.toString()),
                ),
                const Expanded(
                  flex: 1,
                  child: Divider(
                    thickness: 3,
                  ),
                ),
              ]),
            ),
          ),
          Visibility(
            visible: false,
            child: Positioned(
              left: 15,
              height: MediaQuery.of(context).size.height,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Flexible(
                    flex: 1,
                    child: VerticalDivider(
                      thickness: 3,
                    ),
                  ),
                  Flexible(
                    flex: 1,
                    child: Text(MediaQuery.of(context).size.height.toString()),
                  ),
                  const Flexible(
                    flex: 1,
                    child: VerticalDivider(
                      thickness: 3,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ]),
      ),
    );
  }
}
