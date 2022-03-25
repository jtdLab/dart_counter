// coverage:ignore-file

import 'package:dart_counter/presentation/ios/core/core.dart' hide Listenable;
import 'package:syncfusion_flutter_charts/charts.dart';
import 'package:syncfusion_flutter_charts/sparkcharts.dart';

void main() {}

/**
 * class FilteredBlocListener<B extends StateStreamable<S>, S, F extends S>
    extends StatelessWidget {
  final void Function(BuildContext, F) listener;
  final B? bloc;
  final bool Function(S, F)? listenWhen;
  final Widget? child;

  const FilteredBlocListener({
    Key? key,
    required this.listener,
    this.bloc,
    this.listenWhen,
    this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocListener<B, S>(
      listener: (context, state) => listener(context, state as F),
      bloc: bloc,
      listenWhen: (previous, current) =>
          current is F && (listenWhen?.call(previous, current) ?? true),
      child: child,
    );
  }
}

class FilteredBlocBuilder<B extends StateStreamable<S>, S, F extends S>
    extends StatelessWidget {
  final Widget Function(BuildContext, F) builder;
  final B? bloc;
  final bool Function(S, F)? listenWhen;

  const FilteredBlocBuilder({
    Key? key,
    required this.builder,
    this.bloc,
    this.listenWhen,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<B, S>(
      builder: (context, state) => builder(context, state as F),
      bloc: bloc,
      buildWhen: (previous, current) =>
          current is F && (listenWhen?.call(previous, current) ?? true),
    );
  }
}


 */

/**
 * class LineChart extends StatelessWidget {
  const LineChart({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SfCartesianChart(
      zoomPanBehavior: ZoomPanBehavior(enableDoubleTapZooming: true),
      primaryXAxis: CategoryAxis(),
      
      series: <LineSeries<_SalesData, String>>[
        LineSeries<_SalesData, String>(
          color: Colors.black,
          dataSource: <_SalesData>[
            _SalesData('Jan', 35),
            _SalesData('Feb', 28),
            _SalesData('Mar', 34),
            _SalesData('Apr', 32),
            _SalesData('May', 40),
            _SalesData('Jun', 10),
            _SalesData('Jul', 5),
            _SalesData('Aug', 20),
            _SalesData('Sep', 33),
            _SalesData('Oct', 24),
            _SalesData('Nov', 19),
            _SalesData('Dez', 17),
          ],
          xValueMapper: (_SalesData sales, _) => sales.year,
          yValueMapper: (_SalesData sales, _) => sales.sales,
        )
      ],
    );
  }
}

class _SalesData {
  _SalesData(this.year, this.sales);

  final String year;
  final double sales;
}

class PieChart extends StatelessWidget {
  const PieChart({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SfCircularChart(
      title: ChartTitle(text: 'Sales by sales person'),
      //legend: Legend(isVisible: true),
      series: <PieSeries<_PieData, String>>[
        PieSeries<_PieData, String>(
            explode: true,
            explodeIndex: 0,
            dataSource: [
              _PieData('Jonas', 22, 'Jonas'),
              _PieData('David', 21, 'David'),
              _PieData('Anna', 19, 'Anna'),
              _PieData('Elias', 14, 'Elias'),
              _PieData('Eva', 51, 'Eva'),
              _PieData('Jochen', 50, 'Jochen'),
            ],
            xValueMapper: (_PieData data, _) => data.xData,
            yValueMapper: (_PieData data, _) => data.yData,
            dataLabelMapper: (_PieData data, _) => data.text,
            dataLabelSettings: const DataLabelSettings(isVisible: true),
            pointColorMapper: (_, index) {
              switch (index % 3) {
                case 0:
                  return Colors.black;
                case 1:
                  return Colors.red;
                default:
                  return Colors.yellow;
              }
            }),
      ],
    );
  }
}

class _PieData {
  _PieData(this.xData, this.yData, [this.text = 'empty']);

  final String xData;
  final num yData;
  final String text;
}

 */