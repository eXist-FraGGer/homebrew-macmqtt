cask "macmqtt" do
  version "0.2.10"
  sha256 "3b94132be7128d9f95de4a95416708d372ed3cc8fda7c52b2cbaf977e1789acd"

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
