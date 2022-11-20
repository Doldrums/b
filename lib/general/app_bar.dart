import 'package:flutter_blue/flutter_blue.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../providers/ble_provider.dart';

class CustomAppBar extends HookConsumerWidget {
  const CustomAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final recordingState = ref.watch(recordingStateProvider);
    AsyncValue<BluetoothState> connectionState =
        ref.watch(connectionStateStreamProvider);
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
              child: connectionState.when(
                loading: () => Row(
                  children: const [
                    Icon(
                      Icons.not_interested,
                      color: Colors.grey,
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 16.0),
                      child: Text(
                        'Disconnected',
                      ),
                    ),
                  ],
                ),
                error: (err, stack) => Row(
                  children: const [
                    Icon(
                      Icons.not_interested,
                      color: Colors.grey,
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 16.0),
                      child: Text(
                        'Disconnected',
                      ),
                    ),
                  ],
                ),
                data: (state) {
                  switch (state) {
                    case BluetoothState.off:
                      return Row(
                        children: const [
                          Icon(
                            Icons.not_interested,
                            color: Colors.grey,
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 16.0),
                            child: Text(
                              'Disconnected',
                            ),
                          ),
                        ],
                      );
                    case BluetoothState.on:
                      return !recordingState
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
                            );
                    case BluetoothState.turningOff:
                      return Row(
                        children: const [
                          Icon(
                            Icons.not_interested,
                            color: Colors.grey,
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 16.0),
                            child: Text(
                              'Disconnected',
                            ),
                          ),
                        ],
                      );
                    case BluetoothState.turningOn:
                      return !recordingState
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
                            );
                    case BluetoothState.unauthorized:
                      return Row(
                        children: const [
                          Icon(
                            Icons.not_interested,
                            color: Colors.grey,
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 16.0),
                            child: Text(
                              'Disconnected',
                            ),
                          ),
                        ],
                      );
                    case BluetoothState.unavailable:
                      return Row(
                        children: const [
                          Icon(
                            Icons.not_interested,
                            color: Colors.grey,
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 16.0),
                            child: Text(
                              'Disconnected',
                            ),
                          ),
                        ],
                      );
                    case BluetoothState.unknown:
                      return Row(
                        children: const [
                          Icon(
                            Icons.not_interested,
                            color: Colors.grey,
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 16.0),
                            child: Text(
                              'Disconnected',
                            ),
                          ),
                        ],
                      );
                  }
                },
              ),
            ),
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
