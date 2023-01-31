import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:mailto/mailto.dart';
import 'package:url_launcher/url_launcher.dart';

class LinksWidget extends StatelessWidget {
  final Color color;
  const LinksWidget({super.key, required this.color});

  void _launchURL(String url) async {
    final uri = Uri.parse(url);
    await canLaunchUrl(uri) ? await launchUrl(uri) : throw 'Could not launch $url';
  }

  void launchMailto() async {
    final mailtoLink = Mailto(to: ['whosramoss@gmail.com'], cc: [], subject: 'Contato via site do github');

    final uri = Uri.parse('$mailtoLink');

    await launchUrl(uri);
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          IconButton(
            onPressed: () => _launchURL('https://github.com/whosramoss/'),
            icon: FaIcon(FontAwesomeIcons.github, color: color, size: 30),
          ),
          IconButton(
            onPressed: () => _launchURL('https://www.linkedin.com/in/whosramoss/'),
            icon: FaIcon(FontAwesomeIcons.linkedin, color: color, size: 30),
          ),
          IconButton(
            onPressed: () => _launchURL('https://www.instagram.com/whosramoss/'),
            icon: FaIcon(FontAwesomeIcons.instagram, color: color, size: 30),
          ),
          IconButton(
            onPressed: () => _launchURL('https://www.twitter.com/whosramoss/'),
            icon: FaIcon(FontAwesomeIcons.twitter, color: color, size: 30),
          ),
          IconButton(
            onPressed: () => _launchURL('https://developers.google.com/profile/u/whosramos'),
            icon: FaIcon(FontAwesomeIcons.google, color: color, size: 30),
          ),
          IconButton(
            onPressed: launchMailto,
            icon: Icon(Icons.mail_sharp, color: color, size: 30),
          ),
        ],
      ),
    );
  }
}
