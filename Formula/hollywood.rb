
class Hollywood < Formula
  desc "Hollywood"
  homepage "https://github.com/real-aazam/hollywood"
  url "https://github.com/real-aazam/hollywood/archive/refs/tags/v1.0.4.tar.gz"
  sha256 "9477bfae5e290ebe05c4189f0e58dc4b05861c7a5554df3cf2fac8371d3e706f"
  license "MIT"

  depends_on "jzaleski/homebrew-jzaleski/apg"
  depends_on "bmon"
  depends_on "cmatrix"
  depends_on "htop"
  depends_on "jp2a"
  depends_on "mplayer"
  depends_on "prettyping"
  depends_on "tmux"

  def install
    libexec.install Dir["*"]
    bin.write_exec_script libexec/"hollywood"
  end

  test do
    num_widgets_found = shell_output("#{bin}/hollywood -w 1 | grep -c 'hollywood-'")
    assert_equal num_widgets_found, "15\n"
  end
end
