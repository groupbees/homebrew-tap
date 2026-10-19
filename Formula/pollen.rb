class Pollen < Formula
  desc "Deploy Agent Skills from git repositories and local directories, declaratively"
  homepage "https://groupbees.github.io/pollen/"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/groupbees/pollen/releases/download/v0.5.0/pollen-aarch64-apple-darwin-v0.5.0.tar.gz"
      sha256 "5f228b2e286aaee4e39ab805b2888cdfc2ffd7b44960cc9c5eff0ae97975d85e"
    end
    on_intel do
      url "https://github.com/groupbees/pollen/releases/download/v0.5.0/pollen-x86_64-apple-darwin-v0.5.0.tar.gz"
      sha256 "074041b4aa1dd6302fa82aa17f028873d71b637c080b348a537936ce6475c5bd"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/groupbees/pollen/releases/download/v0.5.0/pollen-aarch64-unknown-linux-musl-v0.5.0.tar.gz"
      sha256 "c5ced97a2f962bbb7b44606d4d53970ffc4d03bdd5daf0fa64a423ae0b05e0d9"
    end
    on_intel do
      url "https://github.com/groupbees/pollen/releases/download/v0.5.0/pollen-x86_64-unknown-linux-musl-v0.5.0.tar.gz"
      sha256 "cab4ce4a8a429c98ae7391d0632604e10533a74ebaba9a12a9bbf9bd717553c6"
    end
  end

  def install
    bin.install "pollen"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/pollen --version")
  end
end
