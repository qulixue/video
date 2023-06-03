/// id : 2067454986108947
/// text : null
/// type : 1
/// typeString : "短视频"
/// status : 4
/// statusString : "正常显示"
/// video : {"id":2067454986108948,"url":"https://cdn.100935.com/video/oztXqE.mp4","fileName":"oztXqE.mp4","width":1440,"height":1080,"langString":"English","langType":2}
/// subtitles : [{"id":2067454986108949,"vttUrl":"https://cdn.100935.com/sub/RpESEtzTYh.vtt","url":"https://cdn.100935.com/sub/TjDyvWei_en.srt","langString":"English","langType":2,"fileName":"TjDyvWei_en.srt","vttFileName":"RpESEtzTYh.vtt","lines":[{"id":2067454986108954,"words":"Five seven, well ok five six and a half is not enough to teach happiness?","position":1,"startString":"00:00:02,000","endString":"00:00:07,220","startMilli":2000,"endMilli":7220,"status":4,"statusString":"未知","langType":2,"langString":"English","createTime":"2023-05-29 15:43:54"},{"id":2067454986108955,"words":"Just not enough.","position":2,"startString":"00:00:11,320","endString":"00:00:12,660","startMilli":11320,"endMilli":12660,"status":4,"statusString":"未知","langType":2,"langString":"English","createTime":"2023-05-29 15:43:54"},{"id":2067454986108956,"words":"because we have got enough people on the panel today","position":3,"startString":"00:00:16,800","endString":"00:00:19,780","startMilli":16800,"endMilli":19780,"status":4,"statusString":"未知","langType":2,"langString":"English","createTime":"2023-05-29 15:43:54"}]},{"id":2067454986108950,"vttUrl":"https://cdn.100935.com/sub/gAAMeYcuIj.vtt","url":"https://cdn.100935.com/sub/laVRpUQ2_zh.srt","langString":"简体中文","langType":1,"fileName":"laVRpUQ2_zh.srt","vttFileName":"gAAMeYcuIj.vtt","lines":[{"id":2067454986108951,"words":"1米70...是1米69不够格传授快乐吗","position":1,"startString":"00:00:02,000","endString":"00:00:07,220","startMilli":2000,"endMilli":7220,"status":4,"statusString":"未知","langType":1,"langString":"简体中文","createTime":"2023-05-29 15:43:54"},{"id":2067454986108952,"words":"并不够","position":2,"startString":"00:00:11,320","endString":"00:00:12,660","startMilli":11320,"endMilli":12660,"status":4,"statusString":"未知","langType":1,"langString":"简体中文","createTime":"2023-05-29 15:43:54"},{"id":2067454986108953,"words":"因为今天我们来了足够多的人","position":3,"startString":"00:00:16,800","endString":"00:00:19,780","startMilli":16800,"endMilli":19780,"status":4,"statusString":"未知","langType":1,"langString":"简体中文","createTime":"2023-05-29 15:43:54"}]}]
/// words : [{"id":3107488299355964,"statusString":"正常显示","status":4,"wordsStr":"enough","chineseExplain":"n. 充足, 够, 很多\na. 充足的, 足够\nadv. 足够\ninterj. 够了","shortChineseExplain":"足够的；足够地","type":1,"typeString":"单词","pos":"r:70/d:30","phonetic":"i'nʌf","langType":2,"langString":"English","lemmaId":3107488299355964,"createTime":"2023-05-01 18:11:03","classCount":0}]
/// highlightWords : [{"word":"enough","subWords":["enough","enoughs"]}]
/// social : {"liked":false,"likeCount":0}
/// langType : 2
/// langString : "English"
/// createTime : "2023-05-29 15:43:54"
/// updateTime : "2023-05-29 15:43:54"
/// user : {"name":"卧蚕阿姨","smallAvatar":"https://cdn.100935.com/img/UwcpRanN.jpg?image_process=resize,fill,l_360","mediumAvatar":"https://cdn.100935.com/img/UwcpRanN.jpg?image_process=resize,fill,l_1080","avatar":"https://cdn.100935.com/img/UwcpRanN.jpg","id":1225244111299026}

