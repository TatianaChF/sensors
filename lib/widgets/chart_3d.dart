import 'package:flutter/material.dart';
import 'package:flutter_echarts/flutter_echarts.dart';


class Chart3d extends StatelessWidget {
  final String _option = '''
    {
      tooltip: {},
      grid3D: {
        viewControl: {
          projection: 'perspective',
          autoRotate: true,
          autoRotateAfterStill: 3
        }
      },
      xAxis3D: {
        type: 'category',
        data: ['A', 'B', 'C', 'D']
      },
      yAxis3D: {
        type: 'value'
      },
      zAxis3D: {
        type: 'value'
      },
      series: [{
        type: 'bar3D',
        data: [
          [0, 0, 5], // [x, z, value]
          [1, 0, 8],
          [2, 0, 13],
          [3, 0, 7]
        ],
        shading: 'color',
        itemStyle: {
          color: '#77EEDF'
        }
      }]
    }
  ''';

  @override
  Widget build(BuildContext context) {
    return Echarts(
      option: _option,
      extraScript: 'echarts.gl', 
      
    );
  }
}