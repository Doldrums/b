import 'package:adaptive_dialog/adaptive_dialog.dart';
import 'package:flutter_blue/flutter_blue.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../providers/ble_provider.dart';

class CustomAppBar extends HookConsumerWidget {
  const CustomAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final recordingState = ref.watch(recordingStateProvider);
    AsyncValue<BluetoothDeviceState> connectionState =
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
              onPressed: () {
                connectionState.when(
                  error: (e, stack) async {
                    await showOkAlertDialog(
                      context: context,
                      title: 'Ooops...',
                      message:
                          "It seems seem that you are disconnected from another device. Let's connect again.",
                      barrierDismissible: false,
                    );
                    ref.read(bleProvider.notifier).disconnect();
                  },
                  data: (data) async {
                    if (data == BluetoothDeviceState.disconnected ||
                        data == BluetoothDeviceState.disconnecting) {
                      await showOkAlertDialog(
                        context: context,
                        title: 'Ooops...',
                        message:
                            "It seems seem that you are disconnected from another device. Let's connect again.",
                        barrierDismissible: false,
                      );
                      ref.read(bleProvider.notifier).disconnect();
                    } else {
                      await showOkAlertDialog(
                        context: context,
                        title: 'Cheers!!!',
                        message:
                            "We checked everything, your connection is absolutely stable.",
                        barrierDismissible: false,
                      );
                    }
                  },
                  loading: () async {
                    await showOkAlertDialog(
                      context: context,
                      title: 'Cheers!!!',
                      message:
                          "We checked everything, your connection is absolutely stable.",
                      barrierDismissible: false,
                    );
                  },
                );
              },
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
                    case BluetoothDeviceState.disconnected:
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
                    case BluetoothDeviceState.connected:
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
                    case BluetoothDeviceState.disconnecting:
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
                    case BluetoothDeviceState.connecting:
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
