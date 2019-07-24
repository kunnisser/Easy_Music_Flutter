import './url.dart';
import './request.dart';

Map api = {
  'toplist': 'toplist',
  'topDetail': 'top/list',
  'lyric': 'lyric',
  'banner': 'banner',
  'hotPlaylist': 'top/playlist',
  'recommendList': 'personalized',
  'hotSearch': 'search/hot',
  'search': 'search',
  'playlistDetail': 'playlist/detail',
  'songDetail': 'song/detail',
};

String createFetchUrl (Map<String, String> params) {
  if (params == null) {
    return '';
  }
  String paramsString = '?';
  params.forEach((String key, String value) {
    if (paramsString != '?') {
      paramsString += '&';
    }
    paramsString += '${key}=${value}';
  });
  return paramsString;
}

dynamic getData (String type, Map<String, String> params) {
  return fetchData(localBaseUrl + type + createFetchUrl(params));
}