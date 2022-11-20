import 'package:b/ui/connection/widgets/widgets.dart';
import 'package:flutter_blue/flutter_blue.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../providers/ble_provider.dart';

class ConnectionScreen extends HookConsumerWidget {
  const ConnectionScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final BLE = ref.watch(bleProvider);
    return BLE.maybeWhen(
      disconnected: (details) => Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(24.0),
                child: Row(
                  children: [
                    Neumorphic(
                      style: NeumorphicStyle(
                        depth: 80,
                        color: const Color(0xFFF8F9FC),
                        intensity: 0.4,
                        boxShape: NeumorphicBoxShape.roundRect(
                          BorderRadius.circular(8),
                        ),
                      ),
                      child: NeumorphicButton(
                        padding: const EdgeInsets.all(12.0),
                        onPressed: () => Navigator.of(context).pop(),
                        style: NeumorphicStyle(
                          depth: -4,
                          color: const Color(0xFFF8F9FC),
                          boxShape: NeumorphicBoxShape.roundRect(
                            BorderRadius.circular(8),
                          ),
                        ),
                        child: const Icon(
                          Icons.arrow_back_ios_new_rounded,
                          color: Color(0xFF303E57),
                        ),
                      ),
                    ),
                    const Spacer(),
                  ],
                ),
              ),
              StreamBuilder<List<ScanResult>>(
                stream: details.instance.scanResults,
                initialData: const [],
                builder: (c, snapshot) => Column(
                  children: snapshot.data!
                      .map(
                        (r) => ScanResultTile(
                          result: r,
                          onTap: () {
                            ref.read(bleProvider.notifier).connect(r);
                            Navigator.of(context).pop();
                          },
                        ),
                      )
                      .toList(),
                ),
              ),
            ],
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        floatingActionButton: StreamBuilder<bool>(
          stream: details.instance.isScanning,
          initialData: false,
          builder: (c, snapshot) {
            if (snapshot.data!) {
              return Neumorphic(
                style: NeumorphicStyle(
                  depth: 80,
                  intensity: 0.4,
                  color: const Color(0xFFF8F9FC),
                  boxShape: NeumorphicBoxShape.roundRect(
                    BorderRadius.circular(32),
                  ),
                ),
                child: NeumorphicButton(
                  padding: const EdgeInsets.all(12.0),
                  onPressed: () => details.instance.stopScan(),
                  style: NeumorphicStyle(
                    depth: -5,
                    color: const Color(0xFFF8F9FC),
                    boxShape: NeumorphicBoxShape.roundRect(
                      BorderRadius.circular(32),
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: SizedBox(
                      width: 120,
                      child: Row(
                        children: const [
                          Icon(
                            Icons.stop,
                            color: Color(0xFFfc7b03),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 16.0),
                            child: Text(
                              'Searching...',
                              style: TextStyle(
                                color: Color(0xFF303E57),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              );
            } else {
              return Neumorphic(
                style: NeumorphicStyle(
                  color: const Color(0xFFF8F9FC),
                  depth: 80,
                  intensity: 0.4,
                  boxShape: NeumorphicBoxShape.roundRect(
                    BorderRadius.circular(32),
                  ),
                ),
                child: NeumorphicButton(
                  padding: const EdgeInsets.all(12.0),
                  onPressed: () => details.instance
                      .startScan(timeout: const Duration(seconds: 4)),
                  style: NeumorphicStyle(
                    depth: -4,
                    color: const Color(0xFFF8F9FC),
                    boxShape: NeumorphicBoxShape.roundRect(
                      BorderRadius.circular(32),
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: SizedBox(
                      width: 130,
                      child: Row(
                        children: const [
                          Icon(
                            Icons.search,
                            color: Color(0xFFfc7b03),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 16.0),
                            child: Text(
                              'Find friend',
                              style: TextStyle(
                                color: Color(0xFF303E57),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              );
            }
          },
        ),
      ),
      orElse: () {
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
      },
    );
  }
}
