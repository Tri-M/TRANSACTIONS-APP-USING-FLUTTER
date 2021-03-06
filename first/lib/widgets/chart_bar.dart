import 'package:flutter/material.dart';

class ChartBar extends StatelessWidget {
  final String label;
  final double spendingAmount;
  final double spendingPctOfTotal;

  ChartBar(this.label, this.spendingAmount, this.spendingPctOfTotal);

  @override
  Widget build(BuildContext context) {
    return Column(
      children:<Widget>
      [
      Container(
        height:30,
        child: FittedBox(child: Text('₹' + spendingAmount.toStringAsFixed(0)))),
        SizedBox(height:5,),
        Container(
          height:60,
          width:10,
          child:Stack(children:<Widget>
          [
            Container(decoration:BoxDecoration(
              
              border:Border.all(color:Colors.indigo,width:2.0),
            color:Color.fromRGBO(220,220,220,1),
            borderRadius:BorderRadius.circular(15),
            ),
            ),
          FractionallySizedBox(heightFactor:spendingPctOfTotal,child: Container(
            decoration:BoxDecoration(color:Colors.pink,
            borderRadius:BorderRadius.circular(15),
            )
          ),)

          ],
          ),
        ),
        SizedBox(height:4,),
        Text(label),
      ],
    );
  }
}
