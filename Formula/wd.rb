class Wd < Formula
  desc "A simple note taking tool."
  version "v0.0.3"
  homepage "https://git.gxlin.org/wd/"
  license "GPL-3.0"

  url "https://git.gxlin.org/wd/snapshot/wd-#{version}.tar.gz"
  sha256 "dc6c1a7f36d6dbf2f8c1f7a9c1fd605f17f633750a5acdf7f997f5f6152c470a"

  head "https://git.gxlin.org/wd.git", branch: "master"

  def install
    bin.install "wd", "wd-journal", "wd-edit"
  end
end
