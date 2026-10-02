class Pollen < Formula
  desc "Deploy Agent Skills from git repositories and local directories, declaratively"
  homepage "https://groupbees.github.io/pollen/"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/groupbees/pollen/releases/download/v0.1.0/pollen-aarch64-apple-darwin-v0.1.0.tar.gz"
      sha256 "2fed51e1e17dc6e6485a1fd9fca0a80ba6b67d1017871f449d39834f62afa201"
    end
    on_intel do
      url "https://github.com/groupbees/pollen/releases/download/v0.1.0/pollen-x86_64-apple-darwin-v0.1.0.tar.gz"
      sha256 "3481e7e1f8bfa55ed71b3bd93258be971da6442a165a78e3a9c3c654c9446868"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/groupbees/pollen/releases/download/v0.1.0/pollen-aarch64-unknown-linux-musl-v0.1.0.tar.gz"
      sha256 "d0c3b1a1fe33184ba0344930c9b3ace6056ec89341c58369bb99ae7f22830c96"
    end
    on_intel do
      url "https://github.com/groupbees/pollen/releases/download/v0.1.0/pollen-x86_64-unknown-linux-musl-v0.1.0.tar.gz"
      sha256 "1d6df29962f1f34d845a4e604482d2729b5642d2daf46af2883c9544c777b1fe"
    end
  end

  def install
    bin.install "pollen"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/pollen --version")
  end
end
