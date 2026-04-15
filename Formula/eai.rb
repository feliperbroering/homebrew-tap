class Eai < Formula
  desc "Natural language to shell commands"
  homepage "https://github.com/feliperbroering/eai"
  version "0.9.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/feliperbroering/eai/releases/download/v#{version}/eai-darwin-arm64.tar.gz"
      sha256 "6bbd431e078e743847c128665c2a2d1f078aeb39207afa319bf6c564093cff3f"
    else
      url "https://github.com/feliperbroering/eai/releases/download/v#{version}/eai-darwin-amd64.tar.gz"
      sha256 "6d344a432d76abb483fed949c4bdac59cb2559a79dda8200c8e886d7654050b8"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/feliperbroering/eai/releases/download/v#{version}/eai-linux-arm64.tar.gz"
      sha256 "bf3ab0ff4b7cd51bd08996f552b98980608c93b82939ede6ff77329b02d29fbc"
    else
      url "https://github.com/feliperbroering/eai/releases/download/v#{version}/eai-linux-amd64.tar.gz"
      sha256 "164857e11d82ff8b4386f5c5262da2503e255818e8e99da0aeeadaa06dbf525b"
    end
  end

  def install
    bin.install "eai"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/eai --version")
  end
end
