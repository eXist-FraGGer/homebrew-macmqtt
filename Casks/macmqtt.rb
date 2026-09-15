cask "macmqtt" do
  version "0.2.6"
  sha256 "269b74a8b24b25d226b6d4715a2f286fd8c143c448a4bacdbaa91e4ba58f9a40"

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
