import 'package:flutter/cupertino.dart';
import 'package:notes_app_project/custom_widget/custom_textfield.dart';
class ShowModelButtonSheet extends StatelessWidget {
  const ShowModelButtonSheet({super.key});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(25),
      child: Column(
        children: [
          CustomTextfield(
            hint: 'Titel',
          ),
          SizedBox(
            height: 20,
          ),
          CustomTextfield(
            hint: 'content',
            maxlines: 6,
          ),
        ],
      ),
    );
  }
}
