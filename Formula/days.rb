class Days < Formula
    desc "Calculate days between a date and today"
    homepage "https://github.com/abhaikollara/days"
    url "https://github.com/abhaikollara/days/releases/download/v0.0.1/days-v0.0.1-macos.tar.gz"
    sha256 "1acb05fef507f132e3e1f3fe962fa4dfd2f22b6ad0c2f6d4c50a650c85424097"
    version "0.0.1"
  
    def install
      bin.install "days"
    end
  end
