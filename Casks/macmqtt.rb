cask "macmqtt" do
  version "0.2.8"
  sha256 "9b868e54e434213ea0a7afe54b8366db1f9514d0ff6d0db1ec6e6d6fba6ba0c9"

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
