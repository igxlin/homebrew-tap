cask "pcap2socks" do
  version "v0.6.2"
  arch arm: "aarch64", intel: "amd64"
  sha256 intel: "6f7eeabe63e9b6856c909b9cd691b3771f0e95ec83f56768c4b91f125ec383d5"

  url "https://github.com/zhxie/pcap2socks/releases/download/#{version}/pcap2socks-#{version}-macos-#{arch}.zip"
  name "pcap2socks"
  homepage "https://github.com/zhxie/pcap2socks/"
  desc "pcap2socks is a proxy which redirect traffic to a SOCKS proxy with pcap written in Rust."

  depends_on formula: "libpcap"

  binary "pcap2socks"
end
