class Gabo < Formula
  desc "Easy access to gitattributes boilerplates"
  homepage "https://github.com/jarrodldavis/gabo"
  url "https://github.com/jarrodldavis/gabo/archive/2.3.0.tar.gz"
  sha256 "4162e5390778c2ade78a3bc4ed56f2c3574b77387c303d74a93881216c77bc85"

  bottle :unneeded

  def install
    bin.install "gabo"
    bash_completion.install "shell-completions/gabo-completion.bash"
    zsh_completion.install "shell-completions/gabo-completion.zsh" => "_gabo"
    fish_completion.install "shell-completions/gabo.fish"
  end

  test do
    system "#{bin}/gabo", "update"
    assert_includes shell_output("#{bin}/gabo dump Common"), "Common.gitattributes"
  end
end
