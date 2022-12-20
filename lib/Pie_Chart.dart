import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';



class PieChart extends StatefulWidget {
  PieChart({Key? key, }) : super(key: key);

  @override
  _PieChartState createState() => _PieChartState();
}

class _PieChartState extends State<PieChart> {
  late List<GDPData> _chartData;
  late TooltipBehavior _tooltipBehavior;

  @override
  void initState() {
    _chartData = getChartData();
    _tooltipBehavior = TooltipBehavior(enable: true);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.black,
            title: Text('PIE CHART'),
          ),
            body: SfCircularChart(
              title:
              ChartTitle(text: 'Punjab Data 2022 \n (Total Customers)'),
              legend:
              Legend(isVisible: true, overflowMode: LegendItemOverflowMode.wrap),
              tooltipBehavior: _tooltipBehavior,
              series: <CircularSeries>[
                PieSeries<GDPData, String>(
                    dataSource: _chartData,
                    xValueMapper: (GDPData data, _) => data.continent,
                    yValueMapper: (GDPData data, _) => data.gdp,
                    dataLabelSettings: DataLabelSettings(isVisible: true),
                    enableTooltip: true,
                   )
              ],
            ),
        )
    );
  }

  List<GDPData> getChartData() {
     List<GDPData> chartData = [
      GDPData('Multan', 1000,),
      GDPData('Sialkot', 2490),
      GDPData('Islamabad', 2900),
      GDPData('Faisalabbad', 2305),
      GDPData('Karachi', 2488),
      GDPData('Lahore', 3439),
    ];
    return chartData;
  }
}

class GDPData {
  GDPData(this.continent, this.gdp);
  final String continent;
  final int gdp;
}