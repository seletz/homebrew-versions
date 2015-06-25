class Jython253 < Formula
  desc "Python implementation written in Java (successor to JPython)"
  homepage "http://www.jython.org"
  url "https://search.maven.org/remotecontent?filepath=org/python/jython-installer/2.5.3/jython-installer-2.5.3.jar"
  sha256 "05405966cdfa57abc8e705dd6aab92b8240097ce709fb916c8a0dbcaa491f99e"

  def install
    system "java", "-jar", cached_download, "-s", "-d", libexec
    bin.install_symlink libexec/"bin/jython"
  end
end
