// ignore_for_file: public_member_api_docs, sort_constructors_first
class ListaCanais {
  final String nome;
  final String link;
  ListaCanais({
    required this.nome,
    required this.link,
  });

  static ListaCanais fromMap(Map map) {
    return ListaCanais(nome: map['nome'], link: map['link']);
  }

  static List<Map> listaCanais = [
    {
      "nome": "1001 Noites (720p) [Not 24/7]",
      "link":
          "https://cdn.jmvstream.com/w/LVW-8155/ngrp:LVW8155_41E1ciuCvO_all/playlist.m3u8"
    },
    {
      "nome": "Adesso TV (720p)",
      "link":
          "https://cdn.jmvstream.com/w/LVW-9715/LVW9715_12B26T62tm/playlist.m3u8"
    },
    {
      "nome": "AgroBrasil TV (720p) [Not 24/7]",
      "link":
          "http://45.162.230.234:1935/agrobrasiltv/agrobrasiltv/playlist.m3u8"
    },
    {
      "nome": "AgroBrasil TV (720p) [Not 24/7]",
      "link":
          "https://server.flixtv.com.br/agrobrasiltv/agrobrasiltv/playlist.m3u8"
    },
    {
      "nome": "Agromais (1080p) [Geo-blocked]",
      "link": "https://evpp.mm.uol.com.br/geob_band/agromais/playlist.m3u8"
    },
    {
      "nome": "Aish TV (360p)",
      "link": "https://srv2.zcast.com.br/elzemar/elzemar/playlist.m3u8"
    },
    {
      "nome": "Allegro WebTV (720p)",
      "link": "https://livefocamundo.com:8081/allegrowebtv/index.m3u8"
    },
    {
      "nome": "All Sports (720p)",
      "link": "https://5cf4a2c2512a2.streamlock.net/dgrau/dgrau/playlist.m3u8"
    },
    {
      "nome": "Alpha Channel (720p)",
      "link":
          "https://5b01a3d32b65c.streamlock.net:1936/tvalpha/tvalpha/playlist.m3u8"
    },
    {
      "nome": "Amazon Sat (1080p)",
      "link": "https://amazonsat.brasilstream.com.br/hls/amazonsat/index.m3u8"
    },
    {
      "nome": "Anime TV (360p) [Not 24/7]",
      "link": "https://stmv1.srvif.com/animetv/animetv/playlist.m3u8"
    },
    {
      "nome": "Araruna TV (360p)",
      "link":
          "https://video01.logicahost.com.br/ararunatv/ararunatv/playlist.m3u8"
    },
    {
      "nome": "Ascame TV (320p)",
      "link": "https://livefocamundo.com:8081/ascametv/index.m3u8"
    },
    {
      "nome": "Band (1080p) [Geo-blocked]",
      "link": "https://evpp.mm.uol.com.br/geob_band/app/playlist.m3u8"
    },
    {
      "nome": "Band (1080p) [Geo-blocked]",
      "link": "https://evpp.mm.uol.com.br/geob_band/band/playlist.m3u8"
    },
    {
      "nome": "Bandnews (720p) [Geo-blocked]",
      "link": "https://evpp.mm.uol.com.br/geob_band/bandnewstv/playlist.m3u8"
    },
    {
      "nome": "Bem TV (720p)",
      "link": "http://wz4.dnip.com.br/bemtv/bemtv.sdp/playlist.m3u8"
    },
    {
      "nome": "BMTV (360p)",
      "link": "https://srv5.zcast.com.br/bmtv/bmtv/playlist.m3u8"
    },
    {
      "nome": "Boas Novas (720p)",
      "link":
          "https://cdn.jmvstream.com/w/LVW-9375/LVW9375_6i0wPBCHYc/playlist.m3u8"
    },
    {
      "nome": "Boa Vontade TV (1080p)",
      "link": "https://ythls.onrender.com/channel/UCedt33latJW7StRfdF4-1FQ.m3u8"
    },
    {
      "nome": "Cabo Frio TV (720p)",
      "link":
          "https://59f2354c05961.streamlock.net:1443/ararutv/_definst_/ararutv/playlist.m3u8"
    },
    {
      "nome": "Canal 25 Jundiaí (404p) [Not 24/7]",
      "link": "https://stream01.msolutionbrasil.com.br/hls/canal25/live.m3u8"
    },
    {
      "nome": "Canal 38",
      "link":
          "https://cdn.jmvstream.com/w/LVW-8503/LVW8503_d0V5oduFlK/playlist.m3u8"
    },
    {
      "nome": "Canal do Criador (1080p)",
      "link":
          "https://607d2a1a47b1f.streamlock.net/crur/smil:canaldocriador.smil/playlist.m3u8"
    },
    {
      "nome": "Canal FDR (1080p)",
      "link":
          "https://stmv1.transmissaodigital.com/ronald6259/ronald6259/playlist.m3u8"
    },
    {
      "nome": "Canal Metropolitano de Notícia (720p)",
      "link":
          "https://video01.logicahost.com.br/redebemtv/redebemtv/playlist.m3u8"
    },
    {
      "nome": "Canal Ricos (480p)",
      "link":
          "https://5d82644094cc0.streamlock.net/ricostv/ricostv/playlist.m3u8"
    },
    {
      "nome": "Canal Rural (1080p)",
      "link":
          "https://607d2a1a47b1f.streamlock.net/crur/smil:canalrural.smil/playlist.m3u8"
    },
    {
      "nome": "Canal Saúde (360p) [Not 24/7]",
      "link": "https://arkyvbre1g.zoeweb.tv/fiocruz/fiocruz/playlist.m3u8"
    },
    {
      "nome": "Canal Sete (1080p)",
      "link": "http://189.51.193.70:1935/canalsete/xpl-c7/playlist.m3u8"
    },
    {
      "nome": "Canal TV Rio (720p)",
      "link":
          "https://video01.logicahost.com.br/canaltvrio/canaltvrio/playlist.m3u8"
    },
    {
      "nome": "Cartoonito (Portuguese)",
      "link":
          "https://playout.cdn.cartoonnetwork.com.br/playout_03/playlist.m3u8"
    },
    {
      "nome": "Cartoonito (Spanish)",
      "link":
          "https://playout.cdn.cartoonnetwork.com.br/playout_04/playlist.m3u8"
    },
    {
      "nome": "Cartoon Network (Portuguese)",
      "link":
          "https://playout.cdn.cartoonnetwork.com.br/playout_01/playlist.m3u8"
    },
    {
      "nome": "Cartoon Network (Spanish)",
      "link":
          "https://playout.cdn.cartoonnetwork.com.br/playout_02/playlist.m3u8"
    },
    {
      "nome": "Catve2 (720p)",
      "link":
          "https://5b33b873179a2.streamlock.net:1443/catve2/catve2/playlist.m3u8"
    },
    {
      "nome": "Catve FM (720p) [Not 24/7]",
      "link":
          "https://5b33b873179a2.streamlock.net:1443/radiocamera/livestream/playlist.m3u8"
    },
    {
      "nome": "Catve Master TV (720p) [Not 24/7]",
      "link":
          "https://5b33b873179a2.streamlock.net:1443/mastertv/livestream/playlist.m3u8"
    },
    {
      "nome": "CBTV Internacional (1080p)",
      "link": "https://oj7lng29dg82-hls-live.5centscdn.com/lives}"
    },
  ];
}
