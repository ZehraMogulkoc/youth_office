import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';


class european_youth_portal extends StatefulWidget {
  const european_youth_portal({Key? key}) : super(key: key);

  @override
  _european_youth_portalState createState() => _european_youth_portalState();
}

class _european_youth_portalState extends State<european_youth_portal> {
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
                initialUrl: 'https://europa.eu/youth/volunteering/organisations_en?country=TR&topic=&scope%5Bql%5D=&town=&name=&combine=&inclusion_topic=&op=Apply+Filter',
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
