class TicketFilterType {
  final TicketFilterTypeEnum type;
  final String label;

  const TicketFilterType({
    required this.type,
    required this.label,
  });

  /// Factory constructor for dynamic creation of quarter filters
  factory TicketFilterType.forQuarter(
      TicketFilterTypeEnum type, int start, int end) {
    return TicketFilterType(
      type: type,
      label: '$start-$end',
    );
  }
  static List<TicketFilterType> createTicketFilters(int totalTickets) {
    int quarterSize = (totalTickets / 4).ceil();

    return [
      const TicketFilterType(type: TicketFilterTypeEnum.all, label: 'All'),
      const TicketFilterType(
          type: TicketFilterTypeEnum.locked, label: 'Locked'),
      const TicketFilterType(type: TicketFilterTypeEnum.free, label: 'Free'),
      const TicketFilterType(type: TicketFilterTypeEnum.sold, label: 'Sold'),
      TicketFilterType.forQuarter(
          TicketFilterTypeEnum.firstQuarter, 1, quarterSize),
      TicketFilterType.forQuarter(
          TicketFilterTypeEnum.secondQuarter, quarterSize + 1, 2 * quarterSize),
      TicketFilterType.forQuarter(TicketFilterTypeEnum.thirdQuarter,
          2 * quarterSize + 1, 3 * quarterSize),
      TicketFilterType.forQuarter(TicketFilterTypeEnum.fourthQuarter,
          3 * quarterSize + 1, totalTickets),
    ];
  }

  static String getFilterLabel(
      TicketFilterTypeEnum type, List<TicketFilterType> filters) {
    return filters
        .firstWhere((filter) => filter.type == type,
            orElse: () => const TicketFilterType(
                type: TicketFilterTypeEnum.all, label: ''))
        .label;
  }
}

enum TicketFilterTypeEnum {
  all,
  locked,
  free,
  sold,
  firstQuarter,
  secondQuarter,
  thirdQuarter,
  fourthQuarter,
}
