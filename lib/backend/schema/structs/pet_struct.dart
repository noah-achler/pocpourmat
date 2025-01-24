// ignore_for_file: unnecessary_getters_setters


import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class PetStruct extends BaseStruct {
  PetStruct({
    int? id,
    IdNameStruct? category,
    String? name,
    List<String>? photoUrls,
    List<IdNameStruct>? tags,
    String? status,
  })  : _id = id,
        _category = category,
        _name = name,
        _photoUrls = photoUrls,
        _tags = tags,
        _status = status;

  // "id" field.
  int? _id;
  int get id => _id ?? 0;
  set id(int? val) => _id = val;

  void incrementId(int amount) => id = id + amount;

  bool hasId() => _id != null;

  // "category" field.
  IdNameStruct? _category;
  IdNameStruct get category => _category ?? IdNameStruct();
  set category(IdNameStruct? val) => _category = val;

  void updateCategory(Function(IdNameStruct) updateFn) {
    updateFn(_category ??= IdNameStruct());
  }

  bool hasCategory() => _category != null;

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  set name(String? val) => _name = val;

  bool hasName() => _name != null;

  // "photoUrls" field.
  List<String>? _photoUrls;
  List<String> get photoUrls => _photoUrls ?? const [];
  set photoUrls(List<String>? val) => _photoUrls = val;

  void updatePhotoUrls(Function(List<String>) updateFn) {
    updateFn(_photoUrls ??= []);
  }

  bool hasPhotoUrls() => _photoUrls != null;

  // "tags" field.
  List<IdNameStruct>? _tags;
  List<IdNameStruct> get tags => _tags ?? const [];
  set tags(List<IdNameStruct>? val) => _tags = val;

  void updateTags(Function(List<IdNameStruct>) updateFn) {
    updateFn(_tags ??= []);
  }

  bool hasTags() => _tags != null;

  // "status" field.
  String? _status;
  String get status => _status ?? '';
  set status(String? val) => _status = val;

  bool hasStatus() => _status != null;

  static PetStruct fromMap(Map<String, dynamic> data) => PetStruct(
        id: castToType<int>(data['id']),
        category: data['category'] is IdNameStruct
            ? data['category']
            : IdNameStruct.maybeFromMap(data['category']),
        name: data['name'] as String?,
        photoUrls: getDataList(data['photoUrls']),
        tags: getStructList(
          data['tags'],
          IdNameStruct.fromMap,
        ),
        status: data['status'] as String?,
      );

  static PetStruct? maybeFromMap(dynamic data) =>
      data is Map ? PetStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'id': _id,
        'category': _category?.toMap(),
        'name': _name,
        'photoUrls': _photoUrls,
        'tags': _tags?.map((e) => e.toMap()).toList(),
        'status': _status,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'id': serializeParam(
          _id,
          ParamType.int,
        ),
        'category': serializeParam(
          _category,
          ParamType.DataStruct,
        ),
        'name': serializeParam(
          _name,
          ParamType.String,
        ),
        'photoUrls': serializeParam(
          _photoUrls,
          ParamType.String,
          isList: true,
        ),
        'tags': serializeParam(
          _tags,
          ParamType.DataStruct,
          isList: true,
        ),
        'status': serializeParam(
          _status,
          ParamType.String,
        ),
      }.withoutNulls;

  static PetStruct fromSerializableMap(Map<String, dynamic> data) => PetStruct(
        id: deserializeParam(
          data['id'],
          ParamType.int,
          false,
        ),
        category: deserializeStructParam(
          data['category'],
          ParamType.DataStruct,
          false,
          structBuilder: IdNameStruct.fromSerializableMap,
        ),
        name: deserializeParam(
          data['name'],
          ParamType.String,
          false,
        ),
        photoUrls: deserializeParam<String>(
          data['photoUrls'],
          ParamType.String,
          true,
        ),
        tags: deserializeStructParam<IdNameStruct>(
          data['tags'],
          ParamType.DataStruct,
          true,
          structBuilder: IdNameStruct.fromSerializableMap,
        ),
        status: deserializeParam(
          data['status'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'PetStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    const listEquality = ListEquality();
    return other is PetStruct &&
        id == other.id &&
        category == other.category &&
        name == other.name &&
        listEquality.equals(photoUrls, other.photoUrls) &&
        listEquality.equals(tags, other.tags) &&
        status == other.status;
  }

  @override
  int get hashCode =>
      const ListEquality().hash([id, category, name, photoUrls, tags, status]);
}

PetStruct createPetStruct({
  int? id,
  IdNameStruct? category,
  String? name,
  String? status,
}) =>
    PetStruct(
      id: id,
      category: category ?? IdNameStruct(),
      name: name,
      status: status,
    );
