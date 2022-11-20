import 'package:flutter/material.dart';
import 'package:flutter_blue/flutter_blue.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';

class AvailableDevice extends StatelessWidget {
  const AvailableDevice({Key? key, required this.result, this.onTap})
      : super(key: key);

  final ScanResult result;
  final VoidCallback? onTap;

  Widget _buildTitle(BuildContext context) {
    if (result.device.name.isNotEmpty) {
      return Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            result.device.name,
            overflow: TextOverflow.ellipsis,
          ),
          Text(
            result.device.id.toString(),
            style: Theme.of(context).textTheme.caption,
          )
        ],
      );
    } else {
      return Text(result.device.id.toString());
    }
  }

  String getNiceHexArray(List<int> bytes) {
    return '[${bytes.map((i) => i.toRadixString(16).padLeft(2, '0')).join(', ')}]'
        .toUpperCase();
  }

  String getNiceManufacturerData(Map<int, List<int>> data) {
    if (data.isEmpty) {
      return 'N/A';
    }
    List<String> res = [];
    data.forEach((id, bytes) {
      res.add(
          '${id.toRadixString(16).toUpperCase()}: ${getNiceHexArray(bytes)}');
    });
    return res.join(', ');
  }

  String getNiceServiceData(Map<String, List<int>> data) {
    if (data.isEmpty) {
      return 'N/A';
    }
    List<String> res = [];
    data.forEach((id, bytes) {
      res.add('${id.toUpperCase()}: ${getNiceHexArray(bytes)}');
    });
    return res.join(', ');
  }

  @override
  Widget build(BuildContext context) {
    return ExpansionTile(
      title: _buildTitle(context),
      leading: Text(result.rssi.toString()),
      trailing: SizedBox(
        width: 100,
        child: Neumorphic(
          style: NeumorphicStyle(
            depth: 80,
            color: const Color(0xFFF8F9FC),
            intensity: 0.3,
            surfaceIntensity: 1.0,
            boxShape: NeumorphicBoxShape.roundRect(
              BorderRadius.circular(8),
            ),
          ),
          child: NeumorphicButton(
            padding: const EdgeInsets.all(12.0),
            onPressed: (result.advertisementData.connectable) ? onTap : null,
            style: NeumorphicStyle(
              depth: -10,
              intensity: 0.6,
              surfaceIntensity: 1.0,
              color: const Color(0xFFF8F9FC),
              boxShape: NeumorphicBoxShape.roundRect(
                BorderRadius.circular(8),
              ),
            ),
            child: Text(
              (result.advertisementData.connectable) ? 'CONNECT' : 'HIDDEN',
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: (result.advertisementData.connectable)
                      ? const Color(0xFFfc7b03)
                      : Colors.black),
            ),
          ),
        ),
      ),
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.only(
              left: 32.0, right: 32.0, top: 12.0, bottom: 8.0),
          child: Row(
            children: [
              Text(
                "Complete Local Name",
                style: Theme.of(context).textTheme.bodyLarge!,
              ),
              const Spacer(),
              Text(
                result.advertisementData.localName,
                textAlign: TextAlign.end,
                style: Theme.of(context).textTheme.bodyMedium!,
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 32.0, right: 32.0, bottom: 8.0),
          child: Row(
            children: [
              Text(
                "Tx Power Level",
                style: Theme.of(context).textTheme.bodyLarge!,
              ),
              const Spacer(),
              Text(
                '${result.advertisementData.txPowerLevel ?? 'N/A'}',
                textAlign: TextAlign.end,
                style: Theme.of(context).textTheme.bodyMedium!,
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 32.0, right: 32.0, bottom: 8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                width: MediaQuery.of(context).size.width,
                child: Text(
                  "Manufacturer Data",
                  style: Theme.of(context).textTheme.bodyLarge!,
                ),
              ),
              Text(
                getNiceManufacturerData(
                    result.advertisementData.manufacturerData),
                textAlign: TextAlign.end,
                style: Theme.of(context).textTheme.bodyMedium!,
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 32.0, right: 32.0, bottom: 8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                width: MediaQuery.of(context).size.width,
                child: Text(
                  "Service UUIDs",
                  style: Theme.of(context).textTheme.bodyLarge!,
                ),
              ),
              Text(
                (result.advertisementData.serviceUuids.isNotEmpty)
                    ? result.advertisementData.serviceUuids
                        .join(', ')
                        .toUpperCase()
                    : 'N/A',
                textAlign: TextAlign.end,
                style: Theme.of(context).textTheme.bodyMedium!,
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 32.0, right: 32.0, bottom: 8.0),
          child: Row(
            children: [
              Text(
                "Service Data",
                style: Theme.of(context).textTheme.bodyLarge!,
              ),
              const Spacer(),
              Text(
                getNiceServiceData(result.advertisementData.serviceData),
                textAlign: TextAlign.end,
                style: Theme.of(context).textTheme.bodyMedium!,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
