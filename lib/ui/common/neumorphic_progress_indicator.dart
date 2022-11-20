import 'package:flutter_neumorphic/flutter_neumorphic.dart';

class NeumorphicProgressIndicator extends StatelessWidget {
  const NeumorphicProgressIndicator({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: SizedBox(
          width: 200,
          child: NeumorphicProgressIndeterminate(
            style: ProgressStyle(
              accent: Color(0xFFfc7b03),
              variant: Color(0xFFfc7b03),
            ),
          ),
        ),
      ),
    );
  }
}
