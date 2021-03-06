// ignore_for_file: file_names
import '../commons/constant.dart';
import '../commons/styles.dart';
import 'Author.dart';
import 'Film.dart';
import 'Role.dart';

class TvShows implements Film {
  @override
  final String type = 'tv shows';

  @override
  final String title,
    overview,
    dateRelease,
    duration,
    posterAsset,
    backdropAsset;

  @override
  final String? certificate;

  @override
  final int userScore;

  @override
  final Map<Author, Role>? authors;

  @override
  final List<String>? genres, keywords, postersNetwork;

  TvShows({
    required this.title,
    required this.overview,
    required this.dateRelease,
    required this.certificate,
    required this.duration,
    required this.posterAsset,
    required this.backdropAsset,
    required this.userScore,
    required this.authors,
    required this.genres,
    required this.keywords,
    required this.postersNetwork,
  });
}

var tvShowsList =  <TvShows>[
  TvShows(
    title: 'The Simpsons',
    overview: 'Set in Springfield, the average American town, the show focuses on the antics and everyday adventures of the Simpson family; Homer, Marge, Bart, Lisa and Maggie, as well as a virtual cast of thousands. Since the beginning, the series has been a pop culture icon, attracting hundreds of celebrities to guest star. The show has also made name for itself in its fearless satirical take on politics, media and American life in general.',
    dateRelease: 'Dec 17, 1989',
    certificate: Constant.tvpg,
    duration: '22m',
    posterAsset: Constant.tvImagePath('the_simpsons', Constant.poster),
    backdropAsset: Constant.tvImagePath('the_simpsons', Constant.backdrop),
    userScore: Integer.score75 + Integer.shortRuntime,
    authors: {
      Author(authorName: 'Matt Groening'): Role(roleNames: ['Creator']),
    },
    genres: [ Constant.family, Constant.animation, Constant.comedy ],
    keywords: [ 'cartoon', 'satire', 'parody', 'middle class' ],
    postersNetwork: [
      'https://www.themoviedb.org/t/p/w220_and_h330_face/k5UALlcA0EnviaCUn2wMjOWYiOO.jpg',
      'https://www.themoviedb.org/t/p/w220_and_h330_face/qcr9bBY6MVeLzriKCmJOv1562uY.jpg',
      'https://www.themoviedb.org/t/p/w220_and_h330_face/2IWouZK4gkgHhJa3oyYuSWfSqbG.jpg',
      'https://www.themoviedb.org/t/p/w220_and_h330_face/pdLiKewTYrCfs4gvC3nKPZyvzxk.jpg',
    ],
  ),
  TvShows(
    title: 'The Flash',
    overview: 'After a particle accelerator causes a freak storm, CSI Investigator Barry Allen is struck by lightning and falls into a coma. Months later he awakens with the power of super speed, granting him the ability to move through Central City like an unseen guardian angel. Though initially excited by his newfound powers, Barry is shocked to discover he is not the only "meta-human" who was created in the wake of the accelerator explosion -- and not everyone is using their new powers for good. Barry partners with S.T.A.R. Labs and dedicates his life to protect the innocent. For now, only a few close friends and associates know that Barry is literally the fastest man alive, but it won\'t be long before the world learns what Barry Allen has become...The Flash',
    dateRelease: 'Oct 07, 2014',
    certificate: Constant.tv14,
    duration: '44m',
    posterAsset: Constant.tvImagePath('the_flash', Constant.poster),
    backdropAsset: Constant.tvImagePath('the_flash', Constant.backdrop),
    userScore: Integer.score75 + Integer.shortRuntime,
    authors: {
      Author(authorName: 'Greg Berlanti'): Role(roleNames: ['Creator']),
      Author(authorName: 'Geoff Johns'): Role(roleNames: ['Creator']),
      Author(authorName: 'Andrew Kreisberg'): Role(roleNames: ['Creator']),
    },
    genres: [ Constant.drama, Constant.scifiFantasy ],
    keywords: [ 'superhero', 'speed', 'based on comic', 'super power' ],
    postersNetwork: [
      'https://www.themoviedb.org/t/p/w220_and_h330_face/wHa6KOJAoNTFLFtp7wguUJKSnju.jpg',
      'https://www.themoviedb.org/t/p/w220_and_h330_face/rNy8dBsoJ4jVtIBzJbK7HddZsSc.jpg',
      'https://www.themoviedb.org/t/p/w220_and_h330_face/q6XgTULESR0Aix6JHgCtUTQjNus.jpg',
      'https://www.themoviedb.org/t/p/w220_and_h330_face/4YaerJEQtWrAMPwjDZArSxhL3fC.jpg',
      'https://www.themoviedb.org/t/p/w220_and_h330_face/qs7zl4XxPqfczYpQHTeHwI1WoGv.jpg',
    ],
  ),
  TvShows(
    title: 'Halo',
    overview: 'Depicting an epic 26th-century conflict between humanity and an alien threat known as the Covenant, the series weaves deeply drawn personal stories with action, adventure and a richly imagined vision of the future.',
    dateRelease: 'Mar 24, 2022',
    certificate: Constant.tv14,
    duration: '59m',
    posterAsset: Constant.tvImagePath('halo', Constant.poster),
    backdropAsset: Constant.tvImagePath('halo', Constant.backdrop),
    userScore: Integer.score85 + Integer.nybble,
    authors: {
      Author(authorName: 'Kyle Killen'): Role(roleNames: ['Creator']),
      Author(authorName: 'Steven Kane'): Role(roleNames: ['Creator']),
    },
    genres: [ Constant.actionAdventure, Constant.scifiFantasy ],
    keywords: [ 'space travel', 'alien', 'future war', 'distant future', 'based on', 'video game' ],
    postersNetwork: [
      'https://www.themoviedb.org/t/p/w220_and_h330_face/kZ4WEkyWG0XJL71PIEpYdbDHOuz.jpg',
      'https://www.themoviedb.org/t/p/w220_and_h330_face/oS3Fzf3eXSeK9L6DZYypLfa0fho.jpg',
      'https://www.themoviedb.org/t/p/w220_and_h330_face/7dZjfPukIet2MAobABMo6TEC0ru.jpg',
    ],
  ),
  TvShows(
    title: 'The Walking Dead',
    overview: 'Sheriff\'s deputy Rick Grimes awakens from a coma to find a post-apocalyptic world dominated by flesh-eating zombies. He sets out to find his family and encounters many other survivors along the way.',
    dateRelease: 'Oct 31, 2010',
    certificate: Constant.tvma,
    duration: '42m',
    posterAsset: Constant.tvImagePath('walking_dead', Constant.poster),
    backdropAsset: Constant.tvImagePath('walking_dead', Constant.backdrop),
    userScore: Integer.score85 - Integer.nybble,
    authors: {
      Author(authorName: 'Frank Darabont'): Role(roleNames: ['Creator']),
    },
    genres: [ Constant.actionAdventure, Constant.drama, Constant.scifiFantasy ],
    keywords: [ 'gore', 'undead', 'horror', 'survival', 'zombie', 'based on', 'comic'],
    postersNetwork: [
      'https://www.themoviedb.org/t/p/w220_and_h330_face/rqeYMLryjcawh2JeRpCVUDXYM5b.jpg',
      'https://www.themoviedb.org/t/p/w220_and_h330_face/w21lgYIi9GeUH5dO8l3B9ARZbCB.jpg',
      'https://www.themoviedb.org/t/p/w220_and_h330_face/n7PVu0hSz2sAsVekpOIoCnkWlbn.jpg',
      'https://www.themoviedb.org/t/p/w220_and_h330_face/8pHREHLqggga64lX3xH1i608EIe.jpg',
      'https://www.themoviedb.org/t/p/w220_and_h330_face/reKs8y4mPwPkZG99ZpbKRhBPKsX.jpg',
      'https://www.themoviedb.org/t/p/w220_and_h330_face/9PlNeskV8VZklPEyytiTF3JSt4S.jpg',
      'https://www.themoviedb.org/t/p/w220_and_h330_face/qZSUJmUWdkdND1DpQ4bGCraqDxy.jpg',
      'https://www.themoviedb.org/t/p/w220_and_h330_face/4Uflsbcx5TzdCWiUiIeu0kPFzuH.jpg',
      'https://www.themoviedb.org/t/p/w220_and_h330_face/bjU4tLlyp8W4yTB0Hqn8J1IDUnD.jpg',
    ],
  ),
  TvShows(
    title: 'Lucifer',
    overview: 'Bored and unhappy as the Lord of Hell, Lucifer Morningstar abandoned his throne and retired to Los Angeles, where he has teamed up with LAPD detective Chloe Decker to take down criminals. But the longer he\'s away from the underworld, the greater the threat that the worst of humanity could escape.',
    dateRelease: 'Jan 25, 2016',
    certificate: Constant.tv14,
    duration: '45m',
    posterAsset: Constant.tvImagePath('lucifer', Constant.poster),
    backdropAsset: Constant.tvImagePath('lucifer', Constant.backdrop),
    userScore: Integer.score85,
    authors: {
      Author(authorName: 'Tom Kapinos'): Role(roleNames: ['Creator']),
    },
    genres: [ Constant.crime, Constant.scifiFantasy ],
    keywords: [ 'devil', 'lapd', 'los angeles', 'california', 'based on comic'],
    postersNetwork: [
      'https://www.themoviedb.org/t/p/w220_and_h330_face/4EYPN5mVIhKLfxGruy7Dy41dTVn.jpg',
      'https://www.themoviedb.org/t/p/w220_and_h330_face/vkGnVBSNpayJ1oCfyVaMvhrim95.jpg',
      'https://www.themoviedb.org/t/p/w220_and_h330_face/1sBx2Ew4WFsa1YY32vlHt079O03.jpg',
      'https://www.themoviedb.org/t/p/w220_and_h330_face/s6oLPnsa2OTmX7BtCv8YVIRxumD.jpg',
      'https://www.themoviedb.org/t/p/w220_and_h330_face/58RBABIaWJLMxdYw8ToImTJsFaL.jpg',
      'https://www.themoviedb.org/t/p/w220_and_h330_face/ofDAFWepqnSM37NNPa1I0fTnpEj.jpg',
      'https://www.themoviedb.org/t/p/w220_and_h330_face/tAd6J2RheN4R3kR123BNgTU2kn9.jpg',
      'https://www.themoviedb.org/t/p/w220_and_h330_face/p4Q7O5EQoFHY8nFGedxCeVpuW4n.jpg',
    ],
  ),
  TvShows(
    title: 'Game of Thrones',
    overview: 'Seven noble families fight for control of the mythical land of Westeros. Friction between the houses leads to full-scale war. All while a very ancient evil awakens in the farthest north. Amidst the war, a neglected military order of misfits, the Night\'s Watch, is all that stands between the realms of men and icy horrors beyond.',
    dateRelease: 'Apr 17, 2011',
    certificate: Constant.tvma,
    duration: '1h',
    posterAsset: Constant.tvImagePath('got', Constant.poster),
    backdropAsset: Constant.tvImagePath('got', Constant.backdrop),
    userScore: 84,
    authors: {
      Author(authorName: 'David Benioff'): Role(roleNames: ['Creator']),
      Author(authorName: 'D. B. Weiss'): Role(roleNames: ['Creator']),
    },
    genres: [ Constant.scifiFantasy, Constant.drama, Constant.actionAdventure ],
    keywords: [ 'kingdom', 'dragon', 'king', 'intrigue', 'fantasy world', 'based on', 'novel', 'book'],
    postersNetwork: [
      'https://www.themoviedb.org/t/p/w220_and_h330_face/44rw2cOQrgUthZMhp3eibpXVy9p.jpg',
      'https://www.themoviedb.org/t/p/w220_and_h330_face/gKepMfnseLPwbZ0U9E1LmMW2x4V.jpg',
      'https://www.themoviedb.org/t/p/w220_and_h330_face/bk7SJsNtVP97faavetnurgXdrOF.jpg',
      'https://www.themoviedb.org/t/p/w220_and_h330_face/fw9hNiJO0U5MUg2XGyCOlTS3jdS.jpg',
      'https://www.themoviedb.org/t/p/w220_and_h330_face/gwPSoYUHAKmdyVywgLpKKA4BjRr.jpg',
      'https://www.themoviedb.org/t/p/w220_and_h330_face/uVOL1L3a57BtWQDVsIeRRyiu6TF.jpg',
      'https://www.themoviedb.org/t/p/w220_and_h330_face/2AmrHvmq0kzNpYeXFSgX5QT4nDi.jpg',
    ],
  ),
  TvShows(
    title: 'S.W.A.T',
    overview: 'A locally born and bred S.W.A.T. lieutenant is torn between loyalty to the streets and duty to his fellow officers when he\'s tasked to run a highly-trained unit that\'s the last stop for solving crimes in Los Angeles.',
    dateRelease: 'Nov 02, 2017',
    certificate: Constant.tv14,
    duration: '42m',
    posterAsset: Constant.tvImagePath('swat', Constant.poster),
    backdropAsset: Constant.tvImagePath('swat', Constant.backdrop),
    userScore: Integer.score85 - Integer.nybble,
    authors: {
      Author(authorName: 'Aaron Rahsaan Thomas'): Role(roleNames: ['Creator']),
    },
    genres: [ Constant.actionAdventure, Constant.crime, Constant.drama ],
    keywords: [ 'los angeles', 'california', 'swat team' ],
    postersNetwork: [
      'https://www.themoviedb.org/t/p/w220_and_h330_face/7Bttz4hEspKlpU0Me57dkHNR3nf.jpg',
      'https://www.themoviedb.org/t/p/w220_and_h330_face/ttzrYMdsKWR8PTRLw7uo4noqaOJ.jpg',
      'https://www.themoviedb.org/t/p/w220_and_h330_face/qadeDh2bczGQ9l1sE59ZGzeWsPE.jpg',
      'https://www.themoviedb.org/t/p/w220_and_h330_face/am7NOjx56BpJOh1yFy6P70WmuTb.jpg',
      'https://www.themoviedb.org/t/p/w220_and_h330_face/dM1WYFrRtnkOZR1oVtCpBhscoPu.jpg',
    ],
  ),
  TvShows(
    title: 'Legacies',
    overview: 'In a place where young witches, vampires, and werewolves are nurtured to be their best selves in spite of their worst impulses, Klaus Mikaelson???s daughter, 17-year-old Hope Mikaelson, Alaric Saltzman???s twins, Lizzie and Josie Saltzman, among others, come of age into heroes and villains at The Salvatore School for the Young and Gifted.',
    dateRelease: 'Oct 25, 2018',
    certificate: Constant.tv14,
    duration: '43m',
    posterAsset: Constant.tvImagePath('legacies', Constant.poster),
    backdropAsset: Constant.tvImagePath('legacies', Constant.backdrop),
    userScore: Integer.score85,
    authors: {
      Author(authorName: 'Julie Plec'): Role(roleNames: ['Creator']),
    },
    genres: [ Constant.scifiFantasy, Constant.drama ],
    keywords: [ 'witch', 'werewolf', 'spin off', 'supernatural', 'vampire' ],
    postersNetwork: [
      'https://www.themoviedb.org/t/p/w220_and_h330_face/qTZIgXrBKURBK1KrsT7fe3qwtl9.jpg',
      'https://www.themoviedb.org/t/p/w220_and_h330_face/rb64COqdpRRfWOc6gWTfC7WxzXP.jpg',
      'https://www.themoviedb.org/t/p/w220_and_h330_face/1Uhoi348GEg4DObGrVLNUqtKtdu.jpg',
      'https://www.themoviedb.org/t/p/w220_and_h330_face/vySwulMNQMsrv967d9pfR1BVDYE.jpg',
      'https://www.themoviedb.org/t/p/w220_and_h330_face/avzvKEK3xPfUiQExQXcUKmpuY7o.jpg',
      'https://www.themoviedb.org/t/p/w220_and_h330_face/vZQY89t6ykAd1RXPTOkp4nyamgx.jpg',
      'https://www.themoviedb.org/t/p/w220_and_h330_face/fPYnXBr87CE1dpZ5mUB7WwlCvKb.jpg',
    ],
  ),
  TvShows(
    title: 'Rick and Morty',
    overview: 'Rick is a mentally-unbalanced but scientifically gifted old man who has recently reconnected with his family. He spends most of his time involving his young grandson Morty in dangerous, outlandish adventures throughout space and alternate universes. Compounded with Morty\'s already unstable family life, these events cause Morty much distress at home and school.',
    dateRelease: 'Dec 02, 2013',
    certificate: Constant.tvma,
    duration: '22m',
    posterAsset: Constant.tvImagePath('ricknmorty', Constant.poster),
    backdropAsset: Constant.tvImagePath('ricknmorty', Constant.backdrop),
    userScore: Integer.score85 + Integer.shortRuntime,
    authors: {
      Author(authorName: 'Dan Harmon'): Role(roleNames: ['Creator']),
      Author(authorName: 'Justin Roiland'): Role(roleNames: ['Creator']),
    },
    genres: [ Constant.animation, Constant.comedy, Constant.scifiFantasy, Constant.actionAdventure ],
    keywords: [ 'time travel', 'absurd humor', 'spaceship', 'mad scientist', 'alcoholism', 'alien', 'father figure', 'spaceship', 'adult animation' ],
    postersNetwork: [
      'https://www.themoviedb.org/t/p/w220_and_h330_face/8kOWDBK6XlPUzckuHDo3wwVRFwt.jpg',
      'https://www.themoviedb.org/t/p/w220_and_h330_face/58ugmnhnrnWC8tLNvifxlQVFB7K.jpg',
      'https://www.themoviedb.org/t/p/w220_and_h330_face/t4g6tZJLUksGYpjKeWycEY9Laok.jpg',
      'https://www.themoviedb.org/t/p/w220_and_h330_face/24EsOf9tftcBgK3Eb4IFsODJNOk.jpg',
      'https://www.themoviedb.org/t/p/w220_and_h330_face/tndWEIi4lg9bKCgGMRkGO9RlfYX.jpg',
      'https://www.themoviedb.org/t/p/w220_and_h330_face/tXVu9so9voTNAi3ZVfsf8SkN3s.jpg',
      'https://www.themoviedb.org/t/p/w220_and_h330_face/sOzgi9Fe5AbG2nTfRX5L8RIqndk.jpg',
    ],
  ),
  TvShows(
    title: 'Euphoria',
    overview: 'A group of high school students navigate love and friendships in a world of drugs, sex, trauma, and social media.',
    dateRelease: 'Jun 16, 2019',
    certificate: Constant.tvma,
    duration: '1h',
    posterAsset: Constant.tvImagePath('euphoria', Constant.poster),
    backdropAsset: Constant.tvImagePath('euphoria', Constant.backdrop),
    userScore: Integer.score85 - Integer.high,
    authors: {
      Author(authorName: 'Sam Levinson'): Role(roleNames: ['Creator']),
    },
    genres: [ Constant.drama ],
    keywords: [ 'high school', 'drug abuse', 'sexuality', 'addiction', 'drugs', 'mental illness', 'coming of age' ],
    postersNetwork: [
      'https://www.themoviedb.org/t/p/w220_and_h330_face/3Q0hd3heuWwDWpwcDkhQOA6TYWI.jpg',
      'https://www.themoviedb.org/t/p/w220_and_h330_face/5mi3aRl16yKmfpQJMzvqN5TXkdA.jpg',
      'https://www.themoviedb.org/t/p/w220_and_h330_face/5o6f5tAj0yJaVrx6fdmwNDZiojA.jpg',
      'https://www.themoviedb.org/t/p/w220_and_h330_face/4gXDoJS65yQ5WEj6H0mjmxuEV5f.jpg',
      'https://www.themoviedb.org/t/p/w220_and_h330_face/7C4lY5mtSiCQ6SkS2phvaLFmBtl.jpg',
    ],
  ),
  TvShows(
    title: 'People Puzzler',
    overview: 'Three lucky contestants put their pop culture knowledge to the test to complete iconic, People Puzzler crosswords. The player with the most points at the end of three rounds wins the game and goes on to play the "Fast Puzzle Round" for an enormous cash prize.',
    dateRelease: 'Jan 18, 2021',
    certificate: null,
    duration: '23m',
    posterAsset: Constant.tvImagePath('people_puzzler', Constant.poster),
    backdropAsset: Constant.tvImagePath('people_puzzler', Constant.backdrop),
    userScore: Integer.score55,
    authors: null,
    genres: [ Constant.reality ],
    keywords: [ 'reality' ],
    postersNetwork: null,
  ),
  TvShows(
    title: 'The Tonight Show Starring Jimmy Fallon',
    overview: 'After Jay Leno\'s second retirement from the program, Jimmy Fallon stepped in as his permanent replacement. After 42 years in Los Angeles the program was brought back to New York.',
    dateRelease: 'Feb 17, 2014',
    certificate: Constant.tv14,
    duration: '45m',
    posterAsset: Constant.tvImagePath('tonight_show', Constant.poster),
    backdropAsset: Constant.tvImagePath('tonight_show', Constant.backdrop),
    userScore: Integer.score65 - Integer.nybble,
    authors: {
      Author(authorName: 'Jimmy Fallon'): Role(roleNames: ['Creator']), 
    },
    genres: [ Constant.comedy, Constant.talk ],
    keywords: [ 'games', 'celebrity', 'audience', 'late-night show', 'new york'],
    postersNetwork: [
      'https://www.themoviedb.org/t/p/w220_and_h330_face/mFbKTO5OyxLxpWBfsB6wkiQFVuu.jpg',
    ],
  ),
  TvShows(
    title: 'Reacher',
    overview: 'Jack Reacher was arrested for murder and now the police need his help. Based on the books by Lee Child.',
    dateRelease: 'Feb 03, 2022',
    certificate: Constant.tvma,
    duration: '49m',
    posterAsset: Constant.tvImagePath('reacher', Constant.poster),
    backdropAsset: Constant.tvImagePath('reacher', Constant.backdrop),
    userScore: Integer.score85 - Integer.bitRadix,
    authors: {
      Author(authorName: 'Nick Santora'): Role(roleNames: ['Creator']),        
    },
    genres: [ Constant.actionAdventure, Constant.mystery, Constant.crime, Constant.drama ],
    keywords: [ 'assassin', 'police', 'gun', 'conspiracy', 'agent', 'reboot', 'based on novel' ],
    postersNetwork: [
      'https://www.themoviedb.org/t/p/w220_and_h330_face/tghUHfiHgvDs0vQh4th2qvUtWMe.jpg',
      'https://www.themoviedb.org/t/p/w220_and_h330_face/86fdqfWax1bvERfHne8AaQKfCJk.jpg',
      'https://www.themoviedb.org/t/p/w220_and_h330_face/86fdqfWax1bvERfHne8AaQKfCJk.jpg',
    ],
  ),
  TvShows(
    title: 'Riverdale',
    overview: 'Set in the present, the series offers a bold, subversive take on Archie, Betty, Veronica and their friends, exploring the surreality of small-town life, the darkness and weirdness bubbling beneath Riverdale???s wholesome facade.',
    dateRelease: 'Jan 26, 2017',
    certificate: Constant.tv14,
    duration: '45m',
    posterAsset: Constant.tvImagePath('riverdale', Constant.poster),
    backdropAsset: Constant.tvImagePath('riverdale', Constant.backdrop),
    userScore: Integer.score85,
    authors: {
      Author(authorName: 'Roberto Aguirre-Sacasa'): Role(roleNames: ['Creator']),
    },
    genres: [ Constant.crime, Constant.drama, Constant.mystery ],
    keywords: [ 'high school', 'grudge', 'love triangle', 'killing', 'small town' ],
    postersNetwork: [
      'https://www.themoviedb.org/t/p/w220_and_h330_face/6zBWSuYW3Ps1nTfeMS8siS4KUaA.jpg',
      'https://www.themoviedb.org/t/p/w220_and_h330_face/c1ROxK1Afo6YuGi3j6ClXmrNcHi.jpg',
      'https://www.themoviedb.org/t/p/w220_and_h330_face/wRbjVBdDo5qHAEOVYoMWpM58FSA.jpg',
      'https://www.themoviedb.org/t/p/w220_and_h330_face/pHcNHYPg0c2vg7qay6wjJoApUgS.jpg',
      'https://www.themoviedb.org/t/p/w220_and_h330_face/o6qT33idpxWV51FsIjAyGDyp5Ou.jpg',
      'https://www.themoviedb.org/t/p/w220_and_h330_face/xBaeUYKNJfX8VhIFvvgPpFSYxBZ.jpg',
      'https://www.themoviedb.org/t/p/w220_and_h330_face/tPD5DJyGgvJQ9zv2GeEzw27gM6.jpg',
      'https://www.themoviedb.org/t/p/w220_and_h330_face/nYeUfJ0AAuTcdGqiQThjxO7ikEF.jpg',
      'https://www.themoviedb.org/t/p/w220_and_h330_face/nDUquOWjtEsveHzbgIofjUin2N.jpg',
    ],
  ),
  TvShows(
    title: 'House',
    overview: 'Dr. Gregory House, a drug-addicted, unconventional, misanthropic medical genius, leads a team of diagnosticians at the fictional Princeton???Plainsboro Teaching Hospital in New Jersey.',
    dateRelease: 'Nov 16, 2004',
    certificate: Constant.tv14,
    duration: '44m',
    posterAsset: Constant.tvImagePath('house', Constant.poster),
    backdropAsset: Constant.tvImagePath('house', Constant.backdrop),
    userScore: Integer.score85 + Integer.high,
    authors: {
      Author(authorName: 'David Shore'): Role(roleNames: ['Creator']),
    },
    genres: [ Constant.drama, Constant.comedy, Constant.mystery ],
    keywords: [ 'drug addiction', 'medicine', 'misanthropy', 'hospital', 'doctor', 'patient', 'medical drama' ],
    postersNetwork: [
      'https://www.themoviedb.org/t/p/w220_and_h330_face/3ogqz0lRlsuAwSHoilPtj53QNw6.jpg',
      'https://www.themoviedb.org/t/p/w220_and_h330_face/5rIQ3pTjWdZjNUJSJxn1T8MIvoG.jpg',
      'https://www.themoviedb.org/t/p/w220_and_h330_face/4qpDMGrb1iY6Mcf1WEPdfGehNe7.jpg',
      'https://www.themoviedb.org/t/p/w220_and_h330_face/f0FYfwVFN0mAYuAke6e0TMn1SnT.jpg',
      'https://www.themoviedb.org/t/p/w220_and_h330_face/p7s1XTFzWM2q5mA5hDrYM71xXBO.jpg',
      'https://www.themoviedb.org/t/p/w220_and_h330_face/2J2xBzwxccDbDkwDyGo1YJuHTc9.jpg',
      'https://www.themoviedb.org/t/p/w220_and_h330_face/oEPptIbie7uexpaPR4qwAEhecGF.jpg',
      'https://www.themoviedb.org/t/p/w220_and_h330_face/eSXnWZGBVN5oi1WHVUQtpTBMz6y.jpg',
    ],
  ),
  TvShows(
    title: 'Stranger Things',
    overview: 'When a young boy vanishes, a small town uncovers a mystery involving secret experiments, terrifying supernatural forces, and one strange little girl.',
    dateRelease: 'Jul 15, 2016',
    certificate: Constant.tv14,
    duration: '50m',
    posterAsset: Constant.tvImagePath('stranger_things', Constant.poster),
    backdropAsset: Constant.tvImagePath('stranger_things', Constant.backdrop),
    userScore: Integer.score85 + Integer.high,
    authors: {
      Author(authorName: 'Matt Duffer'): Role(roleNames: ['Creator']),
      Author(authorName: 'Ross Duffer'): Role(roleNames: ['Creator']),
    },
    genres: [ Constant.drama, Constant.mystery, Constant.scifiFantasy ],
    keywords: [ 'friendship', 'small town', 'sheriff', 'monster', 'experiment', 'supernatural', 'forest', 'telekinesis', 'horror', '1980s', 'government conspiracy', 'psychological thriller' ],
    postersNetwork: [
      'https://www.themoviedb.org/t/p/w220_and_h330_face/9URpkzaMMLK5bdJ1a5HBafzYEWj.jpg',
      'https://www.themoviedb.org/t/p/w220_and_h330_face/q6Iy4FRCpOX3J5o0WfmtcypwLvt.jpg',
      'https://www.themoviedb.org/t/p/w220_and_h330_face/lXS60geme1LlEob5Wgvj3KilClA.jpg',
      'https://www.themoviedb.org/t/p/w220_and_h330_face/vNJ95BMCzIBJZhW0IEoxzOoW53P.jpg',
      'https://www.themoviedb.org/t/p/w220_and_h330_face/49WJfeN0moxb9IPfGn8AIqMGskD.jpg',
      'https://www.themoviedb.org/t/p/w220_and_h330_face/kpZHlOFAQitAj8f9gGhKBaIYWfJ.jpg',
      'https://www.themoviedb.org/t/p/w220_and_h330_face/eOdiK8l7tTOIHLBywUnZBEHVhTr.jpg',
      'https://www.themoviedb.org/t/p/w220_and_h330_face/2Ce4oPvzq2hTP2ZCS5eypPIVgR8.jpg',
      'https://www.themoviedb.org/t/p/w220_and_h330_face/3ihOfXDGsuG6l1QqYJcVgBJ3Vlr.jpg',
    ],
  ),
  TvShows(
    title: 'Grimm',
    overview: 'After Portland homicide detective Nick Burkhardt discovers he\'s descended from an elite line of criminal profilers known as "Grimms," he increasingly finds his responsibilities as a detective at odds with his new responsibilities as a Grimm.',
    dateRelease: 'Oct 28, 2011',
    certificate: Constant.tv14,
    duration: '45m',
    posterAsset: Constant.tvImagePath('grimm', Constant.poster),
    backdropAsset: Constant.tvImagePath('grimm', Constant.backdrop),
    userScore: Integer.score85 - Integer.shortRuntime,
    authors: {
      Author(authorName: 'Jim Kouf'): Role(roleNames: ['Creator']),
      Author(authorName: 'Stephen Carpenter'): Role(roleNames: ['Creator']),
      Author(authorName: 'David Greenwalt'): Role(roleNames: ['Creator']),
    },
    genres: [ Constant.drama, Constant.mystery, Constant.scifiFantasy ],
    keywords: [ 'police', 'neo-noir', 'creature', 'detective', 'fairy tale', 'supernatural', 'homicide', 'fighting' ],
    postersNetwork: [
      'https://www.themoviedb.org/t/p/w220_and_h330_face/40Lrj8AKZhGrEmbYbgLbHkqPZvq.jpg',
      'https://www.themoviedb.org/t/p/w220_and_h330_face/zUt6hCIy6GP7cfpKKTEyb4oqDSF.jpg',
      'https://www.themoviedb.org/t/p/w220_and_h330_face/btDMEXwH4uqO8AO3FxmPECttWqj.jpg',
      'https://www.themoviedb.org/t/p/w220_and_h330_face/uNqJUprCBVFsOs4WK1HgAk7sZzf.jpg',
      'https://www.themoviedb.org/t/p/w220_and_h330_face/uk7MrKmOMzRUq8gBphLsVdPqg4T.jpg',
      'https://www.themoviedb.org/t/p/w220_and_h330_face/oOo1H6jxMI5PHvVoUlCXUxwYj3O.jpg',
    ],
  ),
  TvShows(
    title: 'American Horror Story',
    overview: 'An anthology horror drama series centering on different characters and locations, including a house with a murderous past, an asylum, a witch coven, a freak show, a hotel, a farmhouse in Roanoke, a cult, the apocalypse and a summer camp.',
    dateRelease: 'Oct 05, 2011',
    certificate: Constant.tvma,
    duration: '43m',
    posterAsset: Constant.tvImagePath('american_horror', Constant.poster),
    backdropAsset: Constant.tvImagePath('american_horror', Constant.backdrop),
    userScore: Integer.score85 - Integer.nybble,
    authors: {
      Author(authorName: 'Ryan Murphy'): Role(roleNames: ['Creator']),
      Author(authorName: 'Brad Falchuk'): Role(roleNames: ['Creator']),
    },
    genres: [ Constant.drama, Constant.mystery, Constant.scifiFantasy ], 
    keywords: [ 'nun', 'carnival', 'asylum', 'supernatural', 'haunted house', 'horror', 'coven', 'freak show', 'anthology', 'witchcraft' ],
    postersNetwork: [
      'https://www.themoviedb.org/t/p/w220_and_h330_face/2A4J5vUQT5SJJ8TbPaQPxlVeqo4.jpg',
      'https://www.themoviedb.org/t/p/w220_and_h330_face/kd2jC4DWK6Q1hwY2HwVLQZWFPbn.jpg',
      'https://www.themoviedb.org/t/p/w220_and_h330_face/nM32FwVUczqVxDey68HuESABZfc.jpg',
      'https://www.themoviedb.org/t/p/w220_and_h330_face/bBBpxfPnKoSbLruqVofurUr7mI4.jpg',
      'https://www.themoviedb.org/t/p/w220_and_h330_face/rA6XyMD0NJup45aZa9iIZcNo8pF.jpg',
      'https://www.themoviedb.org/t/p/w220_and_h330_face/bePIx13baCg7FIeUbKyorvuIf9C.jpg',
      'https://www.themoviedb.org/t/p/w220_and_h330_face/gwSzP1cJL2HsBmGStN2vOg3d4Qd.jpg',
    ],
  ),
  TvShows(
    title: 'Midnight Mass',
    overview: 'An unsettling omen washes ashore in the wake of the storm. Later, when the locals gather for a potluck, tragedy strikes ??? and a miracle occurs.',
    dateRelease: 'Sep 24, 2021',
    certificate: Constant.tvma,
    duration: '1h 4m',
    posterAsset: Constant.tvImagePath('midnight_mass', Constant.poster),
    backdropAsset: Constant.tvImagePath('midnight_mass', Constant.backdrop),
    userScore: Integer.score75 - Integer.high,
    authors: {
      Author(authorName: 'Mike Flanagan'): Role(roleNames: ['Creator']),
    },
    genres: [ Constant.mystery, Constant.drama, Constant.scifiFantasy ],
    keywords: [ 'drug dealer', 'horror', 'catholicism', 'fishing boat', 'miracles', 'church', 'ex-con', 'priest', 'sheriff', 'alcoholism', 'vampire', 'addiction', 'island', 'mysterious man', 'religion' ],
    postersNetwork: [
      'https://www.themoviedb.org/t/p/w220_and_h330_face/3eVSQJdiBin6A7F7nsg62eJFf0Y.jpg',
      'https://www.themoviedb.org/t/p/w220_and_h330_face/5fWLhX1lCgxgwBoGDDhhVoOSBLJ.jpg',
      'https://www.themoviedb.org/t/p/w220_and_h330_face/dTosK1UmI0Ji059IkRDdBVdnufz.jpg',
    ],
  ),
  TvShows(
    title: 'Vikings: Valhalla',
    overview: 'In this sequel to "Vikings," a hundred years have passed and a new generation of legendary heroes arises to forge its own destiny ??? and make history.',
    dateRelease: 'Feb 25, 2022',
    certificate: Constant.tvma,
    duration: '51m',
    posterAsset: Constant.tvImagePath('vikings', Constant.poster),
    backdropAsset: Constant.tvImagePath('vikings', Constant.backdrop),
    userScore: Integer.score85 - Integer.bitRadix,
    authors: {
      Author(authorName: 'Jeb Stuart'): Role(roleNames: ['Creator']),
    },
    genres: [ Constant.actionAdventure, Constant.drama, Constant.warPolitics ],
    keywords: [ 'fight', 'sword', 'viking', 'survival', 'blood' ],
    postersNetwork: [
      'https://www.themoviedb.org/t/p/w220_and_h330_face/4EGBmEFtOOqdJHMnTPxZsXvbS7b.jpg',
      'https://www.themoviedb.org/t/p/w220_and_h330_face/jd19Pt0cwC84tiydokVxK9ETrS2.jpg',
    ],
  ),
];