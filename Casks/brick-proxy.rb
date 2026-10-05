cask "brick-proxy" do
  version "1.0.0,286"
  sha256 "e2557bcc42a0660e0f574f0bcebdaadb1fd97a7fd837a4d39d5d1533a3b9fe04"

  url "https://dl.br-ck.app/BrickProxy-#{version.csv.first}-#{version.csv.second}.dmg"
  name "Brick proxy"
  desc "Routes all traffic through your own SOCKS5 or HTTP proxy"
  homepage "https://br-ck.app/"

  livecheck do
    url "https://dl.br-ck.app/appcast.xml"
    strategy :sparkle
  end

  auto_updates true
  depends_on macos: :sonoma

  app "Brick proxy.app"

  zap trash: [
    "~/Library/Containers/com.dzsianiuk.brick-proxy",
    "~/Library/Group Containers/J8H5RU938Z.com.dzsianiuk.brick-proxy",
  ]
end
