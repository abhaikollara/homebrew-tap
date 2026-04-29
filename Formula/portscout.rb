class Portscout < Formula
  desc "TUI tool to identify and kill processes occupying local ports"
  homepage "https://github.com/abhaikollara/portscout"
  url "https://github.com/abhaikollara/portscout/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "440b982b879d755dab0a277ae70764fc4fea46afaffab606522655dca35f2ffe"
  license "MIT"

  depends_on "go" => :build

  def install
    ldflags = "-s -w -X main.version=#{version}"
    system "go", "build", *std_go_args(ldflags: ldflags), "."
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/portscout --version")
  end
end
