class Eai < Formula
  desc "Natural language to shell commands"
  homepage "https://github.com/feliperbroering/eai"
  version "0.12.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/feliperbroering/eai/releases/download/v#{version}/eai-darwin-arm64.tar.gz"
      sha256 "9bab282d4b4692ba1e029800037aebadf677e4ca536b4ffac9fbe531dabcc9f6"
    else
      url "https://github.com/feliperbroering/eai/releases/download/v#{version}/eai-darwin-amd64.tar.gz"
      sha256 "f6035e78828d9369569189438e74b3a90ccfe51e89fd1b036b92c18af45b8349"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/feliperbroering/eai/releases/download/v#{version}/eai-linux-arm64.tar.gz"
      sha256 "6fb0c9debdbdf0875a6ac6dd167a43f0cbcc9eaaf0de20648a95f02a73a58728"
    else
      url "https://github.com/feliperbroering/eai/releases/download/v#{version}/eai-linux-amd64.tar.gz"
      sha256 "5f0a74acff0babfc57718d0d563d142700dadb991be72b3747ea712292f799ea"
    end
  end

  def install
    bin.install "eai"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/eai --version")
  end
end
