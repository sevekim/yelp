enum ApiTypeEnum {
  devAPIEnum(
    apiType: 'devAPI',
  ),
  qaAPIEnum(
    apiType: 'qaAPI',
  ),
  stageAPIEnum(
    apiType: 'stageAPI',
  ),
  prodAPIEnum(
    apiType: 'prodAPI',
  );

  const ApiTypeEnum({
    required this.apiType,
  });
  final String apiType;
}
