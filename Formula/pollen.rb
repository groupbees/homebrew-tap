class Pollen < Formula
  desc "Deploy Agent Skills from git repositories and local directories, declaratively"
  homepage "https://groupbees.github.io/pollen/"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/groupbees/pollen/releases/download/v0.2.0/pollen-aarch64-apple-darwin-v0.2.0.tar.gz"
      sha256 "62e7bfc81bca69972657bd3c6c4d948bb4ed4c5e9e5ccce5df539f19678bbd77"
    end
    on_intel do
      url "https://github.com/groupbees/pollen/releases/download/v0.2.0/pollen-x86_64-apple-darwin-v0.2.0.tar.gz"
      sha256 "324aac6c89decd4518f8eb6bcb5448bc2d7be8badfe2696735f117d7e9dc2b81"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/groupbees/pollen/releases/download/v0.2.0/pollen-aarch64-unknown-linux-musl-v0.2.0.tar.gz"
      sha256 "f95ab5a261384efb0180f238c87bb8c1251ab78bbc8c5f990724ce4b9e310929"
    end
    on_intel do
      url "https://github.com/groupbees/pollen/releases/download/v0.2.0/pollen-x86_64-unknown-linux-musl-v0.2.0.tar.gz"
      sha256 "b9cff0cbd22a15df0893587e6c278a98783345a30e9b54fbef44c547b7a8e7a4"
    end
  end

  def install
    bin.install "pollen"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/pollen --version")
  end
end
