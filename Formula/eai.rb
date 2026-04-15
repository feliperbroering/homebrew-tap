class Eai < Formula
  desc "Natural language to shell commands"
  homepage "https://github.com/feliperbroering/eai"
  version "0.14.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/feliperbroering/eai/releases/download/v#{version}/eai-darwin-arm64.tar.gz"
      sha256 "de1fc0e65faf29a1a42b6bf6a66082f71b5ce76132450115ba7964e190b8cc34"
    else
      url "https://github.com/feliperbroering/eai/releases/download/v#{version}/eai-darwin-amd64.tar.gz"
      sha256 "211c00158f74a8aed20ffdd3839be27763dde9fd74290f0618550b91bde9af9c"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/feliperbroering/eai/releases/download/v#{version}/eai-linux-arm64.tar.gz"
      sha256 "f39fa1fe0976d93af0e424257dbe8ec2f6304e405ca037bd5e4045a69f82d39b"
    else
      url "https://github.com/feliperbroering/eai/releases/download/v#{version}/eai-linux-amd64.tar.gz"
      sha256 "98ac7c2060473d103cb66070ef8d7ed04833109368add60b8a91ab6fc750cc67"
    end
  end

  def install
    bin.install "eai"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/eai --version")
  end
end
