import 'package:ejudiapp/drawer/settings.dart';
import 'package:ejudiapp/efiling/efilinghome.dart';
import 'package:ejudiapp/erepository/pages/hcourt.dart';
import 'package:ejudiapp/erepository/pages/home.dart';
import 'package:ejudiapp/erepository/rephome.dart';
import 'package:ejudiapp/home/home.dart';
import 'package:flutter/material.dart';

//import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

//import 'main.dart';
//import 'menu.dart';

class payment extends StatelessWidget {
  const payment({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      appBar: AppBar(
          leading:
          IconButton(
            icon: const Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) =>  efiling(),
                ),
              );
            },
          ),
        
          title: Text('E-Court Fee',style: TextStyle(color: Colors.white),),
          backgroundColor:
            const Color.fromARGB(255, 58, 57, 57),
          centerTitle: true,
          
        ),
      body: WebView(
        initialUrl:
            'https://pay.ecourts.gov.in/epay/',
        javascriptMode: JavascriptMode.unrestricted, // Enable JavaScript
        onWebViewCreated: (WebViewController webViewController) {
          // You can use the webViewController to interact with the WebView
        },
        onPageStarted: (String url) {
          // Handle page loading started
        },
        onPageFinished: (String url) {
          // Handle page loading finished
        },
        onWebResourceError: (WebResourceError error) {
          // Handle web resource errors
          print("Web resource error: $error");
        },
      ),
    );
  }
}
