class Gabo < Formula
  desc "Easy access to gitattributes boilerplates"
  homepage "https://github.com/jarrodldavis/gabo"
  url "https://github.com/jarrodldavis/gabo/archive/2.3.1.tar.gz"
  sha256 "992fa6721401cd56fabb4fe0b9a65587519848bede4b3aaaad1c8d4e9dca7ac3"

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
