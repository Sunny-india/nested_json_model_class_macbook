Map<String, dynamic> dummyData = {
  "status": "success",
  "data": {
    "result": [
      {
        "_id": "5e549a7dc70b394464392821",
        "borrowDate": "2020-02-25T03:54:37.578Z",
        "bookID": "5e5430718e1576265487fb99",
        "userID": "5e541d291ceafc46186160e8",
        "v": 0,
        "userInfo": [
          {
            "_id": "5e541d291ceafc46186160e8",
            "userType": "student",
            "token":
                "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6IjVlNTQxZDI5MWNlYWZjNDYxODYxNjBlOCIsInVzZXJUeXBlIjoic3R1ZGVudCIsImlhdCI6MTU4MjU3MzUyN30.zpYIg4n9kaY5DWQiHTqRkY_aLsmxTxg3CX3lAVSDJm4",
            "name": "Suraj",
            "email": "180305105156@paruluniversity.ac.in",
            "password": "R4eAU��U{\"Ju",
            "branch": "CSE",
            "semester": "4",
            "enrollmentNo": 180305105156,
            "__v": 0,
            "cgpa": 8.5,
            "income": 200000
          },
        ],
        "bookData": [
          {
            "_id": "5e5430718e1576265487fb99",
            "uploadDate": "2020-02-24T20:20:57.837Z",
            "isAvailable": true,
            "tag": [""],
            "subject": "coa",
            "department": "computer science",
            "bookName": "computer organization",
            "author": "xyz",
            "bookType": "book",
            "__v": 0,
            "doner": 180305105156,
            "bookImage":
                "https://images-na.ssl-images-amazon.com/images/I/51e1dHur4DL._SX323_BO1,204,203,200_.jpg"
          }
        ]
      },
      {
        "_id": "5e549a94c70b394464392822",
        "borrowDate": "2020-02-25T03:55:00.491Z",
        "bookID": "5e5431468e1576265487fb9b",
        "userID": "5e541d291ceafc46186160e8",
        "__v": 0,
        "userInfo": [
          {
            "_id": "5e541d291ceafc46186160e8",
            "userType": "student",
            "token":
                "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6IjVlNTQxZDI5MWNlYWZjNDYxODYxNjBlOCIsInVzZXJUeXBlIjoic3R1ZGVudCIsImlhdCI6MTU4MjU3MzUyN30.zpYIg4n9kaY5DWQiHTqRkY_aLsmxTxg3CX3lAVSDJm4",
            "name": "Suraj",
            "email": "180305105156@paruluniversity.ac.in",
            "password": "R4eAU��U{\"Ju",
            "branch": "CSE",
            "semester": "4",
            "enrollmentNo": 180305105156,
            "__v": 0,
            "cgpa": 8.5,
            "income": 200000
          }
        ],
        "bookData": [
          {
            "_id": "5e5431468e1576265487fb9b",
            "uploadDate": "2020-02-24T20:20:57.837Z",
            "isAvailable": true,
            "tag": [""],
            "subject": "comic",
            "department": "comic",
            "bookName": "harry potter",
            "author": "j.k rowling",
            "bookType": "book",
            "__v": 0,
            "doner": 180305105156,
            "bookImage":
                "https://images-na.ssl-images-amazon.com/images/I/51jNORv6nQL._SX340_BO1,204,203,200_.jpg"
          }
        ]
      },
      {
        "_id": "5e549ab3c70b394464392823",
        "borrowDate": "2020-02-25T03:55:31.015Z",
        "bookID": "5e54317b8e1576265487fb9c",
        "userID": "5e541d291ceafc46186160e8",
        "__v": 0,
        "userInfo": [
          {
            "_id": "5e541d291ceafc46186160e8",
            "userType": "student",
            "token":
                "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6IjVlNTQxZDI5MWNlYWZjNDYxODYxNjBlOCIsInVzZXJUeXBlIjoic3R1ZGVudCIsImlhdCI6MTU4MjU3MzUyN30.zpYIg4n9kaY5DWQiHTqRkY_aLsmxTxg3CX3lAVSDJm4",
            "name": "Suraj",
            "email": "180305105156@paruluniversity.ac.in",
            "password": "R4eAU��U{\"Ju",
            "branch": "CSE",
            "semester": "4",
            "enrollmentNo": 180305105156,
            "__v": 0,
            "cgpa": 8.5,
            "income": 200000
          }
        ],
        "bookData": [
          {
            "_id": "5e54317b8e1576265487fb9c",
            "uploadDate": "2020-02-24T20:20:57.837Z",
            "isAvailable": true,
            "tag": [""],
            "subject": "cn",
            "department": "computer science",
            "bookName": "computer networks",
            "author": "xyz",
            "bookType": "book",
            "__v": 0,
            "doner": 180305105156,
            "bookImage":
                "https://5.imimg.com/data5/FS/AH/GLADMIN-17084875/computer-networks-book-500x500.png"
          }
        ]
      }
    ]
  }
};

