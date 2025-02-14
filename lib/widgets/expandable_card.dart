import 'package:flutter/material.dart';
import 'package:sensors/widgets/bar_chart_sample.dart';

class ExpandableCard extends StatefulWidget {
  ExpandableCard({super.key, required this.name, required this.isOpen});

  final String? name;
  final bool isOpen;

  @override
  _ExpandableCardState createState() =>
      _ExpandableCardState(this.name, this.isOpen);
}

class _ExpandableCardState extends State<ExpandableCard> {
  final String? name;
  bool isOpen;

  _ExpandableCardState(this.name, this.isOpen);

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;

    return GestureDetector(
      onTap: () {
        setState(() {
          isOpen = !isOpen;
        });
      },
      child: AnimatedContainer(
        duration: Duration(milliseconds: 300),
        curve: Curves.easeInOut,
        width: 700,
        height: isOpen ? 600 : 80,
        padding: const EdgeInsets.all(15.0),
        margin: EdgeInsets.symmetric(
            horizontal: width * 0.03, 
            vertical: height * 0.05
          ),
        decoration: BoxDecoration(
          color: Color(0xFF102C14),
          borderRadius: BorderRadius.circular(20.0),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Card(
              child: Container(
                  margin: Theme.of(context).cardTheme.margin,
                  child: Row(
                    children: [
                      Text(
                        "${name}",
                        style: Theme.of(context).textTheme.bodyLarge
                        ),
                      Spacer(),
                      isOpen
                          ? Icon(
                              Icons.arrow_drop_up,
                              color: Color(0xFF102C14),
                              size: 35,
                            )
                          : Icon(
                              Icons.arrow_drop_down,
                              color: Color(0xFF102C14), 
                              size: 35
                            )
                    ],
                  )
                )
              ),
              if (isOpen) ...[
                Container(
                  margin: EdgeInsets.only(top: 15, left: 15),
                  child: Row(
                    children: [
                      ElevatedButton(
                        onPressed: () {}, 
                        child: Text(
                          "Гистограмма",
                          style: Theme.of(context).textTheme.labelSmall
                        ),
                      ),
                      SizedBox(width: 30,),
                      ElevatedButton(
                        onPressed: () {}, 
                        child: Text(
                          "3D-диаграмма",
                          style: Theme.of(context).textTheme.labelSmall
                        ),
                      )
                    ],
                  ),
                ),
                Expanded(
                  child: BarChartSample()
                )
              ]
        ]),
      ),
    );
  }
}