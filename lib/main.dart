import 'package:financial_manager/widgets/new_transaction.dart';
import 'package:financial_manager/widgets/transaction_list.dart';
import 'package:financial_manager/widgets/user_transactions.dart';
import 'package:flutter/material.dart';
import 'models/transaction.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Finacial Manager',
      home: MyHomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatelessWidget {
  final List<Transaction> transactions = [];

  final titleController = TextEditingController();
  final amountController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Finacial Manager'),
      ),
      body: UserTransactions(),
    );
  }
}
