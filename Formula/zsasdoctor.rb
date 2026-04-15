class Zsasdoctor < Formula
  desc "SAS Developer Environment Doctor Tool"
  homepage "https://github.com/hariharan-rs-19343/zsasdoctor"
  url "https://github.com/hariharan-rs-19343/zsasdoctor/archive/refs/tags/v1.0.0.tar.gz"
  sha256 "1543b5048634cce4ea0f0ed213b9876dc9b60f0dcc980f5a09fa5bbc570e7c43"
  license "MIT"

  def install
    libexec.install Dir["*"]
    bin.write_exec_script libexec/"bin/zsasdoctor"
  end

  test do
    system "#{bin}/zsasdoctor", "version"
  end
end
