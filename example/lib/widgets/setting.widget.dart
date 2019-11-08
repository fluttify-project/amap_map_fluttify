import 'package:decorated_flutter/decorated_flutter.dart';
import 'package:flutter/material.dart';

/// 连续设置
class ContinuousSetting extends StatefulWidget {
  const ContinuousSetting({
    Key key,
    @required this.head,
    @required this.onChanged,
    this.min = 0,
    this.max = 1,
  }) : super(key: key);

  final String head;
  final ValueChanged<double> onChanged;
  final double min;
  final double max;

  @override
  _ContinuousSettingState createState() => new _ContinuousSettingState();
}

class _ContinuousSettingState extends State<ContinuousSetting> {
  double _value;

  @override
  void initState() {
    super.initState();
    _value = 0;
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: 16,
        top: 16,
        right: 16,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(widget.head, style: Theme.of(context).textTheme.subhead),
          SPACE_NORMAL,
          Slider(
            value: _value,
            min: widget.min,
            max: widget.max,
            onChanged: (_) {},
            onChangeEnd: (value) {
              setState(() {
                _value = value;
                widget.onChanged(value);
              });
            },
          ),
        ],
      ),
    );
  }
}

/// 离散设置
class DiscreteSetting extends StatelessWidget {
  const DiscreteSetting({
    Key key,
    @required this.head,
    @required this.options,
    @required this.onSelected,
  }) : super(key: key);

  final String head;
  final List<String> options;
  final ValueChanged<String> onSelected;

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton<String>(
      onSelected: onSelected,
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Text(head, style: Theme.of(context).textTheme.subhead),
      ),
      itemBuilder: (context) {
        return options
            .map((value) => PopupMenuItem<String>(
                  child: Text(value),
                  value: value,
                ))
            .toList();
      },
    );
  }
}

/// 颜色设置
class ColorSetting extends StatelessWidget {
  const ColorSetting({
    Key key,
    @required this.head,
    @required this.onSelected,
  }) : super(key: key);

  final String head;
  final ValueChanged<Color> onSelected;

  @override
  Widget build(BuildContext context) {
    return DiscreteSetting(
      head: head,
      options: ['绿色', '红色', '黄色'],
      onSelected: (value) {
        Color color;
        switch (value) {
          case '绿色':
            color = Colors.green.withOpacity(0.6);
            break;
          case '红色':
            color = Colors.red.withOpacity(0.6);
            break;
          case '黄色':
            color = Colors.yellow.withOpacity(0.6);
            break;
        }

        onSelected(color);
      },
    );
  }
}

/// 二元设置
class BooleanSetting extends StatefulWidget {
  const BooleanSetting({
    Key key,
    @required this.head,
    @required this.onSelected,
    this.selected = false,
  }) : super(key: key);

  final String head;
  final ValueChanged<bool> onSelected;
  final bool selected;

  @override
  _BooleanSettingState createState() => _BooleanSettingState();
}

class _BooleanSettingState extends State<BooleanSetting> {
  bool _selected;

  @override
  void initState() {
    super.initState();

    _selected = widget.selected;
  }

  @override
  Widget build(BuildContext context) {
    return SwitchListTile(
      title: Text(widget.head),
      value: _selected,
      onChanged: (selected) {
        setState(() {
          _selected = selected;
          widget.onSelected(selected);
        });
      },
    );
  }
}

/// 输入文字
class TextSetting extends StatelessWidget {
  final String leadingString;
  final String hintString;

  const TextSetting({
    Key key,
    @required this.leadingString,
    @required this.hintString,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Text(leadingString),
      title: TextFormField(
        decoration: InputDecoration(
          hintText: hintString,
        ),
      ),
    );
  }
}
