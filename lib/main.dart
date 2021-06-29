void main() {
  print('Hello, World!');
  Blockchain blockchain1 = Blockchain();
  print(blockchain1.current_transactions);
  blockchain1.new_transaction();
  print(blockchain1.current_transactions);
}

// following
// https://hackernoon.com/learn-blockchains-by-building-one-117428612f46

class Blockchain {
  List<Map> current_transactions;
  List<Map> chain_of_transactions;

  // constructor
  Blockchain() {
    current_transactions = [];
    chain_of_transactions = [];
  }

  void new_block() {

  }

  void new_transaction() {
    this.current_transactions.add({
      'sender': 'Shyngys',
      'recipient': 'Abhi',
      'amount': '666',
    });
  }

  static String hash(dynamic block) {

  }

  dynamic get last_block {

  }
}