class VideoEntry {
  VideoEntry({
      num? id, 
      dynamic text, 
      num? type, 
      String? typeString, 
      num? status, 
      String? statusString, 
      Video? video, 
      List<Subtitles>? subtitles, 
      List<Words>? words, 
      List<HighlightWords>? highlightWords, 
      Social? social, 
      num? langType, 
      String? langString, 
      String? createTime, 
      String? updateTime, 
      User? user,}){
    _id = id;
    _text = text;
    _type = type;
    _typeString = typeString;
    _status = status;
    _statusString = statusString;
    _video = video;
    _subtitles = subtitles;
    _words = words;
    _highlightWords = highlightWords;
    _social = social;
    _langType = langType;
    _langString = langString;
    _createTime = createTime;
    _updateTime = updateTime;
    _user = user;
}

  VideoEntry.fromJson(dynamic json) {
    _id = json['id'];
    _text = json['text'];
    _type = json['type'];
    _typeString = json['typeString'];
    _status = json['status'];
    _statusString = json['statusString'];
    _video = json['video'] != null ? Video.fromJson(json['video']) : null;
    if (json['subtitles'] != null) {
      _subtitles = [];
      json['subtitles'].forEach((v) {
        _subtitles?.add(Subtitles.fromJson(v));
      });
    }
    if (json['words'] != null) {
      _words = [];
      json['words'].forEach((v) {
        _words?.add(Words.fromJson(v));
      });
    }
    if (json['highlightWords'] != null) {
      _highlightWords = [];
      json['highlightWords'].forEach((v) {
        _highlightWords?.add(HighlightWords.fromJson(v));
      });
    }
    _social = json['social'] != null ? Social.fromJson(json['social']) : null;
    _langType = json['langType'];
    _langString = json['langString'];
    _createTime = json['createTime'];
    _updateTime = json['updateTime'];
    _user = json['user'] != null ? User.fromJson(json['user']) : null;
  }
  num? _id;
  dynamic _text;
  num? _type;
  String? _typeString;
  num? _status;
  String? _statusString;
  Video? _video;
  List<Subtitles>? _subtitles;
  List<Words>? _words;
  List<HighlightWords>? _highlightWords;
  Social? _social;
  num? _langType;
  String? _langString;
  String? _createTime;
  String? _updateTime;
  User? _user;
VideoEntry copyWith({  num? id,
  dynamic text,
  num? type,
  String? typeString,
  num? status,
  String? statusString,
  Video? video,
  List<Subtitles>? subtitles,
  List<Words>? words,
  List<HighlightWords>? highlightWords,
  Social? social,
  num? langType,
  String? langString,
  String? createTime,
  String? updateTime,
  User? user,
}) => VideoEntry(  id: id ?? _id,
  text: text ?? _text,
  type: type ?? _type,
  typeString: typeString ?? _typeString,
  status: status ?? _status,
  statusString: statusString ?? _statusString,
  video: video ?? _video,
  subtitles: subtitles ?? _subtitles,
  words: words ?? _words,
  highlightWords: highlightWords ?? _highlightWords,
  social: social ?? _social,
  langType: langType ?? _langType,
  langString: langString ?? _langString,
  createTime: createTime ?? _createTime,
  updateTime: updateTime ?? _updateTime,
  user: user ?? _user,
);
  num? get id => _id;
  dynamic get text => _text;
  num? get type => _type;
  String? get typeString => _typeString;
  num? get status => _status;
  String? get statusString => _statusString;
  Video? get video => _video;
  List<Subtitles>? get subtitles => _subtitles;
  List<Words>? get words => _words;
  List<HighlightWords>? get highlightWords => _highlightWords;
  Social? get social => _social;
  num? get langType => _langType;
  String? get langString => _langString;
  String? get createTime => _createTime;
  String? get updateTime => _updateTime;
  User? get user => _user;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['text'] = _text;
    map['type'] = _type;
    map['typeString'] = _typeString;
    map['status'] = _status;
    map['statusString'] = _statusString;
    if (_video != null) {
      map['video'] = _video?.toJson();
    }
    if (_subtitles != null) {
      map['subtitles'] = _subtitles?.map((v) => v.toJson()).toList();
    }
    if (_words != null) {
      map['words'] = _words?.map((v) => v.toJson()).toList();
    }
    if (_highlightWords != null) {
      map['highlightWords'] = _highlightWords?.map((v) => v.toJson()).toList();
    }
    if (_social != null) {
      map['social'] = _social?.toJson();
    }
    map['langType'] = _langType;
    map['langString'] = _langString;
    map['createTime'] = _createTime;
    map['updateTime'] = _updateTime;
    if (_user != null) {
      map['user'] = _user?.toJson();
    }
    return map;
  }

}

