void main() {
  print('Hello, World!');
}

// following
// https://hackernoon.com/learn-blockchains-by-building-one-117428612f46

class Blockchain {
  List<dynamic> current_transactions;
  List<dynamic> chain_of_transactions;

  // constructor
  Blockchain() {
    current_transactions = [];
    chain_of_transactions = [];
  }

  void new_block() {

  }

  void new_transaction() {

  }

  static String hash(dynamic block) {

  }

  dynamic get last_block {

  }
}