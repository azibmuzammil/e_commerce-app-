import 'package:e_commerce_app/common/widgets/custom_shapes/curved_edges.dart';
import 'package:flutter/material.dart';

class UCurvedEdgeWidget extends StatelessWidget {
  const UCurvedEdgeWidget({super.key, this.child});

  final Widget? child;

  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: UCurvedEdges(),
      child: child,
    );
  }
}
