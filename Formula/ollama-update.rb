class OllamaUpdate < Formula
  desc "Check for Ollama model updates without pulling — digest-based dry run"
  homepage "https://github.com/bgupta/ollama-update"
  url "https://github.com/bgupta/ollama-update/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "396028aafb4f6d53c27eefad2dd799bd4493c95b4d7392fce815afcea12858a3"
  license "MIT"

  depends_on "python3"

  def install
    bin.install "ollama-update"
  end

  test do
    assert_match "Usage:", shell_output("#{bin}/ollama-update --help")
  end
end
