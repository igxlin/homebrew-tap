class Pynvim < Formula
  include Language::Python::Virtualenv

  desc "Neovim Python Client"
  homepage "https://pynvim.readthedocs.io/en/latest/"
  url "https://github.com/neovim/pynvim/archive/refs/tags/0.4.3.tar.gz"
  sha256 "e7c9de44b0201ad874a608270b7a9b10fd48bda65f49bada05815d973ca79391"
  head "https://github.com/neovim/pynvim", branch: "master"
  license "Apache-2.0"

  depends_on "python@3.9"
  depends_on "python@3.10"
  depends_on "neovim"

  def pythons
    deps.map(&:to_formula)
      .select { |f| f.name.match?(/python@\d\.\d+/) }
      .map(&:opt_bin)
      .map { |bin| bin/"python3" }
  end

  def install
    pythons.each do |python|
      xy = Language::Python.major_minor_version python
      system python, "setup.py", "build", "--parallel=#{ENV.make_jobs}"
      system python, *Language::Python.setup_install_args(prefix),
        "--install-lib=#{prefix/Language::Python.site_packages(python)}"
    end
  end
end
