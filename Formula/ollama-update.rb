class OllamaUpdate < Formula
  desc "Check for Ollama model updates without pulling — digest-based dry run"
  homepage "https://github.com/bgupta/ollama-update"
  url "https://github.com/bgupta/ollama-update/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "83993b4ccaf02db131ac929941d7a7dcf91f09d69490e9a07c2212ae1f3e7807"
  license "MIT"

  depends_on "curl"
  depends_on "jq"

  def install
    bin.install "ollama-update"
  end

  def caveats
    <<~EOS
      ollama-update requires Ollama to be installed separately:
        https://ollama.com/download
    EOS
  end

  test do
    assert_match "Usage:", shell_output("#{bin}/ollama-update --help")
  end
end
