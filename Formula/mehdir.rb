class Mehdir < Formula
  desc "CLI tool that creates temporary directories with a TTL"
  homepage "https://github.com/abhaikollara/mehdir"
  url "https://github.com/abhaikollara/mehdir.git",
      tag:      "v0.0.1",
      revision: "adabf86050d1e4e41e53335c198c4b380e71f68f"
  license "MIT"

  depends_on "go" => :build

  def install
    system "go", "build", *std_go_args(ldflags: "-s -w"), "./cmd/mehdir"
  end

  service do
    run [opt_bin/"mehdir", "daemon", "run"]
    keep_alive true
    log_path var/"log/mehdir.log"
    error_log_path var/"log/mehdir.log"
  end

  test do
    assert_match "mehdir", shell_output("#{bin}/mehdir --help")
  end
end
