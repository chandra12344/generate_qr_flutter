import 'package:flutter/material.dart';
import 'package:get_qr/user_data.dart';
import 'package:qr_flutter/qr_flutter.dart';

class QrScreen extends StatelessWidget {
   QrScreen(  {super.key, required this.data});
   UserData data;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter + QR code'),
        centerTitle: true,
      ),
      body: Center(
        child: QrImageView(
          data: "Name: ${data.name}\nEmail Address: ${data.email}\nMobile Number: ${data.phone}",
          size: 280,
          embeddedImageStyle: const QrEmbeddedImageStyle(
            size: Size(
              100,
              100,
            ),
          ),
        ),
      ),
    );
  }
}