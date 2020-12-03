import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_fresh_food/utils/custom_box_decoration.dart';

class Orders extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          // Header
          Container(
            height: 100,
            width: MediaQuery.of(context).size.width,
            decoration: customBoxDecoration,
            child: Row(
              children: [
                IconButton(
                  icon: Icon(Icons.arrow_back),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
                Spacer(),
                Text(
                  "Your Orders",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 24.0,
                  ),
                ),
                Spacer(
                  flex: 2,
                ),

                // To center align text with a back button
                // https://stackoverflow.com/a/58824505
              ],
            ),
          ),

          // Body
          Expanded(
            child: Container(
              child: ListView(
                scrollDirection: Axis.vertical,
                children: [
                  Container(
                    margin: const EdgeInsets.symmetric(
                      horizontal: 20.0,
                      vertical: 10.0,
                    ),
                    decoration: BoxDecoration(
                      color: Colors.grey[200],
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                    child: ExpansionTile(
                      initiallyExpanded: true,
                      tilePadding: EdgeInsets.symmetric(
                        horizontal: 20.0,
                        vertical: 10.0,
                      ),
                      childrenPadding: EdgeInsets.symmetric(
                        horizontal: 20.0,
                        vertical: 10.0,
                      ),
                      expandedCrossAxisAlignment: CrossAxisAlignment.start,
                      backgroundColor: Colors.grey[200],
                      title: Text(
                        "Order #123",
                        style: TextStyle(
                          fontSize: 18.0,
                          color: Colors.grey,
                        ),
                      ),
                      children: [
                        DataTable(
                          dividerThickness: 0.0,
                          headingRowHeight: 0,
                          dataRowHeight: 80,
                          columns: [
                            DataColumn(
                              label: Text(''),
                            ),
                            DataColumn(
                              label: Text(''),
                            ),
                            DataColumn(
                              label: Text(''),
                            ),
                          ],
                          rows: [
                            DataRow(
                              cells: [
                                DataCell(
                                  Text(
                                    "Broccolli",
                                    style: TextStyle(
                                      fontSize: 18.0,
                                      color: Colors.grey[700],
                                    ),
                                  ),
                                ),
                                DataCell(
                                  Text(
                                    "2 Heads",
                                    textAlign: TextAlign.right,
                                    style: TextStyle(
                                      fontSize: 18.0,
                                      color: Colors.grey[500],
                                    ),
                                  ),
                                ),
                                DataCell(
                                  Text(
                                    "60.0",
                                    style: TextStyle(
                                      fontSize: 18.0,
                                      color: Colors.grey[700],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            DataRow(
                              cells: [
                                DataCell(
                                  Text(
                                    "Red Peppers",
                                    style: TextStyle(
                                      fontSize: 18.0,
                                      color: Colors.grey[700],
                                    ),
                                  ),
                                ),
                                DataCell(
                                  Text(
                                    "4 Nos.",
                                    textAlign: TextAlign.right,
                                    style: TextStyle(
                                      fontSize: 18.0,
                                      color: Colors.grey[500],
                                    ),
                                  ),
                                ),
                                DataCell(
                                  Text(
                                    "1.5",
                                    style: TextStyle(
                                      fontSize: 18.0,
                                      color: Colors.grey[700],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            DataRow(
                              cells: [
                                DataCell(
                                  Text(
                                    "Kale",
                                    style: TextStyle(
                                      fontSize: 18.0,
                                      color: Colors.grey[700],
                                    ),
                                  ),
                                ),
                                DataCell(
                                  Text(
                                    "300g",
                                    textAlign: TextAlign.right,
                                    style: TextStyle(
                                      fontSize: 18.0,
                                      color: Colors.grey[500],
                                    ),
                                  ),
                                ),
                                DataCell(
                                  Text(
                                    "3.0",
                                    style: TextStyle(
                                      fontSize: 18.0,
                                      color: Colors.grey[700],
                                    ),
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
