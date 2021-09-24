import 'package:flutter/material.dart';

class  GetxServiceWidget extends StatelessWidget {
  const GetxServiceWidget ({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Obx(
              ()=>Text(
                controller.count.value.toString()
              )
            )
          ],
        ),
      ),
    );
  }
}