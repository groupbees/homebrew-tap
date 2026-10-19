class Pollen < Formula
  desc "Deploy Agent Skills from git repositories and local directories, declaratively"
  homepage "https://groupbees.github.io/pollen/"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/groupbees/pollen/releases/download/v0.4.2/pollen-aarch64-apple-darwin-v0.4.2.tar.gz"
      sha256 "f63c814683fee248f2b42c4eee5dcd5b1df1eac32bf33096cfd290c3e9e990df"
    end
    on_intel do
      url "https://github.com/groupbees/pollen/releases/download/v0.4.2/pollen-x86_64-apple-darwin-v0.4.2.tar.gz"
      sha256 "a828dbbdd6682d72254f79b390a5e7bf2d5b8f4d1f44730bdca4d90c5d63fd84"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/groupbees/pollen/releases/download/v0.4.2/pollen-aarch64-unknown-linux-musl-v0.4.2.tar.gz"
      sha256 "d9d5cb4630d466137b4e1d6e3cc7decb10a5b70ed9abc0f49ac822e5c075c0a2"
    end
    on_intel do
      url "https://github.com/groupbees/pollen/releases/download/v0.4.2/pollen-x86_64-unknown-linux-musl-v0.4.2.tar.gz"
      sha256 "83488784f3f5a8857a79415b5c763a1d13d84b9536ef61763a5c3ae2a9a04780"
    end
  end

  def install
    bin.install "pollen"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/pollen --version")
  end
end
