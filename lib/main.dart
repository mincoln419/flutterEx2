import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Study to Container'),
      ),
      body: CustomContainer(),
    ),
  ));
}

class CustomContainer extends StatelessWidget {
  const CustomContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        TestCheckbox(),
        TestRadioButton(),
        TestSlider(),
        TestSwitch(),
        TestPopupMenu(),
      ],
    );
  }
}

class TestPopupMenu extends StatefulWidget {
  const TestPopupMenu({super.key});

  @override
  State<TestPopupMenu> createState() => _TestPopupMenuState();
}

class _TestPopupMenuState extends State<TestPopupMenu> {
  TestValue selectValue = TestValue.test1;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text('select menu: ${selectValue.name}'),
        PopupMenuButton(itemBuilder: (context) {
          return TestValue.values
              .map((value) => PopupMenuItem(value: value, child: Text(value.name)))
              .toList();
        },
        onSelected: (newValue) => setState(() {
          selectValue = newValue;
        }),

        ),
      ],
    );
  }
}

class TestSwitch extends StatefulWidget {
  const TestSwitch({super.key});

  @override
  State<TestSwitch> createState() => _TestSwitchState();
}

class _TestSwitchState extends State<TestSwitch> {
  bool value = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Switch(
            value: value,
            onChanged: (newValue) => setState(() => value = newValue)),
        CupertinoSwitch(
            value: value,
            onChanged: (newValue) => setState(() => value = newValue)),
      ],
    );
  }
}

class TestSlider extends StatefulWidget {
  const TestSlider({super.key});

  @override
  State<TestSlider> createState() => _TestSliderState();
}

class _TestSliderState extends State<TestSlider> {
  double value = 0;

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Text('${(value.round())}'),
      Slider(
        value: value,
        onChanged: (newValue) => setState(() => value = newValue),
        divisions: 100,
        min: 0,
        max: 100,
        label: value.round().toString(),
        activeColor: Colors.red,
      )
    ]);
  }
}

enum TestValue {
  test1,
  test2,
  test3,
}

class TestRadioButton extends StatefulWidget {
  const TestRadioButton({super.key});

  @override
  State<TestRadioButton> createState() => _TestRadioButtonState();
}

class _TestRadioButtonState extends State<TestRadioButton> {
  TestValue? selectValue;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          leading: Radio<TestValue>(
              value: TestValue.test1,
              groupValue: selectValue,
              onChanged: (value) => setState(() => selectValue = value!)),
          title: Text(TestValue.test1.name),
          onTap: () => setState(() {
            if (selectValue != TestValue.test1) {
              selectValue = TestValue.test1;
            }
          }),
        ),
        ListTile(
          leading: Radio<TestValue>(
              value: TestValue.test2,
              groupValue: selectValue,
              onChanged: (value) => setState(() => selectValue = value!)),
          title: Text(TestValue.test2.name),
        ),
        ListTile(
          leading: Radio<TestValue>(
              value: TestValue.test3,
              groupValue: selectValue,
              onChanged: (value) => setState(() => selectValue = value!)),
          title: Text(TestValue.test3.name),
        ),
      ],
    );
  }
}

class TestCheckbox extends StatefulWidget {
  const TestCheckbox({super.key});

  @override
  State<TestCheckbox> createState() => _TestCheckboxState();
}

class _TestCheckboxState extends State<TestCheckbox> {
  late List<bool> values;

  @override
  void initState() {
    values = [false, false, false];
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Checkbox(
            value: values[0],
            onChanged: (value) => changeValue(0, value: value)),
        Checkbox(
            value: values[1],
            onChanged: (value) => changeValue(1, value: value)),
        Checkbox(
            value: values[2],
            onChanged: (value) => changeValue(2, value: value)),
      ],
    );
  }

  void changeValue(int index, {bool? value = false}) {
    setState(() {
      values[index] = value!;
    });
  }
}
