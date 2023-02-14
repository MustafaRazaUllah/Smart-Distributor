
import 'package:flutter/material.dart';

import 'package:smartdistributor/Constants/app_constants.dart';


class DgIconButton extends StatelessWidget {
  final String text;
  final Icon icon;
  final GestureTapCallback onPressed;

  const DgIconButton({
    required this.onPressed,
    required this.text,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SizedBox(
        height: 48.0,
        child: DecoratedBox(
          decoration: BoxDecoration(
            color: Theme.of(context).colorScheme.background,
            borderRadius: const BorderRadius.all(
              AppConstants.roundedWidgetRadius,
            ),
            boxShadow: [
              BoxShadow(
                color: Theme.of(context).shadowColor,
                offset: const Offset(1.0, 2.0),
                blurRadius: 8.0,
                spreadRadius: 2.0,
              )
            ],
          ),
          child: Stack(
            children: <Widget>[
              Row(
                children: <Widget>[
                  Container(
                    width: 48.0,
                    height: 48.0,
                    alignment: Alignment.centerLeft,
                    decoration: BoxDecoration(
                      color: Theme.of(context).primaryColor,
                      borderRadius: const BorderRadius.all(
                        AppConstants.roundedWidgetRadius,
                      ),
                    ),
                    child: Align(
                      child: icon,
                    ),
                  ),
                  Expanded(
                    child: Center(
                      child: Text(
                        text,
                        style: Theme.of(context).textTheme.titleLarge,
                        // ?.copyWith(color: Colors.black),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox.expand(
                child: Material(
                  type: MaterialType.transparency,
                  child: InkWell(
                    onTap: onPressed,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
