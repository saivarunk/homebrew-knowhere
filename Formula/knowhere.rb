class Knowhere < Formula
  desc "A lightweight SQL engine for querying CSV and Parquet files via TUI"
  homepage "https://github.com/saivarunk/knowhere"
  version "0.1.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/saivarunk/knowhere/releases/download/v0.1.2/knowhere-v0.1.2-aarch64-apple-darwin.tar.gz"
      sha256 "3111fb2829dcb40d6ce3b685e9faf0bbe2e0593ec222ae51347345951bece1b9"
    end

    on_intel do
      url "https://github.com/saivarunk/knowhere/releases/download/v0.1.2/knowhere-v0.1.2-x86_64-apple-darwin.tar.gz"
      sha256 "f3aa98434cc97cd682f12a209877fa4182521cd13436606fe058cb5c900005b2"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/saivarunk/knowhere/releases/download/v0.1.2/knowhere-v0.1.2-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "ef92309858fd76be071e12dfc25dd36977fdec0b450c77c900a8d2d3c478521c"
    end
  end

  def install
    bin.install "knowhere"
  end

  test do
    assert_match "knowhere", shell_output("#{bin}/knowhere --version")
  end
end
