import 'package:chattins/models/home.cl.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeCl>(
      init: HomeCl(),
      builder: (controller) {
        return Scaffold(
          appBar: AppBar(
            title: Text(controller.name),
          ),
          body: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.8,
                child: ListView.builder(
                  itemCount: controller.contacts.length,
                  itemBuilder: (BuildContext context, int index) {
                    return Dismissible(
                      key: Key(
                        index.toString(),
                      ),
                      child: Container(
                        child: Container(
                            height: MediaQuery.of(context).size.height * 0.06,
                            child: Center(
                                child: Text(
                              controller.contacts[index][1],
                              style: TextStyle(
                                  color: Color.fromARGB(255, 128, 131, 154)),
                            )),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(21.00),
                                color: Color.fromARGB(248, 239, 239, 239))),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
