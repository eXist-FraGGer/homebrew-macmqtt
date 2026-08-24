cask "macmqtt" do
  version "0.1.0"
  sha256 "559ea5a82d974aa0fd307debb99e3105afd0e3d7913d128fc5cdbcdc09e590d2"

  url "https://github.com/eXist-FraGGer/macmqtt/releases/download/v#{version}/macmqtt-#{version}.zip"
  name "macmqtt"
  desc "MQTT-мост для управления Mac из любого умного дома"
  homepage "https://github.com/eXist-FraGGer/macmqtt"

  depends_on macos: ">= :ventura"

  app "macmqtt.app"

  zap trash: [
    "~/Library/Application Support/macmqtt",
  ]
end
