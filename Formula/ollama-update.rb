class OllamaUpdate < Formula
  desc "Check for Ollama model updates without pulling — digest-based dry run"
  homepage "https://github.com/bgupta/ollama-update"
  url "https://github.com/bgupta/ollama-update/archive/refs/tags/v0.1.1.tar.gz"
  sha256 "31115e7698fa7427b89c5828d2fd062843f267bf625393cfda4aa70838f3494c"
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
