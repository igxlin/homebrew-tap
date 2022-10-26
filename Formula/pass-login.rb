class PassLogin < Formula
  desc "Pass extension for managing login names"
  homepage "https://git.gxlin.org/pass-login/"
  url "https://git.gxlin.org/pass-login/snapshot/pass-login-0.1.1.tar.gz"
  sha256 "5556208356fea31d35315c36f95a7eab3f53da1bcf1c8cb839a52b6b9c4bc671"
  license "GPL-3.0"

  depends_on "gnupg"
  depends_on "pass"

  def install
    system "make", "PREFIX=#{prefix}", "BASHCOMPDIR=#{bash_completion}", "install"
  end
end
