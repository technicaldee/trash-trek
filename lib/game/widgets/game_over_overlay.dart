import 'package:flame/game.dart';
import 'package:flutter/material.dart';
import 'package:trash_trek/complete_screen.dart';
import 'package:trash_trek/game/car_race.dart';

import 'widgets.dart';

class GameOverOverlay extends StatelessWidget {
  const GameOverOverlay(this.game, {super.key});

  final Game game;

  @override
  Widget build(BuildContext context) {
    return Material(
        color: Theme.of(context).colorScheme.background,
        child: CompleteScreen(game));
  }
}
