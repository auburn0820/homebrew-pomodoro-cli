class Pomo < Formula
  desc "A command-line Pomodoro timer for focused work sessions"
  homepage "https://github.com/auburn0820/pomodoro-cli"
  version "0.1.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/auburn0820/pomodoro-cli/releases/download/v0.1.0/pomo-0.1.0-aarch64-apple-darwin.tar.gz"
      sha256 "49a0170a71c2d30c6ae70cf51cc4886e9a6f85dbb5ee041aceb4f6a59b9b0695"
    else
      url "https://github.com/auburn0820/pomodoro-cli/releases/download/v0.1.0/pomo-0.1.0-x86_64-apple-darwin.tar.gz"
      sha256 "e009ec2328c61a8eba1018873f8ec09dee25f319019e6c6bc179061cdf54a707"
    end
  end

  def install
    bin.install "pomo"
  end

  test do
    system "#{bin}/pomo", "--version"
  end
end