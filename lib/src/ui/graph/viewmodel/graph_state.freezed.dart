// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'graph_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$GraphState {
  Set<GraphNode> get nodes;
  Set<GraphEdge> get edges;
  DeltaProvider? get selectedProvider;

  /// Create a copy of GraphState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $GraphStateCopyWith<GraphState> get copyWith =>
      _$GraphStateCopyWithImpl<GraphState>(this as GraphState, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is GraphState &&
            const DeepCollectionEquality().equals(other.nodes, nodes) &&
            const DeepCollectionEquality().equals(other.edges, edges) &&
            (identical(other.selectedProvider, selectedProvider) ||
                other.selectedProvider == selectedProvider));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(nodes),
      const DeepCollectionEquality().hash(edges),
      selectedProvider);

  @override
  String toString() {
    return 'GraphState(nodes: $nodes, edges: $edges, selectedProvider: $selectedProvider)';
  }
}

/// @nodoc
abstract mixin class $GraphStateCopyWith<$Res> {
  factory $GraphStateCopyWith(
          GraphState value, $Res Function(GraphState) _then) =
      _$GraphStateCopyWithImpl;
  @useResult
  $Res call(
      {Set<GraphNode> nodes,
      Set<GraphEdge> edges,
      DeltaProvider? selectedProvider});

  $DeltaProviderCopyWith<$Res>? get selectedProvider;
}

/// @nodoc
class _$GraphStateCopyWithImpl<$Res> implements $GraphStateCopyWith<$Res> {
  _$GraphStateCopyWithImpl(this._self, this._then);

  final GraphState _self;
  final $Res Function(GraphState) _then;

  /// Create a copy of GraphState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? nodes = null,
    Object? edges = null,
    Object? selectedProvider = freezed,
  }) {
    return _then(_self.copyWith(
      nodes: null == nodes
          ? _self.nodes
          : nodes // ignore: cast_nullable_to_non_nullable
              as Set<GraphNode>,
      edges: null == edges
          ? _self.edges
          : edges // ignore: cast_nullable_to_non_nullable
              as Set<GraphEdge>,
      selectedProvider: freezed == selectedProvider
          ? _self.selectedProvider
          : selectedProvider // ignore: cast_nullable_to_non_nullable
              as DeltaProvider?,
    ));
  }

  /// Create a copy of GraphState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $DeltaProviderCopyWith<$Res>? get selectedProvider {
    if (_self.selectedProvider == null) {
      return null;
    }

    return $DeltaProviderCopyWith<$Res>(_self.selectedProvider!, (value) {
      return _then(_self.copyWith(selectedProvider: value));
    });
  }
}

/// @nodoc

class _GraphState extends GraphState {
  const _GraphState(
      {required final Set<GraphNode> nodes,
      required final Set<GraphEdge> edges,
      this.selectedProvider})
      : _nodes = nodes,
        _edges = edges,
        super._();

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
  final DeltaProvider? selectedProvider;

  /// Create a copy of GraphState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$GraphStateCopyWith<_GraphState> get copyWith =>
      __$GraphStateCopyWithImpl<_GraphState>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _GraphState &&
            const DeepCollectionEquality().equals(other._nodes, _nodes) &&
            const DeepCollectionEquality().equals(other._edges, _edges) &&
            (identical(other.selectedProvider, selectedProvider) ||
                other.selectedProvider == selectedProvider));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_nodes),
      const DeepCollectionEquality().hash(_edges),
      selectedProvider);

  @override
  String toString() {
    return 'GraphState(nodes: $nodes, edges: $edges, selectedProvider: $selectedProvider)';
  }
}

/// @nodoc
abstract mixin class _$GraphStateCopyWith<$Res>
    implements $GraphStateCopyWith<$Res> {
  factory _$GraphStateCopyWith(
          _GraphState value, $Res Function(_GraphState) _then) =
      __$GraphStateCopyWithImpl;
  @override
  @useResult
  $Res call(
      {Set<GraphNode> nodes,
      Set<GraphEdge> edges,
      DeltaProvider? selectedProvider});

  @override
  $DeltaProviderCopyWith<$Res>? get selectedProvider;
}

/// @nodoc
class __$GraphStateCopyWithImpl<$Res> implements _$GraphStateCopyWith<$Res> {
  __$GraphStateCopyWithImpl(this._self, this._then);

  final _GraphState _self;
  final $Res Function(_GraphState) _then;

