import 'package:flutter/material.dart';

class cvPage extends StatelessWidget {
  cvPage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {

    final topContent = Stack(
      children: <Widget>[
        Container(
            padding: EdgeInsets.only(left: 10.0),
            height: MediaQuery.of(context).size.height * 0.5,
            decoration: new BoxDecoration(
              image: new DecorationImage(
                opacity: .6,
                image: new AssetImage("images/cv.jpg"),
                fit: BoxFit.cover,
              ),
            )),
        Positioned(
          left: 8.0,
          top: 60.0,
          child: InkWell(
            onTap: () {
              Navigator.pop(context);
            },
            child: Icon(Icons.arrow_back, color: Colors.white),
          ),
        ),
        Center(
          heightFactor: 10,
          child: Text(
            'CV-Motivation Letter',
            style: TextStyle(
                color: Color.fromRGBO(58, 66, 86, 1.0), fontSize: 25.0),
          ),
        ),
      ],
    );

    final bottomContentText = Text(
      '''Present your experience clearly:
      
- Highlight examples of your skills and experiences matching the job you are applying for. Pay close attention to the details published in the vacancy notice.


Tailor your CV:

- Make sure you update the ‘About Me’ section to highlight why you are the best person for the job. Do not include a full detailed history. Focus on facts and main points that match the job you have in mind.


Make it readable:

-Make sure your CV is easy to read. Use clear and simple language.  Use strong verbs (e.g. ‘managed’, ‘developed’, ‘increased’).


Use reverse chronological order:
    
-Always list the most recent experience on the top followed by previous ones. In case of long gaps in working or learning, include an explanation.

Polish and fine-tune:

-Check for spelling and grammar mistakes, provide a professional e-mail address, and add a professional photograph of yourself.''',
      style: TextStyle(fontSize: 18.0),
    );

    final bottomContent = Container(
      width: MediaQuery.of(context).size.width,
      padding: EdgeInsets.all(40.0),
      child: Center(
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[bottomContentText],
          ),
        ),
      ),
    );

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[topContent, bottomContent],
        ),
      ),
    );
  }
}
