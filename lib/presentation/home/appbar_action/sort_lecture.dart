import 'package:flutter/material.dart';
import 'package:flutter_picker/flutter_picker.dart';

class SortLecture extends StatelessWidget{

  const SortLecture();

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: Icon(Icons.sort),
      onPressed: (){
        Picker picker = new Picker(
          adapter: PickerDataAdapter<String>(pickerdata: <String>["1", "2"]),
          changeToFirst: true,
          textAlign: TextAlign.left,
          columnPadding: const EdgeInsets.all(8.0),
          onConfirm: (Picker picker, List value) {
            print(value.toString());
            print(picker.getSelectedValues());
          }
        );

        picker.showModal(context);
      }
    );
  }
}