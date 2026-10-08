class Pollen < Formula
  desc "Deploy Agent Skills from git repositories and local directories, declaratively"
  homepage "https://groupbees.github.io/pollen/"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/groupbees/pollen/releases/download/v0.3.0/pollen-aarch64-apple-darwin-v0.3.0.tar.gz"
      sha256 "742ff8f54b69a339a2af0ee14fdb65676bf178ad878a68005418f112fcf78403"
    end
    on_intel do
      url "https://github.com/groupbees/pollen/releases/download/v0.3.0/pollen-x86_64-apple-darwin-v0.3.0.tar.gz"
      sha256 "a3a5f408ddc6f8109e760f58a00231df94d08a3bfb24db96ad807d9e7f8919d3"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/groupbees/pollen/releases/download/v0.3.0/pollen-aarch64-unknown-linux-musl-v0.3.0.tar.gz"
      sha256 "6857c1212ee32f0bf96a5817f31fb9b2748e3465efab4476b5cda728ee624019"
    end
    on_intel do
      url "https://github.com/groupbees/pollen/releases/download/v0.3.0/pollen-x86_64-unknown-linux-musl-v0.3.0.tar.gz"
      sha256 "ece21ec46d92c4b13a5fd584722b47ef8a188f74fafd8a721e29b4c988b373d8"
    end
  end

  def install
    bin.install "pollen"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/pollen --version")
  end
end
