class Channel {
  String title;
  String logo;
  String url;
  Channel({required this.title, required this.logo, required this.url});
}

List<Channel> channels = [
  Channel(
    title: "شبکه یک",
    logo: 'https://dl.hitaldev.com/tv/1.png',
    url: "https://live.aionet.ir/hls/tv1/tv1.m3u8",
  ),
  Channel(
    title: "شبکه دو",
    logo: 'https://dl.hitaldev.com/tv/2.png',
    url: "https://live.aionet.ir/hls/tv2/tv2.m3u8",
  ),
  Channel(
    title: "شبکه سه",
    logo: 'https://dl.hitaldev.com/tv/3.png',
    url: "https://live.aionet.ir/hls/tv3/tv3.m3u8",
  ),
  Channel(
    title: "شبکه چهار",
    logo: 'https://dl.hitaldev.com/tv/4.png',
    url: "https://live.aionet.ir/hls/tv4/tv4.m3u8",
  ),
  Channel(
    title: "شبکه پنج",
    logo: 'https://dl.hitaldev.com/tv/5.png',
    url: "https://live.aionet.ir/hls/tv5/tv5.m3u8",
  ),
  Channel(
    title: "شبکه آموزش",
    logo: 'https://dl.hitaldev.com/tv/amoozesh.png',
    url: "https://live.aionet.ir/hls/amoozesh/amoozesh.m3u8",
  ),
  Channel(
    title: "شبکه پویا",
    logo: 'https://dl.hitaldev.com/tv/koodak.png',
    url: "https://live.aionet.ir/hls/pooya/pooya.m3u8",
  ),
  Channel(
    title: "شبکه ورزش",
    logo: 'https://dl.hitaldev.com/tv/varzesh.png',
    url: "https://live.aionet.ir/hls2/varzeshtv.m3u8",
  ),
  Channel(
    title: "شبکه مستند",
    logo: 'https://dl.hitaldev.com/tv/mostanad.png',
    url: "https://live.aionet.ir/hls/mostanad/mostanad.m3u8",
  ),
  Channel(
    title: "شبکه نمایش",
    logo: 'https://dl.hitaldev.com/tv/namayesh.png',
    url: "https://live.aionet.ir/hls/namayesh/namayesh.m3u8",
  ),
  Channel(
    title: "شبکه نسیم",
    logo: 'https://dl.hitaldev.com/tv/nasim.png',
    url: "https://live.aionet.ir/hls/nasim/nasim.m3u8",
  ),
  Channel(
    title: "شبکه تماشا",
    logo: 'https://dl.hitaldev.com/tv/tamasha.png',
    url: "https://live.aionet.ir/hls/tamasha/tamasha.m3u8",
  ),
];
