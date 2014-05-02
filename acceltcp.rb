require "formula"

class Acceltcp < Formula
  homepage "https://github.com/KLab/AccelTCP"

  head do
    url "https://github.com/KLab/AccelTCP.git"
  end

  depends_on 'libev' => :build

  def install
    args = ["-j#{ENV.make_jobs}"]
    system "make", *args
    bin.install Dir['acceltcp']
  end

  test do
    system "acceltcp", "-V"
  end
end
