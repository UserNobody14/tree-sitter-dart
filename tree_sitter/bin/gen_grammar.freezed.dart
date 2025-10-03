// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'gen_grammar.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Type {
  String get type;
  bool get named;
  Map<String, Field> get fields;
  Field? get children;
  List<Type> get subtypes;

  /// Create a copy of Type
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $TypeCopyWith<Type> get copyWith =>
      _$TypeCopyWithImpl<Type>(this as Type, _$identity);

  /// Serializes this Type to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is Type &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.named, named) || other.named == named) &&
            const DeepCollectionEquality().equals(other.fields, fields) &&
            (identical(other.children, children) ||
                other.children == children) &&
            const DeepCollectionEquality().equals(other.subtypes, subtypes));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      type,
      named,
      const DeepCollectionEquality().hash(fields),
      children,
      const DeepCollectionEquality().hash(subtypes));

  @override
  String toString() {
    return 'Type(type: $type, named: $named, fields: $fields, children: $children, subtypes: $subtypes)';
  }
}

/// @nodoc
abstract mixin class $TypeCopyWith<$Res> {
  factory $TypeCopyWith(Type value, $Res Function(Type) _then) =
      _$TypeCopyWithImpl;
  @useResult
  $Res call(
      {String type,
      bool named,
      Map<String, Field> fields,
      Field? children,
      List<Type> subtypes});

  $FieldCopyWith<$Res>? get children;
}

/// @nodoc
class _$TypeCopyWithImpl<$Res> implements $TypeCopyWith<$Res> {
  _$TypeCopyWithImpl(this._self, this._then);

  final Type _self;
  final $Res Function(Type) _then;

  /// Create a copy of Type
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? named = null,
    Object? fields = null,
    Object? children = freezed,
    Object? subtypes = null,
  }) {
    return _then(_self.copyWith(
      type: null == type
          ? _self.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      named: null == named
          ? _self.named
          : named // ignore: cast_nullable_to_non_nullable
              as bool,
      fields: null == fields
          ? _self.fields
          : fields // ignore: cast_nullable_to_non_nullable
              as Map<String, Field>,
      children: freezed == children
          ? _self.children
          : children // ignore: cast_nullable_to_non_nullable
              as Field?,
      subtypes: null == subtypes
          ? _self.subtypes
          : subtypes // ignore: cast_nullable_to_non_nullable
              as List<Type>,
    ));
  }

  /// Create a copy of Type
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $FieldCopyWith<$Res>? get children {
    if (_self.children == null) {
      return null;
    }

    return $FieldCopyWith<$Res>(_self.children!, (value) {
      return _then(_self.copyWith(children: value));
    });
  }
}

