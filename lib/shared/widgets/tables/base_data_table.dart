import 'package:flutter/material.dart';

class BaseDataTable extends StatelessWidget {
  final DataTableSource source;
  final List<DataColumn> columns;
  final int? rowsPerPage;
  final Widget? header;
  final List<Widget>? actions;
  final void Function(int page)? onPageChanged;

  const BaseDataTable({
    super.key,
    required this.columns,
    required this.source,
    this.rowsPerPage,
    this.header,
    this.actions,
    this.onPageChanged,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Theme(
      data: theme.copyWith(
        cardTheme: theme.cardTheme.copyWith(
          color: theme.dataTableTheme.headingRowColor?.resolve({}),
        ),
      ),
      child: PaginatedDataTable(
        source: source,
        columns: columns,
        rowsPerPage: rowsPerPage ?? 30,
        header: header ?? (actions != null ? Text('') : null),
        actions: actions,
        onPageChanged: onPageChanged,
        showEmptyRows: false,
      ),
    );
  }
}
