
import 'package:crafty_bay/presentation/utility/app_color.dart';
import 'package:flutter/material.dart';

class SizePicker extends StatefulWidget {
  const SizePicker({super.key, required this.onChange, required this.sizes});

  final List<String> sizes;
  final Function(String) onChange;

  @override
  State<SizePicker> createState() => _SizePickerState();
}

class _SizePickerState extends State<SizePicker> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 25,
      child: ListView.builder(
          primary: false,
          shrinkWrap: true,
          scrollDirection: Axis.horizontal,
          itemCount: widget.sizes.length,
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: () {
                selectedIndex = index;
                widget.onChange(widget.sizes[index]);
                setState(() {});
              },
              child: Container(
                margin: EdgeInsets.only(right: 8),
                height: 40,
                width: 40,
                alignment: Alignment.center,
                decoration:BoxDecoration(
                   color: _getSelectedBackgroundTextColor(index==selectedIndex),
                  borderRadius:BorderRadius.circular(100),
                  border: Border.all(color: _getSelectedBackgroundTextColor(index==selectedIndex),)
                ),

                child: FittedBox(
                  child: Text(widget.sizes[index],style: TextStyle(
                    color: _getSelectedTextColor(index==selectedIndex)
                  ),),
                ),
              ),
            );
          }),
    );
  }
  Color _getSelectedTextColor(bool isSelected){
    return isSelected ? Colors.white:Colors.black;
  }
  Color _getSelectedBackgroundTextColor(bool isSelected){
    return isSelected ? AppColor.primaryColor:Colors.transparent;
  }
}
