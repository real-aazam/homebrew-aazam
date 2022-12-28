
class Hollywood < Formula
  desc "Hollywood"
  homepage "https://github.com/real-aazam/hollywood"
  url "https://github.com/real-aazam/hollywood/archive/refs/tags/v1.0.0.tar.gz"
  sha256 "41ecff0b775c413956bc0806e95dafd046b0d442d8358ab4d3decc6435f55e97"
  license "MIT"

  depends_on "jzaleski/homebrew-jzaleski/apg"
  depends_on "bmon"
  depends_on "cmatrix"
  depends_on "htop"
  depends_on "jp2a"
  depends_on "mplayer"
  depends_on "prettyping"

  def install
    libexec.install Dir["*"]
    bin.write_exec_script libexec/"hollywood"
  end

  test do
    num_widgets_found = shell_output("#{bin}/hollywood -w 1 | grep -c 'hollywood-'")
    assert_equal num_widgets_found, "15\n"
  end
end
