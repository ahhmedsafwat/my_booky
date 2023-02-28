import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

Future<void> launchCustomUrl(context, String? url) async {
  if (url != null) {
    Uri ulr = Uri.parse(url);
    if (await canLaunchUrl(ulr)) {
      await launchUrl(ulr);
    } else {
      ScaffoldMessenger.of(context)
          .showSnackBar(SnackBar(content: Text('Can\'t lunch this $url')));
    }
  }
}
