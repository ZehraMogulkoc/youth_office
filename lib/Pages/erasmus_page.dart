import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

final Uri _url = Uri.parse('https://erasmus-plus.ec.europa.eu/');
final Uri _url1 = Uri.parse('https://www.ua.gov.tr/en/corporate/director/');
final Uri _url2 = Uri.parse('https://www.ua.gov.tr/en/contact/contact-information/');
class ErasmusPage extends StatefulWidget {
  const ErasmusPage({Key? key}) : super(key: key);

  @override
  _ErasmusPageState createState() => _ErasmusPageState();
}

class _ErasmusPageState extends State<ErasmusPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor:Colors.red.shade800 ,
        title: Text('Erasmus+'),
      ),
      body: SafeArea(
        child: Center(
            child:SingleChildScrollView(
              child: Column(
                children: [
                  SizedBox(height: 10,),
                  Image(image:NetworkImage('https://www.uliege.be/upload/docs/image/jpeg/2021-07/erasmus_in_2021-07-01_15-24-37_705.jpg')),
                  SizedBox(height: 10,),
                  Text('Erasmus+',style: TextStyle(
                      fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('Erasmus+ is the EU\'s programme to support education, training, youth and sport in Europe.'
                        ' It is managed by the European Commission (the EU\'s executive body), the European Education and Culture Executive Agency (EACEA), a series of National Agencies in Programme countries, and a series of National Offices in some Partner countries.'
                        ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('The 2021-2027 programme places a strong focus on social inclusion, the green and digital transitions, and promoting young people’s participation in democratic life.It supports priorities and activities set out in the European Education Area, Digital Education Action Plan and the European Skills Agenda. The programme also\n'
                        '• supports the European Pillar of Social Rights \n'
                        '• implements the EU Youth Strategy 2019-2027\n'
                        '• develops the European dimension in sport'),
                  ),
                  // Image.asset('assets/img_1.png', ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(30),
                      child: Image(
                        image: NetworkImage(
                            'https://www.erasmusplus.cy/wp-content/uploads/start.jpg'),
                      ),
                    ),
                  ),

                  SizedBox(height: 10,),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('Erasmus+ offers mobility and cooperation opportunities in\n'
                        '• higher education\n'
                        '• vocational education and training\n'
                        '• school education (including early childhood education and care)\n'
                        '• adult education\n'
                        '• youth\n'
                        '• and sport'),
                  ),
                  Padding(padding: const EdgeInsets.all(3.0),
                  child: Text('National Agencies', style: TextStyle(fontWeight:FontWeight.bold, fontSize: 20),),),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('In the EU countries, the Commission entrusts much of the management of Erasmus+ to National Agencies. Outside the EU, and specifically in the field of higher education, this role is filled by the National Erasmus+ Offices.\n'
                        'The Commission provides funding to the National Agencies, who use these funds to manage the programme\'s "decentralised" activities. This allows the Agencies to adapt the programme to suit their national education, training, and youth systems.\n'
                        'The National Agencies are responsible for\n'
                        '•providing information on the programme\n'
                        '• reviewing applications submitted in their country\n'
                        '• monitoring and evaluating the implementation of the programme in their country\n'
                        '• supporting people and organisations taking part in Erasmus+\n'
                        '• promoting the programme and its activities at a local and national level\n'
                        'These Agencies also support beneficiaries of the programme from the application stage to the end of a project. They also work with beneficiaries and other organisations to support EU policy in areas supported by the programme.'),
                  ),
                  Padding(padding: EdgeInsets.all(3),
                  child: Text('National Erasmus+ Offices',style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('Outside the EU, in the partner countries participating in Erasmus+ in the area of higher education, much of the work of the National Agencies is carried out by National Erasmus+Offices. These offices are the focal point for anyone intending to take part in Erasmus+, and are responsible for\n'
                        '• providing information on the programme and who can take part\n'
                        '• advising and assisting potential applicants\n'
                        '• monitoring Erasmus+ projects\n'
                        '• supporting policy dialogue, studies, and events\n'
                        '• maintaining contacts with experts and local authorities\n'
                        '• monitoring policy developments\n'
                        '• Other bodies'),
                  ),
                  SizedBox(height: 10,),
                  Padding(padding: EdgeInsets.all(8.0),
                  child: Text('For further information about the projects, opportunities, application process and more, you can visit Erasmus+ website.')
                  ),
                  SizedBox(height:20),

                  ElevatedButton(


                    style: ElevatedButton.styleFrom(
                      primary: Colors.red.shade800,
                      minimumSize: const Size(300, 50),
                      maximumSize: const Size(300, 50),
                    ),
                    onPressed: _launchUrl,
                    child: Text('GO TO WEBSITE'),

                  ),
                  SizedBox(height: 20,),

                ],
              ),
            )
        ),
      ),
    );
  }
}
void _launchUrl() async {
  if (!await launchUrl(_url)) throw 'Could not launch $_url';
}
