class Bank {
  String token;
  String bankName;
  String bankCity;
  String branchName;
  String branchInfo;

  Bank({
    this.token,
    this.bankName,
    this.bankCity,
    this.branchName,
    this.branchInfo,
  });

  Map toJson(Bank bank) {
    var data = Map<String, dynamic>();
    data['token'] = bank.token;
    data['bankName'] = bank.bankName;
    data['bankCity'] = bank.bankCity;
    data['branchName'] = bank.branchName;
    data['branchInfo'] = bank.branchInfo;

    return data;
  }

  Bank.fromJson(Map<String, dynamic> mapData) {
    this.token = mapData['token'];
    this.bankName = mapData['bankName'];
    this.bankCity = mapData['bankCity'];
    this.branchName = mapData['branchName'];
    this.branchInfo = mapData['branchInfo'];
  }
}