/// name : "卧蚕阿姨"
/// smallAvatar : "https://cdn.100935.com/img/UwcpRanN.jpg?image_process=resize,fill,l_360"
/// mediumAvatar : "https://cdn.100935.com/img/UwcpRanN.jpg?image_process=resize,fill,l_1080"
/// avatar : "https://cdn.100935.com/img/UwcpRanN.jpg"
/// id : 1225244111299026

class User {
  User({
      String? name, 
      String? smallAvatar, 
      String? mediumAvatar, 
      String? avatar, 
      num? id,}){
    _name = name;
    _smallAvatar = smallAvatar;
    _mediumAvatar = mediumAvatar;
    _avatar = avatar;
    _id = id;
}

  User.fromJson(dynamic json) {
    _name = json['name'];
    _smallAvatar = json['smallAvatar'];
    _mediumAvatar = json['mediumAvatar'];
    _avatar = json['avatar'];
    _id = json['id'];
  }
  String? _name;
  String? _smallAvatar;
  String? _mediumAvatar;
  String? _avatar;
  num? _id;
User copyWith({  String? name,
  String? smallAvatar,
  String? mediumAvatar,
  String? avatar,
  num? id,
}) => User(  name: name ?? _name,
  smallAvatar: smallAvatar ?? _smallAvatar,
  mediumAvatar: mediumAvatar ?? _mediumAvatar,
  avatar: avatar ?? _avatar,
  id: id ?? _id,
);
  String? get name => _name;
  String? get smallAvatar => _smallAvatar;
  String? get mediumAvatar => _mediumAvatar;
  String? get avatar => _avatar;
  num? get id => _id;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['name'] = _name;
    map['smallAvatar'] = _smallAvatar;
    map['mediumAvatar'] = _mediumAvatar;
    map['avatar'] = _avatar;
    map['id'] = _id;
    return map;
  }

}

/// liked : false
/// likeCount : 0

class Social {
  Social({
      bool? liked, 
      num? likeCount,}){
    _liked = liked;
    _likeCount = likeCount;
}

  Social.fromJson(dynamic json) {
    _liked = json['liked'];
    _likeCount = json['likeCount'];
  }
  bool? _liked;
  num? _likeCount;
Social copyWith({  bool? liked,
  num? likeCount,
}) => Social(  liked: liked ?? _liked,
  likeCount: likeCount ?? _likeCount,
);
  bool? get liked => _liked;
  num? get likeCount => _likeCount;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['liked'] = _liked;
    map['likeCount'] = _likeCount;
    return map;
  }

}

/// word : "enough"
/// subWords : ["enough","enoughs"]

class HighlightWords {
  HighlightWords({
      String? word, 
      List<String>? subWords,}){
    _word = word;
    _subWords = subWords;
}

  HighlightWords.fromJson(dynamic json) {
    _word = json['word'];
    _subWords = json['subWords'] != null ? json['subWords'].cast<String>() : [];
  }
  String? _word;
  List<String>? _subWords;
HighlightWords copyWith({  String? word,
  List<String>? subWords,
}) => HighlightWords(  word: word ?? _word,
  subWords: subWords ?? _subWords,
);
  String? get word => _word;
  List<String>? get subWords => _subWords;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['word'] = _word;
    map['subWords'] = _subWords;
    return map;
  }

}

/// id : 3107488299355964
/// statusString : "正常显示"
/// status : 4
/// wordsStr : "enough"
/// chineseExplain : "n. 充足, 够, 很多\na. 充足的, 足够\nadv. 足够\ninterj. 够了"
/// shortChineseExplain : "足够的；足够地"
/// type : 1
/// typeString : "单词"
/// pos : "r:70/d:30"
/// phonetic : "i'nʌf"
/// langType : 2
/// langString : "English"
/// lemmaId : 3107488299355964
/// createTime : "2023-05-01 18:11:03"
/// classCount : 0

