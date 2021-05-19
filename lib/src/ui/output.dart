import 'package:flutter/material.dart';
import 'package:pie_chart/pie_chart.dart';
import 'package:untitled/blastn/blastn.dart';
import 'package:untitled/model/model.dart';
class Output extends StatefulWidget {
  TextEditingController query = TextEditingController();
    Output(this.query);
  @override
  _OutputState createState() => _OutputState();
}

class _OutputState extends State<Output> {
  Blast _blast=Blast();
  double? m=0;
  double match=Blast.alignment_score;
  
  @override
  Widget build(BuildContext context) {
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
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            SizedBox(
              width: 250,
              height: 250,
              child: PieChart(
                dataMap: {"Miss match": 100-match, "Match":match },
                colorList: [Colors.yellow, Colors.red],
                chartType: ChartType.ring,
                chartValuesOptions: ChartValuesOptions(
                  showChartValuesOutside: false,
                  showChartValues: true,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Container(
                height: 170,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(5))),
                padding: EdgeInsets.all(10),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text(
                          '${_blast.blastAlgorithm(widget.query.toString())}',
                          style: TextStyle(
                              color: Colors.black, fontWeight: FontWeight.bold),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}