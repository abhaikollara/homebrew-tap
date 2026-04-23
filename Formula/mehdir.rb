class Mehdir < Formula
  desc "CLI tool that creates temporary directories with a TTL"
  homepage "https://github.com/abhaikollara/mehdir"
  version "0.0.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/abhaikollara/mehdir/releases/download/v0.0.2/mehdir-v0.0.2-darwin-arm64.tar.gz"
      sha256 "3c763ce372afd7209a84eb0bdc2609e0fa4a75bc2e713233ef667c44196428be"
    else
      url "https://github.com/abhaikollara/mehdir/releases/download/v0.0.2/mehdir-v0.0.2-darwin-amd64.tar.gz"
      sha256 "4b31a307a59aabcdfdd120261d72e2b56ddb377d900caeeb65704cff10cf49b8"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/abhaikollara/mehdir/releases/download/v0.0.2/mehdir-v0.0.2-linux-arm64.tar.gz"
      sha256 "0de56e0010c484a754c2fa0ce89db72f6ed9fd0ec0df28de948c92c836c21f34"
    else
      url "https://github.com/abhaikollara/mehdir/releases/download/v0.0.2/mehdir-v0.0.2-linux-amd64.tar.gz"
      sha256 "bdc1a3a4aacc389c627a757cf4335d28fe83249db7ade52f411d0a772626ec55"
    end
  end

  def install
    bin.install "mehdir"
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
