import 'package:flutter/material.dart';
import 'data.dart';

class DataCard extends StatelessWidget {

  final Data data;
  final Function delete;
  DataCard({this.data, this.delete});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(30.0),
      child: Card(
        elevation: 2.5,
        child: Container(

          // semanticContainer: true,
          // clipBehavior: Clip.antiAliasWithSaveLayer,
          // child: Image.asset(
          //   'eventpicture.jpeg',
          //   fit: BoxFit.fill,
          // ),
          //
          // shape: RoundedRectangleBorder(
          //   borderRadius: BorderRadius.circular(20.0),
          // ),

          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15.0),
            image: DecorationImage(
              image: AssetImage('assets/eventpicture1.jpeg'),
              fit: BoxFit.fitWidth,
              // shape: RoundedRectangleBorder(
              //   borderRadius: BorderRadius.circular(20.0),
              // ),
            )
          ),

          // margin: EdgeInsets.fromLTRB(5.0, 10.0, 5.0, 0),

          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[

                Text(
                  data.event,
                  textAlign: TextAlign.right,
                  style: TextStyle(
                    fontSize: 15.0,
                    fontFamily: 'MontserratRegular',
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),

                Text(
                  data.place,
                  textAlign: TextAlign.right,
                  style: TextStyle(
                    fontSize: 13.0,
                    fontFamily: 'MontserratRegular',
                    color: Colors.white,
                  ),
                ),

                SizedBox(height: 6.0,),

                Text(
                  data.date,
                  textAlign: TextAlign.right,
                  style: TextStyle(
                    fontSize: 10.0,
                    fontFamily: 'MontserratRegular',
                    color: Colors.white,
                  ),
                ),

                SizedBox(height: 6.0,),

                Text(
                  data.time,
                  textAlign: TextAlign.right,
                  style: TextStyle(
                    fontSize: 10.0,
                    fontFamily: 'MontserratRegular',
                    color: Colors.white,
                  ),
                ),

                SizedBox(height: 5.0),

                TextButton.icon(
                  onPressed: delete,
                  label: Text(
                    '',
                    style: TextStyle( ),
                  ),
                  icon: Icon(
                    Icons.close,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}