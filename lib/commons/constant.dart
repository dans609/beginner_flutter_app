class Constant {
  Constant._();

  static const posterHeroAnim = 'PosterAnimation';
  static const overviewHeroAnim = 'OverviewAnimation';

  static const poster = 'poster';
  static const backdrop = 'backdrop';
  
  static const drama = 'Drama';
  static const crime = 'Crime';
  static const talk = 'Talk';
  static const adventure = 'Adventure';
  static const family = 'Family';
  static const animation = 'Animation';
  static const comedy = 'Comedy';
  static const action = 'Action';
  static const reality = 'Reality';
  static const mystery = 'Mystery';
  static const horror = 'Horror';
  static const actionAdventure = 'Action & Adventure';
  static const fantasy = 'Fantasy';
  static const scifi = 'Science Fiction';
  static const thriller = 'Thriller';
  static const music = 'Music';
  static const scifiFantasy = 'Sci-Fi & Fantasy';
  static const warPolitics = 'War & Politics';
  static const western = 'Western';

  static const r = 'R';
  static const nr = 'NR';
  static const tv14 = 'TV-14';
  static const tvma = 'TV-MA';
  static const tvpg = 'TV-PG';
  static const pg = 'PG';
  static const pg13 ='PG-13';

  static moviesImagePath(String folder, String imageType, {String ext = '.jpg'}) =>
    imageType == poster ? 'images/movies/$folder/poster$ext' :
    imageType == backdrop ? 'images/movies/$folder/backdrop$ext' : null;
  
  static tvImagePath(String folder, String imageType, {String ext = '.jpg'}) =>
    imageType == poster ? 'images/tv/$folder/poster$ext' :
    imageType == backdrop ? 'images/tv/$folder/backdrop$ext' : null;
}