  /// Create a copy of GraphState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? nodes = null,
    Object? edges = null,
    Object? selectedProvider = freezed,
  }) {
    return _then(_GraphState(
      nodes: null == nodes
          ? _self._nodes
          : nodes // ignore: cast_nullable_to_non_nullable
              as Set<GraphNode>,
      edges: null == edges
          ? _self._edges
          : edges // ignore: cast_nullable_to_non_nullable
              as Set<GraphEdge>,
      selectedProvider: freezed == selectedProvider
          ? _self.selectedProvider
          : selectedProvider // ignore: cast_nullable_to_non_nullable
              as DeltaProvider?,
    ));
  }

  /// Create a copy of GraphState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $DeltaProviderCopyWith<$Res>? get selectedProvider {
    if (_self.selectedProvider == null) {
      return null;
    }

    return $DeltaProviderCopyWith<$Res>(_self.selectedProvider!, (value) {
      return _then(_self.copyWith(selectedProvider: value));
    });
  }
}

/// @nodoc
mixin _$GraphNode {
  DeltaProvider get provider;

  /// Create a copy of GraphNode
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $GraphNodeCopyWith<GraphNode> get copyWith =>
      _$GraphNodeCopyWithImpl<GraphNode>(this as GraphNode, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is GraphNode &&
            (identical(other.provider, provider) ||
                other.provider == provider));
  }

  @override
  int get hashCode => Object.hash(runtimeType, provider);

  @override
  String toString() {
    return 'GraphNode(provider: $provider)';
  }
}

/// @nodoc
abstract mixin class $GraphNodeCopyWith<$Res> {
  factory $GraphNodeCopyWith(GraphNode value, $Res Function(GraphNode) _then) =
      _$GraphNodeCopyWithImpl;
  @useResult
  $Res call({DeltaProvider provider});

  $DeltaProviderCopyWith<$Res> get provider;
}

/// @nodoc
class _$GraphNodeCopyWithImpl<$Res> implements $GraphNodeCopyWith<$Res> {
  _$GraphNodeCopyWithImpl(this._self, this._then);

  final GraphNode _self;
  final $Res Function(GraphNode) _then;

  /// Create a copy of GraphNode
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? provider = null,
  }) {
    return _then(_self.copyWith(
      provider: null == provider
          ? _self.provider
          : provider // ignore: cast_nullable_to_non_nullable
              as DeltaProvider,
    ));
  }

  /// Create a copy of GraphNode
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $DeltaProviderCopyWith<$Res> get provider {
    return $DeltaProviderCopyWith<$Res>(_self.provider, (value) {
      return _then(_self.copyWith(provider: value));
    });
  }
}

/// @nodoc

class _GraphNode extends GraphNode {
  const _GraphNode({required this.provider}) : super._();

  @override
  final DeltaProvider provider;

  /// Create a copy of GraphNode
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$GraphNodeCopyWith<_GraphNode> get copyWith =>
      __$GraphNodeCopyWithImpl<_GraphNode>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _GraphNode &&
            (identical(other.provider, provider) ||
                other.provider == provider));
  }

  @override
  int get hashCode => Object.hash(runtimeType, provider);

  @override
  String toString() {
    return 'GraphNode(provider: $provider)';
  }
}

/// @nodoc
abstract mixin class _$GraphNodeCopyWith<$Res>
    implements $GraphNodeCopyWith<$Res> {
  factory _$GraphNodeCopyWith(
          _GraphNode value, $Res Function(_GraphNode) _then) =
      __$GraphNodeCopyWithImpl;
  @override
  @useResult
  $Res call({DeltaProvider provider});

  @override
  $DeltaProviderCopyWith<$Res> get provider;
}

/// @nodoc
class __$GraphNodeCopyWithImpl<$Res> implements _$GraphNodeCopyWith<$Res> {
  __$GraphNodeCopyWithImpl(this._self, this._then);

  final _GraphNode _self;
  final $Res Function(_GraphNode) _then;

  /// Create a copy of GraphNode
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? provider = null,
  }) {
    return _then(_GraphNode(
      provider: null == provider
          ? _self.provider
          : provider // ignore: cast_nullable_to_non_nullable
              as DeltaProvider,
    ));
  }

  /// Create a copy of GraphNode
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $DeltaProviderCopyWith<$Res> get provider {
    return $DeltaProviderCopyWith<$Res>(_self.provider, (value) {
      return _then(_self.copyWith(provider: value));
    });
  }
}

