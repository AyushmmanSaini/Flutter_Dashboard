class BarClass {
  String s0;
  String s1;
  String s2;
  String s3;
  String s4;
  String s5;
  String id;
  String name;
  String govt;
  String aided;
  String pvt;
  String oth;

  BarClass(
      {this.s0,
      this.s1,
      this.s2,
      this.s3,
      this.s4,
      this.s5,
      this.id,
      this.name,
      this.govt,
      this.aided,
      this.pvt,
      this.oth});

  BarClass.fromJson(Map<String, dynamic> json)
      : s0 = json['0'],
        s1 = json['1'],
        s2 = json['2'],
        s3 = json['3'],
        s4 = json['4'],
        s5 = json['5'],
        id = json['id'],
        name = json['name'],
        govt = json['govt'],
        aided = json['aided'],
        pvt = json['pvt'],
        oth = json['oth'];

  Map<String, dynamic> toJson() => {
        's0': s0,
        's1': s1,
        's2': s2,
        's3': s3,
        's4': s4,
        's5': s5,
        'id': id,
        'name': name,
        'govt': govt,
        'aided': aided,
        'pvt': pvt,
        'oth': oth,
      };
}
