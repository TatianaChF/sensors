import 'package:flutter/material.dart';

class ExpandableCard extends StatefulWidget {
  @override
  _ExpandableCardState createState() => _ExpandableCardState();
}

class _ExpandableCardState extends State<ExpandableCard> {
  bool _isOpen = false;

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;

    return GestureDetector(
      onTap: () {
        setState(() {
          _isOpen = !_isOpen;
        });
      },
      child: AnimatedContainer(
        duration: Duration(milliseconds: 300),
        curve: Curves.easeInOut,
        width: _isOpen ? 300 : 700,
        height: _isOpen ? 200 : 80,
        padding: const EdgeInsets.all(15.0),
        margin: EdgeInsets.symmetric(horizontal: width * 0.03, vertical: height * 0.05),
        decoration: BoxDecoration(
          color: Color(0xFF102C14),
          borderRadius: BorderRadius.circular(20.0),
        ),
        child: Center(
          child: Card(
            color: Color(0xFFD4E4D7),
            child: Container(
                        margin: EdgeInsets.only(left: 15, right: 15),
                        child: Row(
                          children: [
                            Text(
                                "Диаграмма",
                                style: TextStyle(
                                    color: Color(0xFF102C14),
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20
                                )
                            ),
                            Spacer(),
                            _isOpen ? Icon(
                              Icons.arrow_drop_up,
                              color: Color(0xFF102C14),
                              size: 35,
                            ) : Icon(
                                Icons.arrow_drop_down,
                                color: Color(0xFF102C14),
                                size: 35
                              )
                          ],
                        )
                    )
          )
        ),
      ),
    );
  }
}
 
// class DiagramCard extends StatelessWidget {
//   DiagramCard({
//     super.key,
//     required this.name,
//     required this.isOpen
//   });

//   final String? name;
//   bool isOpen;

//   @override
//   Widget build(BuildContext context) {
//     final height = MediaQuery.of(context).size.height;
//     final width = MediaQuery.of(context).size.width;

//     return Row(
//         children: [
//           Container(
//               width: 700,
//               height: 80,
//               padding: const EdgeInsets.all(15.0),
//               decoration: BoxDecoration(
//                   color: Color(0xFF102C14),
//                   borderRadius: BorderRadius.circular(20.0)
//               ),
//               margin: EdgeInsets.symmetric(horizontal: width * 0.03, vertical: height * 0.05),
//               child: GestureDetector(
//                 onTap: () {
//                   isOpen = !isOpen;
//                   print(isOpen);
//                 },
//                 child: Card(
//                     color: Color(0xFFD4E4D7),
//                     child: Container(
//                         margin: EdgeInsets.only(left: 15, right: 15),
//                         child: Row(
//                           children: [
//                             Text(
//                                 "${name}",
//                                 style: TextStyle(
//                                     color: Color(0xFF102C14),
//                                     fontWeight: FontWeight.bold,
//                                     fontSize: 20
//                                 )
//                             ),
//                             Spacer(),
//                             isOpen ? Icon(
//                               Icons.arrow_drop_up,
//                               color: Color(0xFF102C14),
//                               size: 35,
//                             ) : Icon(
//                                 Icons.arrow_drop_down,
//                                 color: Color(0xFF102C14),
//                                 size: 35)
//                           ],
//                         )
//                     )
//                 )
//               )
//           )
//         ]
//     );
//   }
// }