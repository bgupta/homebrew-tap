class OllamaUpdate < Formula
  desc "Check for Ollama model updates without pulling — digest-based dry run"
  homepage "https://github.com/bgupta/ollama-update"
  url "https://github.com/bgupta/ollama-update/archive/refs/tags/v0.1.7.tar.gz"
  sha256 "d98e0c40439ca3c75687e9f26e860ae17dee9dcc31efd5104cf60060b1421dc2"
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
