class Knowhere < Formula
  desc "A lightweight SQL engine for querying CSV and Parquet files via TUI"
  homepage "https://github.com/saivarunk/knowhere"
  version "0.1.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/saivarunk/knowhere/releases/download/v0.1.1/knowhere-v0.1.1-aarch64-apple-darwin.tar.gz"
      sha256 "e4d0b3d89934eaa3aae37c2574336a13c75f91183d6db695ee83117f98fd4a43"
    end

    on_intel do
      url "https://github.com/saivarunk/knowhere/releases/download/v0.1.1/knowhere-v0.1.1-x86_64-apple-darwin.tar.gz"
      sha256 "17864c31193620176b61245debf16dfef59fb0366c836e6271fc8a60d2f12c2a"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/saivarunk/knowhere/releases/download/v0.1.1/knowhere-v0.1.1-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "f3f4fdfbdc50e99eb46e024f8a4aac53cb0de7555181ebdbd389a0083fc2335a"
    end
  end

  def install
    bin.install "knowhere"
  end

  test do
    assert_match "knowhere", shell_output("#{bin}/knowhere --version")
  end
end
