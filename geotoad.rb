class Geotoad < Formula
  desc "Query tool to query the geocaching.com website"
  homepage "https://github.com/steve8x8/geotoad"
  url "https://github.com/steve8x8/geotoad/archive/3.27.0.tar.gz"
  sha256 "2a851e1938d7a1e713cfa4720dcbf2ceaf0266f190a62c728b6def8aea2dcf5b"
  head "https://github.com/steve8x8/geotoad.git"

  def install
    libexec.install %w[data interface lib templates]
    libexec.install "geotoad.rb" => "geotoad"

    bin.write_exec_script libexec/"geotoad"

    doc.install "FAQ.txt", "Templates.txt"
    man1.install "geotoad.1"
  end

  test do
    system "#{bin}/geotoad", "-V"
  end
end
