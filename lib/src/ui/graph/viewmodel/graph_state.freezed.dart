// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'graph_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$GraphState {
  Set<GraphNode> get nodes => throw _privateConstructorUsedError;
  Set<GraphEdge> get edges => throw _privateConstructorUsedError;

  /// Create a copy of GraphState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $GraphStateCopyWith<GraphState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GraphStateCopyWith<$Res> {
  factory $GraphStateCopyWith(
          GraphState value, $Res Function(GraphState) then) =
      _$GraphStateCopyWithImpl<$Res, GraphState>;
  @useResult
  $Res call({Set<GraphNode> nodes, Set<GraphEdge> edges});
}

/// @nodoc
class _$GraphStateCopyWithImpl<$Res, $Val extends GraphState>
    implements $GraphStateCopyWith<$Res> {
  _$GraphStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of GraphState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? nodes = null,
    Object? edges = null,
  }) {
    return _then(_value.copyWith(
      nodes: null == nodes
          ? _value.nodes
          : nodes // ignore: cast_nullable_to_non_nullable
              as Set<GraphNode>,
      edges: null == edges
          ? _value.edges
          : edges // ignore: cast_nullable_to_non_nullable
              as Set<GraphEdge>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GraphStateImplCopyWith<$Res>
    implements $GraphStateCopyWith<$Res> {
  factory _$$GraphStateImplCopyWith(
          _$GraphStateImpl value, $Res Function(_$GraphStateImpl) then) =
      __$$GraphStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Set<GraphNode> nodes, Set<GraphEdge> edges});
}

/// @nodoc
class __$$GraphStateImplCopyWithImpl<$Res>
    extends _$GraphStateCopyWithImpl<$Res, _$GraphStateImpl>
    implements _$$GraphStateImplCopyWith<$Res> {
  __$$GraphStateImplCopyWithImpl(
      _$GraphStateImpl _value, $Res Function(_$GraphStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of GraphState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? nodes = null,
    Object? edges = null,
  }) {
    return _then(_$GraphStateImpl(
      nodes: null == nodes
          ? _value._nodes
          : nodes // ignore: cast_nullable_to_non_nullable
              as Set<GraphNode>,
      edges: null == edges
          ? _value._edges
          : edges // ignore: cast_nullable_to_non_nullable
              as Set<GraphEdge>,
    ));
  }
}

/// @nodoc

class _$GraphStateImpl implements _GraphState {
  const _$GraphStateImpl(
      {required final Set<GraphNode> nodes,
      required final Set<GraphEdge> edges})
      : _nodes = nodes,
        _edges = edges;

  final Set<GraphNode> _nodes;
  @override
  Set<GraphNode> get nodes {
    if (_nodes is EqualUnmodifiableSetView) return _nodes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableSetView(_nodes);
  }

  final Set<GraphEdge> _edges;
  @override
  Set<GraphEdge> get edges {
    if (_edges is EqualUnmodifiableSetView) return _edges;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableSetView(_edges);
  }

  @override
  String toString() {
    return 'GraphState(nodes: $nodes, edges: $edges)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GraphStateImpl &&
            const DeepCollectionEquality().equals(other._nodes, _nodes) &&
            const DeepCollectionEquality().equals(other._edges, _edges));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_nodes),
      const DeepCollectionEquality().hash(_edges));

  /// Create a copy of GraphState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GraphStateImplCopyWith<_$GraphStateImpl> get copyWith =>
      __$$GraphStateImplCopyWithImpl<_$GraphStateImpl>(this, _$identity);
}

abstract class _GraphState implements GraphState {
  const factory _GraphState(
      {required final Set<GraphNode> nodes,
      required final Set<GraphEdge> edges}) = _$GraphStateImpl;

  @override
  Set<GraphNode> get nodes;
  @override
  Set<GraphEdge> get edges;

  /// Create a copy of GraphState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GraphStateImplCopyWith<_$GraphStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$GraphNode {
  DeltaProvider get provider => throw _privateConstructorUsedError;
  double get x => throw _privateConstructorUsedError;
  double get y => throw _privateConstructorUsedError;

