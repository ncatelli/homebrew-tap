# This file was generated by GoReleaser. DO NOT EDIT.
class SsmHelpers < Formula
  desc "Help manage systems with AWS Systems Manager with management helpers."
  homepage "https://github.com/disneystreaming/ssm-helpers"
  version "0.2.0"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/disneystreaming/ssm-helpers/releases/download/v0.2.0/ssm-helpers_0.2.0_Darwin_x86_64.tar.gz"
    sha256 "365cdb5d162f6f8490e7adb1fd26766740d08a44f14dd5b56e99da133dda4b66"
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/disneystreaming/ssm-helpers/releases/download/v0.2.0/ssm-helpers_0.2.0_Linux_x86_64.tar.gz"
      sha256 "09d43fdc36bee747232b22a9db8601f82b8275a33bc33ca55cc7c16c4338934d"
    end
  end

  depends_on "awscli"
  depends_on "disneystreaming/tap/aws-session-manager-plugin"

  def install
    bin.install "ssm-run"
    bin.install "ssm-session"
  end
end
