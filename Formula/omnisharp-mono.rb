# Origin file:
# https://github.com/OmniSharp/homebrew-omnisharp-roslyn/blob/master/omnisharp-mono.rb

class OmnisharpMono < Formula
  desc "Cross platform .NET development in the editor of your choice"
  homepage "http://www.omnisharp.net/"
  version "v1.39.2"

  url "https://github.com/OmniSharp/omnisharp-roslyn/releases/download/#{version}/omnisharp-mono.tar.gz"
  sha256 "73bd38b648f628a069a4a7b0d90a722e3857bad52e872d851768acba3a1c6a4d"

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

