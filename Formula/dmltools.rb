class dmltools < Formula
  include Language::Python::Virtualenv

  desc "Collection of useful homegrown command-line tools"
  homepage "https://github.com/dmlane/dmltools"
  url "https://github.com/dmlane/dmltools/archive/refs/tags/2023.12.1003-rc0.tar.gz"
  sha256 "0019dfc4b32d63c1392aa264aed2253c1e0c2fb09216f8e2cc269bbfb8bb49b5"
  license "MIT"

  depends_on "python@3.11"

  def install
    virtualenv_install_with_resources
  end

  test do
    system "#{bin}/dmltools", "--version"
  end
end