/// @nodoc
mixin _$GraphEdge {
  DeltaProvider get from;
  DeltaProvider get to;

  /// Create a copy of GraphEdge
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $GraphEdgeCopyWith<GraphEdge> get copyWith =>
      _$GraphEdgeCopyWithImpl<GraphEdge>(this as GraphEdge, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is GraphEdge &&
            (identical(other.from, from) || other.from == from) &&
            (identical(other.to, to) || other.to == to));
  }

  @override
  int get hashCode => Object.hash(runtimeType, from, to);

  @override
  String toString() {
    return 'GraphEdge(from: $from, to: $to)';
  }
}

/// @nodoc
abstract mixin class $GraphEdgeCopyWith<$Res> {
  factory $GraphEdgeCopyWith(GraphEdge value, $Res Function(GraphEdge) _then) =
      _$GraphEdgeCopyWithImpl;
  @useResult
  $Res call({DeltaProvider from, DeltaProvider to});

  $DeltaProviderCopyWith<$Res> get from;
  $DeltaProviderCopyWith<$Res> get to;
}

/// @nodoc
class _$GraphEdgeCopyWithImpl<$Res> implements $GraphEdgeCopyWith<$Res> {
  _$GraphEdgeCopyWithImpl(this._self, this._then);

  final GraphEdge _self;
  final $Res Function(GraphEdge) _then;

  /// Create a copy of GraphEdge
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? from = null,
    Object? to = null,
  }) {
    return _then(_self.copyWith(
      from: null == from
          ? _self.from
          : from // ignore: cast_nullable_to_non_nullable
              as DeltaProvider,
      to: null == to
          ? _self.to
          : to // ignore: cast_nullable_to_non_nullable
              as DeltaProvider,
    ));
  }

  /// Create a copy of GraphEdge
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $DeltaProviderCopyWith<$Res> get from {
    return $DeltaProviderCopyWith<$Res>(_self.from, (value) {
      return _then(_self.copyWith(from: value));
    });
  }

  /// Create a copy of GraphEdge
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $DeltaProviderCopyWith<$Res> get to {
    return $DeltaProviderCopyWith<$Res>(_self.to, (value) {
      return _then(_self.copyWith(to: value));
    });
  }
}

/// @nodoc

class _GraphEdge extends GraphEdge {
  const _GraphEdge({required this.from, required this.to}) : super._();

  @override
  final DeltaProvider from;
  @override
  final DeltaProvider to;

  /// Create a copy of GraphEdge
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$GraphEdgeCopyWith<_GraphEdge> get copyWith =>
      __$GraphEdgeCopyWithImpl<_GraphEdge>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _GraphEdge &&
            (identical(other.from, from) || other.from == from) &&
            (identical(other.to, to) || other.to == to));
  }

  @override
  int get hashCode => Object.hash(runtimeType, from, to);

  @override
  String toString() {
    return 'GraphEdge(from: $from, to: $to)';
  }
}

/// @nodoc
abstract mixin class _$GraphEdgeCopyWith<$Res>
    implements $GraphEdgeCopyWith<$Res> {
  factory _$GraphEdgeCopyWith(
          _GraphEdge value, $Res Function(_GraphEdge) _then) =
      __$GraphEdgeCopyWithImpl;
  @override
  @useResult
  $Res call({DeltaProvider from, DeltaProvider to});

  @override
  $DeltaProviderCopyWith<$Res> get from;
  @override
  $DeltaProviderCopyWith<$Res> get to;
}

/// @nodoc
class __$GraphEdgeCopyWithImpl<$Res> implements _$GraphEdgeCopyWith<$Res> {
  __$GraphEdgeCopyWithImpl(this._self, this._then);

  final _GraphEdge _self;
  final $Res Function(_GraphEdge) _then;

  /// Create a copy of GraphEdge
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? from = null,
    Object? to = null,
  }) {
    return _then(_GraphEdge(
      from: null == from
          ? _self.from
          : from // ignore: cast_nullable_to_non_nullable
              as DeltaProvider,
      to: null == to
          ? _self.to
          : to // ignore: cast_nullable_to_non_nullable
              as DeltaProvider,
    ));
  }

  /// Create a copy of GraphEdge
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $DeltaProviderCopyWith<$Res> get from {
    return $DeltaProviderCopyWith<$Res>(_self.from, (value) {
      return _then(_self.copyWith(from: value));
    });
  }

  /// Create a copy of GraphEdge
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $DeltaProviderCopyWith<$Res> get to {
    return $DeltaProviderCopyWith<$Res>(_self.to, (value) {
      return _then(_self.copyWith(to: value));
    });
  }
}

