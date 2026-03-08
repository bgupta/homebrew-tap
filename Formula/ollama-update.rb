class OllamaUpdate < Formula
  desc "Check for Ollama model updates without pulling — digest-based dry run"
  homepage "https://github.com/bgupta/ollama-update"
  url "https://github.com/bgupta/ollama-update/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "64a77e6ae80022ec924412eef339f307b6fcf965fcdc2e9f0b8d60a131de1c4b"
  license "MIT"

  depends_on "curl"
  depends_on "jq"
  depends_on "ollama"

  def install
    bin.install "ollama-update"
  end

  test do
    assert_match "Usage:", shell_output("#{bin}/ollama-update --help")
  end
end