class Words {
  Words({
      num? id, 
      String? statusString, 
      num? status, 
      String? wordsStr, 
      String? chineseExplain, 
      String? shortChineseExplain, 
      num? type, 
      String? typeString, 
      String? pos, 
      String? phonetic, 
      num? langType, 
      String? langString, 
      num? lemmaId, 
      String? createTime, 
      num? classCount,}){
    _id = id;
    _statusString = statusString;
    _status = status;
    _wordsStr = wordsStr;
    _chineseExplain = chineseExplain;
    _shortChineseExplain = shortChineseExplain;
    _type = type;
    _typeString = typeString;
    _pos = pos;
    _phonetic = phonetic;
    _langType = langType;
    _langString = langString;
    _lemmaId = lemmaId;
    _createTime = createTime;
    _classCount = classCount;
}

  Words.fromJson(dynamic json) {
    _id = json['id'];
    _statusString = json['statusString'];
    _status = json['status'];
    _wordsStr = json['wordsStr'];
    _chineseExplain = json['chineseExplain'];
    _shortChineseExplain = json['shortChineseExplain'];
    _type = json['type'];
    _typeString = json['typeString'];
    _pos = json['pos'];
    _phonetic = json['phonetic'];
    _langType = json['langType'];
    _langString = json['langString'];
    _lemmaId = json['lemmaId'];
    _createTime = json['createTime'];
    _classCount = json['classCount'];
  }
  num? _id;
  String? _statusString;
  num? _status;
  String? _wordsStr;
  String? _chineseExplain;
  String? _shortChineseExplain;
  num? _type;
  String? _typeString;
  String? _pos;
  String? _phonetic;
  num? _langType;
  String? _langString;
  num? _lemmaId;
  String? _createTime;
  num? _classCount;
Words copyWith({  num? id,
  String? statusString,
  num? status,
  String? wordsStr,
  String? chineseExplain,
  String? shortChineseExplain,
  num? type,
  String? typeString,
  String? pos,
  String? phonetic,
  num? langType,
  String? langString,
  num? lemmaId,
  String? createTime,
  num? classCount,
}) => Words(  id: id ?? _id,
  statusString: statusString ?? _statusString,
  status: status ?? _status,
  wordsStr: wordsStr ?? _wordsStr,
  chineseExplain: chineseExplain ?? _chineseExplain,
  shortChineseExplain: shortChineseExplain ?? _shortChineseExplain,
  type: type ?? _type,
  typeString: typeString ?? _typeString,
  pos: pos ?? _pos,
  phonetic: phonetic ?? _phonetic,
  langType: langType ?? _langType,
  langString: langString ?? _langString,
  lemmaId: lemmaId ?? _lemmaId,
  createTime: createTime ?? _createTime,
  classCount: classCount ?? _classCount,
);
  num? get id => _id;
  String? get statusString => _statusString;
  num? get status => _status;
  String? get wordsStr => _wordsStr;
  String? get chineseExplain => _chineseExplain;
  String? get shortChineseExplain => _shortChineseExplain;
  num? get type => _type;
  String? get typeString => _typeString;
  String? get pos => _pos;
  String? get phonetic => _phonetic;
  num? get langType => _langType;
  String? get langString => _langString;
  num? get lemmaId => _lemmaId;
  String? get createTime => _createTime;
  num? get classCount => _classCount;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['statusString'] = _statusString;
    map['status'] = _status;
    map['wordsStr'] = _wordsStr;
    map['chineseExplain'] = _chineseExplain;
    map['shortChineseExplain'] = _shortChineseExplain;
    map['type'] = _type;
    map['typeString'] = _typeString;
    map['pos'] = _pos;
    map['phonetic'] = _phonetic;
    map['langType'] = _langType;
    map['langString'] = _langString;
    map['lemmaId'] = _lemmaId;
    map['createTime'] = _createTime;
    map['classCount'] = _classCount;
    return map;
  }

}

