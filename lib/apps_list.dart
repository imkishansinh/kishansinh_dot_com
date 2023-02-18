import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class AppsListPage extends StatelessWidget {
  const AppsListPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // leading: const Center(
        //   child: Text(
        //     'Back',
        //     style: TextStyle(
        //       color: Colors.black87,
        //       fontSize: 21,
        //     ),
        //   ),
        // ),
        iconTheme: const IconThemeData(color: Colors.black87),
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        titleTextStyle: const TextStyle(
          color: Colors.black87,
        ),
        elevation: 0,
        title: const SelectableText(
          'Latest App Work',
          style: TextStyle(
            color: Colors.black87,
            fontSize: 24,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Wrap(
          direction: Axis.horizontal,
          children: [
            AppListTile(
              onTap: () {},
              imageURL:
                  'https://play-lh.googleusercontent.com/FbL1q4mUxlAe8DeMAiDxUc3yB1zN4F6YQlZXFVbTKMIzb5F0lGriEr-Slzz-6KAKhBA=w240-h480-rw',
              title: 'Ketto',
              subTitle: 'Monthly giving program',
              description:
                  'India\'s leading crowdfunding platform for donating to needy people. The application is about the explore different kinds of causes and campaigns and subscribing to them for a monthly donation or one-time donation.',
              androidUrl:
                  'https://play.google.com/store/apps/details?id=org.ketto.sip',
              iosUrl: 'https://apps.apple.com/us/app/ketto/id1582755806',
            ),
            const SizedBox(
              height: 21,
            ),
            AppListTile(
              onTap: () {},
              imageURL:
                  'https://play-lh.googleusercontent.com/t9c1tlraI-j3JbX4RLF7uWwv-MTbqyh7UyNhmneeknh_BexE3hy93lFgPZEp8KRzo0M=w240-h480-rw',
              title: 'Healthnest',
              subTitle: 'A Social App for Health',
              description:
                  'A Social APP for Health[Community driven]. Mainly it is providing a feed kind of feature, 101 chat with experts and community members, Custom services by the community, and much more support from community owners.',
              androidUrl:
                  'https://play.google.com/store/apps/details?id=in.healthnest',
              iosUrl: 'https://apps.apple.com/us/app/healthnest/id1510561751',
            ),
            const SizedBox(
              height: 21,
            ),
            AppListTile(
              onTap: () {},
              imageURL:
                  'https://play-lh.googleusercontent.com/aCJgJdlBLykzYnqF1JzihempAlv8rrH7zpv-jy1LoGHtezNhgYDIFTHg1TQU9KdC1PME=w240-h480-rw',
              title: 'Ketto for Fundraiser',
              subTitle: 'Manage your fundraisers on go!',
              description:
                  'One-of-a-kind application designed to help people manage their campaigns. You can start a fundraiser on Ketto and manage it free on the app from anywhere, at any time, with just a few clicks. It\'s faster, convenient & easy to navigate - so let\'s get you going!',
              androidUrl:
                  'https://play.google.com/store/apps/details?id=org.ketto.mcd',
              iosUrl:
                  'https://apps.apple.com/us/app/ketto-for-fundraiser/id1602237545',
            ),
          ],
        ),
      ),
    );
  }
}

class AppListTile extends StatelessWidget {
  final String imageURL;
  final String title;
  final String subTitle;
  final String description;
  final VoidCallback onTap;
  final String androidUrl;
  final String iosUrl;

  const AppListTile({
    required this.imageURL,
    required this.title,
    required this.subTitle,
    required this.description,
    required this.onTap,
    required this.androidUrl,
    required this.iosUrl,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: const BoxConstraints(
        minWidth: 460,
        maxWidth: 460,
        maxHeight: 280,
        minHeight: 280,
      ),
      child: InkWell(
        onTap: onTap,
        child: Card(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  width: 72,
                  height: 72,
                  child: CircleAvatar(
                    radius: 72 / 2,
                    foregroundImage: Image.network(
                      imageURL,
                    ).image,
                  ),
                ),
                const SizedBox(
                  width: 12,
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      RichText(
                        text: TextSpan(
                          text: title,
                          style:
                              Theme.of(context).textTheme.titleLarge?.copyWith(
                                    fontWeight: FontWeight.bold,
                                  ),
                          children: [
                            TextSpan(
                                text: ' - $subTitle',
                                style: Theme.of(context)
                                    .textTheme
                                    .titleMedium
                                    ?.copyWith(
                                      fontWeight: FontWeight.w400,
                                    ))
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 4,
                      ),
                      RichText(
                        text: TextSpan(
                          text: description,
                          style:
                              Theme.of(context).textTheme.titleSmall?.copyWith(
                                    fontWeight: FontWeight.w400,
                                  ),
                          children: [
                            const TextSpan(text: '\n'),
                            const TextSpan(text: '\n'),
                            const TextSpan(text: 'Android: '),
                            TextSpan(
                              text: androidUrl,
                              style: Theme.of(context)
                                  .textTheme
                                  .titleSmall
                                  ?.copyWith(
                                    fontWeight: FontWeight.w400,
                                    color: Colors.blueAccent,
                                  ),
                              recognizer: TapGestureRecognizer()
                                ..onTap = () {
                                  launchUrl(Uri.parse(androidUrl));
                                },
                            ),
                            const TextSpan(text: '\n'),
                            const TextSpan(text: '\n'),
                            const TextSpan(text: 'iOS: '),
                            TextSpan(
                              text: iosUrl,
                              style: Theme.of(context)
                                  .textTheme
                                  .titleSmall
                                  ?.copyWith(
                                    fontWeight: FontWeight.w400,
                                    color: Colors.blueAccent,
                                  ),
                              recognizer: TapGestureRecognizer()
                                ..onTap = () {
                                  launchUrl(Uri.parse(iosUrl));
                                },
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
