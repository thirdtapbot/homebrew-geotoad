class Geotoad < Formula
  desc "Query tool to query the geocaching.com website"
  homepage "https://github.com/steve8x8/geotoad"
  url "https://github.com/steve8x8/geotoad/archive/3.26.0.tar.gz"
  sha256 "0eb11cb622db36bb6789dc40780a994257ce0bb7b027472c04fef074f5ca44e1"
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
