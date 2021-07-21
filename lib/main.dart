import 'package:crypto/crypto.dart';
import 'package:convert/convert.dart';
import 'dart:convert';

void main() {
  print('Hello, World!');
  Blockchain blockchain1 = Blockchain();
  print(blockchain1.current_transactions);
  blockchain1.new_transaction();
  print(blockchain1.current_transactions);

  var bytes = utf8.encode('ecoledjr');
  Digest sha512Result = sha512.convert(bytes);
  print(sha512Result);
}

// following
// https://hackernoon.com/learn-blockchains-by-building-one-117428612f46

class Blockchain {
  List<Map> current_transactions; // pending transactions that should be stored on nodes
  List<Map> chain_of_transactions;

  // constructor
  Blockchain() {
    current_transactions = [];
    chain_of_transactions = [];

    chain_of_transactions.add({"genesis": "first block"});
  }

  void new_block() {

  }

  int new_transaction() {
    this.current_transactions.add({
      'sender': 'Shyngys',
      'recipient': 'Abhi',
      'amount': '666',
    });

    return this.chain_of_transactions.indexOf(this.chain_of_transactions.last) + 1;
  }

  static String hash(dynamic block) {

  }

  Map get last_block {
    return this.chain_of_transactions.last;
  }
}
