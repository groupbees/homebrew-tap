class Pollen < Formula
  desc "Deploy Agent Skills from git repositories and local directories, declaratively"
  homepage "https://groupbees.github.io/pollen/"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/groupbees/pollen/releases/download/v0.6.0/pollen-aarch64-apple-darwin-v0.6.0.tar.gz"
      sha256 "2b153d865004f7328f0fb142877a0bbdb06b5972049ac48b446b1d0480b2ec20"
    end
    on_intel do
      url "https://github.com/groupbees/pollen/releases/download/v0.6.0/pollen-x86_64-apple-darwin-v0.6.0.tar.gz"
      sha256 "088b2e55abc88020f6bbe33979852ab69c0f1dbd7e160c42d3231e6a448a01bf"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/groupbees/pollen/releases/download/v0.6.0/pollen-aarch64-unknown-linux-musl-v0.6.0.tar.gz"
      sha256 "7da154f339d655d3780f1e6431bdc7d15426f829d14ec6466c47d3cd7aaefe22"
    end
    on_intel do
      url "https://github.com/groupbees/pollen/releases/download/v0.6.0/pollen-x86_64-unknown-linux-musl-v0.6.0.tar.gz"
      sha256 "25aafb729024e4bf54db7d01896631cf769f3dbf9baaca6a87d47d2965001bd3"
    end
  end

  def install
    bin.install "pollen"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/pollen --version")
  end
end