/// @nodoc
mixin _$DeltaProvider {
  String get name;
  Set<String> get arguments;
  List<DeltaProviderDependency> get dependencies;
  List<ProviderState> get states;

  /// Create a copy of DeltaProvider
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $DeltaProviderCopyWith<DeltaProvider> get copyWith =>
      _$DeltaProviderCopyWithImpl<DeltaProvider>(
          this as DeltaProvider, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is DeltaProvider &&
            (identical(other.name, name) || other.name == name) &&
            const DeepCollectionEquality().equals(other.arguments, arguments) &&
            const DeepCollectionEquality()
                .equals(other.dependencies, dependencies) &&
            const DeepCollectionEquality().equals(other.states, states));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      name,
      const DeepCollectionEquality().hash(arguments),
      const DeepCollectionEquality().hash(dependencies),
      const DeepCollectionEquality().hash(states));

  @override
  String toString() {
    return 'DeltaProvider(name: $name, arguments: $arguments, dependencies: $dependencies, states: $states)';
  }
}

/// @nodoc
abstract mixin class $DeltaProviderCopyWith<$Res> {
  factory $DeltaProviderCopyWith(
          DeltaProvider value, $Res Function(DeltaProvider) _then) =
      _$DeltaProviderCopyWithImpl;
  @useResult
  $Res call(
      {String name,
      Set<String> arguments,
      List<DeltaProviderDependency> dependencies,
      List<ProviderState> states});
}

/// @nodoc
class _$DeltaProviderCopyWithImpl<$Res>
    implements $DeltaProviderCopyWith<$Res> {
  _$DeltaProviderCopyWithImpl(this._self, this._then);

  final DeltaProvider _self;
  final $Res Function(DeltaProvider) _then;

  /// Create a copy of DeltaProvider
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? arguments = null,
    Object? dependencies = null,
    Object? states = null,
  }) {
    return _then(_self.copyWith(
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      arguments: null == arguments
          ? _self.arguments
          : arguments // ignore: cast_nullable_to_non_nullable
              as Set<String>,
      dependencies: null == dependencies
          ? _self.dependencies
          : dependencies // ignore: cast_nullable_to_non_nullable
              as List<DeltaProviderDependency>,
      states: null == states
          ? _self.states
          : states // ignore: cast_nullable_to_non_nullable
              as List<ProviderState>,
    ));
  }
}

/// @nodoc

class _DeltaProvider extends DeltaProvider {
  const _DeltaProvider(
      {required this.name,
      final Set<String> arguments = const {},
      final List<DeltaProviderDependency> dependencies = const [],
      required final List<ProviderState> states})
      : _arguments = arguments,
        _dependencies = dependencies,
        _states = states,
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

  final List<ProviderState> _states;
  @override
  List<ProviderState> get states {
    if (_states is EqualUnmodifiableListView) return _states;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_states);
  }

  /// Create a copy of DeltaProvider
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$DeltaProviderCopyWith<_DeltaProvider> get copyWith =>
      __$DeltaProviderCopyWithImpl<_DeltaProvider>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _DeltaProvider &&
            (identical(other.name, name) || other.name == name) &&
            const DeepCollectionEquality()
                .equals(other._arguments, _arguments) &&
            const DeepCollectionEquality()
                .equals(other._dependencies, _dependencies) &&
            const DeepCollectionEquality().equals(other._states, _states));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      name,
      const DeepCollectionEquality().hash(_arguments),
      const DeepCollectionEquality().hash(_dependencies),
      const DeepCollectionEquality().hash(_states));

  @override
  String toString() {
    return 'DeltaProvider(name: $name, arguments: $arguments, dependencies: $dependencies, states: $states)';
  }
}

/// @nodoc
abstract mixin class _$DeltaProviderCopyWith<$Res>
    implements $DeltaProviderCopyWith<$Res> {
  factory _$DeltaProviderCopyWith(
          _DeltaProvider value, $Res Function(_DeltaProvider) _then) =
      __$DeltaProviderCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String name,
      Set<String> arguments,
      List<DeltaProviderDependency> dependencies,
      List<ProviderState> states});
}