/// id : 2067454986108949
/// vttUrl : "https://cdn.100935.com/sub/RpESEtzTYh.vtt"
/// url : "https://cdn.100935.com/sub/TjDyvWei_en.srt"
/// langString : "English"
/// langType : 2
/// fileName : "TjDyvWei_en.srt"
/// vttFileName : "RpESEtzTYh.vtt"
/// lines : [{"id":2067454986108954,"words":"Five seven, well ok five six and a half is not enough to teach happiness?","position":1,"startString":"00:00:02,000","endString":"00:00:07,220","startMilli":2000,"endMilli":7220,"status":4,"statusString":"未知","langType":2,"langString":"English","createTime":"2023-05-29 15:43:54"},{"id":2067454986108955,"words":"Just not enough.","position":2,"startString":"00:00:11,320","endString":"00:00:12,660","startMilli":11320,"endMilli":12660,"status":4,"statusString":"未知","langType":2,"langString":"English","createTime":"2023-05-29 15:43:54"},{"id":2067454986108956,"words":"because we have got enough people on the panel today","position":3,"startString":"00:00:16,800","endString":"00:00:19,780","startMilli":16800,"endMilli":19780,"status":4,"statusString":"未知","langType":2,"langString":"English","createTime":"2023-05-29 15:43:54"}]

class Subtitles {
  Subtitles({
      num? id, 
      String? vttUrl, 
      String? url, 
      String? langString, 
      num? langType, 
      String? fileName, 
      String? vttFileName, 
      List<Lines>? lines,}){
    _id = id;
    _vttUrl = vttUrl;
    _url = url;
    _langString = langString;
    _langType = langType;
    _fileName = fileName;
    _vttFileName = vttFileName;
    _lines = lines;
}

  Subtitles.fromJson(dynamic json) {
    _id = json['id'];
    _vttUrl = json['vttUrl'];
    _url = json['url'];
    _langString = json['langString'];
    _langType = json['langType'];
    _fileName = json['fileName'];
    _vttFileName = json['vttFileName'];
    if (json['lines'] != null) {
      _lines = [];
      json['lines'].forEach((v) {
        _lines?.add(Lines.fromJson(v));
      });
    }
  }
  num? _id;
  String? _vttUrl;
  String? _url;
  String? _langString;
  num? _langType;
  String? _fileName;
  String? _vttFileName;
  List<Lines>? _lines;
Subtitles copyWith({  num? id,
  String? vttUrl,
  String? url,
  String? langString,
  num? langType,
  String? fileName,
  String? vttFileName,
  List<Lines>? lines,
}) => Subtitles(  id: id ?? _id,
  vttUrl: vttUrl ?? _vttUrl,
  url: url ?? _url,
  langString: langString ?? _langString,
  langType: langType ?? _langType,
  fileName: fileName ?? _fileName,
  vttFileName: vttFileName ?? _vttFileName,
  lines: lines ?? _lines,
);
  num? get id => _id;
  String? get vttUrl => _vttUrl;
  String? get url => _url;
  String? get langString => _langString;
  num? get langType => _langType;
  String? get fileName => _fileName;
  String? get vttFileName => _vttFileName;
  List<Lines>? get lines => _lines;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['vttUrl'] = _vttUrl;
    map['url'] = _url;
    map['langString'] = _langString;
    map['langType'] = _langType;
    map['fileName'] = _fileName;
    map['vttFileName'] = _vttFileName;
    if (_lines != null) {
      map['lines'] = _lines?.map((v) => v.toJson()).toList();
    }
    return map;
  }

}

/// id : 2067454986108954
/// words : "Five seven, well ok five six and a half is not enough to teach happiness?"
/// position : 1
/// startString : "00:00:02,000"
/// endString : "00:00:07,220"
/// startMilli : 2000
/// endMilli : 7220
/// status : 4
/// statusString : "未知"
/// langType : 2
/// langString : "English"
/// createTime : "2023-05-29 15:43:54"

