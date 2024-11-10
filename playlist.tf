resource "spotify_playlist" "Bollywood" {
  name = "Bollywood"
  tracks = ["18YHbIhrleUkKKj2DvEp79"]
}

data "spotify_search_track" "KK"{
    artist = "KK"
}

resource "spotify_playlist" "Romantic" {
  name = "Romantic"
  tracks = [data.spotify_search_track.KK.tracks[0].id,
  data.spotify_search_track.KK.tracks[1].id,
  data.spotify_search_track.KK.tracks[2].id]
}
