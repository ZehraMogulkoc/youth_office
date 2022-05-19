import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:youth_office/eurodesk_alternative.dart';
import 'package:youth_office/eurodesk_page.dart';
import 'package:youth_office/european_youth_portal.dart';
import 'package:youth_office/sdg_information_page.dart';
import 'package:youth_office/turkish_national_agency.dart';
import 'category.dart';
import 'package:youth_office/cv_motivation_page.dart';
import 'erasmus_page.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  List<Category> items = [
    Category(
      id: 'c1',
      title: 'Erasmus+',
      url: 'https://www.consilium.europa.eu/media/54319/erasmus.png',
    ),
    Category(
      id: 'c2',
      title: 'European Youth Portal',
      url: 'https://youthnetworks.net/wp-content/uploads/2021/04/topic_youth.jpg',
    ),
    Category(
      id: 'c3',
      title: 'Turkish National Agency',
      url: 'https://esnturkey.org/sites/default/files/partners/images/2014-ulusal-ajans-logosu.jpg',
    ),
    Category(
      id: 'c4',
      title: 'Eurodesk',
      url: 'https://www.efvet.org/wp-content/uploads/2017/04/https-2F2Fcdn.evbuc_.com2Fimages2F302525082F1424178590482F12Foriginal.png',
    ),


    Category(
      id: 'c5',
      title: 'SDG Guide',
      url: 'https://www.iru.org/sites/default/files/styles/desktop_2x_736x460/public/2020-02/Road%20transport%20a%20key%20solution%20to%20achieving%20the%20UN%E2%80%99s%20Sustainable%20Development%20Goals%20%28SDGs%29.png?h=e5310f5e&itok=yP84tfN9',
    ),
    Category(
      id: 'c6',
      title: 'Cv & Motivation Letter Helper',
      url: 'https://www.careeraddict.com/uploads/article/58349/illustration-hands-holding-cvs.jpg',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
        color: Color(0xFFEFEDED),
        child: ListView.builder(
            itemCount: items.length,
            itemBuilder: (BuildContext context, int index) {
              return Container(
                margin: EdgeInsets.all(10),
                height: 200,
                child: FlatButton(
                  onPressed: () {
                    if(index==0){
                      //Erasmus+
                    Navigator.push(context,
                        MaterialPageRoute(
                          builder: (context) => ErasmusPage(),
                        ));}
                    if(index==1){
                      //European Youth Portal
                      Navigator.push(context,
                          MaterialPageRoute(
                            builder: (context) => european_youth_portal(),
                          ));}
                    if(index==2){
                      //Turkish National Agency
                      Navigator.push(context,
                          MaterialPageRoute(
                            builder: (context) => TNA(),
                          ));}
                    if(index==3){
                      //Eurodesk
                      Navigator.push(context,
                          MaterialPageRoute(
                            builder: (context) => EurodeskPageAlternative(),
                          ));}
                    if(index==4){
                      Navigator.push(context,
                          MaterialPageRoute(
                            builder: (context) => SdgInformation(),
                          ));}
                    if(index==5){
                      //CV Help
                      Navigator.push(context,
                          MaterialPageRoute(
                            builder: (context) => cvPage() ,
                          ));}
                  },
                  child: Stack(
                    children: [
                      Positioned.fill(
                        child:ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: Image.network(items[index].url,fit: BoxFit.cover,),
                        ),),
                      Positioned(
                        bottom: 0,
                        left: 0,
                        right: 0,
                        child: Container(
                          height: 200,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(20),
                              bottomRight: Radius.circular(20),
                              topLeft: Radius.circular(20),
                              topRight: Radius.circular(20),
                            ),
                            gradient: LinearGradient(
                              begin: Alignment.bottomCenter,
                              end: Alignment.topCenter,
                              colors: [
                                Colors.black.withOpacity(0.9),
                                Colors.transparent,
                              ],
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        bottom: 0,
                        child: Padding(
                          padding: const EdgeInsets.all(10),
                          child: Text(items[index].title, style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                            color: Colors.white60,
                          ),),
                        ),
                      ),
                    ],
                  ),
                ),
              );
            }

        ));
  }

}
