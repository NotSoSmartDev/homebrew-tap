cask "brick-proxy" do
  version "1.0.2,297"
  sha256 "8caee186c0cd861ffe3525b0585cb1902ff99e193c49e3c213d7afa70cc68df2"

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
