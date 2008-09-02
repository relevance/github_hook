require File.join(File.dirname(__FILE__), *%w[helper])

describe GithubHook do
  
  before { @pc = GithubHook.new(FiveRunsPayLoad)}
  
  it "has commits" do
    @pc.commits.should.not.be.empty
    @pc.commits[0].sha.should == "bb7aebb382539bbd3e7a6118fc37438730c9ade5"
    @pc.commits[0].message.should == "Note that the echoe gem is required to use the Rakefile."
    @pc.commits[1].sha.should == "093560ad918d58f3864507f19462fd7c04f34eac"
    @pc.commits[1].message.should == "Ignore the generated packages."
  end

end