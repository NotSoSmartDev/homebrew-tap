cask "brick-proxy" do
  version "1.0.1,295"
  sha256 "69423377ab7c8427e0687a969a1578b3e907c443cb2e7de6987a54edfe071a6d"

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
