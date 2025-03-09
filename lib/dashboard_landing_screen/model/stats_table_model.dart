class StatsTableModel {
  final String timeStamp;
  final String protocol;
  final String srIp;
  final String srPort;
  final String dsIp;
  final String dsPort;

  StatsTableModel({
    required this.dsIp,
    required this.dsPort,
    required this.protocol,
    required this.srIp,
    required this.srPort,
    required this.timeStamp,
  });
}
