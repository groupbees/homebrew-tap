class Pollen < Formula
  desc "Deploy Agent Skills from git repositories and local directories, declaratively"
  homepage "https://groupbees.github.io/pollen/"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/groupbees/pollen/releases/download/v0.4.0/pollen-aarch64-apple-darwin-v0.4.0.tar.gz"
      sha256 "5eb2c12c6029c46cc450ef9234fc3772f257dab5c28cf8425d05c057e01e1809"
    end
    on_intel do
      url "https://github.com/groupbees/pollen/releases/download/v0.4.0/pollen-x86_64-apple-darwin-v0.4.0.tar.gz"
      sha256 "04d7b6ce03fc17767cc30059a1d7ee793487a2a465f3b6fd43e3c9f9b9e3c7f7"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/groupbees/pollen/releases/download/v0.4.0/pollen-aarch64-unknown-linux-musl-v0.4.0.tar.gz"
      sha256 "268d1c9d78acf7e3dbb4c0dcd366cd382bad4ba063275fbd31a4a0362743763b"
    end
    on_intel do
      url "https://github.com/groupbees/pollen/releases/download/v0.4.0/pollen-x86_64-unknown-linux-musl-v0.4.0.tar.gz"
      sha256 "e364c9c3e626c04bd3731b92538d9a34ad5a9ba49524d8114cfe93e2f2384db7"
    end
  end

  def install
    bin.install "pollen"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/pollen --version")
  end
end
