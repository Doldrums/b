import 'package:b/ui/home/widgets/connection_on.dart';
import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';

import '../../providers/ble_provider.dart';
import '../connection/connection_screen.dart';
import 'widgets/connection_off.dart';

class HomePage extends HookConsumerWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final BLE = ref.watch(bleProvider);
    return Material(
      child: SafeArea(
        child: BLE.when(
          disconnected: (args) => ConnectionOffPage(onPressed: () {
            ref.read(bleProvider.notifier).init();
            showBarModalBottomSheet(
              context: context,
              builder: (context) => const ConnectionScreen(),
            );
          }),
          connected: (args) => ConnectionOnPage(details: args),
          off: () => ConnectionOffPage(onPressed: () {
            ref.read(bleProvider.notifier).init();
            showBarModalBottomSheet(
              context: context,
              builder: (context) => const ConnectionScreen(),
            );
          }),
          connecting: () => const Center(
            child: CircularProgressIndicator(),
          ),
          disconnecting: () => const Center(
            child: CircularProgressIndicator(),
          ),
          error: (error) => Center(
            child: Text(error.toString()),
          ),
        ),
      ),
    );
  }
}
