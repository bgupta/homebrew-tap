class OllamaUpdate < Formula
  desc "Check for Ollama model updates without pulling — digest-based dry run"
  homepage "https://github.com/bgupta/ollama-update"
  url "https://github.com/bgupta/ollama-update/archive/refs/tags/v0.1.3.tar.gz"
  sha256 "6bd119f2ff5a9bfa544a3b8d236ef9b65beb66d2fad0f8500d7c1ba68c8e600b"
  license "MIT"

  depends_on "curl"
  depends_on "bash"
  depends_on "jq"

  def caveats
    <<~EOS
      Requires Ollama to be installed separately:
        https://ollama.com/download
    EOS
  end

  def install
    bin.install "ollama-update"
  end

  test do
    assert_match "Usage:", shell_output("#{bin}/ollama-update --help")
  end
end
