class Wd < Formula
  desc "A simple note taking tool."
  homepage "https://git.gxlin.org/wd/"
  url "https://git.gxlin.org/wd/snapshot/wd-0.0.1.tar.gz"
  sha256 "1f4775924a4a2f94bed4b925d34f21585ec2cb37a354556ecc1d661f88d11792"
  license "GPL-3.0"
  head "https://git.gxlin.org/wd.git", branch: "master"

  def install
    bin.install "wd", "wd-journal"
  end
end