  /// Create a copy of GraphNode
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $GraphNodeCopyWith<GraphNode> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GraphNodeCopyWith<$Res> {
  factory $GraphNodeCopyWith(GraphNode value, $Res Function(GraphNode) then) =
      _$GraphNodeCopyWithImpl<$Res, GraphNode>;
  @useResult
  $Res call({DeltaProvider provider, double x, double y});

  $DeltaProviderCopyWith<$Res> get provider;
}

/// @nodoc
class _$GraphNodeCopyWithImpl<$Res, $Val extends GraphNode>
    implements $GraphNodeCopyWith<$Res> {
  _$GraphNodeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of GraphNode
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? provider = null,
    Object? x = null,
    Object? y = null,
  }) {
    return _then(_value.copyWith(
      provider: null == provider
          ? _value.provider
          : provider // ignore: cast_nullable_to_non_nullable
              as DeltaProvider,
      x: null == x
          ? _value.x
          : x // ignore: cast_nullable_to_non_nullable
              as double,
      y: null == y
          ? _value.y
          : y // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }

  /// Create a copy of GraphNode
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $DeltaProviderCopyWith<$Res> get provider {
    return $DeltaProviderCopyWith<$Res>(_value.provider, (value) {
      return _then(_value.copyWith(provider: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$GraphNodeImplCopyWith<$Res>
    implements $GraphNodeCopyWith<$Res> {
  factory _$$GraphNodeImplCopyWith(
          _$GraphNodeImpl value, $Res Function(_$GraphNodeImpl) then) =
      __$$GraphNodeImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({DeltaProvider provider, double x, double y});

  @override
  $DeltaProviderCopyWith<$Res> get provider;
}

/// @nodoc
class __$$GraphNodeImplCopyWithImpl<$Res>
    extends _$GraphNodeCopyWithImpl<$Res, _$GraphNodeImpl>
    implements _$$GraphNodeImplCopyWith<$Res> {
  __$$GraphNodeImplCopyWithImpl(
      _$GraphNodeImpl _value, $Res Function(_$GraphNodeImpl) _then)
      : super(_value, _then);

  /// Create a copy of GraphNode
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? provider = null,
    Object? x = null,
    Object? y = null,
  }) {
    return _then(_$GraphNodeImpl(
      provider: null == provider
          ? _value.provider
          : provider // ignore: cast_nullable_to_non_nullable
              as DeltaProvider,
      x: null == x
          ? _value.x
          : x // ignore: cast_nullable_to_non_nullable
              as double,
      y: null == y
          ? _value.y
          : y // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc

class _$GraphNodeImpl extends _GraphNode {
  const _$GraphNodeImpl(
      {required this.provider, required this.x, required this.y})
      : super._();

  @override
  final DeltaProvider provider;
  @override
  final double x;
  @override
  final double y;

  @override
  String toString() {
    return 'GraphNode(provider: $provider, x: $x, y: $y)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GraphNodeImpl &&
            (identical(other.provider, provider) ||
                other.provider == provider) &&
            (identical(other.x, x) || other.x == x) &&
            (identical(other.y, y) || other.y == y));
  }

  @override
  int get hashCode => Object.hash(runtimeType, provider, x, y);

  /// Create a copy of GraphNode
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GraphNodeImplCopyWith<_$GraphNodeImpl> get copyWith =>
      __$$GraphNodeImplCopyWithImpl<_$GraphNodeImpl>(this, _$identity);
}

abstract class _GraphNode extends GraphNode {
  const factory _GraphNode(
      {required final DeltaProvider provider,
      required final double x,
      required final double y}) = _$GraphNodeImpl;
  const _GraphNode._() : super._();

  @override
  DeltaProvider get provider;
  @override
  double get x;
  @override
  double get y;

  /// Create a copy of GraphNode
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GraphNodeImplCopyWith<_$GraphNodeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$GraphEdge {
  String get from => throw _privateConstructorUsedError;
  String get to => throw _privateConstructorUsedError;

  /// Create a copy of GraphEdge
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $GraphEdgeCopyWith<GraphEdge> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GraphEdgeCopyWith<$Res> {
  factory $GraphEdgeCopyWith(GraphEdge value, $Res Function(GraphEdge) then) =
      _$GraphEdgeCopyWithImpl<$Res, GraphEdge>;
  @useResult
  $Res call({String from, String to});
}

/// @nodoc
class _$GraphEdgeCopyWithImpl<$Res, $Val extends GraphEdge>
    implements $GraphEdgeCopyWith<$Res> {
  _$GraphEdgeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of GraphEdge
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? from = null,
    Object? to = null,
  }) {
    return _then(_value.copyWith(
      from: null == from
          ? _value.from
          : from // ignore: cast_nullable_to_non_nullable
              as String,
      to: null == to
          ? _value.to
          : to // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GraphEdgeImplCopyWith<$Res>
    implements $GraphEdgeCopyWith<$Res> {
  factory _$$GraphEdgeImplCopyWith(
          _$GraphEdgeImpl value, $Res Function(_$GraphEdgeImpl) then) =
      __$$GraphEdgeImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String from, String to});
}

/// @nodoc
class __$$GraphEdgeImplCopyWithImpl<$Res>
    extends _$GraphEdgeCopyWithImpl<$Res, _$GraphEdgeImpl>
    implements _$$GraphEdgeImplCopyWith<$Res> {
  __$$GraphEdgeImplCopyWithImpl(
      _$GraphEdgeImpl _value, $Res Function(_$GraphEdgeImpl) _then)
      : super(_value, _then);

  /// Create a copy of GraphEdge
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? from = null,
    Object? to = null,
  }) {
    return _then(_$GraphEdgeImpl(
      from: null == from
          ? _value.from
          : from // ignore: cast_nullable_to_non_nullable
              as String,
      to: null == to
          ? _value.to
          : to // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$GraphEdgeImpl extends _GraphEdge {
  const _$GraphEdgeImpl({required this.from, required this.to}) : super._();

  @override
  final String from;
  @override
  final String to;

  @override
  String toString() {
    return 'GraphEdge(from: $from, to: $to)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GraphEdgeImpl &&
            (identical(other.from, from) || other.from == from) &&
            (identical(other.to, to) || other.to == to));
  }

  @override
  int get hashCode => Object.hash(runtimeType, from, to);

  /// Create a copy of GraphEdge
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GraphEdgeImplCopyWith<_$GraphEdgeImpl> get copyWith =>
      __$$GraphEdgeImplCopyWithImpl<_$GraphEdgeImpl>(this, _$identity);
}

abstract class _GraphEdge extends GraphEdge {
  const factory _GraphEdge(
      {required final String from, required final String to}) = _$GraphEdgeImpl;
  const _GraphEdge._() : super._();

  @override
  String get from;
  @override
  String get to;

  /// Create a copy of GraphEdge
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GraphEdgeImplCopyWith<_$GraphEdgeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
