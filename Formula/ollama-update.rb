class OllamaUpdate < Formula
  desc "Check for Ollama model updates without pulling — digest-based dry run"
  homepage "https://github.com/bgupta/ollama-update"
  url "https://github.com/bgupta/ollama-update/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "4a6cb468e8a9ce8b1c7ac0ea461545ba318c793d6fb79ad14eadfc3c18c4b58f"
  license "MIT"

  depends_on "curl"
  depends_on "jq"

  def install
    bin.install "ollama-update"
  end

  def caveats
    <<~EOS
      ollama-update --update requires the Ollama CLI to be installed separately:
        https://ollama.com/download
      Dry-run mode (the default) only needs curl and jq.
    EOS
  end

  test do
    assert_match "Usage:", shell_output("#{bin}/ollama-update --help")
  end
end
