class OllamaUpdate < Formula
  desc "Check for Ollama model updates without pulling — digest-based dry run"
  homepage "https://github.com/bgupta/ollama-update"
  url "https://github.com/bgupta/ollama-update/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "0805aab8591235d9a25517aa4f56670245497220f14e0193fa308408d47d3b51"
  license "MIT"

  depends_on "python3"

  def install
    bin.install "ollama_update.sh"
  end

  test do
    assert_match "Usage:", shell_output("#{bin}/ollama_update.sh --help")
  end
end
