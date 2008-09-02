require File.join(File.dirname(__FILE__), *%w[helper])

describe GithubHook do

  describe "old format" do
    before { @pc = GithubHook.new(PayloadBeforeJuly30)}
    
    it "has an array of commit objects" do
      commits = @pc.commits
      commits[0].sha.should == "de8251ff97ee194a289832576287d6f8ad74e3d0"
      commits[1].sha.should == "41a212ee83ca127e3c8cf465891ab7216a705f59"
    end

    it "has commit values" do
      commit = @pc.commits.first
      commit.url.should == "http://github.com/defunkt/github/commit/de8251ff97ee194a289832576287d6f8ad74e3d0"
      commit.message.should == "update pricing a tad"
      commit.timestamp.should == "2008-02-15T14:36:34-08:00" 
    end

    it "has commit author" do
      author = @pc.commits.first.author
      author.name.should == "Chris Wanstrath"
      author.email.should == "chris@ozmm.org"
    end

    it "has last commit" do
      @pc.last_commit.sha.should == "41a212ee83ca127e3c8cf465891ab7216a705f59"
    end
  end
  
  describe "new format" do
    before { @pc = GithubHook.new(PayloadAfterJuly30)}
    
    it "should have repo" do
      repository = @pc.repository
      repository.url.should ==  "http://github.com/defunkt/github"
      repository.name.should == "github"
    end

    it "has reference to branch" do
      @pc.ref.should == "refs/heads/master"
    end

    it "has before and after tag" do
      @pc.before.should == "5aef35982fb2d34e9d9d4502f6ede1072793222d"
      @pc.after.should == "de8251ff97ee194a289832576287d6f8ad74e3d0"
    end

    it "has owner" do
      owner = @pc.owner
      owner.email.should == "chris@ozmm.org"
      owner.name.should == "defunkt"
    end

    it "has an array of commit objects" do
      commits = @pc.commits
      commits[0].sha.should == "41a212ee83ca127e3c8cf465891ab7216a705f59"
      commits[1].sha.should == "de8251ff97ee194a289832576287d6f8ad74e3d0"
    end
    
    it "is not private if private flag is false" do 
      @pc.repository.private.should == false
    end
    
    it "has commit values" do
      commit = @pc.commits.first
      commit.url.should == "http://github.com/defunkt/github/commit/41a212ee83ca127e3c8cf465891ab7216a705f59"
      commit.message.should == "okay i give in"
      commit.timestamp.should == "2008-02-15T14:57:17-08:00"
    end

    it "has commit author" do
      author = @pc.commits.first.author
      author.name.should == "Chris Wanstrath"
      author.email.should == "chris@ozmm.org"
    end

    it "has last commit" do
      @pc.last_commit.sha.should == "41a212ee83ca127e3c8cf465891ab7216a705f59"
    end
    
  end
  
  describe "private project" do
    before { @pc = GithubHook.new(PrivateProject)}
    
    it "is private if private flag is false" do 
      @pc.repository.private.should == true
    end
    
  end
    
  
  
end

