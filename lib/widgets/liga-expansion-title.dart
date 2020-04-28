import 'package:flutter/material.dart';
import 'package:liga95/widgets/liga-divider.dart';

class LigaExpansionTile extends StatefulWidget {
  final String title;
  final List<Widget> children;
  const LigaExpansionTile({@required this.title, @required this.children});
  @override
  _LigaExpansionTileState createState() => _LigaExpansionTileState();
}

class _LigaExpansionTileState extends State<LigaExpansionTile> with SingleTickerProviderStateMixin {
  static final Animatable<double> _easeInTween = CurveTween(curve: Curves.easeIn);
  AnimationController _controller;
  Animation<double> _heightFactor;
  bool _isExpanded = false;
  List<Widget> _list = [];

  void _handleTap() {
    setState(() {
      _isExpanded = !_isExpanded;
      if (_isExpanded) {
        _controller.forward();
      } else {
        _controller.reverse().then<void>((void value) {
          if (!mounted) return;
          setState(() {});
        });
      }
      PageStorage.of(context)?.writeState(context, _isExpanded);
    });
  }

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(duration: Duration(milliseconds: 200), vsync: this);
    _heightFactor = _controller.drive(_easeInTween);
    if (_isExpanded) _controller.value = 1.0;

    widget.children.asMap().forEach((index, value) {
      _list.add(value);
      if (index < widget.children.length - 1) _list.add(LigaDivider());
    });
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        _buildTitle(widget.title),
        AnimatedBuilder(
            animation: _controller.view,
            builder: (context, child) {
              return ClipRect(
                child: Align(
                  heightFactor: _heightFactor.value,
                  child: Container(
                    padding: EdgeInsets.only(bottom: 15.0),
                    child: Column(
                      children: _list,
                    ),
                  ),
                ),
              );
            }),
      ],
    );
  }

  Widget _buildTitle(String title) {
    return GestureDetector(
      onTap: _handleTap,
      child: Container(
        color: Color(0xff262626),
        height: 48.0,
        padding: EdgeInsets.only(left: 10.0, right: 10.0),
        alignment: Alignment.center,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Text(
              title,
              style: TextStyle(
                color: Colors.white,
                fontSize: 18,
              ),
            ),
            Icon(
              _isExpanded ? Icons.keyboard_arrow_up : Icons.keyboard_arrow_down,
              color: Colors.white,
              size: 26,
            ),
          ],
        ),
      ),
    );
  }
}

class ExpanTitle extends StatelessWidget {
  final String title;
  ExpanTitle({@required this.title});
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xff262626),
      height: 48.0,
      padding: EdgeInsets.only(left: 10.0, right: 10.0),
      alignment: Alignment.center,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Text(
            title,
            style: TextStyle(
              color: Colors.white,
              fontSize: 18,
            ),
          ),
          Icon(
            Icons.keyboard_arrow_down,
            color: Colors.white,
            size: 26,
          ),
        ],
      ),
    );
  }
}
