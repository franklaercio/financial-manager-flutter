import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../models/transaction.dart';

class TransactionItem extends StatelessWidget {
  const TransactionItem({
    Key key,
    @required this.transaction,
    @required this.mediaQuery,
    @required this.deleteTx,
  }) : super(key: key);

  final Transaction transaction;
  final MediaQueryData mediaQuery;
  final Function deleteTx;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      margin: const EdgeInsets.symmetric(
        vertical: 8,
        horizontal: 5,
      ),
      child: ListTile(
        leading: CircleAvatar(
          radius: 30,
          child: Padding(
            padding: const EdgeInsets.all(6),
            child: FittedBox(child: Text('\$${transaction.amount}')),
          ),
        ),
        title: Text(
          transaction.title,
          style: Theme.of(context).textTheme.title,
        ),
        subtitle: Text(DateFormat.yMMMd().format(transaction.date)),
        trailing: mediaQuery.size.width > 460
            ? FlatButton.icon(
                icon: const Icon(Icons.delete),
                label: const Text('Delete'),
                textColor: Colors.red,
                onPressed: () => deleteTx(transaction.id),
              )
            : IconButton(
                icon: const Icon(
                  Icons.delete,
                  color: Colors.red,
                ),
                onPressed: () => deleteTx(transaction.id),
              ),
      ),
    );
  }
}
