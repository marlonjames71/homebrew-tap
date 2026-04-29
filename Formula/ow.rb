class Ow < Formula
  desc "Manage macOS Open With defaults from the command-line"
  homepage "https://github.com/marlonjames71/OW-CLI"
  url "https://github.com/marlonjames71/OW-CLI/archive/refs/tags/v0.3.0.tar.gz"
  sha256 "64c20b0a6377d7976c0ce18efe8e25aa06de4b305f5127534b7e0eb965164fac"
  license "MIT"

  depends_on xcode: ["14.3", :build]

  def install
    system "swift", "build", "-c", "release", "--disable-sandbox"
    bin.install ".build/release/ow"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/ow --version")
  end
end