/// Adds pattern-matching-related methods to [Type].
extension TypePatterns on Type {
  /// A variant of `map` that fallback to returning `orElse`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_Type value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _Type() when $default != null:
        return $default(_that);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// Callbacks receives the raw object, upcasted.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case final Subclass2 value:
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_Type value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Type():
        return $default(_that);
      case _:
        throw StateError('Unexpected subclass');
    }
  }

  /// A variant of `map` that fallback to returning `null`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_Type value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Type() when $default != null:
        return $default(_that);
      case _:
        return null;
    }
  }

  /// A variant of `when` that fallback to an `orElse` callback.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String type, bool named, Map<String, Field> fields,
            Field? children, List<Type> subtypes)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _Type() when $default != null:
        return $default(_that.type, _that.named, _that.fields, _that.children,
            _that.subtypes);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// As opposed to `map`, this offers destructuring.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case Subclass2(:final field2):
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String type, bool named, Map<String, Field> fields,
            Field? children, List<Type> subtypes)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Type():
        return $default(_that.type, _that.named, _that.fields, _that.children,
            _that.subtypes);
      case _:
        throw StateError('Unexpected subclass');
    }
  }

  /// A variant of `when` that fallback to returning `null`
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(String type, bool named, Map<String, Field> fields,
            Field? children, List<Type> subtypes)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Type() when $default != null:
        return $default(_that.type, _that.named, _that.fields, _that.children,
            _that.subtypes);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _Type implements Type {
  const _Type(
      {required this.type,
      required this.named,
      final Map<String, Field> fields = const {},
      this.children,
      final List<Type> subtypes = const []})
      : _fields = fields,
        _subtypes = subtypes;
  factory _Type.fromJson(Map<String, dynamic> json) => _$TypeFromJson(json);

  @override
  final String type;
  @override
  final bool named;
  final Map<String, Field> _fields;
  @override
  @JsonKey()
  Map<String, Field> get fields {
    if (_fields is EqualUnmodifiableMapView) return _fields;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_fields);
  }

  @override
  final Field? children;
  final List<Type> _subtypes;
  @override
  @JsonKey()
  List<Type> get subtypes {
    if (_subtypes is EqualUnmodifiableListView) return _subtypes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_subtypes);
  }

  /// Create a copy of Type
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$TypeCopyWith<_Type> get copyWith =>
      __$TypeCopyWithImpl<_Type>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$TypeToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Type &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.named, named) || other.named == named) &&
            const DeepCollectionEquality().equals(other._fields, _fields) &&
            (identical(other.children, children) ||
                other.children == children) &&
            const DeepCollectionEquality().equals(other._subtypes, _subtypes));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      type,
      named,
      const DeepCollectionEquality().hash(_fields),
      children,
      const DeepCollectionEquality().hash(_subtypes));

  @override
  String toString() {
    return 'Type(type: $type, named: $named, fields: $fields, children: $children, subtypes: $subtypes)';
  }
}

/// @nodoc
abstract mixin class _$TypeCopyWith<$Res> implements $TypeCopyWith<$Res> {
  factory _$TypeCopyWith(_Type value, $Res Function(_Type) _then) =
      __$TypeCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String type,
      bool named,
      Map<String, Field> fields,
      Field? children,
      List<Type> subtypes});

  @override
  $FieldCopyWith<$Res>? get children;
}

/// @nodoc
class __$TypeCopyWithImpl<$Res> implements _$TypeCopyWith<$Res> {
  __$TypeCopyWithImpl(this._self, this._then);

  final _Type _self;
  final $Res Function(_Type) _then;

  /// Create a copy of Type
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? type = null,
    Object? named = null,
    Object? fields = null,
    Object? children = freezed,
    Object? subtypes = null,
  }) {
    return _then(_Type(
      type: null == type
          ? _self.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      named: null == named
          ? _self.named
          : named // ignore: cast_nullable_to_non_nullable
              as bool,
      fields: null == fields
          ? _self._fields
          : fields // ignore: cast_nullable_to_non_nullable
              as Map<String, Field>,
      children: freezed == children
          ? _self.children
          : children // ignore: cast_nullable_to_non_nullable
              as Field?,
      subtypes: null == subtypes
          ? _self._subtypes
          : subtypes // ignore: cast_nullable_to_non_nullable
              as List<Type>,
    ));
  }

  /// Create a copy of Type
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $FieldCopyWith<$Res>? get children {
    if (_self.children == null) {
      return null;
    }

    return $FieldCopyWith<$Res>(_self.children!, (value) {
      return _then(_self.copyWith(children: value));
    });
  }
}

/// @nodoc
mixin _$Field {
  bool get multiple;
  bool get required;
  List<Type> get types;

  /// Create a copy of Field
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $FieldCopyWith<Field> get copyWith =>
      _$FieldCopyWithImpl<Field>(this as Field, _$identity);

  /// Serializes this Field to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is Field &&
            (identical(other.multiple, multiple) ||
                other.multiple == multiple) &&
            (identical(other.required, required) ||
                other.required == required) &&
            const DeepCollectionEquality().equals(other.types, types));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, multiple, required,
      const DeepCollectionEquality().hash(types));

  @override
  String toString() {
    return 'Field(multiple: $multiple, required: $required, types: $types)';
  }
}

/// @nodoc
abstract mixin class $FieldCopyWith<$Res> {
  factory $FieldCopyWith(Field value, $Res Function(Field) _then) =
      _$FieldCopyWithImpl;
  @useResult
  $Res call({bool multiple, bool required, List<Type> types});
}

