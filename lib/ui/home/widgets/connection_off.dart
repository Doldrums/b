import 'package:flutter_neumorphic/flutter_neumorphic.dart';

class ConnectionOffPage extends StatelessWidget {
  final void Function()? onPressed;

  const ConnectionOffPage({Key? key, this.onPressed}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(96.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Spacer(),
          Center(
            child: SizedBox(
              width: 240.0,
              height: 240.0,
              child: Neumorphic(
                margin: const EdgeInsets.all(14),
                style: const NeumorphicStyle(
                  boxShape: NeumorphicBoxShape.circle(),
                ),
                child: Neumorphic(
                  style: const NeumorphicStyle(
                    depth: 14,
                    boxShape: NeumorphicBoxShape.circle(),
                  ),
                  margin: const EdgeInsets.all(20),
                  child: Neumorphic(
                    style: const NeumorphicStyle(
                      depth: -8,
                      boxShape: NeumorphicBoxShape.circle(),
                    ),
                    margin: const EdgeInsets.all(10),
                    child: Stack(
                      fit: StackFit.expand,
                      alignment: Alignment.center,
                      children: const [
                        Padding(
                          padding: EdgeInsets.all(12.0),
                          child: Icon(
                            Icons.share_location_rounded,
                            color: Color(0xFFfc7b03),
                            size: 48.0,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 32.0),
            child: Center(
              child: RichText(
                textAlign: TextAlign.center,
                overflow: TextOverflow.ellipsis,
                text: TextSpan(
                  text: 'Global'.toUpperCase(),
                  style: Theme.of(context).textTheme.titleLarge?.copyWith(
                        color: const Color(0xFF303E57),
                      ),
                  children: <TextSpan>[
                    TextSpan(
                      text: '\nConnect from anywhere',
                      style: Theme.of(context).textTheme.caption?.copyWith(
                            color: const Color(0xFF303E57),
                          ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          const Spacer(),
          Center(
            child: Neumorphic(
              style: NeumorphicStyle(
                depth: 80,
                intensity: 0.4,
                boxShape: NeumorphicBoxShape.roundRect(
                  BorderRadius.circular(32),
                ),
              ),
              child: NeumorphicButton(
                padding: const EdgeInsets.all(12.0),
                onPressed: onPressed,
                style: NeumorphicStyle(
                  depth: -10,
                  boxShape: NeumorphicBoxShape.roundRect(
                    BorderRadius.circular(32),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Text(
                    'Establish connection'.toUpperCase(),
                    style: const TextStyle(
                      color: Color(0xFF303E57),
                    ),
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
              ),
            ),
          ),
          const Spacer(),
        ],
      ),
    );
  }
}
