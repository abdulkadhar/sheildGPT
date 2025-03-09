import 'package:flutter/material.dart';
import 'package:shield_gpt/dashboard_landing_screen/model/stats_table_model.dart';
import 'package:shield_gpt/dashboard_landing_screen/widgets/table_cell_widget.dart';

class TableRowFullWidget extends StatelessWidget {
  final StatsTableModel modelData;
  const TableRowFullWidget({
    super.key,
    required this.modelData,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        TableCellWidget(
          label: modelData.timeStamp,
        ),
        TableCellWidget(
          label: modelData.protocol,
        ),
        TableCellWidget(
          label: modelData.srIp,
        ),
        TableCellWidget(
          label: modelData.srPort,
        ),
        TableCellWidget(
          label: modelData.dsIp,
        ),
        TableCellWidget(
          label: modelData.dsPort,
        ),
      ],
    );
  }
}
