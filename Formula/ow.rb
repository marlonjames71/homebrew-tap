class Ow < Formula
  desc "Manage macOS Open With defaults from the command line"
  homepage "https://github.com/marlonjames71/OW-CLI"
  url "https://github.com/marlonjames71/OW-CLI/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "98c46dbc2b20b41593d32fc73f91f45e75df37d66332ad955156fa0e5d3c5f3e"
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
