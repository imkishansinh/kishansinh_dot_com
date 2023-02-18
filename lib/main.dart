import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kishansinh_dot_com/apps_list.dart';
import 'package:url_launcher/url_launcher.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'kishansinh.com',
      theme: ThemeData(
        primaryColor: Colors.blueGrey,
        textTheme: GoogleFonts.latoTextTheme(),
      ),
      debugShowCheckedModeBanner: false,
      home: const MyHome(),
    );
  }
}

class MyHome extends StatelessWidget {
  const MyHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        titleTextStyle: const TextStyle(
          color: Colors.black87,
        ),
        elevation: 0,
        title: const SelectableText(
          'kishansinh.com',
          style: TextStyle(
            color: Colors.black87,
            fontSize: 24,
          ),
        ),
        actions: [
          InkWell(
            onTap: () {
              final Uri _blogUrl = Uri.parse(
                'https://blog.kishansinh.com',
              );
              launchUrl(_blogUrl);
            },
            child: const Padding(
              padding: EdgeInsets.symmetric(horizontal: 12),
              child: Center(
                child: Text(
                  'Blog',
                  style: TextStyle(
                    color: Colors.black87,
                    fontSize: 18,
                    decoration: TextDecoration.underline,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          ),
          const SizedBox(
            width: 12,
          ),
          InkWell(
            onTap: () {
              final Uri _blogUrl = Uri.parse(
                'https://hashnode.com/@kishansinhparmar',
              );
              launchUrl(_blogUrl);
            },
            child: const Padding(
              padding: EdgeInsets.symmetric(horizontal: 12),
              child: Center(
                child: Text(
                  'About',
                  style: TextStyle(
                    color: Colors.black87,
                    fontSize: 18,
                    decoration: TextDecoration.underline,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          ),
          const SizedBox(
            width: 12,
          ),
        ],
        centerTitle: false,
      ),
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color(0xFFFFFFFF),
              Color(0xFFF9F9F9),
              Color(0xFFF2F3F2),
              Color(0xFFECECEB),
              Color(0xFFE5E6E4),
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  width: 220,
                  height: 220,
                  child: CircleAvatar(
                    radius: 220 / 2,
                    foregroundImage: Image.network(
                      'https://pbs.twimg.com/profile_images/1431340788164612098/cgCjbM_o_400x400.jpg',
                    ).image,
                  ),
                ),
                const SizedBox(
                  height: 21,
                ),
                const Text(
                  'Hi 👋, I\'m Kishansinh Parmar',
                  style: TextStyle(
                    color: Colors.black87,
                    fontSize: 32,
                  ),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(
                  height: 21,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    InkWell(
                      onTap: () {
                        final Uri _blogUrl = Uri.parse(
                          'https://twitter.com/imkishansinh',
                        );
                        launchUrl(_blogUrl);
                      },
                      child: const FaIcon(
                        FontAwesomeIcons.twitter,
                      ),
                    ),
                    const SizedBox(
                      width: 12,
                    ),
                    InkWell(
                      onTap: () {
                        final Uri _blogUrl = Uri.parse(
                          'https://github.com/imkishansinh',
                        );
                        launchUrl(_blogUrl);
                      },
                      child: const FaIcon(
                        FontAwesomeIcons.github,
                      ),
                    ),
                    const SizedBox(
                      width: 12,
                    ),
                    InkWell(
                        onTap: () {
                          final Uri _blogUrl = Uri.parse(
                            'https://www.linkedin.com/in/kishansinhparmar/',
                          );
                          launchUrl(_blogUrl);
                        },
                        child: const FaIcon(FontAwesomeIcons.linkedin)),
                    const SizedBox(
                      width: 12,
                    ),
                    InkWell(
                      onTap: () {
                        final Uri _blogUrl = Uri.parse(
                          'https://wa.me/918866228982',
                        );
                        launchUrl(_blogUrl);
                      },
                      child: const FaIcon(FontAwesomeIcons.whatsapp),
                    ),
                    const SizedBox(
                      width: 12,
                    ),
                    InkWell(
                      onTap: () {
                        final Uri _blogUrl = Uri.parse(
                          'mailto:im@kishansinh.com?subject=Hi%20Kishansinh%20Parmar&body=%5BWrite%20first%20message%5D',
                        );
                        launchUrl(_blogUrl);
                      },
                      child: const Icon(
                        Icons.email_outlined,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 21,
                ),
                InkWell(
                  onTap: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => const AppsListPage(),
                      ),
                    );
                  },
                  child: RichText(
                    text: const TextSpan(
                        text: 'Latest app work',
                        style: TextStyle(
                          color: Colors.black87,
                          fontSize: 18,
                          decoration: TextDecoration.underline,
                        ),
                        children: [
                          WidgetSpan(
                            child: SizedBox(
                              width: 4,
                            ),
                          ),
                          WidgetSpan(
                            child: FaIcon(FontAwesomeIcons.mobileRetro),
                          ),
                        ]),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
