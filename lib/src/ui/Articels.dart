import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class ArticelsPage extends StatefulWidget {
  @override
  _ArticelsPageState createState() => _ArticelsPageState();
}

class _ArticelsPageState extends State<ArticelsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Text(
          'Articles',
          style: TextStyle(fontFamily: 'font2'),
        ),
        centerTitle: true,
        leading: IconButton(
          icon: Icon(
            Icons.chevron_left,
            color: Colors.black,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(25.0),
          child: Column(
            children: [
              InkWell(
                onTap: () {
                  launchURL(
                      'https://academic.oup.com/nar/article/43/16/7762/1077466');
                },
                child: Padding(
                  padding: const EdgeInsets.only(bottom: 15.0),
                  child: Container(
                    height: 220,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(10),
                          topRight: Radius.circular(10),
                          bottomLeft: Radius.circular(10),
                          bottomRight: Radius.circular(10)),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 5,
                          blurRadius: 7,
                          offset: Offset(0, 3), // changes position of shadow
                        ),
                      ],
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Stack(
                          alignment: Alignment.topRight,
                          children: [
                            Container(
                              height: 120,
                              width: MediaQuery.of(context).size.width,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(10),
                                    topRight: Radius.circular(10),
                                    bottomLeft: Radius.circular(10),
                                    bottomRight: Radius.circular(10)),
                                image: DecorationImage(
                                    image: AssetImage('asstes/img11.jpeg'),
                                    fit: BoxFit.cover),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey.withOpacity(0.5),
                                    spreadRadius: 3,
                                    blurRadius: 5,
                                    offset: Offset(
                                        0, 3), // changes position of shadow
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              color: Colors.white,
                              child: IconButton(
                                onPressed: () {},
                                icon: Icon(
                                  Icons.favorite_border,
                                  color: Colors.red,
                                ),
                              ),
                            )
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Article Name',
                                style: TextStyle(
                                    fontFamily: 'font2', fontSize: 15),
                              ),
                              Text(
                                '15 seen',
                                style: TextStyle(
                                    fontFamily: 'font2', fontSize: 15),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.all(15),
                          child: Text('Wrirer',
                              style:
                                  TextStyle(fontFamily: 'font2', fontSize: 15)),
                        )
                      ],
                    ),
                  ),
                ),
              ),
              InkWell(
                onTap: () {
                  launchURL(
                      'https://www.google.com/url?sa=t&source=web&rct=j&url=https://www.ncbi.nlm.nih.gov/pmc/articles/PMC441573/&ved=2ahUKEwiYqPSfmKbwAhUWRxUIHd0lCisQFjAFegQICBAC&usg=AOvVaw0Zx3DjtJA7ZyK5fwcRFDyK&cshid=1619793310242');
                },
                child: Padding(
                  padding: const EdgeInsets.only(bottom: 15.0),
                  child: Container(
                    height: 220,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(10),
                          topRight: Radius.circular(10),
                          bottomLeft: Radius.circular(10),
                          bottomRight: Radius.circular(10)),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 5,
                          blurRadius: 7,
                          offset: Offset(0, 3), // changes position of shadow
                        ),
                      ],
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Stack(
                          alignment: Alignment.topRight,
                          children: [
                            Container(
                              height: 120,
                              width: MediaQuery.of(context).size.width,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(10),
                                    topRight: Radius.circular(10),
                                    bottomLeft: Radius.circular(10),
                                    bottomRight: Radius.circular(10)),
                                image: DecorationImage(
                                    image: AssetImage('asstes/img11.jpeg'),
                                    fit: BoxFit.cover),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey.withOpacity(0.5),
                                    spreadRadius: 3,
                                    blurRadius: 5,
                                    offset: Offset(
                                        0, 3), // changes position of shadow
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              color: Colors.white,
                              child: IconButton(
                                onPressed: () {},
                                icon: Icon(
                                  Icons.favorite_border,
                                  color: Colors.red,
                                ),
                              ),
                            )
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Article Name',
                                style: TextStyle(
                                    fontFamily: 'font2', fontSize: 15),
                              ),
                              Text(
                                '15 seen',
                                style: TextStyle(
                                    fontFamily: 'font2', fontSize: 15),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.all(15),
                          child: Text('Wrirer',
                              style:
                                  TextStyle(fontFamily: 'font2', fontSize: 15)),
                        )
                      ],
                    ),
                  ),
                ),
              ),
              InkWell(
                onTap: () {
                  launchURL(
                      'https://www.google.com/url?sa=t&source=web&rct=j&url=https://www.nature.com/scitable/topicpage/basic-local-alignment-search-tool-blast-29096&ved=2ahUKEwj288STmabwAhVVtnEKHQAYBJYQFjALegQIFxAC&usg=AOvVaw1ibk9Yx1douQ3NEu_x9EL7');
                },
                child: Padding(
                  padding: const EdgeInsets.only(bottom: 15.0),
                  child: Container(
                    height: 220,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(10),
                          topRight: Radius.circular(10),
                          bottomLeft: Radius.circular(10),
                          bottomRight: Radius.circular(10)),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 5,
                          blurRadius: 7,
                          offset: Offset(0, 3), // changes position of shadow
                        ),
                      ],
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Stack(
                          alignment: Alignment.topRight,
                          children: [
                            Container(
                              height: 120,
                              width: MediaQuery.of(context).size.width,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(10),
                                    topRight: Radius.circular(10),
                                    bottomLeft: Radius.circular(10),
                                    bottomRight: Radius.circular(10)),
                                image: DecorationImage(
                                    image: AssetImage('asstes/img11.jpeg'),
                                    fit: BoxFit.cover),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey.withOpacity(0.5),
                                    spreadRadius: 3,
                                    blurRadius: 5,
                                    offset: Offset(
                                        0, 3), // changes position of shadow
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              color: Colors.white,
                              child: IconButton(
                                onPressed: () {},
                                icon: Icon(
                                  Icons.favorite_border,
                                  color: Colors.red,
                                ),
                              ),
                            )
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Article Name',
                                style: TextStyle(
                                    fontFamily: 'font2', fontSize: 15),
                              ),
                              Text(
                                '15 seen',
                                style: TextStyle(
                                    fontFamily: 'font2', fontSize: 15),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.all(15),
                          child: Text('Wrirer',
                              style:
                                  TextStyle(fontFamily: 'font2', fontSize: 15)),
                        )
                      ],
                    ),
                  ),
                ),
              ),
              InkWell(
                onTap: () {
                  launchURL(
                      'https://www.tigm.org/updated-blast-tutorial/?gclid=Cj0KCQjw1a6EBhC0ARIsAOiTkrGRG3vYqZwZNkQ_92w4W9BGGZHkbenFF2J80o8Ia_krhG7BJRXVspUaAmu4EALw_wcB');
                },
                child: Padding(
                  padding: const EdgeInsets.only(bottom: 15.0),
                  child: Container(
                    height: 220,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(10),
                          topRight: Radius.circular(10),
                          bottomLeft: Radius.circular(10),
                          bottomRight: Radius.circular(10)),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 5,
                          blurRadius: 7,
                          offset: Offset(0, 3), // changes position of shadow
                        ),
                      ],
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Stack(
                          alignment: Alignment.topRight,
                          children: [
                            Container(
                              height: 120,
                              width: MediaQuery.of(context).size.width,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(10),
                                    topRight: Radius.circular(10),
                                    bottomLeft: Radius.circular(10),
                                    bottomRight: Radius.circular(10)),
                                image: DecorationImage(
                                    image: AssetImage('asstes/img11.jpeg'),
                                    fit: BoxFit.cover),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey.withOpacity(0.5),
                                    spreadRadius: 3,
                                    blurRadius: 5,
                                    offset: Offset(
                                        0, 3), // changes position of shadow
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              color: Colors.white,
                              child: IconButton(
                                onPressed: () {},
                                icon: Icon(
                                  Icons.favorite_border,
                                  color: Colors.red,
                                ),
                              ),
                            )
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Article Name',
                                style: TextStyle(
                                    fontFamily: 'font2', fontSize: 15),
                              ),
                              Text(
                                '15 seen',
                                style: TextStyle(
                                    fontFamily: 'font2', fontSize: 15),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.all(15),
                          child: Text('Wrirer',
                              style:
                                  TextStyle(fontFamily: 'font2', fontSize: 15)),
                        )
                      ],
                    ),
                  ),
                ),
              ),
              InkWell(
                onTap: () {
                  launchURL(
                      'https://www.researchgate.net/publication/253234452_The_effect_of_blast_disease_on_rice_growth_yield_and_quality_in_the_field');
                },
                child: Padding(
                  padding: const EdgeInsets.only(bottom: 15.0),
                  child: Container(
                    height: 220,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(10),
                          topRight: Radius.circular(10),
                          bottomLeft: Radius.circular(10),
                          bottomRight: Radius.circular(10)),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 5,
                          blurRadius: 7,
                          offset: Offset(0, 3), // changes position of shadow
                        ),
                      ],
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Stack(
                          alignment: Alignment.topRight,
                          children: [
                            Container(
                              height: 120,
                              width: MediaQuery.of(context).size.width,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(10),
                                    topRight: Radius.circular(10),
                                    bottomLeft: Radius.circular(10),
                                    bottomRight: Radius.circular(10)),
                                image: DecorationImage(
                                    image: AssetImage('asstes/img11.jpeg'),
                                    fit: BoxFit.cover),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey.withOpacity(0.5),
                                    spreadRadius: 3,
                                    blurRadius: 5,
                                    offset: Offset(
                                        0, 3), // changes position of shadow
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              color: Colors.white,
                              child: IconButton(
                                onPressed: () {},
                                icon: Icon(
                                  Icons.favorite_border,
                                  color: Colors.red,
                                ),
                              ),
                            )
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Article Name',
                                style: TextStyle(
                                    fontFamily: 'font2', fontSize: 15),
                              ),
                              Text(
                                '15 seen',
                                style: TextStyle(
                                    fontFamily: 'font2', fontSize: 15),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.all(15),
                          child: Text('Wrirer',
                              style:
                                  TextStyle(fontFamily: 'font2', fontSize: 15)),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  launchURL(String url) async {
    print('called');
    await canLaunch(url) ? await launch(url) : throw 'Could not launch $url';
  }
}
