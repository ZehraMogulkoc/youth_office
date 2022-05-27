import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:youth_office/Pages/eurodesk_alternative.dart';
import 'package:youth_office/Pages/european_youth_portal_alternative.dart';
import 'package:youth_office/Pages/sdg_information_page.dart';
import 'package:youth_office/Pages/turkish_national_agency.dart';
import '../category.dart';
import 'package:youth_office/Pages/cv_motivation_page.dart';
import 'erasmus_page.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  List<Category> items = CategoryList().items;


  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
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
                              builder: (context) => EuropeanYouthPortalAlternative(),
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
                            child: Image(image: items[index].img,fit: BoxFit.cover,),
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

          )),
    );
  }

}
