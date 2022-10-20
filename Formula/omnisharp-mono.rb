# Origin file:
# https://github.com/OmniSharp/homebrew-omnisharp-roslyn/blob/master/omnisharp-mono.rb

class OmnisharpMono < Formula
  desc "Cross platform .NET development in the editor of your choice"
  homepage "http://www.omnisharp.net/"
  version "v1.39.1"

  url "https://github.com/OmniSharp/omnisharp-roslyn/releases/download/#{version}/omnisharp-mono.tar.gz"
  sha256 "5a25633aea34058c70ae6aa95431f2fae487ae45a93d5955118169c2ed212e83"

  depends_on "mono" => :recommended

  def install
    libexec.install Dir["*"]

    # To match non-mono install, create an `omnisharp' shell script.
    (bin/"omnisharp").write <<~EOS
      #!/usr/bin/env sh
      mono /usr/local/opt/omnisharp-mono/libexec/OmniSharp.exe $@
    EOS
  end

  def post_install
    system "/bin/chmod +x #{bin}/omnisharp"
  end

end

