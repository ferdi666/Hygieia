import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'data_card.dart';
import 'data.dart';

class CreateEvent extends StatefulWidget {
  @override
  _CreateEventState createState() => _CreateEventState();
}

class _CreateEventState extends State<CreateEvent> {

  int points = 0;
  int scanned = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.center,
          colors: [Color(0xffD9ED92), Colors.white],
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,

        // appBar: AppBar(
        //   title: Text('Create Event'),
        //   centerTitle: true,
        // backgroundColor: Colors.grey[850],
        //   elevation: 0.0,
        // ),

        // floatingActionButton: FloatingActionButton(
        //   onPressed: (){
        //     setState(() {
        //       scanned += 1;
        //     });
        //   },
        //   child: Icon(Icons.add),
        //   backgroundColor: Colors.blueAccent,
        // ),


        body: Builder(builder: (context){
          return Padding(
            padding: EdgeInsets.fromLTRB(40.0, 80.0, 40.0, 0.0),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[

                  Center(
                    child: CircleAvatar(
                      backgroundImage: AssetImage('assets/avatar.jpeg'),
                      radius: 60.0,
                    ),
                  ),

                  SizedBox(height: 10.0),

                  Center(
                    child: Text(
                      'John Doe',
                      style: TextStyle(
                        color: Color(0Xff184E77),
                        fontFamily: 'MontserratRegular',
                        fontSize: 30.0,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 2.0,
                      ),
                    ),
                  ),

                  Center(
                    child: Text(
                      'Davao, Philippines',
                      style: TextStyle(
                        fontFamily: 'MontserratRegular',
                        fontSize: 15.0,
                        color: Color(0Xff184E77),
                        letterSpacing: 2.0,
                      ),
                    ),
                  ),

                  SizedBox(height: 50.0),

                  Container(
                    // height: 50,
                    //alignment: Alignment.center,
                    child: Center(
                      child: Card(
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
                        margin: EdgeInsets.fromLTRB(80.0, 0.0, 80.0, 0.0),
                        // margin: EdgeInsets.all(10),
                        child: IntrinsicHeight(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Column(

                                children: <Widget>[
                                  Text(
                                    'POINTS',
                                    style: TextStyle(
                                      fontFamily: 'MontserratRegular',
                                      fontSize: 10.0,
                                      color: Color(0Xff184E77),
                                    ),
                                  ),
                                  Text(
                                    '$points',
                                    style: TextStyle(
                                      fontFamily: 'MontserratRegular',
                                      fontSize: 15.0,
                                      fontWeight: FontWeight.bold,
                                      color: Color(0Xff184E77),
                                    ),
                                  ),
                                ],
                              ),

                              VerticalDivider(
                                width: 50.0,
                                color: Color(0Xff184E77),
                              ),

                              Column(
                                children: <Widget>[
                                  Text(
                                    'SCANNED',
                                    style: TextStyle(
                                      fontFamily: 'MontserratRegular',
                                      fontSize: 10.0,
                                      color: Color(0Xff184E77),
                                    ),
                                  ),
                                  Text(
                                    '$scanned',
                                    style: TextStyle(
                                      fontFamily: 'MontserratRegular',
                                      fontSize: 15.0,
                                      fontWeight: FontWeight.bold,
                                      color: Color(0Xff184E77),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),

                  SizedBox(height: 50.0),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      TextButton(
                        child: Text(
                          'Your Events',
                          style: TextStyle(
                            fontFamily: 'MontserratRegular',
                            fontSize: 12.5,
                            color: Color(0Xff184E77),
                          ),
                        ),
                        onPressed: () {
                          Navigator.pushNamed(context, '/MainProfile');
                        },
                      ),

                      TextButton(
                        child: Text(
                          'Claim Points',
                          style: TextStyle(
                            fontFamily: 'MontserratRegular',
                            fontSize: 12.5,
                            color: Color(0Xff184E77),
                          ),
                        ),
                        onPressed: () {
                          Navigator.pushNamed(context, '/ClaimPoints');
                        },
                      ),

                      TextButton(
                        child: Text(
                          'Create Event',
                          style: TextStyle(
                            fontFamily: 'MontserratRegular',
                            fontSize: 12.5,
                            color: Color(0Xff184E77),
                          ),
                        ),
                        onPressed: () {},
                      ),
                    ],
                  ),

                  SizedBox(height: 10.0),

                  Center(
                    child: Container(
                      width: 250.0,
                      height: 385.0,
                      child: Column(

                        children: <Widget>[

                          TextField(
                            decoration: InputDecoration(
                              hintText: 'Name of the event',
                              hintStyle: TextStyle(
                                fontSize: 11,
                                fontWeight: FontWeight.bold,
                                fontFamily: 'MontserratRegular',
                                color: Color(0Xff184E77),
                              ),
                              enabledBorder: new UnderlineInputBorder(
                                borderSide: BorderSide(
                                  color: Color(0Xff184E77),
                                  width: 1.0,
                                ),
                              ),
                            ),

                            keyboardType: TextInputType.name,
                          ),

                          TextField(
                            decoration: InputDecoration(
                              hintText: 'Location',
                              hintStyle: TextStyle(
                                fontSize: 11,
                                fontWeight: FontWeight.bold,
                                fontFamily: 'MontserratRegular',
                                color: Color(0Xff184E77),
                              ),
                              enabledBorder: new UnderlineInputBorder(
                                borderSide: BorderSide(
                                  color: Color(0Xff184E77),
                                  width: 1.0,
                                ),
                              ),
                            ),
                            keyboardType: TextInputType.streetAddress,
                          ),

                          TextField(
                            decoration: InputDecoration(
                              hintText: 'Date',
                              hintStyle: TextStyle(
                                fontSize: 11,
                                fontWeight: FontWeight.bold,
                                fontFamily: 'MontserratRegular',
                                color: Color(0Xff184E77),
                              ),
                              enabledBorder: new UnderlineInputBorder(
                                borderSide: BorderSide(
                                  color: Color(0Xff184E77),
                                  width: 1.0,
                                ),
                              ),
                            ),
                            keyboardType: TextInputType.datetime,
                          ),

                          TextField(
                            decoration: InputDecoration(
                              hintText: 'Company',
                              hintStyle: TextStyle(
                                fontSize: 11,
                                fontWeight: FontWeight.bold,
                                fontFamily: 'MontserratRegular',
                                color: Color(0Xff184E77),
                              ),
                              enabledBorder: new UnderlineInputBorder(
                                borderSide: BorderSide(
                                  color: Color(0Xff184E77),
                                  width: 1.0,
                                ),
                              ),
                            ),
                            keyboardType: TextInputType.name,
                          ),

                          TextField(
                            decoration: InputDecoration(
                              hintText: 'Email',
                              hintStyle: TextStyle(
                                fontSize: 11,
                                fontWeight: FontWeight.bold,
                                fontFamily: 'MontserratRegular',
                                color: Color(0Xff184E77),
                              ),
                              enabledBorder: new UnderlineInputBorder(
                                borderSide: BorderSide(
                                  color: Color(0Xff184E77),
                                  width: 1.0,
                                ),
                              ),
                            ),
                            keyboardType: TextInputType.emailAddress,
                          ),

                          TextField(
                            decoration: InputDecoration(
                              hintText: 'Cellphone',
                              hintStyle: TextStyle(
                                fontSize: 11,
                                fontWeight: FontWeight.bold,
                                fontFamily: 'MontserratRegular',
                                color: Color(0Xff184E77),
                              ),
                              enabledBorder: new UnderlineInputBorder(
                                borderSide: BorderSide(
                                  color: Color(0Xff184E77),
                                  width: 1.0,
                                ),
                              ),
                            ),
                            keyboardType: TextInputType.phone,
                          ),

                          TextButton(
                            child: Text(
                              'Create',
                              style: TextStyle(
                                fontFamily: 'MontserratRegular',
                                fontSize: 11,
                                color: Color(0Xff184E77),
                              ),
                            ),
                            style: TextButton.styleFrom(
                              primary: Colors.white,
                              backgroundColor: Colors.white,
                              side: BorderSide(color: Color(0Xff184E77), width: 1),
                              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
                            ),
                            onPressed: () {
                              SnackBar mysnackbar = SnackBar(content: Text('Feature Unavailable'));
                              Scaffold.of(context).showSnackBar(mysnackbar);
                            },
                          ),


                        ],

                      ),
                    ),
                  ),

                ],
              ),
            ),
          );
        })
      ),
    );
  }
}
