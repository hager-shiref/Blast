
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'package:pie_chart/pie_chart.dart';
import 'package:provider/provider.dart';
import 'package:untitled/model/controller.dart';
import 'package:untitled/blastn/blastn.dart';
var retrevedData=" ";
var dataa;
final db=FirebaseDatabase.instance;
   final ref=db.reference().child('data');
     final data=ref.child('description').once().then((DataSnapshot data){
         retrevedData=data.value;
         dataa=data;
       });
class Output extends StatefulWidget {
     TextEditingController query = TextEditingController();
    Output(this.query);
  @override
  _OutputState createState() => _OutputState();
}
class _OutputState extends State<Output> {

  @override
  Widget build(BuildContext context) {
     //Blast b=Blast();
     //double? m=Blast.alignment_score;
     double  match=0;
   // if(m !=null)   match=m*100;
    return Scaffold(
        backgroundColor: Color(0xff4a707a),
        appBar: AppBar(
          backgroundColor: Color(0xff4a707a),
          elevation: 0,
          centerTitle: true,
          title: Text(
            'BLASTn',
            style: TextStyle(color: Colors.white),
          ),
          leading: IconButton(
            icon: Icon(
              Icons.chevron_left,
              color: Colors.white,
            ),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ),
        body: Center(child:Text('${retrevedData.toString()}',style: TextStyle(color: Colors.white),
         ),));
    //     body:  FutureBuilder(
    //       future: dataa,
    //   builder: (BuildContext context ,AsyncSnapshot snapshot ){
    //     if(snapshot.hasError)
    //     {
    //       print(snapshot.error);
    //     }
    //      if(snapshot.connectionState==ConnectionState.none||snapshot.connectionState==ConnectionState.waiting){
    //             print("data has not been fetched yet");
    //             return Center(child: CircularProgressIndicator());
    //         }
    //       else{
    //         if(snapshot.hasData){
    //           print("Data found, You can continue");
    //           return Container(
    //       height: MediaQuery.of(context).size.height,
    //       width: MediaQuery.of(context).size.width,
    //       child: Column(
    //         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    //         children: [
    //           SizedBox(
    //             width: 250,
    //             height: 250,
    //             child: PieChart(
    //               dataMap: {"Miss match": 100-match, "Match":match },
    //               colorList: [Colors.yellow, Colors.red],
    //               chartType: ChartType.ring,
    //               chartValuesOptions: ChartValuesOptions(
    //                 showChartValuesOutside: false,
    //                 showChartValues: true,
    //               ),
    //             ),
    //           ),
    //           Padding(
    //             padding: const EdgeInsets.all(10.0),
    //             child: Container(
    //               height: 170,
    //               width: MediaQuery.of(context).size.width,
    //               decoration: BoxDecoration(
    //                   color: Colors.white,
    //                   borderRadius: BorderRadius.all(Radius.circular(5))),
    //               padding: EdgeInsets.all(10),
    //               child: ListView.builder(
    //                 itemCount: widget.query.toString().length.compareTo(0),
    //                 itemBuilder: (ctx,index){
    //                 return Row(
    //                     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    //                     children: [
    //                       Text(
    //                         '${retrevedData}',
    //                         style: TextStyle(
    //                             color: Colors.black, fontWeight: FontWeight.bold),
    //                       ),
                          
    //                     ],
    //                 );
    //               }
    //               )
                  
    //             )
    //           )
    //         ],
    //       ),
    //     );
    //         }
    //         else{
    //              print("No data found");
    //              return Text("No data found");
    //          }
    //       }
    //   }
    // )
  }}