/// @nodoc
class __$DeltaProviderCopyWithImpl<$Res>
    implements _$DeltaProviderCopyWith<$Res> {
  __$DeltaProviderCopyWithImpl(this._self, this._then);

  final _DeltaProvider _self;
  final $Res Function(_DeltaProvider) _then;

  /// Create a copy of DeltaProvider
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? name = null,
    Object? arguments = null,
    Object? dependencies = null,
    Object? states = null,
  }) {
    return _then(_DeltaProvider(
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      arguments: null == arguments
          ? _self._arguments
          : arguments // ignore: cast_nullable_to_non_nullable
              as Set<String>,
      dependencies: null == dependencies
          ? _self._dependencies
          : dependencies // ignore: cast_nullable_to_non_nullable
              as List<DeltaProviderDependency>,
      states: null == states
          ? _self._states
          : states // ignore: cast_nullable_to_non_nullable
              as List<ProviderState>,
    ));
  }
}

/// @nodoc
mixin _$DeltaProviderDependency {
  String get name;
  Set<String> get arguments;

  /// Create a copy of DeltaProviderDependency
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $DeltaProviderDependencyCopyWith<DeltaProviderDependency> get copyWith =>
      _$DeltaProviderDependencyCopyWithImpl<DeltaProviderDependency>(
          this as DeltaProviderDependency, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is DeltaProviderDependency &&
            (identical(other.name, name) || other.name == name) &&
            const DeepCollectionEquality().equals(other.arguments, arguments));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, name, const DeepCollectionEquality().hash(arguments));

  @override
  String toString() {
    return 'DeltaProviderDependency(name: $name, arguments: $arguments)';
  }
}

/// @nodoc
abstract mixin class $DeltaProviderDependencyCopyWith<$Res> {
  factory $DeltaProviderDependencyCopyWith(DeltaProviderDependency value,
          $Res Function(DeltaProviderDependency) _then) =
      _$DeltaProviderDependencyCopyWithImpl;
  @useResult
  $Res call({String name, Set<String> arguments});
}

/// @nodoc
class _$DeltaProviderDependencyCopyWithImpl<$Res>
    implements $DeltaProviderDependencyCopyWith<$Res> {
  _$DeltaProviderDependencyCopyWithImpl(this._self, this._then);

  final DeltaProviderDependency _self;
  final $Res Function(DeltaProviderDependency) _then;

  /// Create a copy of DeltaProviderDependency
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? arguments = null,
  }) {
    return _then(_self.copyWith(
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      arguments: null == arguments
          ? _self.arguments
          : arguments // ignore: cast_nullable_to_non_nullable
              as Set<String>,
    ));
  }
}

/// @nodoc

class _DeltaProviderDependency implements DeltaProviderDependency {
  const _DeltaProviderDependency(
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

  /// Create a copy of DeltaProviderDependency
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$DeltaProviderDependencyCopyWith<_DeltaProviderDependency> get copyWith =>
      __$DeltaProviderDependencyCopyWithImpl<_DeltaProviderDependency>(
          this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _DeltaProviderDependency &&
            (identical(other.name, name) || other.name == name) &&
            const DeepCollectionEquality()
                .equals(other._arguments, _arguments));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, name, const DeepCollectionEquality().hash(_arguments));

  @override
  String toString() {
    return 'DeltaProviderDependency(name: $name, arguments: $arguments)';
  }
}

/// @nodoc
abstract mixin class _$DeltaProviderDependencyCopyWith<$Res>
    implements $DeltaProviderDependencyCopyWith<$Res> {
  factory _$DeltaProviderDependencyCopyWith(_DeltaProviderDependency value,
          $Res Function(_DeltaProviderDependency) _then) =
      __$DeltaProviderDependencyCopyWithImpl;
  @override
  @useResult
  $Res call({String name, Set<String> arguments});
}

/// @nodoc
class __$DeltaProviderDependencyCopyWithImpl<$Res>
    implements _$DeltaProviderDependencyCopyWith<$Res> {
  __$DeltaProviderDependencyCopyWithImpl(this._self, this._then);

  final _DeltaProviderDependency _self;
  final $Res Function(_DeltaProviderDependency) _then;

  /// Create a copy of DeltaProviderDependency
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? name = null,
    Object? arguments = null,
  }) {
    return _then(_DeltaProviderDependency(
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      arguments: null == arguments
          ? _self._arguments
          : arguments // ignore: cast_nullable_to_non_nullable
              as Set<String>,
    ));
  }
}

// dart format on
