class Gabo < Formula
  desc "Easy access to gitattributes boilerplates"
  homepage "https://github.com/jarrodldavis/gabo"
  url "https://github.com/jarrodldavis/gabo/archive/2.2.0.tar.gz"
  sha256 "17662f48d0516cd897dff5705e8d4afd59839b830e1d4c5d9664bfd09280ea24"

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
