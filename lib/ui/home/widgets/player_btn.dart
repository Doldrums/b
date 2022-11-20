import 'package:ble_reader/ble_reader.dart';
import 'package:flutter/services.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:flutter_sound/flutter_sound.dart';

import '../../../main.dart';

class PlayerButton extends StatefulWidget {
  const PlayerButton({Key? key}) : super(key: key);

  @override
  State<PlayerButton> createState() => _PlayerButtonState();
}

class _PlayerButtonState extends State<PlayerButton> {
  final FlutterSoundPlayer _myPlayer = FlutterSoundPlayer();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
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
              children: [
                Neumorphic(
                  style: const NeumorphicStyle(
                    depth: 14,
                    color: Color(0xFFF8F9FC),
                    intensity: 0.4,
                    boxShape: NeumorphicBoxShape.circle(),
                  ),
                  margin: const EdgeInsets.all(20),
                  child: NeumorphicButton(
                    padding: const EdgeInsets.all(12.0),
                    onPressed: () {},
                    style: const NeumorphicStyle(
                      depth: -4,
                      color: Color(0xFFF8F9FC),
                      boxShape: NeumorphicBoxShape.circle(),
                    ),
                    child: const Icon(
                      Icons.mic,
                      color: Color(0xFF303E57),
                      size: 48.0,
                    ),
                  ),
                ),
                Container(
                  color: Colors.transparent,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    _myPlayer.closeAudioSession().then((value) {
      super.dispose();
    });
  }

  Stream<Uint8List> mergeChunks(Stream<dynamic> source) async* {
    List<int> chunk = [];

    await for (var event in source) {
      chunk.addAll(event);

      if (chunk.length >= 4096) {
        yield Uint8List.fromList(chunk);
        chunk = [];
      }
    }
  }

  @override
  void initState() {
    super.initState();
    _myPlayer.openAudioSession().then((value) async {
      await _myPlayer.startPlayerFromStream(
          codec: Codec.pcm16, numChannels: 1, sampleRate: 44100);

      mergeChunks(BleReader.receivedDataStream).listen((event) {
        logger.d("received ${event.length} bytes");
        _myPlayer.foodSink!.add(FoodData(event));
      });
    });
  }
}
