import 'package:flutter/material.dart';
import 'package:flutter_assessment/features/map/models/directions.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

import '../../core/di/injection.dart';
import '../../core/widgets/text_snackbar.dart';
import 'bloc/map_bloc.dart';
import 'repo/maps_failure.dart';

const _btnRandomLoc = 'Get Random Location';
const _btnDirections = 'Show directions';
const _polylineId = 'directions';

class MapScreen extends StatefulWidget {
  const MapScreen({Key? key}) : super(key: key);

  @override
  State<MapScreen> createState() => _MapScreenState();
}

class _MapScreenState extends State<MapScreen> {
  late GoogleMapController _controller;
  static const LatLng _initialcameraposition = LatLng(14.6, 121);
  static const CameraPosition _kInitialPosition = CameraPosition(
    target: _initialcameraposition,
    zoom: 11.0,
    tilt: 0,
    bearing: 0,
  );

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  void _onMapCreated(GoogleMapController _cntlr) {
    _controller = _cntlr;
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => locator<MapBloc>()..add(const MapEvent.getUserLocation()),
      child: BlocConsumer<MapBloc, MapState>(
        listenWhen: (_, __) => true,
        listener: _listenForStateChanges,
        builder: _buildBody,
      ),
    );
  }

  ///Listens for changes in [state] and act accordingly
  void _listenForStateChanges(BuildContext context, MapState state) {
    if (state.failure.isSome()) {
      final failure =
          state.failure.getOrElse(() => const MapsFailure.unknown());
      ScaffoldMessenger.of(context).showSnackBar(
        TextSnackbar(failure.errorMessage),
      );
    }
    if (state.directions.isSome()) {}
  }
}

extension _Widgets on _MapScreenState {
  ///Builds the body of the screen
  Widget _buildBody(BuildContext context, MapState state) {
    final directions = state.directions.getOrElse(() => Directions.empty());
    return Stack(
      children: [
        _map(
          directions: directions,
          markers: state.markers,
          shouldShowDirections: state.shouldShowDirections,
        ),
        Visibility(
          visible: state.isLoading,
          child: _loader(),
        )
      ],
    );
  }

  ///Creates the Map UI
  Widget _map({
    required Map<MarkerId, Marker> markers,
    required bool shouldShowDirections,
    required Directions directions,
  }) =>
      Stack(
        children: [
          GoogleMap(
            myLocationEnabled: false,
            zoomControlsEnabled: false,
            onMapCreated: _onMapCreated,
            polylines: {
              Polyline(
                width: 5,
                color: Colors.green,
                polylineId: const PolylineId(_polylineId),
                points: directions.polylinePoints
                    .map((point) => LatLng(point.latitude, point.longitude))
                    .toList(),
              ),
            },
            markers: Set<Marker>.of(markers.values),
            initialCameraPosition: _MapScreenState._kInitialPosition,
          ),
          const SizedBox(height: 16),
          _buttons(shouldShowDirections)
        ],
      );

  ///Loading widget
  Widget _loader() => const Center(
        child: CircularProgressIndicator(),
      );

  ///Create the buttons to control the map
  Widget _buttons(bool shouldShowDirections) {
    return Builder(
      builder: (context) {
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ElevatedButton(
                onPressed: () async {
                  context
                      .read<MapBloc>()
                      .add(const MapEvent.getRandomLocationTapped());
                },
                child: const Text(_btnRandomLoc),
              ),
              const SizedBox(width: 16.0),
              Visibility(
                visible: shouldShowDirections,
                child: ElevatedButton(
                  onPressed: () async {
                    context
                        .read<MapBloc>()
                        .add(const MapEvent.getDirectionsTapped());
                  },
                  child: const Text(_btnDirections),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
