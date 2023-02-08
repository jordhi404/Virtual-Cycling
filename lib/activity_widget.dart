import 'package:flutter/material.dart';

abstract class _Constants {
  static const double iconSize = 30;
  static const double itemSpacing = 20;
  static const double badgeSize = 15;
}

enum ActivityType {single, multiplayer, health}

class ActivityWidget extends StatelessWidget{
  const ActivityWidget({Key? key, required this.activityType}) : super(key: key);

  final ActivityType activityType;

  @override
  Widget build(BuildContext context) => Expanded(
    child: Stack(
      children: <Widget>[
        Padding(
          padding: EdgeInsets.only(
            top: _Constants.badgeSize / 2,
            right: _Constants.badgeSize / 2,
          ),
          child: _buildActivityContainer(
            context,
            _titleForActivityType(activityType),
          ),
        ),
      ],
    )
  );

  Widget _buildActivityContainer(BuildContext context, String title) => Container(
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.all(Radius.circular(10)),
      boxShadow: [
        BoxShadow(
          color: Colors.grey.withAlpha(60),
          blurRadius: 5.0,
          spreadRadius: 1.0,
        ),
      ],
    ),
    child: Padding(
      padding: EdgeInsets.symmetric(vertical: 12, horizontal: 16),
      child: Center(
        child: _buildActivityColumn(context, title),
      ),
    ),
  );

  Widget _buildActivityColumn(BuildContext context, String title) => Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: <Widget>[
      SizedBox(
        width: _Constants.iconSize,
        height: _Constants.iconSize,
      ),
      SizedBox(height: 10),
      Opacity(
        opacity: 0.75,
        child: Text(
          title, maxLines: 1, overflow: TextOverflow.ellipsis,
        ),
      )
    ],
  );

  String _titleForActivityType(ActivityType activityType) {
    switch (activityType) {
      case ActivityType.single: return "Single mode";
      case ActivityType.multiplayer: return "multiplayer mode";
      case ActivityType.health: return "health trainning";
    }
  }
}