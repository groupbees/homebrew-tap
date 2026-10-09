class Pollen < Formula
  desc "Deploy Agent Skills from git repositories and local directories, declaratively"
  homepage "https://groupbees.github.io/pollen/"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/groupbees/pollen/releases/download/v0.4.1/pollen-aarch64-apple-darwin-v0.4.1.tar.gz"
      sha256 "29dfdb1226e8268373c674cf170c3b639f252d114be8f23ba530fddbe7ff1773"
    end
    on_intel do
      url "https://github.com/groupbees/pollen/releases/download/v0.4.1/pollen-x86_64-apple-darwin-v0.4.1.tar.gz"
      sha256 "ba56b85f485c65ea796561af0b327b78c9c5764dd9f4c82b1a47f3588223e568"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/groupbees/pollen/releases/download/v0.4.1/pollen-aarch64-unknown-linux-musl-v0.4.1.tar.gz"
      sha256 "18acdb71375bb055168d5be4191d7511d3eda1498698082223a7f5037e430633"
    end
    on_intel do
      url "https://github.com/groupbees/pollen/releases/download/v0.4.1/pollen-x86_64-unknown-linux-musl-v0.4.1.tar.gz"
      sha256 "ec70647a4641b9611e7bfa40afb49a41ec73faa355767eeb43d898cec9de0e3b"
    end
  end

  def install
    bin.install "pollen"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/pollen --version")
  end
end
