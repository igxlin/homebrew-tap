class PassLogin < Formula
  desc "Pass extension for managing login names"
  homepage "https://github.com/igxlin/pass-login"
  url "https://github.com/igxlin/pass-login/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "b708cd9256bcc9e9715edb9eb43758c958242b6d8b2d46ae5211a9edbde171ba"
  license "GPL-3.0"

  depends_on "gnupg"
  depends_on "pass"

  def install
    system "make", "PREFIX=#{prefix}", "BASHCOMPDIR=#{bash_completion}", "install"
  end
end
