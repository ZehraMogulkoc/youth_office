import 'package:flutter/material.dart';
class SdgInformation extends StatefulWidget {
  const SdgInformation({Key? key}) : super(key: key);

  @override
  _SdgInformationState createState() => _SdgInformationState();
}

class _SdgInformationState extends State<SdgInformation> {
  Future<void> _showMyDialog(String title,String info) async {
    return showDialog<void>(
      context: context,
      barrierDismissible: false, // user must tap button!
      builder: (BuildContext context) {
        return AlertDialog(
          //backgroundColor: Colors.black26.withOpacity(0.3),
          title:  Text('$title'),
          content: SingleChildScrollView(
            child: ListBody(
              children: <Widget>[
                //Text('This is a demo alert dialog.'),
                Text('$info'),
              ],
            ),
          ),
          actions: <Widget>[
            TextButton(
              child: const Text('Close',style: TextStyle(color: Colors.redAccent),),

              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor:Colors.red,
        title:Text('SDG Infromation')
      ),
      body:SafeArea(
        child: Center(
         child: SingleChildScrollView(
           child: Column(
             children: [
               Row(
                 mainAxisAlignment:   MainAxisAlignment.center,
                 children: [
                   RaisedButton(
                     onPressed: () { _showMyDialog('No Poverty','It aims to end poverty in all its forms everywhere'); },
                     color: Colors.transparent,
                     splashColor: Colors.transparent,
                     elevation: 0,
                     child: Padding(
                       padding:  EdgeInsets.all(8.0),
                       child: Image.asset('assets/sdg1.png',width: 120, height: 120,),

                     ),

                   ),

                   SizedBox(width:10),

                   RaisedButton(
                     onPressed: () { _showMyDialog('Zero Hunger','It aims to end hunger, achieve food security and improved nutrition and promote sustainable agriculture.'); },
                     color: Colors.transparent,
                     splashColor: Colors.transparent,
                     elevation: 0,
                     child: Padding(
                       padding:  EdgeInsets.all(8.0),
                       child: Image.asset('assets/sdg2.png',width: 120, height: 120,),
                     ),
                   ),


                 ],
               ),
               Divider(
                   color: Colors.grey
               ),
               SizedBox(height:10),
               Row(
                 mainAxisAlignment:   MainAxisAlignment.center,
                 children: [
                   RaisedButton(
                     onPressed: () { _showMyDialog('Good Health and Well Being','It aims to ensure health and well-being for all, including a bold commitment to end the epidemics of AIDS, tuberculosis, malaria and other communicable diseases by 2030.'); },
                     color: Colors.transparent,
                     splashColor: Colors.transparent,
                     elevation: 0,
                     child: Padding(
                       padding:  EdgeInsets.all(8.0),
                       child: Image.asset('assets/sdg3.png',width: 120, height: 120,),
                     ),
                   ),
                   SizedBox(width:10),
                   RaisedButton(
                     onPressed: () { _showMyDialog('Quality Education',' It aims at ensuring inclusive and equitable quality education and promote lifelong learning opportunities for all. This goal ensures that all girls and boys complete free primary and secondary schooling by 2030.'); },
                     color: Colors.transparent,
                     splashColor: Colors.transparent,
                     elevation: 0,
                     child: Padding(
                       padding:  EdgeInsets.all(8.0),
                       child: Image.asset('assets/sdg4.png',width: 120, height: 120,),
                     ),
                   ),


                 ],
               ),
               Divider(
                   color: Colors.grey
               ),
               SizedBox(height:10),

               Row(
                 mainAxisAlignment:   MainAxisAlignment.center,
                 children: [
                   RaisedButton(
                     onPressed: () { _showMyDialog('Gender Equality','Gender equality is achieved when women, men, girls and boys have equal rights, conditions and opportunities, and the power to shape their own lives and contribute to the development of society.'); },
                     color: Colors.transparent,
                     splashColor: Colors.transparent,
                     elevation: 0,
                     child: Padding(
                       padding:  EdgeInsets.all(8.0),
                       child: Image.asset('assets/sdg5.png',width: 120, height: 120,),
                     ),
                   ),
                   SizedBox(width:10),
                   RaisedButton(
                     onPressed: () { _showMyDialog('Clean Water and Sanitation','The six "outcome-oriented targets" include: Safe and affordable drinking water; end open defecation and provide access to sanitation, and hygiene, improve water quality, wastewater treatment and safe reuse, increase water-use efficiency and ensure freshwater supplies, implement IWRM, protect and restore water-related ecosystems. The two "means of achieving" targets are to expand water and sanitation support to developing countries, and to support local engagement in water and sanitation management.'); },
                     color: Colors.transparent,
                     splashColor: Colors.transparent,
                     elevation: 0,
                     child: Padding(
                       padding:  EdgeInsets.all(8.0),
                       child: Image.asset('assets/sdg6.png',width: 120, height: 120,),
                     ),
                   ),
                 ],
               ),
               Divider(
                   color: Colors.grey
               ),

               SizedBox(height: 10,),
               Row(
                 mainAxisAlignment:   MainAxisAlignment.center,
                 children: [
                   RaisedButton(
                     onPressed: () { _showMyDialog('Affordable and Clean Energy','It aims to ensure universal access to affordable, reliable and modern energy services.'); },
                     color: Colors.transparent,
                     splashColor: Colors.transparent,
                     elevation: 0,
                     child: Padding(
                       padding:  EdgeInsets.all(8.0),
                       child: Image.asset('assets/sdg7.png',width: 120, height: 120,),
                     ),
                   ),
                   SizedBox(width:10),
                   RaisedButton(
                     onPressed: () { _showMyDialog('Decent Work and Economic Growth','It aims to promote inclusive and sustainable economic growth, employment and decent work for all. Sustained and inclusive economic growth can drive progress, create decent jobs for all and improve living standards.'); },
                     color: Colors.transparent,
                     splashColor: Colors.transparent,
                     elevation: 0,
                     child: Padding(
                       padding:  EdgeInsets.all(8.0),
                       child: Image.asset('assets/sdg8.png',width: 120, height: 120,),
                     ),
                   ),


                 ],
               ),
               Divider(
                   color: Colors.grey
               ),
               SizedBox(height: 10,),
               Row(
                 mainAxisAlignment:   MainAxisAlignment.center,
                 children: [
                   RaisedButton(
                     onPressed: () { _showMyDialog('Industry Innovation and Infrastructure','Build resilient infrastructure, promote inclusive and  sustainable industrialization and foster innovation. A functioning and resilient infrastructure is the foundation of every successful community. To meet future challenges, our industries and infrastructure must be upgraded.'); },
                     color: Colors.transparent,
                     splashColor: Colors.transparent,
                     elevation: 0,
                     child: Padding(
                       padding:  EdgeInsets.all(8.0),
                       child: Image.asset('assets/sdg9.png',width: 120, height: 120,),
                     ),
                   ),
                   SizedBox(width:10),
                   RaisedButton(
                     onPressed: () { _showMyDialog('Reduced Inequalities','it aims at reducing inequality within and among countries. This SDG calls for reducing inequalities in income as well as those based on age, sex, disability, race, ethnicity, origin, religion or economic or other status within a country.'); },
                     color: Colors.transparent,
                     splashColor: Colors.transparent,
                     elevation: 0,
                     child: Padding(
                       padding:  EdgeInsets.all(8.0),
                       child: Image.asset('assets/sdg10.jpg',width: 120, height: 120,),
                     ),
                   ),


                 ],
               ),
               Divider(
                   color: Colors.grey
               ),
               SizedBox(height: 10,),
               Row(
                 mainAxisAlignment:   MainAxisAlignment.center,
                 children: [
                   RaisedButton(
                     onPressed: () { _showMyDialog('Sustainable Cities and Communities','it aims to make cities and human settlements inclusive, safe, resilient and sustainable.'); },
                     color: Colors.transparent,
                     splashColor: Colors.transparent,
                     elevation: 0,
                     child: Padding(
                       padding:  EdgeInsets.all(8.0),
                       child: Image.asset('assets/sdg11.png',width: 120, height: 120,),
                     ),
                   ),
                   SizedBox(width:10),
                   RaisedButton(
                     onPressed: () { _showMyDialog('Responsible Consumption and Production','It aims to encourage more sustainable consumption and production patterns through various measures, including specific policies and international agreements on the management of materials that are toxic to the environment.'); },
                     color: Colors.transparent,
                     splashColor: Colors.transparent,
                     elevation: 0,
                     child: Padding(
                       padding:  EdgeInsets.all(8.0),
                       child: Image.asset('assets/sdg12.png',width: 120, height: 120,),
                     ),
                   ),


                 ],
               ),
               Divider(
                   color: Colors.grey
               ),
               SizedBox(height: 10,),
               Row(
                 mainAxisAlignment:   MainAxisAlignment.center,
                 children: [
                   RaisedButton(
                     onPressed: () { _showMyDialog('Climate Action',' It aims at urge to take action to combat climate change and its impacts'); },
                     color: Colors.transparent,
                     splashColor: Colors.transparent,
                     elevation: 0,
                     child: Padding(
                       padding:  EdgeInsets.all(8.0),
                       child: Image.asset('assets/sdg13.jpg',width: 120, height: 120,),
                     ),
                   ),
                   SizedBox(width:10),
                   RaisedButton(
                     onPressed: () { _showMyDialog('Life Below Water','It aims at conserve and sustainably use the oceans, seas and marine resources for sustainable development 18.'); },
                     color: Colors.transparent,
                     splashColor: Colors.transparent,
                     elevation: 0,
                     child: Padding(
                       padding:  EdgeInsets.all(8.0),
                       child: Image.asset('assets/sdg14.png',width: 120, height: 120,),
                     ),
                   ),


                 ],
               ),
               Divider(
                   color: Colors.grey
               ),
               SizedBox(height: 10,),
               Row(
                 mainAxisAlignment:   MainAxisAlignment.center,
                 children: [
                   RaisedButton(
                     onPressed: () { _showMyDialog('Life on Land','It aims at protect, restore and promote sustainable use of terrestrial ecosystems, sustainably manage forests, combat desertification, and halt and reverse land degradation and halt biodiversity loss'); },
                     color: Colors.transparent,
                     splashColor: Colors.transparent,
                     elevation: 0,
                     child: Padding(
                       padding:  EdgeInsets.all(8.0),
                       child: Image.asset('assets/sdg15.png',width: 120, height: 120,),
                     ),
                   ),
                   SizedBox(width:10),
                   RaisedButton(
                     onPressed: () { _showMyDialog('Peace Justice and Strong Institutions','It aims to the promotion of peaceful and inclusive societies for sustainable development, the provision of access to justice for all, and building effective, accountable institutions at all levels.'); },
                     color: Colors.transparent,
                     splashColor: Colors.transparent,
                     elevation: 0,
                     child: Padding(
                       padding:  EdgeInsets.all(8.0),
                       child: Image.asset('assets/sdg16.png',width: 120, height: 120,),
                     ),
                   ),


                 ],
               ),
               Divider(
                   color: Colors.grey
               ),

               SizedBox(height: 10,),
               Row(
                 mainAxisAlignment:   MainAxisAlignment.center,
                 children: [
                   RaisedButton(
                     onPressed: () { _showMyDialog('Partnership for Goals','SDG 17 is a vision for improved and more equitable trade, as well as coordinated investment initiatives to promote sustainable development across borders.'); },
                     color: Colors.transparent,
                     splashColor: Colors.transparent,
                     elevation: 0,
                     child: Padding(
                       padding:  EdgeInsets.all(8.0),
                       child: Image.asset('assets/sdg17.jpg',width: 120, height: 120,),
                     ),
                   ),


                 ],
               ),
               Divider(
                   color: Colors.grey
               ),
             ],
           ),
         ) ,
        ),
      ),
    );
  }
}
