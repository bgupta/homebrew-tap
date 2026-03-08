class OllamaUpdate < Formula
  desc "Check for Ollama model updates without pulling — digest-based dry run"
  homepage "https://github.com/bgupta/ollama-update"
  url "https://github.com/bgupta/ollama-update/archive/refs/tags/v0.1.3.tar.gz"
  sha256 "c0c79579cb547562ac2da5b0bd7c969b0848467bfba8fa0ed2863300604c847c"
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
