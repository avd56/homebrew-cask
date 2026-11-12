cask "clipboard-remote" do
  version "2.0.3"
  sha256 "039828ddef25e503c110d3eb9482045652061f6055366313c41025cce297ac34"

  url "https://www.ntwind.com/files/ClipboardRemote_#{version}-mac.dmg"
  name "Clipboard Remote"
  desc "Share clipboard contents between devices over a local network"
  homepage "https://www.ntwind.com/remote/clipboard.html"

  livecheck do
    url "https://www.ntwind.com/download/ClipboardRemote_latest-mac.dmg"
    strategy :header_match
    regex(/ClipboardRemote[._-]v?(\d+(?:\.\d+)+)[._-]mac\.dmg/i)
  end

  depends_on macos: :big_sur

  app "Clipboard Remote.app"

  zap trash: [
    "~/Library/Application Support/com.ntwind.remote.clipboard",
    "~/Library/Caches/com.ntwind.remote.clipboard",
    "~/Library/Containers/com.ntwind.remote.clipboard",
    "~/Library/Preferences/com.ntwind.remote.clipboard.plist",
    "~/Library/Saved Application State/com.ntwind.remote.clipboard.savedState",
  ]
end
