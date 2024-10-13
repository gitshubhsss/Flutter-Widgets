import 'package:flutter/material.dart';
import 'package:flutter_app/services/funtions/dropdownFuntions/dropdownController.dart';
import 'package:flutter_app/widgets/UiWidgets/appBar_widget.dart';
import 'package:get/get.dart';

class DropdownlistWidget extends StatelessWidget {
  final DropdownController controller = Get.put(DropdownController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppbarWidget(
        title: 'Dropdown with controller',
        backgroundColor: Colors.orange,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Obx(() => DropdownButton<String>(
                    items: controller.courseItems.value,
                    hint: Text('${controller.hintText.value}'),
                    onChanged: (value) {
                      controller.coursesValue(value!);
                    },
                  )),
              Obx(
                () => Text('value = ${controller.cvalue.value}'),
              ),
              SizedBox(height: 20),
              Obx(() => DropdownButton<String>(
                    hint: Text('Select Specific Course'),
                    items: controller.menuItems.value,
                    onChanged: controller.isdisable.value
                        ? null
                        : (value) {
                            controller.changeValue(value);
                          },
                  )),
              Obx(() => Text('${controller.subcvalue.value}'))
            ],
          ),
        ),
      ),
    );
  }
}
