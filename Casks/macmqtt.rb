cask "macmqtt" do
  version "0.2.3"
  sha256 "1ff27db51af058f7cd097752964a56615c78fa5490caba409282049bdfbf874a"

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
