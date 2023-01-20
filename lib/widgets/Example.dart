import 'package:flutter/cupertino.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class TwoString {
  final String text1;
  final String text2;
  TwoString({required this.text1, required this.text2});
}

class Example extends StatelessWidget {
  final List<TwoString> textData = [
    TwoString(text1: "first", text2: "apple"),
    TwoString(text1: "second", text2: "banana"),
    TwoString(text1: "third", text2: "orange"),
  ];
  Example({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children:
            textData.map((TwoString e) => _TextWrapper(text: e)).toList());
  }
}

class _TextWrapper extends StatelessWidget {
  final TwoString text;

  const _TextWrapper({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(text.text1, style: TextStyle(fontSize: 20)),
        Spacer(),
        Text(text.text2, style: TextStyle(fontSize: 20)),
      ],
    );
  }
}
