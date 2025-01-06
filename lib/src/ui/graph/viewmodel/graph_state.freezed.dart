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
  $Res call({DeltaProvider provider});

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
  }) {
    return _then(_value.copyWith(
      provider: null == provider
          ? _value.provider
          : provider // ignore: cast_nullable_to_non_nullable
              as DeltaProvider,
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
  $Res call({DeltaProvider provider});

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
  }) {
    return _then(_$GraphNodeImpl(
      provider: null == provider
          ? _value.provider
          : provider // ignore: cast_nullable_to_non_nullable
              as DeltaProvider,
    ));
  }
}

/// @nodoc

class _$GraphNodeImpl extends _GraphNode {
  const _$GraphNodeImpl({required this.provider}) : super._();

  @override
  final DeltaProvider provider;

  @override
  String toString() {
    return 'GraphNode(provider: $provider)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GraphNodeImpl &&
            (identical(other.provider, provider) ||
                other.provider == provider));
  }

  @override
  int get hashCode => Object.hash(runtimeType, provider);

  /// Create a copy of GraphNode
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GraphNodeImplCopyWith<_$GraphNodeImpl> get copyWith =>
      __$$GraphNodeImplCopyWithImpl<_$GraphNodeImpl>(this, _$identity);
}

abstract class _GraphNode extends GraphNode {
  const factory _GraphNode({required final DeltaProvider provider}) =
      _$GraphNodeImpl;
  const _GraphNode._() : super._();

  @override
  DeltaProvider get provider;

  /// Create a copy of GraphNode
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GraphNodeImplCopyWith<_$GraphNodeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$GraphEdge {
  DeltaProvider get from => throw _privateConstructorUsedError;
  DeltaProvider get to => throw _privateConstructorUsedError;

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
  $Res call({DeltaProvider from, DeltaProvider to});

  $DeltaProviderCopyWith<$Res> get from;
  $DeltaProviderCopyWith<$Res> get to;
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
              as DeltaProvider,
      to: null == to
          ? _value.to
          : to // ignore: cast_nullable_to_non_nullable
              as DeltaProvider,
    ) as $Val);
  }

  /// Create a copy of GraphEdge
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $DeltaProviderCopyWith<$Res> get from {
    return $DeltaProviderCopyWith<$Res>(_value.from, (value) {
      return _then(_value.copyWith(from: value) as $Val);
    });
  }

  /// Create a copy of GraphEdge
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $DeltaProviderCopyWith<$Res> get to {
    return $DeltaProviderCopyWith<$Res>(_value.to, (value) {
      return _then(_value.copyWith(to: value) as $Val);
    });
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
  $Res call({DeltaProvider from, DeltaProvider to});

  @override
  $DeltaProviderCopyWith<$Res> get from;
  @override
  $DeltaProviderCopyWith<$Res> get to;
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
              as DeltaProvider,
      to: null == to
          ? _value.to
          : to // ignore: cast_nullable_to_non_nullable
              as DeltaProvider,
    ));
  }
}

/// @nodoc

class _$GraphEdgeImpl extends _GraphEdge {
  const _$GraphEdgeImpl({required this.from, required this.to}) : super._();