class DummyData {
  String status;
  Map<String, dynamic> data;
  DummyData({required this.status, required this.data});

  factory DummyData.fromMap(Map<String, dynamic> map) {
    Map<String, dynamic> ok = Data.fromMap(map['data']) as Map<String, dynamic>;
//
    return DummyData(status: map['status'], data: ok);
  }
}

//
class Data {
  List<Result> result;
  Data({required this.result});

  factory Data.fromMap(Map<String, dynamic> map) {
    var innerList = map['result'] as List;
    List<Result> dataResult = [];
    innerList.map((e) {
      return dataResult.add(Result.fromMap(e));
    }).toList();
    return Data(result: dataResult);
  }
}

class Result {
  String? id;
  String borrowDate, bookId, userId;
  int v;
  List<UserInfo> userInfo = [];
  List<BookData> bookData = [];
  Result(
      {this.id,
      required this.borrowDate,
      required this.bookId,
      required this.userId,
      required this.v,
      required this.userInfo,
      required this.bookData});

  factory Result.fromMap(Map<String, dynamic> map) {
    var innerInfo = map['userInfo'] as List;
    List<UserInfo> insideListOne = [];

    /// either through this way OR
    List.generate(innerInfo.length, (index) {
      return insideListOne.add(UserInfo.fromMap(innerInfo[index]));
    });
    //
    /// Through this way
    innerInfo.map((e) {
      insideListOne.add(UserInfo.fromMap(e));
    }).toList();

    var listTwo = map['bookData'] as List;
    //
    /// either through this way OR
    List<BookData> insideListTwo = [];
    List.generate(listTwo.length, (index) {
      return insideListTwo.add(BookData.fromMap(listTwo[index]));
    });
    //
    /// Through this way
    listTwo.map((e) {
      insideListTwo.add(BookData.fromMap(e));
    }).toList();

    return Result(
        id: map['id'],
        borrowDate: map['borrowDate'],
        bookId: map['bookId'],
        userId: map['userId'],
        v: map['v'],
        userInfo: insideListOne,
        bookData: insideListTwo);
  }
}

class UserInfo {
  int? id;
  String userType, token, name, email, password, branch, semester;
  int enrollmentNo, v, cgpa, income;

  UserInfo(
      {this.id,
      required this.userType,
      required this.token,
      required this.name,
      required this.email,
      required this.password,
      required this.branch,
      required this.semester,
      required this.enrollmentNo,
      required this.v,
      required this.cgpa,
      required this.income});

  factory UserInfo.fromMap(Map<String, dynamic> map) {
    return UserInfo(
        id: map['id'],
        userType: map['userType'],
        token: map['token'],
        name: map['name'],
        email: map['email'],
        password: map['password'],
        branch: map['branch'],
        semester: map['semester'],
        enrollmentNo: map['enrollmentNo'],
        v: map['v'],
        cgpa: map['cgpa'],
        income: map['income']);
  }

  Map<String, dynamic> toMap() {
    return {
      'userType': userType,
      'token': token,
      'name': name,
      'email': email,
      'password': password,
      "branch": branch,
      'enrollmentNo': enrollmentNo,
      'v': v,
      'cgpa': cgpa,
      'income': income
    };
  }
}

class BookData {
  int? id;
  String uploadDate, subject, department, bookName, author, bookType, bookImage;
  bool isAvailable;
  List<String> tag = <String>[];
  int v, donor;

  BookData(
      {this.id,
      required this.uploadDate,
      required this.subject,
      required this.department,
      required this.bookName,
      required this.author,
      required this.bookType,
      required this.bookImage,
      required this.isAvailable,
      required this.tag,
      required this.v,
      required this.donor});

  factory BookData.fromMap(Map<String, dynamic> map) {
    return BookData(
        id: map['id'],
        uploadDate: map['uploadDate'],
        subject: map['subject'],
        department: map['department'],
        bookName: map['bookName'],
        author: map['author'],
        bookType: map['bookType'],
        bookImage: map['bookImage'],
        isAvailable: map['isAvailable'],
        tag: map['tag'],
        v: map['v'],
        donor: map['donor']);
  }
}
