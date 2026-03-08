class OllamaUpdate < Formula
  desc "Check for Ollama model updates without pulling — digest-based dry run"
  homepage "https://github.com/bgupta/ollama-update"
  url "https://github.com/bgupta/ollama-update/archive/refs/tags/v0.1.2.tar.gz"
  sha256 "5c939908b769e46509b13c424511f2e44458934c5712d47a57ac474de96181a2"
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
