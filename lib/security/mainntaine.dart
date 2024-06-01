import 'package:demo_project/provider/helperprovider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:provider/provider.dart';

class Maintaine extends StatelessWidget {
  const Maintaine({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(),
      body: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: width * .040,
          ),
          child: Consumer<HelperProvider>(
            builder: (context, helper, child) {
              return StreamBuilder(
                stream: helper.getMaintaines().asStream(),
                builder: (context, snapshot) {
                  final data = helper.maintainelist;
                  return ListView.separated(
                    itemCount: data.length,
                    itemBuilder: (context, index) {
                      return Container(
                        decoration: BoxDecoration(
                          color: Colors.grey,
                          borderRadius: BorderRadius.circular(
                            width * .020,
                          ),
                        ),
                        width: width * .50,
                        height: height * .35,
                        // color: Colors.purple,
                        child: Padding(
                          padding: EdgeInsets.symmetric(
                            horizontal: width * .020,
                            vertical: width * .020,
                          ),
                          child: Column(
                            children: [
                              Text('ROOM NO:${data[index].RoomNo}'),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  Text(
                                    'Activity_type:${data[index].complainttype}',
                                    style: TextStyle(
                                      fontSize: width * .050,
                                    ),
                                  ),
                                  SizedBox(
                                    width: width * .250,
                                    height: height * .250,
                                    child: Image.network(
                                      data[index].image,
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  Text(
                                    data[index].description,
                                    style: TextStyle(
                                      fontSize: width * .020,
                                    ),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                      );
                    },
                    separatorBuilder: (context, index) {
                      return SizedBox(
                        height: height * .10,
                      );
                    },
                  );
                },
              );
            },
          )),
    );
  }
}
