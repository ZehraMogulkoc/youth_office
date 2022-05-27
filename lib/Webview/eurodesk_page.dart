
import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class EuroDeskPage extends StatefulWidget {
  const EuroDeskPage({Key? key}) : super(key: key);

  @override
  _EuroDeskPageState createState() => _EuroDeskPageState();
}

class _EuroDeskPageState extends State<EuroDeskPage> {
  late WebViewController controller;
  double progress =0;
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async{
        if (await controller.canGoBack()){
          controller.goBack();
          return false;
        }else{
          return true;
        }

      },
      child: Scaffold(
        appBar: AppBar(
          title: Text("Europage Data"),
          backgroundColor:Colors.redAccent ,
          actions: [
            IconButton(onPressed: () => controller.reload(), icon: Icon(Icons.refresh))
          ],
        ),
        body: Column(
          children: [
            LinearProgressIndicator(
              value: progress,
              color: Colors.red,
              backgroundColor: Colors.black,
            ),
            Expanded(
              child: WebView(
                initialUrl: 'http://eurodesk.ua.gov.tr/hakkimizda.aspx',
                javascriptMode: JavascriptMode.unrestricted,
                onWebViewCreated: (controller){
                  this.controller = controller;
                },
                onProgress: (progress)=>setState(() {
                  this.progress= progress/100;
                }),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
