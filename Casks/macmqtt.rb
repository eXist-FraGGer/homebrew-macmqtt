cask "macmqtt" do
  version "0.2.7"
  sha256 "92ca11b3e1a6346cab92b78b99ab5de45f7e758bb530dbf7b35fb4bffbf1d5ee"

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
