class Fasd < Formula
  desc "(FORK) CLI tool for quick access to files and directories"
  homepage "https://github.com/d10xa/fasd"
  url "https://github.com/d10xa/fasd/archive/refs/tags/v1.0.1.tar.gz"
  sha256 "e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855"
  license "MIT"
  head "https://github.com/d10xa/fasd.git", branch: "master"

  bottle do
    sha256 cellar: :any_skip_relocation, all: "9241df0f32971ce5a84c977f6908b93114946843813d5375ba7b983a7a783188"
  end

  def install
    bin.install "fasd"
    man1.install "fasd.1"
  end

  test do
    system "#{bin}/fasd", "--init", "auto"
  end
end

