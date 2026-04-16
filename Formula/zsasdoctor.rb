class Zsasdoctor < Formula
  desc "SAS Developer Environment Doctor Tool"
  homepage "https://github.com/hariharan-rs-19343/zsasdoctor"
  url "https://github.com/hariharan-rs-19343/zsasdoctor/archive/refs/tags/v1.0.1.tar.gz"
  sha256 "ac2ef3c7ff90444b6adbdeab0da31315e9fff3f295b67d7af79666417ac37452"
  license "MIT"

  def install
    libexec.install Dir["*"]
    bin.write_exec_script libexec/"bin/zsasdoctor"
  end

  test do
    system "#{bin}/zsasdoctor", "version"
  end
end
