import 'dart:typed_data';
import 'package:flutter/material.dart';
import 'package:get_qr/user_data.dart';
import 'package:qr_flutter/qr_flutter.dart';
import 'package:share/share.dart';

class QrScreen extends StatelessWidget {
   QrScreen(  {super.key, required this.data});
   UserData data;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My QR Code'),
        centerTitle: true,
        actions: [
          IconButton(onPressed: (){_shareQRCode(context);}, icon: Icon(Icons.share))
        ],
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
   void _shareQRCode(BuildContext context) {
     final RenderBox box = context.findRenderObject() as RenderBox;
     final ByteData qrImageData = QrImageView(
       data: "Name: ${data.name}\nEmail Address: ${data.email}\nMobile Number: ${data.phone}",
       size: 280,
       embeddedImageStyle: const QrEmbeddedImageStyle(
         size: Size(
           100,
           100,
         ),
       ),
     ) as ByteData;
     final Uint8List bytes = qrImageData.buffer.asUint8List();
   }
}