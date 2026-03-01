class Gambi < Formula
  desc "Local MCP aggregator with execute-first workflow and OAuth refresh"
  homepage "https://github.com/victorarias/gambi"
  version "0.1.2"
  license "GPL-3.0-only"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/victorarias/gambi/releases/download/v0.1.2/gambi-aarch64-apple-darwin.tar.gz"
      sha256 "6d97c6ae7b2de3caa619df7e7c4dba17b36801d1a5840fb2677170bd1b1861c0"
    else
      url "https://github.com/victorarias/gambi/releases/download/v0.1.2/gambi-x86_64-apple-darwin.tar.gz"
      sha256 "7c90744d2960055234ed008bdb4b8f1470ac5dba553809194c8946886912fa32"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/victorarias/gambi/releases/download/v0.1.2/gambi-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "e63b111fa91b8f3c97e8d44634ec040647946d425bac31c012e6e1c18072dd26"
    else
      url "https://github.com/victorarias/gambi/releases/download/v0.1.2/gambi-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "cce8bb1b8df791274bc4e8583e30b507c82e8c428bbf122a7f9360869f78937e"
    end
  end

  def install
    bin.install "gambi"
    prefix.install "LICENSE"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/gambi --version")
  end
end
