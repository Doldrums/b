import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../providers/ble_provider.dart';

class CustomAppBar extends HookConsumerWidget {
  const CustomAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final recordingState = ref.watch(recordingStateProvider);
    return Padding(
      padding: const EdgeInsets.all(24.0),
      child: Row(
        children: [
          Neumorphic(
            style: NeumorphicStyle(
              depth: 80,
              intensity: 0.4,
              boxShape: NeumorphicBoxShape.roundRect(
                BorderRadius.circular(8),
              ),
            ),
            child: NeumorphicButton(
                padding: const EdgeInsets.all(12.0),
                onPressed: () {},
                style: NeumorphicStyle(
                  depth: -10,
                  boxShape: NeumorphicBoxShape.roundRect(
                    BorderRadius.circular(8),
                  ),
                ),
                child: !recordingState
                    ? Row(
                        children: const [
                          Icon(
                            Icons.connect_without_contact_sharp,
                            color: Color(0xFFfc7b03),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 16.0),
                            child: Text(
                              'Stable',
                            ),
                          ),
                        ],
                      )
                    : Row(
                        children: const [
                          Icon(
                            Icons.mode_standby,
                            color: Color(0xfffc2803),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 16.0),
                            child: Text(
                              'Listening...',
                            ),
                          ),
                        ],
                      )),
          ),
          const Spacer(),
          Neumorphic(
            style: NeumorphicStyle(
              depth: 80,
              intensity: 0.4,
              boxShape: NeumorphicBoxShape.roundRect(
                BorderRadius.circular(8),
              ),
            ),
            child: NeumorphicButton(
              padding: const EdgeInsets.all(12.0),
              onPressed: () {},
              style: NeumorphicStyle(
                depth: -10,
                boxShape: NeumorphicBoxShape.roundRect(
                  BorderRadius.circular(8),
                ),
              ),
              child: const Icon(
                Icons.settings,
                color: Color(0xFF303E57),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
