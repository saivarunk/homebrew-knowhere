cask "knowhere" do
  version "0.1.1"
  sha256 "bb7aa995256f5267e5f895e8a39eb0fd422641a012d145f1a5a2d9c8f521a72c"

  url "https://github.com/saivarunk/knowhere/releases/download/v0.1.1/Knowhere_0.1.1_universal.dmg"
  name "Knowhere"
  desc "SQL engine for querying CSV, Parquet, Delta Lake files"
  homepage "https://github.com/saivarunk/knowhere"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "Knowhere.app"

  zap trash: [
    "~/Library/Application Support/com.knowhere.app",
    "~/Library/Preferences/com.knowhere.app.plist",
    "~/Library/Caches/com.knowhere.app",
    "~/knowhere",
  ]
end
