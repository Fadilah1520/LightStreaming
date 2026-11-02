import 'package:flutter/material.dart';

void main() {
  runApp(const LightStreamingApp());
}

class LightStreamingApp extends StatelessWidget {
  const LightStreamingApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'LightStreaming',
      home: LightStreamingHomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class LightStreamingHomePage extends StatelessWidget {
  const LightStreamingHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisSize: MainAxisSize.min,
          children: const [
            Text(
              'Light',
              style: TextStyle(
                color: Colors.yellow,
                fontWeight: FontWeight.w900,
                fontSize: 24,
                letterSpacing: 0.5,
              ),
            ),
            Text(
              'Streaming',
              style: TextStyle(
                color: Colors.blueAccent,
                fontWeight: FontWeight.w900,
                fontSize: 24,
                letterSpacing: 0.5,
              ),
            ),
          ],
        ),
        backgroundColor: const Color(0xFF0A0E1A),
        centerTitle: false,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Container(
                  padding: const EdgeInsets.symmetric(horizontal: 128, vertical: 14),
                  decoration: BoxDecoration(
                    color: Colors.grey.shade200,
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: Colors.grey.shade300),
                  ),
                  child: const Text(
                    'Now Playing',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.black87),
                  ),
                ),
              ),
              const SizedBox(height: 12),
              SizedBox(
                height: 220,
                child: PageView(
                  controller: PageController(viewportFraction: 0.85),
                  children: [
                    _buildBannerItem(
                      'Avengers: Doomsday',
                      '2026 • 2j 45m',
                      'Para pahlawan bumi berkumpul kembali untuk menghadapi ancaman multidimensi terbesar dari Doctor Doom.',
                      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTsimCsYsaup6QmlHu2qtaqfnk-wTWp8-LYbmdtJD068A&s=10',
                    ),
                    _buildBannerItem(
                      'Spider-Man: Brand New Day',
                      '2026 • 2j 25m',
                      'Peter Parker menghadapi babak baru kehidupannya di tengah ancaman musuh baru dari jalanan kota New York.',
                      'https://i.scdn.co/image/ab67616d0000b2733b4123d5765f3068a788fa30',
                    ),
                    _buildBannerItem(
                      'Supergirl: Woman of Tomorrow',
                      '2026 • 2j 10m',
                      'Kara Zor-El melintasi galaksi bersama anjing setianya dalam misi balas dendam berbahaya di luar angkasa.',
                      'https://www.prime1studio.com/on/demandware.static/-/Sites-p1s-master-catalog/default/dw9ac1482c/images/REMDC-03S/catalog/a001-JOqlFU1c.jpg',
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 24),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: _buildSectionTitle('Trending'),
              ),
              const SizedBox(height: 12),
              SizedBox(
                height: 150,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  children: [
                    _buildMovieItem('Deadpool & Wolverine', 'https://m.media-amazon.com/images/S/pv-target-images/dd6fb66997dd4cb5606b587bb255d2cd2cec20ecbd11852a8f6b07a1358d09a1.jpg'),
                    _buildMovieItem('Furiosa', 'https://m.media-amazon.com/images/S/pv-target-images/0d20106d3e75ff83992dc17d2364910e00a116629065b1352fdb4f0029f6624e.jpg'),
                    _buildMovieItem('Bad Boys Ride', 'https://m.media-amazon.com/images/S/pv-target-images/c5a0b2d712d1628003dca724e02408fa5d84468ca72d904970417ac191c02923.jpg'),
                    _buildMovieItem('Dune: Part Two', 'https://m.media-amazon.com/images/I/61tJY4EWDpL._AC_UF1000,1000_QL80_.jpg'),
                    _buildMovieItem('Gladiator II', 'https://play-lh.googleusercontent.com/vskGJo_pg5RW63bLzOzTpw_XMfhOAQh2JcoLz-DUfDFKYnlAHHejBsWbkpPpLoYQHBjrlS9TFlck81_roFg=w240-h480-rw'),
                    _buildMoreItem(),
                  ],
                ),
              ),
              const SizedBox(height: 24),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: _buildSectionTitle('Popular'),
              ),
              const SizedBox(height: 12),
              SizedBox(
                height: 150,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  children: [
                    _buildMovieItem('Pemandi Jenazah', 'https://upload.wikimedia.org/wikipedia/id/b/b3/Poster_Pemandi_Jenazah.jpg?utm_source=id.wikipedia.org&utm_campaign=index&utm_content=original'),
                    _buildMovieItem('Siksa Kubur', 'https://cdn.ngopibareng.id/uploads/2024/2024-04-11/sinopsis-film-siksa-kubur-karya-baru-joko-anwar--01'),
                    _buildMovieItem('Pengabdi Setan 2', 'https://upload.wikimedia.org/wikipedia/id/2/26/Pengabdi_Setan_2.jpeg?utm_source=id.wikipedia.org&utm_campaign=index&utm_content=original'),
                    _buildMovieItem('Interstellar', 'https://lsf.go.id/storage/app/resources/resize/300_450_0_0_crop/img_913d6d596f88a0ff14c5d652a6ab93e8.jpg'),
                    _buildMovieItem('Joker', 'https://play-lh.googleusercontent.com/vT1lwbLbTDY2RIr90IdbyMKn5JWYKamxnS8xixk9OtyoOsV2jRjRg6V3oZm7ncr33NntmPl_YRSsF8Ndfng'),
                    _buildMoreItem(),
                  ],
                ),
              ),
              const SizedBox(height: 24),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: _buildSectionTitle('Top Rated'),
              ),
              const SizedBox(height: 12),
              SizedBox(
                height: 150,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  children: [
                    _buildMovieItem('Moana 2', 'https://play-lh.googleusercontent.com/VHTe4Hn7tUVJCPSdxcDQ-HwvvEgzWJIp7NHVVajTCprX1kEqhSJ1-PHh7DVyKhLD3NjLfOOD04NmdrKgJ6c'),
                    _buildMovieItem('Inside Out 2', 'https://play-lh.googleusercontent.com/y1cjCPlz2tOspSb1ia763p-qqtfQ_Q6mNMjsMqbBOCWOQSIcqzu4mFPbxAsNJ3vJ5HxIbijupAFFIsyN2g'),
                    _buildMovieItem('Inception', 'https://play-lh.googleusercontent.com/buKf27Hxendp3tLNpNtP3E-amP0o4yYV-SGKyS2u-Y3GdGRTyfNCIT5WAVs2OudOz6so5K1jtYdAUKI9nw8'),
                    _buildMovieItem('Dark Knight', 'https://m.media-amazon.com/images/S/pv-target-images/8753733ac616155963cc440c3cf5367f45d7685b672c5b9c35bc7f182aec17c4.jpg'),
                    _buildMovieItem('Parasite', 'https://m.media-amazon.com/images/S/pv-target-images/5752d4b04d1aa8704466132c46a2d33758e6dbdbfa6cbcd00b7bca7a08e074d9.jpg'),
                    _buildMoreItem(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildBannerItem(String title, String info, String synopsis, String imageUrl) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 8),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.2),
            blurRadius: 6,
            offset: const Offset(0, 3),
          ),
        ],
        image: DecorationImage(
          image: NetworkImage(imageUrl),
          fit: BoxFit.cover,
        ),
      ),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          gradient: LinearGradient(
            begin: Alignment.bottomCenter,
            end: Alignment.topCenter,
            colors: [
              Colors.black.withOpacity(0.85),
              Colors.transparent,
            ],
          ),
        ),
        padding: const EdgeInsets.all(16.0),
        child: Stack(
          children: [
            const Positioned(
              right: 0,
              bottom: 20,
              child: Icon(Icons.chevron_right, color: Colors.white, size: 30),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Colors.white),
                ),
                const SizedBox(height: 2),
                Text(
                  info,
                  style: const TextStyle(fontSize: 11, color: Colors.amber, fontWeight: FontWeight.w600),
                ),
                const SizedBox(height: 4),
                Text(
                  synopsis,
                  style: const TextStyle(fontSize: 10, color: Colors.white70),
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildSectionTitle(String title) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(title, style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
        const Text('More', style: TextStyle(fontSize: 12, color: Colors.grey, fontWeight: FontWeight.w600)),
      ],
    );
  }

  Widget _buildMovieItem(String title, String imageUrl) {
    return Container(
      width: 105,
      margin: const EdgeInsets.only(right: 12),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.network(
                imageUrl,
                fit: BoxFit.cover,
                width: double.infinity,
              ),
            ),
          ),
          const SizedBox(height: 6),
          Text(
            title,
            style: const TextStyle(fontSize: 11, fontWeight: FontWeight.bold),
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
          ),
        ],
      ),
    );
  }

  Widget _buildMoreItem() {
    return Container(
      width: 90,
      margin: const EdgeInsets.only(right: 12),
      decoration: BoxDecoration(
        color: Colors.grey.shade100,
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: Colors.grey.shade300),
      ),
      child: const Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(Icons.arrow_forward_ios, color: Colors.grey, size: 24),
          SizedBox(height: 6),
          Text(
            'More',
            style: TextStyle(fontSize: 11, fontWeight: FontWeight.bold, color: Colors.grey),
          ),
        ],
      ),
    );
  }
}