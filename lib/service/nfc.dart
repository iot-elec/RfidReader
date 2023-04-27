import 'package:flutter/foundation.dart';
import 'package:flutter_pcsc/flutter_pcsc.dart';

abstract class NFC_abs {
  late int _ctx;
  late List<String> _readers;

  Future<void> init();
  bool checkReader();
  Future<String> getFirstReader();
  Future<void> removeCard();
  Future<List<int>> readCard({int readerIndex});
}

class NFC implements NFC_abs{

  @override
  late int _ctx;
  @override
  late List<String> _readers;

  @override
  Future<void> init() async {
    try {
      _ctx = await Pcsc.establishContext(PcscSCope.user);
      _readers = await Pcsc.listReaders(_ctx);
    } on Exception catch (e) {
      if (kDebugMode) {
        print(e);
      }
    }
  }

  @override
  bool checkReader() {
    if (_readers.isEmpty) {
      return false;
    } else {
      return true;
    }
  }

  @override
  Future<String> getFirstReader() async {
    if (checkReader()) {
      return "0";
    } else { 
      String reader = _readers[0]; 
      return reader;
    }
  }

  @override
  Future<void> removeCard() async {
    try {
      String reader = _readers[0];
      await Pcsc.waitForCardRemoved(_ctx, reader);
    } on Exception catch (e) {
      if (kDebugMode) {
        print(e);
      }
    }
  }
  

  @override
  Future<List<int>> readCard({int readerIndex=0}) async {
    try {
      String reader = _readers[readerIndex];
      await Pcsc.waitForCardPresent(_ctx, reader);

      CardStruct card = await Pcsc.cardConnect(_ctx, reader, PcscShare.shared, PcscProtocol.any);
      // get the card id
      List<int> response = await Pcsc.transmit(card, [0xFF, 0xCA, 0x00, 0x00, 0x00]);
      if (kDebugMode) {
        print('Response: $response ');
      }
      await Pcsc.cardDisconnect(card.hCard, PcscDisposition.resetCard);
      return response;
    } on Exception catch (e) {
      if (kDebugMode) {
        print(e);
      }
      return [-1];
    }
  }

}