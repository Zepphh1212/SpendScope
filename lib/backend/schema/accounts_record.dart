import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class AccountsRecord extends FirestoreRecord {
  AccountsRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "account_name" field.
  String? _accountName;
  String get accountName => _accountName ?? '';
  bool hasAccountName() => _accountName != null;

  // "account_balance" field.
  double? _accountBalance;
  double get accountBalance => _accountBalance ?? 0.0;
  bool hasAccountBalance() => _accountBalance != null;

  // "acc_user" field.
  DocumentReference? _accUser;
  DocumentReference? get accUser => _accUser;
  bool hasAccUser() => _accUser != null;

  // "account_create_date" field.
  String? _accountCreateDate;
  String get accountCreateDate => _accountCreateDate ?? '';
  bool hasAccountCreateDate() => _accountCreateDate != null;

  // "account_date" field.
  DateTime? _accountDate;
  DateTime? get accountDate => _accountDate;
  bool hasAccountDate() => _accountDate != null;

  // "Account_month" field.
  String? _accountMonth;
  String get accountMonth => _accountMonth ?? '';
  bool hasAccountMonth() => _accountMonth != null;

  // "Account_location" field.
  LatLng? _accountLocation;
  LatLng? get accountLocation => _accountLocation;
  bool hasAccountLocation() => _accountLocation != null;

  // "Account_Status" field.
  String? _accountStatus;
  String get accountStatus => _accountStatus ?? '';
  bool hasAccountStatus() => _accountStatus != null;

  void _initializeFields() {
    _accountName = snapshotData['account_name'] as String?;
    _accountBalance = castToType<double>(snapshotData['account_balance']);
    _accUser = snapshotData['acc_user'] as DocumentReference?;
    _accountCreateDate = snapshotData['account_create_date'] as String?;
    _accountDate = snapshotData['account_date'] as DateTime?;
    _accountMonth = snapshotData['Account_month'] as String?;
    _accountLocation = snapshotData['Account_location'] as LatLng?;
    _accountStatus = snapshotData['Account_Status'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('accounts');

  static Stream<AccountsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => AccountsRecord.fromSnapshot(s));

  static Future<AccountsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => AccountsRecord.fromSnapshot(s));

  static AccountsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      AccountsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static AccountsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      AccountsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'AccountsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is AccountsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createAccountsRecordData({
  String? accountName,
  double? accountBalance,
  DocumentReference? accUser,
  String? accountCreateDate,
  DateTime? accountDate,
  String? accountMonth,
  LatLng? accountLocation,
  String? accountStatus,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'account_name': accountName,
      'account_balance': accountBalance,
      'acc_user': accUser,
      'account_create_date': accountCreateDate,
      'account_date': accountDate,
      'Account_month': accountMonth,
      'Account_location': accountLocation,
      'Account_Status': accountStatus,
    }.withoutNulls,
  );

  return firestoreData;
}

class AccountsRecordDocumentEquality implements Equality<AccountsRecord> {
  const AccountsRecordDocumentEquality();

  @override
  bool equals(AccountsRecord? e1, AccountsRecord? e2) {
    return e1?.accountName == e2?.accountName &&
        e1?.accountBalance == e2?.accountBalance &&
        e1?.accUser == e2?.accUser &&
        e1?.accountCreateDate == e2?.accountCreateDate &&
        e1?.accountDate == e2?.accountDate &&
        e1?.accountMonth == e2?.accountMonth &&
        e1?.accountLocation == e2?.accountLocation &&
        e1?.accountStatus == e2?.accountStatus;
  }

  @override
  int hash(AccountsRecord? e) => const ListEquality().hash([
        e?.accountName,
        e?.accountBalance,
        e?.accUser,
        e?.accountCreateDate,
        e?.accountDate,
        e?.accountMonth,
        e?.accountLocation,
        e?.accountStatus
      ]);

  @override
  bool isValidKey(Object? o) => o is AccountsRecord;
}
