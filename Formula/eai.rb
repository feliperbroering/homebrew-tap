class Eai < Formula
  desc "Natural language to shell commands"
  homepage "https://github.com/feliperbroering/eai"
  version "0.9.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/feliperbroering/eai/releases/download/v#{version}/eai-darwin-arm64.tar.gz"
      sha256 "f1bc15551963d401ce25541d074612e53e434a2cd6ad11b6ef34e29c6f86e063"
    else
      url "https://github.com/feliperbroering/eai/releases/download/v#{version}/eai-darwin-amd64.tar.gz"
      sha256 "7782e75b9d8e43f10eeaf67b62254b33b01eae59197a8d3aabb515a3f1766744"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/feliperbroering/eai/releases/download/v#{version}/eai-linux-arm64.tar.gz"
      sha256 "092add9a58c7460836f4dc892476843f506c7e18779ab0d99fdeb72216aa0f5b"
    else
      url "https://github.com/feliperbroering/eai/releases/download/v#{version}/eai-linux-amd64.tar.gz"
      sha256 "a366da37466a44756d142140031d56e9415a86326a42f4713e6432aa39a2df17"
    end
  end

  def install
    bin.install "eai"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/eai --version")
  end
end
