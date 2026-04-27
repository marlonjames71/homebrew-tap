class Ow < Formula
  desc "Manage macOS Open With defaults from the command-line"
  homepage "https://github.com/marlonjames71/OW-CLI"
  url "https://github.com/marlonjames71/OW-CLI/archive/refs/tags/v0.2.0.tar.gz"
  sha256 "48e27c36f4535219e9fbe0b246dcfe15941086258ccb9739313e420f11f8567c"
  license "MIT"

  depends_on xcode: ["14.3", :build]

  def install
    system "swift", "build", "-c", "release", "--disable-sandbox"
    bin.install ".build/release/ow"
  end

  test do
    assert_match "0.1.0", shell_output("#{bin}/ow --version")
  end
end