  @override
  final DeltaProvider from;
  @override
  final DeltaProvider to;

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
      {required final DeltaProvider from,
      required final DeltaProvider to}) = _$GraphEdgeImpl;
  const _GraphEdge._() : super._();

  @override
  DeltaProvider get from;
  @override
  DeltaProvider get to;

  /// Create a copy of GraphEdge
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GraphEdgeImplCopyWith<_$GraphEdgeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$DeltaProvider {
  String get name => throw _privateConstructorUsedError;
  Set<String> get arguments => throw _privateConstructorUsedError;
  List<DeltaProviderDependency> get dependencies =>
      throw _privateConstructorUsedError;

  /// Create a copy of DeltaProvider
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DeltaProviderCopyWith<DeltaProvider> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DeltaProviderCopyWith<$Res> {
  factory $DeltaProviderCopyWith(
          DeltaProvider value, $Res Function(DeltaProvider) then) =
      _$DeltaProviderCopyWithImpl<$Res, DeltaProvider>;
  @useResult
  $Res call(
      {String name,
      Set<String> arguments,
      List<DeltaProviderDependency> dependencies});
}

/// @nodoc
class _$DeltaProviderCopyWithImpl<$Res, $Val extends DeltaProvider>
    implements $DeltaProviderCopyWith<$Res> {
  _$DeltaProviderCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DeltaProvider
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? arguments = null,
    Object? dependencies = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      arguments: null == arguments
          ? _value.arguments
          : arguments // ignore: cast_nullable_to_non_nullable
              as Set<String>,
      dependencies: null == dependencies
          ? _value.dependencies
          : dependencies // ignore: cast_nullable_to_non_nullable
              as List<DeltaProviderDependency>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DeltaProviderImplCopyWith<$Res>
    implements $DeltaProviderCopyWith<$Res> {
  factory _$$DeltaProviderImplCopyWith(
          _$DeltaProviderImpl value, $Res Function(_$DeltaProviderImpl) then) =
      __$$DeltaProviderImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String name,
      Set<String> arguments,
      List<DeltaProviderDependency> dependencies});
}

/// @nodoc
class __$$DeltaProviderImplCopyWithImpl<$Res>
    extends _$DeltaProviderCopyWithImpl<$Res, _$DeltaProviderImpl>
    implements _$$DeltaProviderImplCopyWith<$Res> {
  __$$DeltaProviderImplCopyWithImpl(
      _$DeltaProviderImpl _value, $Res Function(_$DeltaProviderImpl) _then)
      : super(_value, _then);

  /// Create a copy of DeltaProvider
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? arguments = null,
    Object? dependencies = null,
  }) {
    return _then(_$DeltaProviderImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      arguments: null == arguments
          ? _value._arguments
          : arguments // ignore: cast_nullable_to_non_nullable
              as Set<String>,
      dependencies: null == dependencies
          ? _value._dependencies
          : dependencies // ignore: cast_nullable_to_non_nullable
              as List<DeltaProviderDependency>,
    ));
  }
}

/// @nodoc

class _$DeltaProviderImpl extends _DeltaProvider {
  const _$DeltaProviderImpl(
      {required this.name,
      final Set<String> arguments = const {},
      final List<DeltaProviderDependency> dependencies = const []})
      : _arguments = arguments,
        _dependencies = dependencies,
        super._();

  @override
  final String name;
  final Set<String> _arguments;
  @override
  @JsonKey()
  Set<String> get arguments {
    if (_arguments is EqualUnmodifiableSetView) return _arguments;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableSetView(_arguments);
  }

  final List<DeltaProviderDependency> _dependencies;
  @override
  @JsonKey()
  List<DeltaProviderDependency> get dependencies {
    if (_dependencies is EqualUnmodifiableListView) return _dependencies;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_dependencies);
  }

  @override
  String toString() {
    return 'DeltaProvider(name: $name, arguments: $arguments, dependencies: $dependencies)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeltaProviderImpl &&
            (identical(other.name, name) || other.name == name) &&
            const DeepCollectionEquality()
                .equals(other._arguments, _arguments) &&
            const DeepCollectionEquality()
                .equals(other._dependencies, _dependencies));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      name,
      const DeepCollectionEquality().hash(_arguments),
      const DeepCollectionEquality().hash(_dependencies));

  /// Create a copy of DeltaProvider
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DeltaProviderImplCopyWith<_$DeltaProviderImpl> get copyWith =>
      __$$DeltaProviderImplCopyWithImpl<_$DeltaProviderImpl>(this, _$identity);
}

abstract class _DeltaProvider extends DeltaProvider {
  const factory _DeltaProvider(
      {required final String name,
      final Set<String> arguments,
      final List<DeltaProviderDependency> dependencies}) = _$DeltaProviderImpl;
  const _DeltaProvider._() : super._();

  @override
  String get name;
  @override
  Set<String> get arguments;
  @override
  List<DeltaProviderDependency> get dependencies;

