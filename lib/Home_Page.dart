import 'package:flutter/material.dart';

import 'Doughnut_Chart.dart';
import 'Line_Chart.dart';
import 'Bar_Chart.dart';
import 'Pie_Chart.dart';


class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  @override
  Widget build(BuildContext context) {
    return
      Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          title:  Center(child: Text('TYPES OF CHARTS',style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),)),
        ),
        body:
        Column(
          children: [
            Padding(
              padding: EdgeInsets.only(left: 30, right: 30, top: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  InkWell(onTap: () {
                    Navigator.push(
                        context, MaterialPageRoute(builder: (context) {
                      return BarChart();
                    }));
                  },
                    child: Card(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(25)),
                      elevation: 20,
                      child: Padding(
                        padding: EdgeInsets.only(bottom: 15, top: 15),
                        child: Container(
                          height: 95,
                          width: 120,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image(width: 90,
                                  height: 55,
                                  image: NetworkImage('https://static.vecteezy.com/system/resources/previews/008/521/303/original/bar-chart-3d-illustration-3d-rendering-free-png.png')),
                              SizedBox(height: 15,),
                              Text('BAR', style: TextStyle(
                                  fontSize: 22, color: Colors.black),),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  InkWell(onTap: () {
                    Navigator.push(
                        context, MaterialPageRoute(builder: (context) {
                      return LineChart();
                    }));
                  },
                    child: Card(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(25)),
                      elevation: 20,
                      child: Padding(
                        padding: EdgeInsets.only(bottom: 15, top: 15),
                        child: Container(
                          height: 95,
                          width: 120,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image(width: 90,
                                  height: 50,
                                  image: NetworkImage('https://media.istockphoto.com/id/1157569047/photo/red-arrow-moving-up-over-graph-paper-background.jpg?b=1&s=170667a&w=0&k=20&c=cjvVEHaVV1TMInS3RQjfaTQQJvGQ6DlvtbHj4cGYEuc=')),
                              SizedBox(height: 15,),
                              Text('LINE', style: TextStyle(
                                  fontSize: 22, color: Colors.black),),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 30, right: 30, top: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  InkWell(onTap: () {
                    Navigator.push(
                        context, MaterialPageRoute(builder: (context) {
                      return PieChart();
                    }));
                  },
                    child: Card(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(25)),
                      elevation: 20,
                      child: Padding(
                        padding: EdgeInsets.only(bottom: 15, top: 15),
                        child: Container(
                          height: 95,
                          width: 120,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image(width: 90,
                                  height: 50,
                                  image: NetworkImage(
                                      'https://www.iconpacks.net/icons/1/free-pie-chart-icon-683-thumb.png')),
                              SizedBox(height: 15,),
                              Text('PIE', style: TextStyle(
                                  fontSize: 22, color: Colors.black),),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  InkWell(onTap: () {
                    Navigator.push(
                        context, MaterialPageRoute(builder: (context) {
                      return  DoughnutChart();
                    }));
                  },
                    child: Card(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(25)),
                      elevation: 20,
                      child: Padding(
                        padding: EdgeInsets.only(bottom: 15, top: 15),
                        child: Container(
                          height: 95,
                          width: 120,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image(width: 100,
                                  height: 56,
                                  image: NetworkImage('https://datavizproject.com/wp-content/uploads/types/Donut-Chart.png')),
                              SizedBox(height: 15,),
                              Text('Doughnut ', style: TextStyle(
                                  fontSize: 22, color: Colors.black),),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),

                ],
              ),
            ),
          ],

        ),
    );
  }
}