class Lines {
  Lines({
      num? id, 
      String? words, 
      num? position, 
      String? startString, 
      String? endString, 
      num? startMilli, 
      num? endMilli, 
      num? status, 
      String? statusString, 
      num? langType, 
      String? langString, 
      String? createTime,}){
    _id = id;
    _words = words;
    _position = position;
    _startString = startString;
    _endString = endString;
    _startMilli = startMilli;
    _endMilli = endMilli;
    _status = status;
    _statusString = statusString;
    _langType = langType;
    _langString = langString;
    _createTime = createTime;
}

  Lines.fromJson(dynamic json) {
    _id = json['id'];
    _words = json['words'];
    _position = json['position'];
    _startString = json['startString'];
    _endString = json['endString'];
    _startMilli = json['startMilli'];
    _endMilli = json['endMilli'];
    _status = json['status'];
    _statusString = json['statusString'];
    _langType = json['langType'];
    _langString = json['langString'];
    _createTime = json['createTime'];
  }
  num? _id;
  String? _words;
  num? _position;
  String? _startString;
  String? _endString;
  num? _startMilli;
  num? _endMilli;
  num? _status;
  String? _statusString;
  num? _langType;
  String? _langString;
  String? _createTime;
Lines copyWith({  num? id,
  String? words,
  num? position,
  String? startString,
  String? endString,
  num? startMilli,
  num? endMilli,
  num? status,
  String? statusString,
  num? langType,
  String? langString,
  String? createTime,
}) => Lines(  id: id ?? _id,
  words: words ?? _words,
  position: position ?? _position,
  startString: startString ?? _startString,
  endString: endString ?? _endString,
  startMilli: startMilli ?? _startMilli,
  endMilli: endMilli ?? _endMilli,
  status: status ?? _status,
  statusString: statusString ?? _statusString,
  langType: langType ?? _langType,
  langString: langString ?? _langString,
  createTime: createTime ?? _createTime,
);
  num? get id => _id;
  String? get words => _words;
  num? get position => _position;
  String? get startString => _startString;
  String? get endString => _endString;
  num? get startMilli => _startMilli;
  num? get endMilli => _endMilli;
  num? get status => _status;
  String? get statusString => _statusString;
  num? get langType => _langType;
  String? get langString => _langString;
  String? get createTime => _createTime;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['words'] = _words;
    map['position'] = _position;
    map['startString'] = _startString;
    map['endString'] = _endString;
    map['startMilli'] = _startMilli;
    map['endMilli'] = _endMilli;
    map['status'] = _status;
    map['statusString'] = _statusString;
    map['langType'] = _langType;
    map['langString'] = _langString;
    map['createTime'] = _createTime;
    return map;
  }

}

/// id : 2067454986108948
/// url : "https://cdn.100935.com/video/oztXqE.mp4"
/// fileName : "oztXqE.mp4"
/// width : 1440
/// height : 1080
/// langString : "English"
/// langType : 2

class Video {
  Video({
      num? id, 
      String? url, 
      String? fileName, 
      num? width, 
      num? height, 
      String? langString, 
      num? langType,}){
    _id = id;
    _url = url;
    _fileName = fileName;
    _width = width;
    _height = height;
    _langString = langString;
    _langType = langType;
}

  Video.fromJson(dynamic json) {
    _id = json['id'];
    _url = json['url'];
    _fileName = json['fileName'];
    _width = json['width'];
    _height = json['height'];
    _langString = json['langString'];
    _langType = json['langType'];
  }
  num? _id;
  String? _url;
  String? _fileName;
  num? _width;
  num? _height;
  String? _langString;
  num? _langType;
Video copyWith({  num? id,
  String? url,
  String? fileName,
  num? width,
  num? height,
  String? langString,
  num? langType,
}) => Video(  id: id ?? _id,
  url: url ?? _url,
  fileName: fileName ?? _fileName,
  width: width ?? _width,
  height: height ?? _height,
  langString: langString ?? _langString,
  langType: langType ?? _langType,
);
  num? get id => _id;
  String? get url => _url;
  String? get fileName => _fileName;
  num? get width => _width;
  num? get height => _height;
  String? get langString => _langString;
  num? get langType => _langType;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['url'] = _url;
    map['fileName'] = _fileName;
    map['width'] = _width;
    map['height'] = _height;
    map['langString'] = _langString;
    map['langType'] = _langType;
    return map;
  }

}