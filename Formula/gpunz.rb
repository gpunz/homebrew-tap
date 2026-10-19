# Homebrew formula for gpunz, the command-line client of the gpu.nz GPU cloud.
class Gpunz < Formula
  desc "Rent cloud GPUs (RTX 4090, A100, H100) by the minute from your terminal"
  homepage "https://gpu.nz/en/docs/cli"
  version "0.3.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/gpunz/gpunz-cli/releases/download/v0.3.0/gpunz-darwin-arm64"
      sha256 "86de4038dd8d5951177571b39899bbbbfa2c72348ded5b7367b6322752ae7133"
    else
      url "https://github.com/gpunz/gpunz-cli/releases/download/v0.3.0/gpunz-darwin-amd64"
      sha256 "f3029116eb06e43ee2a127ac861e16dcb70ca197593d3f81efb140b13708d3cf"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/gpunz/gpunz-cli/releases/download/v0.3.0/gpunz-linux-arm64"
      sha256 "7c8a6f2e51f40a48bc7b5eb864e96abe1e9dcc04549be953d36dabf87e532fcd"
    else
      url "https://github.com/gpunz/gpunz-cli/releases/download/v0.3.0/gpunz-linux-amd64"
      sha256 "d346e8211c7bb541f0a7fc1c84b1113df27e5382d69cb947e66415b75182f5d7"
    end
  end

  def install
    # the release ships bare binaries, one per platform
    bin.install Dir["gpunz-*"].first => "gpunz"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/gpunz version")
  end
end
