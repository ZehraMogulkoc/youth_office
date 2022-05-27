import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

final Uri _url = Uri.parse('https://www.ua.gov.tr/en/news/');
final Uri _url1 = Uri.parse('https://www.ua.gov.tr/en/corporate/director/');
final Uri _url2 = Uri.parse('https://www.ua.gov.tr/en/contact/contact-information/');
class TNA extends StatefulWidget {
  const TNA({Key? key}) : super(key: key);

  @override
  _TNAState createState() => _TNAState();
}

class _TNAState extends State<TNA> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor:Colors.redAccent ,
        title: Text('Turkish National Agency'),
      ),
      body: SafeArea(
        child: Center(
          child:SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: 10,),
                Image.asset('assets/img.png'),
                SizedBox(height: 10,),
                Text('Turkish National Agency',style: TextStyle(
                  fontWeight: FontWeight.bold
                ),),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text('Turkey has started to benefit from the nomination process with the start of the 1999 Helsinki Summit '
                      'of the European Union community programs. Which will provide the benefit of Turkey s EU programs and parties '
                      'who signed on February 26 of Law No. 4763 approving the 2002 Framework Agreement approved by the Parliament '
                      'negotiated and entered into force on June 28, 2002 published in the Official Gazette. The content of the '
                      'agreement and the Decree of the Council of Ministers on which is based, was published in the Official Gazette '
                      'on 1 September 2002 after the signatures were completed.'),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text('In Turkey, the "National Agency" mission in January 2002 to take over the Council of Ministers and the'
                      ' State Planning Organization within the European Union Education and Youth Programs Department was '
                      'established.'),
                ),
               // Image.asset('assets/img_1.png', ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(30),
                    child: Image(
                      image: NetworkImage(
                          'https://www.avrupa.info.tr/sites/default/files/styles/standard_page_header/public/2021-10/GettyImages-649018798.jpg?itok=GgTXg3KJ'),
                    ),
                  ),
                ),

                SizedBox(height: 10,),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text('The Center for European Union Education and Youth Programs (Turkish National Agency), was established '
                      'on August 6, 2003, 25191 numbered Official Gazette No. 540 under the State Planning Organization and Amending '
                      'the Decree Law on Duties established by 4968 the law no legal personality, It is an institution with '
                      'administrative and financial autonomy. The Agency became the relevant institution of the Ministry of European '
                      'Union with the Decree No. 634 in 2011.'),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text('The Agency became the relevant institution of the Directorate of European Union Affairs, which is an affiliate '
                      'of the Ministry of Foreign Affairs, with Directorial Decree No. 4 in 2018.'),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text('The National Agency, became active in 2003, became a full member of the EU Education and Youth Programs on '
                      'April 1, 2004, and started running community programs known as Socrates, Leonardo da Vinci and Youth until '
                      '2006. In the period, 2007-2013 Lifelong Learning and Youth in Action Programs was also successfully carried out '
                      'by the Turkish National Agency. The new program covering the periods 2014-2020 and 2021-2027 Erasmus + Program '
                      'is still under the authority of the Turkish National Agency.  '),
                ),
                SizedBox(height:20),

                ElevatedButton(


                  style: ElevatedButton.styleFrom(
                    primary: Colors.blueGrey,
                    minimumSize: const Size(300, 50),
                    maximumSize: const Size(300, 50),
                  ),
                  onPressed: _launchUrl,
                  child: Text('NEWS AND ANOUNCEMENTS'),

                ),
                SizedBox(height: 10,),

                ElevatedButton(


                  style: ElevatedButton.styleFrom(
                    primary: Colors.redAccent,
                    minimumSize: const Size(300, 50),
                    maximumSize: const Size(300, 50),
                  ),
                  onPressed: _launchUrl1,
                  child: Text('DIRECTOR'),

                ),
                SizedBox(height:10),
                ElevatedButton(


                  style: ElevatedButton.styleFrom(
                    primary: Colors.blueAccent,
                    minimumSize: const Size(300, 50),
                    maximumSize: const Size(300, 50),
                  ),
                  onPressed: _launchUrl2,
                  child: Text('CONTACT INFORMATION'),

                ),
                SizedBox(height: 10,)
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
void _launchUrl1() async {
  if (!await launchUrl(_url1)) throw 'Could not launch $_url1';
}
void _launchUrl2() async {
  if (!await launchUrl(_url2)) throw 'Could not launch $_url2';
}