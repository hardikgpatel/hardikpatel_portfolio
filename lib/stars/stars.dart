import 'package:flutter/material.dart';
import 'package:simple_animations/simple_animations.dart';
import 'package:supercharged/supercharged.dart';
import 'flashes.dart';
import 'particles.dart';
import 'stars_background.dart';
import 'static_stars.dart';

const MUSIC_UNIT_MS = 6165;

class Stars extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var tween = _createTween();

    return LayoutBuilder(builder: (context, constraints) {
      return LoopAnimation<TimelineValue<_P>>(
          tween: tween,
          duration: tween.duration,
          builder: (context, child, value) {
            return Stack(
              children: [
                Positioned.fill(child: StarsBackground()),
                Positioned.fill(child: StaticStars()),
                Positioned.fill(child: Flashes()),
                Positioned.fill(
                    child: CustomPaint(
                  painter: ParticlesPainter(value: value.get(_P.particles)),
                )),
              ],
            );
          });
    });
  }
}

enum _P { scale, rotate, particles }

TimelineTween<_P> _createTween() {
  var tween = TimelineTween<_P>();

  tween
      .addScene(
        begin: (0.25 * MUSIC_UNIT_MS).round().milliseconds,
        end: (0.75 * MUSIC_UNIT_MS).round().milliseconds,
        curve: Curves.easeOutQuad,
      )
      .animate(_P.scale, tween: (0.01).tweenTo(1.5))
      .animate(_P.rotate, tween: (-70.6).tweenTo(0.0));

  tween
      .addScene(
        begin: 0.seconds,
        end: (1 * MUSIC_UNIT_MS).round().milliseconds,
      )
      .animate(_P.particles, tween: (0.0).tweenTo(3.0));

  return tween;
}
