locals {
  client_id = "${getenv("CLIENT_ID", "default_value")}"
  beemoviebot = "${getenv("BEEMOVIEBOT", "default_value")}"
  pterotoken = "${getenv("PteroToken", "default_value")}"
}

