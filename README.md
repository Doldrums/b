> ⚠⚠ IMPORTANT INFO ⚠⚠ 
>
> Consider also the source code of BLE_READER PLUGIN - that was written and released espessialy for these Quiz solution 🥵 (both IOS and Android supported).
> You can explore documentation and learn more about Peripheral mode and streaming data that is received via Bluetooth Low Energy network solution for flutter at 👉 https://pub.dev/packages/ble_reader

# Yandex Cup 2022 : Mobile Track : Quiz B

<p align="center"><img src="https://github.com/Doldrums/b/blob/master/shots/b.png?raw=true" alt="General image"></p>

<p align="center">
   <a href="">
    <img src="https://img.shields.io/badge/awesome-Flutter-1da1f2.svg?style=plastic" alt="Awesome Flutter" />
  </a>
  <a href="https://github.com/rrousselGit/riverpod">
    <img src="https://img.shields.io/badge/maintained%20with-Riverpod-f700ff.svg?style=plastic" alt="Maintained with Riverpod" />
  </a>
</p>

## Key Concepts 
```mermaid
sequenceDiagram
    participant MicStream
    participant FlutterSoundPlayer
    participant Flutter_Blue_Plugin
    MicStream->>Device: Uint8List stream representing the captured audio
    loop BLE_Reader_Plugin
        Device->>Device: EventChannel.receiveBroadcastStream()
    end
    Note right of Device: Listening on BLE <br/>network!
    Device-->>FlutterSoundPlayer: .openAudioSession(Uint8List stream representing the received audio)
    Device->>FlutterSoundPlayer: mergeChunks(Stream<dynamic> source
    FlutterSoundPlayer-->>Device: Stream<Uint8List>
```



## Setup 
```
➜  folder ✗ git clone https://github.com/Doldrums/app_crypto.git
➜  b git:(master) ✗ flutter pub get
# in case there are conflicts in generated files
➜  b git:(master) ✗ flutter pub run build_runner build --delete-conflicting-outputs
```

