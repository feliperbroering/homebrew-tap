class Eai < Formula
  desc "Natural language to shell commands"
  homepage "https://github.com/feliperbroering/eai"
  version "0.14.0"
  license "MIT"

  bottle do
    root_url "https://github.com/feliperbroering/eai/releases/download/v0.14.0"
    sha256 cellar: :any_skip_relocation, arm64_tahoe:   "3c91a6515b0004ae079bcfa32c5124d277d9ffa194cf3e92c35ef8b8359dabd0"
    sha256 cellar: :any_skip_relocation, arm64_sequoia: "277d58ca7443a6669e187c3eec3aca79eac095ac4a4992d0709cc37cddac1514"
    sha256 cellar: :any_skip_relocation, arm64_sonoma:  "1286353cbcd530996d33a216f7d273676357f5caa10332c84f509a75318bc8a5"
    sha256 cellar: :any_skip_relocation, arm64_ventura: "2a7a2887c567d156a1e6d853f5c98fcfc7d4a9e736e143ca1cd222aa21465689"
    sha256 cellar: :any_skip_relocation, tahoe:         "a88e6a5e21863bfd06e59c5419c541d42c6f729766427992abf2f159050a6147"
    sha256 cellar: :any_skip_relocation, sequoia:       "87cc88d542658c85f588e4d25a11f5db6644ab8d02c46b9ad4e88fc263d9dcdf"
    sha256 cellar: :any_skip_relocation, sonoma:        "159e1f9aa5777a39a7035e052b8b28ae09181e5a811f36b4a53d29570f774a97"
    sha256 cellar: :any_skip_relocation, ventura:       "8a457ba4973600515e0fcbae3c153c54193cc65ae5407331051bfa9303a82e4a"
    sha256 cellar: :any_skip_relocation, x86_64_linux:  "5d5b11908e3cb13feb26c7346c02021fedd1515dd12a3309d1488f78c13c0f84"
  end

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