/// @nodoc
class _$FieldCopyWithImpl<$Res> implements $FieldCopyWith<$Res> {
  _$FieldCopyWithImpl(this._self, this._then);

  final Field _self;
  final $Res Function(Field) _then;

  /// Create a copy of Field
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? multiple = null,
    Object? required = null,
    Object? types = null,
  }) {
    return _then(_self.copyWith(
      multiple: null == multiple
          ? _self.multiple
          : multiple // ignore: cast_nullable_to_non_nullable
              as bool,
      required: null == required
          ? _self.required
          : required // ignore: cast_nullable_to_non_nullable
              as bool,
      types: null == types
          ? _self.types
          : types // ignore: cast_nullable_to_non_nullable
              as List<Type>,
    ));
  }
}

/// Adds pattern-matching-related methods to [Field].
extension FieldPatterns on Field {
  /// A variant of `map` that fallback to returning `orElse`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_Field value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _Field() when $default != null:
        return $default(_that);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// Callbacks receives the raw object, upcasted.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case final Subclass2 value:
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_Field value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Field():
        return $default(_that);
      case _:
        throw StateError('Unexpected subclass');
    }
  }

  /// A variant of `map` that fallback to returning `null`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_Field value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Field() when $default != null:
        return $default(_that);
      case _:
        return null;
    }
  }

  /// A variant of `when` that fallback to an `orElse` callback.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(bool multiple, bool required, List<Type> types)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _Field() when $default != null:
        return $default(_that.multiple, _that.required, _that.types);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// As opposed to `map`, this offers destructuring.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case Subclass2(:final field2):
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(bool multiple, bool required, List<Type> types) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Field():
        return $default(_that.multiple, _that.required, _that.types);
      case _:
        throw StateError('Unexpected subclass');
    }
  }

  /// A variant of `when` that fallback to returning `null`
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(bool multiple, bool required, List<Type> types)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Field() when $default != null:
        return $default(_that.multiple, _that.required, _that.types);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _Field implements Field {
  const _Field(
      {required this.multiple,
      required this.required,
      final List<Type> types = const []})
      : _types = types;
  factory _Field.fromJson(Map<String, dynamic> json) => _$FieldFromJson(json);

  @override
  final bool multiple;
  @override
  final bool required;
  final List<Type> _types;
  @override
  @JsonKey()
  List<Type> get types {
    if (_types is EqualUnmodifiableListView) return _types;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_types);
  }

  /// Create a copy of Field
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$FieldCopyWith<_Field> get copyWith =>
      __$FieldCopyWithImpl<_Field>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$FieldToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Field &&
            (identical(other.multiple, multiple) ||
                other.multiple == multiple) &&
            (identical(other.required, required) ||
                other.required == required) &&
            const DeepCollectionEquality().equals(other._types, _types));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, multiple, required,
      const DeepCollectionEquality().hash(_types));

  @override
  String toString() {
    return 'Field(multiple: $multiple, required: $required, types: $types)';
  }
}

/// @nodoc
abstract mixin class _$FieldCopyWith<$Res> implements $FieldCopyWith<$Res> {
  factory _$FieldCopyWith(_Field value, $Res Function(_Field) _then) =
      __$FieldCopyWithImpl;
  @override
  @useResult
  $Res call({bool multiple, bool required, List<Type> types});
}

/// @nodoc
class __$FieldCopyWithImpl<$Res> implements _$FieldCopyWith<$Res> {
  __$FieldCopyWithImpl(this._self, this._then);

  final _Field _self;
  final $Res Function(_Field) _then;

  /// Create a copy of Field
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? multiple = null,
    Object? required = null,
    Object? types = null,
  }) {
    return _then(_Field(
      multiple: null == multiple
          ? _self.multiple
          : multiple // ignore: cast_nullable_to_non_nullable
              as bool,
      required: null == required
          ? _self.required
          : required // ignore: cast_nullable_to_non_nullable
              as bool,
      types: null == types
          ? _self._types
          : types // ignore: cast_nullable_to_non_nullable
              as List<Type>,
    ));
  }
}

// dart format on
