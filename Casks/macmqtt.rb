cask "macmqtt" do
  version "0.2.11"
  sha256 "7331a1f833c78954181e017741b80e622dbd34793395cda3754c57e917bb3d2e"

  url "https://github.com/eXist-FraGGer/macmqtt/releases/download/v#{version}/macmqtt-#{version}.zip"
  name "macmqtt"
  desc "MQTT-мост для управления Mac из любого умного дома"
  homepage "https://github.com/eXist-FraGGer/macmqtt"

  depends_on macos: :ventura

  app "macmqtt.app"

  zap trash: [
    "~/Library/Application Support/macmqtt",
  ]
end