  /// Create a copy of DeltaProvider
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DeltaProviderImplCopyWith<_$DeltaProviderImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$DeltaProviderDependency {
  String get name => throw _privateConstructorUsedError;
  Set<String> get arguments => throw _privateConstructorUsedError;

  /// Create a copy of DeltaProviderDependency
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DeltaProviderDependencyCopyWith<DeltaProviderDependency> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DeltaProviderDependencyCopyWith<$Res> {
  factory $DeltaProviderDependencyCopyWith(DeltaProviderDependency value,
          $Res Function(DeltaProviderDependency) then) =
      _$DeltaProviderDependencyCopyWithImpl<$Res, DeltaProviderDependency>;
  @useResult
  $Res call({String name, Set<String> arguments});
}

/// @nodoc
class _$DeltaProviderDependencyCopyWithImpl<$Res,
        $Val extends DeltaProviderDependency>
    implements $DeltaProviderDependencyCopyWith<$Res> {
  _$DeltaProviderDependencyCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DeltaProviderDependency
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? arguments = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      arguments: null == arguments
          ? _value.arguments
          : arguments // ignore: cast_nullable_to_non_nullable
              as Set<String>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DeltaProviderDependencyImplCopyWith<$Res>
    implements $DeltaProviderDependencyCopyWith<$Res> {
  factory _$$DeltaProviderDependencyImplCopyWith(
          _$DeltaProviderDependencyImpl value,
          $Res Function(_$DeltaProviderDependencyImpl) then) =
      __$$DeltaProviderDependencyImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, Set<String> arguments});
}

/// @nodoc
class __$$DeltaProviderDependencyImplCopyWithImpl<$Res>
    extends _$DeltaProviderDependencyCopyWithImpl<$Res,
        _$DeltaProviderDependencyImpl>
    implements _$$DeltaProviderDependencyImplCopyWith<$Res> {
  __$$DeltaProviderDependencyImplCopyWithImpl(
      _$DeltaProviderDependencyImpl _value,
      $Res Function(_$DeltaProviderDependencyImpl) _then)
      : super(_value, _then);

  /// Create a copy of DeltaProviderDependency
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? arguments = null,
  }) {
    return _then(_$DeltaProviderDependencyImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      arguments: null == arguments
          ? _value._arguments
          : arguments // ignore: cast_nullable_to_non_nullable
              as Set<String>,
    ));
  }
}

/// @nodoc

class _$DeltaProviderDependencyImpl implements _DeltaProviderDependency {
  const _$DeltaProviderDependencyImpl(
      {required this.name, final Set<String> arguments = const {}})
      : _arguments = arguments;

  @override
  final String name;
  final Set<String> _arguments;
  @override
  @JsonKey()
  Set<String> get arguments {
    if (_arguments is EqualUnmodifiableSetView) return _arguments;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableSetView(_arguments);
  }

  @override
  String toString() {
    return 'DeltaProviderDependency(name: $name, arguments: $arguments)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeltaProviderDependencyImpl &&
            (identical(other.name, name) || other.name == name) &&
            const DeepCollectionEquality()
                .equals(other._arguments, _arguments));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, name, const DeepCollectionEquality().hash(_arguments));

  /// Create a copy of DeltaProviderDependency
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DeltaProviderDependencyImplCopyWith<_$DeltaProviderDependencyImpl>
      get copyWith => __$$DeltaProviderDependencyImplCopyWithImpl<
          _$DeltaProviderDependencyImpl>(this, _$identity);
}

abstract class _DeltaProviderDependency implements DeltaProviderDependency {
  const factory _DeltaProviderDependency(
      {required final String name,
      final Set<String> arguments}) = _$DeltaProviderDependencyImpl;

  @override
  String get name;
  @override
  Set<String> get arguments;

  /// Create a copy of DeltaProviderDependency
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DeltaProviderDependencyImplCopyWith<_$DeltaProviderDependencyImpl>
      get copyWith => throw _privateConstructorUsedError;
}
