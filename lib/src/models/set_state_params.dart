import 'tunnel.dart';

class SetStateParams {
  final bool state;
  final Tunnel tunnel;
  final List<String>? bypassAppIds;

  /// Constructor of the [SetStateParams] class that receives [state], a boolean that defines the
  /// value that the tunnel is going to receive, [tunnel], an object of the [Tunnel] class that is the
  /// tunnel to be modified.
  SetStateParams(
      {required this.state, required this.tunnel, this.bypassAppIds});

  /// Method [toJson] to convert the class to JSON.
  Map<String, dynamic> toJson() => {
        'state': state,
        'tunnel': tunnel.toJson(),
        'bypassAppIds': bypassAppIds ?? []
      };
}
