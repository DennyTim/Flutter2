import 'package:json_annotation/json_annotation.dart';

part 'silpo_cheque_dto.g.dart';

@JsonSerializable()
class SilpoChequeDto {
  SilpoChequeDto({
    this.chPrediction,
    this.chequeMagicName,
    this.sumDiscount,
    this.sumCashback,
    this.chequeHeader,
    this.chequeActions,
    this.chequeLines,
    this.feedbackRates,
  });

  factory SilpoChequeDto.fromJson(Map<String, dynamic> json) =>
      _$SilpoChequeDtoFromJson(json);

  Map<String, dynamic> toJson() => _$SilpoChequeDtoToJson(this);

  String? chPrediction;
  String? chequeMagicName;
  double? sumDiscount;
  double? sumCashback;
  ChequeHeaderDto? chequeHeader;
  List<ChequeActionsItemDto>? chequeActions;
  List<ChequeLinesItemDto>? chequeLines;
  List<dynamic>? feedbackRates;
}

@JsonSerializable()
class ChequeActionsItemDto {
  ChequeActionsItemDto({
    this.actionType,
    this.actionTypeCodeName,
    this.actionId,
    this.discpercent,
    this.discount,
    this.varcharData,
  });

  factory ChequeActionsItemDto.fromJson(Map<String, dynamic> json) =>
      _$ChequeActionsItemDtoFromJson(json);

  Map<String, dynamic> toJson() => _$ChequeActionsItemDtoToJson(this);

  int? actionType;
  String? actionTypeCodeName;
  int? actionId;
  int? discpercent;
  int? discount;
  String? varcharData;
}

@JsonSerializable()
class ChequeHeaderDto {
  ChequeHeaderDto({
    this.filId,
    this.chequeId,
    this.created,
    this.loyaltyFactId,
    this.businessCardId,
    this.sumReg,
    this.sumBalance,
    this.filialName,
    this.cityName,
    this.frId,
    this.zId,
    this.frChequeId,
    this.payType,
    this.payTypeArray,
    this.fiscalNumber,
    this.externalOperationId,
  });

  factory ChequeHeaderDto.fromJson(Map<String, dynamic> json) =>
      _$ChequeHeaderDtoFromJson(json);

  Map<String, dynamic> toJson() => _$ChequeHeaderDtoToJson(this);

  int? filId;
  int? chequeId;
  String? created;
  int? loyaltyFactId;
  int? businessCardId;
  double? sumReg;
  double? sumBalance;
  String? filialName;
  String? cityName;
  int? frId;
  int? zId;
  int? frChequeId;
  int? payType;
  List<dynamic>? payTypeArray;
  String? fiscalNumber;
  String? externalOperationId;
}

@JsonSerializable()
class ChequeLinesItemDto {
  ChequeLinesItemDto({
    this.chequeLineId,
    this.lagerId,
    this.lagerNameUA,
    this.lagerUnit,
    this.kolvo,
    this.priceOut,
    this.unitText,
    this.fileName,
    this.sumCashbackLine,
    this.additionalData,
    this.like,
  });

  factory ChequeLinesItemDto.fromJson(Map<String, dynamic> json) =>
      _$ChequeLinesItemDtoFromJson(json);

  Map<String, dynamic> toJson() => _$ChequeLinesItemDtoToJson(this);

  int? chequeLineId;
  int? lagerId;
  String? lagerNameUA;
  String? lagerUnit;
  int? kolvo;
  double? priceOut;
  String? unitText;
  String? fileName;
  int? sumCashbackLine;
  ChequeLinesItemAdditionalDataDto? additionalData;
  ChequeLinesItemLikesDto? like;
}

@JsonSerializable()
class ChequeLinesItemAdditionalDataDto {
  ChequeLinesItemAdditionalDataDto({
    this.id,
    this.title,
    this.icon,
    this.ratio,
    this.sectionSlug,
    this.companyId,
    this.externalProductId,
    this.slug,
    this.classifierSapId,
    this.brandId,
    this.brandTitle,
    this.weighted,
    this.departmentName,
    this.barcodes,
    this.weight,
    this.scanExcise,
  });

  factory ChequeLinesItemAdditionalDataDto.fromJson(
    Map<String, dynamic> json,
  ) => _$ChequeLinesItemAdditionalDataDtoFromJson(json);

  Map<String, dynamic> toJson() =>
      _$ChequeLinesItemAdditionalDataDtoToJson(this);

  String? id;
  String? title;
  String? icon;
  String? ratio;
  String? sectionSlug;
  String? companyId;
  String? externalProductId;
  String? slug;
  String? classifierSapId;
  String? brandId;
  String? brandTitle;
  bool? weighted;
  String? departmentName;
  List<String>? barcodes;
  double? weight;
  bool? scanExcise;
}

@JsonSerializable()
class ChequeLinesItemLikesDto {
  ChequeLinesItemLikesDto({ this.contains });

  factory ChequeLinesItemLikesDto.fromJson(
      Map<String, dynamic> json,
      ) => _$ChequeLinesItemLikesDtoFromJson(json);

  Map<String, dynamic> toJson() =>
      _$ChequeLinesItemLikesDtoToJson(this);

  bool? contains;
}
