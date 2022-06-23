import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';

class AppDrawer extends StatelessWidget {
  const AppDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<String> items = [
      'Home',
      'Food',
      'Health',
      'Low Carb',
      'Nutrition',
      'About',
      'Submissions',
      'Careers'
    ];
    return Drawer(
        child: Padding(
      padding: const EdgeInsets.only(left: 18.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: 20,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              const SizedBox(
                width: 10,
              ),
              IconButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                icon: const Icon(
                  Icons.close,
                  size: 35,
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              Text(
                'Menu',
                style: GoogleFonts.mulish().copyWith(fontSize: 25),
              )
            ],
          ),
          ...items
              .asMap()
              .map((key, value) => MapEntry(
                  key,
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(
                        height: 35,
                      ),
                      Text(
                        value,
                        style: GoogleFonts.mulish().copyWith(
                          fontSize: 20,
                          decoration: TextDecoration.underline,
                        ),
                      ),
                    ],
                  )))
              .values
              .toList(),
          const SizedBox(
            height: 35,
          ),
          const _ConnectRow()
        ],
      ),
    ));
  }
}

class _ConnectRow extends StatelessWidget {
  const _ConnectRow({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * 0.3,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const Flexible(flex: 1, child: AutoSizeText('Share')),
          const SizedBox(
            width: 10,
          ),
          Flexible(
              flex: 1,
              child: GestureDetector(
                  onTap: _facebook,
                  child: SvgPicture.asset('assets/icons/facebook.svg'))),
          const SizedBox(
            width: 10,
          ),
          Flexible(
              flex: 1,
              child: GestureDetector(
                  onTap: _twitter,
                  child: SvgPicture.asset('assets/icons/twitter.svg'))),
        ],
      ),
    );
  }
}

/// launches the linkedin profile
/// checks if _url can be launched
/// if it can, it launches it
void _twitter() async {
  String url = "https://www.twitter.com/";
  final uri = Uri.parse(url);
  if (await canLaunchUrl(uri)) {
    launchUrl(uri);
  }
}

/// launches the linkedin profile
/// checks if _url can be launched
/// if it can, it launches it
void _facebook() async {
  String url = "https://www.facebbok.com/";
  final uri = Uri.parse(url);
  if (await canLaunchUrl(uri)) {
    launchUrl(uri);
  }
}
