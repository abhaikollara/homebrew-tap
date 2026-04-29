class Portscout < Formula
  desc "TUI tool to identify and kill processes occupying local ports"
  homepage "https://github.com/abhaikollara/portscout"
  url "https://github.com/abhaikollara/portscout/releases/download/v0.2.0/portscout-v0.2.0-darwin-arm64.tar.gz"
  sha256 "36a76068a70a1f83849f08b8f4b534b9484413599c5fbb2b472a3bcb61991a3d"
  version "0.2.0"
  license "MIT"

  def install
    bin.install "portscout"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/portscout --version")
  end
end
