cask "knowhere" do
  version "0.1.2"
  sha256 "e3958632fc3ffe7a8ab73188d21f7128b3121ce5068d0e014c33b6436fe79762"

  url "https://github.com/saivarunk/knowhere/releases/download/v0.1.2/Knowhere_0.1.2_universal.dmg"
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
