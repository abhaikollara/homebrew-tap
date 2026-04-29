class Portscout < Formula
  desc "TUI tool to identify and kill processes occupying local ports"
  homepage "https://github.com/abhaikollara/portscout"
  url "https://github.com/abhaikollara/portscout/releases/download/v0.1.0/portscout-v0.1.0-darwin-arm64.tar.gz"
  sha256 "e47aed44b1c97162a10b5727d6c57f4fdaab89fa9527c79fd430d4860bd46eb3"
  version "0.1.0"
  license "MIT"

  def install
    bin.install "portscout"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/portscout --version")
  end
end
