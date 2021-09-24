import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sample_sns_login/src/controller/getx_controller_test.dart';
import 'package:sample_sns_login/src/controller/getx_service_test.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("GetXServiceTest"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () {
                  Get.to(
                    GetxControllerWidget(),
                    binding: BindingsBuilder(
                      () => Get.lazyPut<GetxControllerTest>(
                          () => GetxControllerTest()),
                    ),
                  );
                },
                child: Text("GetX Controller"),
              ),
              ElevatedButton(
                onPressed: () {
                  Get.to(
                    GetxServiceWidget(),
                    binding: BindingsBuilder(
                      () => Get.lazyPut<GetxServiceTest>(
                        () => Get.lazyPut<GetxServiceTest>(
                            () => GetxServiceTest()),
                      ),
                    ),
                  );
                },
                child: Text("Getx Service"),
              )
            ],
          ),
        ));
  }
}
