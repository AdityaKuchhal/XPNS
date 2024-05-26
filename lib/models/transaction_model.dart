class TransactionModel {
  final String id;
  final String address;
  final int amount;
  final String reason;
  final DateTime timestamp;
  final bool completed;

  TransactionModel({
    required this.id,
    required this.address,
    required this.amount,
    required this.reason,
    required this.timestamp,
    required this.completed,
  });
}
