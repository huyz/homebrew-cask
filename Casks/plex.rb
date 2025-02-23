cask "plex" do
  version "1.18.0.1392-cf94f6a1"
  sha256 "1b5eef9a96d2847e838f9ae757358068cf2422b0eb1c3310d7c3876d251eb2aa"

  url "https://downloads.plex.tv/plex-desktop/#{version}/macos/Plex-#{version}-x86_64.zip"
  appcast "https://plex.tv/api/downloads/6.json"
  name "Plex"
  desc "Home media server"
  homepage "https://www.plex.tv/"

  auto_updates true
  depends_on macos: ">= :high_sierra"

  app "Plex.app"

  zap trash: [
    "~/Library/Application Support/Plex",
    "~/Library/Caches/Plex",
    "~/Library/Logs/Plex",
  ]
end
