PayloadBeforeJuly30 = <<-EOL
{ 
  "before": "5aef35982fb2d34e9d9d4502f6ede1072793222d",
  "repository": {
    "url": "http://github.com/defunkt/github",
    "name": "github",
    "owner": {
      "email": "chris@ozmm.org",
      "name": "defunkt" 
    }
  },
  "commits": {
    "41a212ee83ca127e3c8cf465891ab7216a705f59": {
      "url": "http://github.com/defunkt/github/commit/41a212ee83ca127e3c8cf465891ab7216a705f59",
      "author": {
        "email": "chris@ozmm.org",
        "name": "Chris Wanstrath" 
      },
      "message": "okay i give in",
      "timestamp": "2008-02-15T14:57:17-08:00" 
    },
    "de8251ff97ee194a289832576287d6f8ad74e3d0": {
      "url": "http://github.com/defunkt/github/commit/de8251ff97ee194a289832576287d6f8ad74e3d0",
      "author": {
        "email": "chris@ozmm.org",
        "name": "Chris Wanstrath" 
      },
      "message": "update pricing a tad",
      "timestamp": "2008-02-15T14:36:34-08:00" 
    }
  },
  "after": "de8251ff97ee194a289832576287d6f8ad74e3d0",
  "ref": "refs/heads/master" 
}
EOL

PayloadAfterJuly30 = <<-EOL
{ 
  "before": "5aef35982fb2d34e9d9d4502f6ede1072793222d",
  "repository": {
    "url": "http://github.com/defunkt/github",
    "name": "github",
    "private": "false",
    "owner": {
      "email": "chris@ozmm.org",
      "name": "defunkt" 
    }
  },
  "commits": [
    {
      "id": "41a212ee83ca127e3c8cf465891ab7216a705f59",
      "url": "http://github.com/defunkt/github/commit/41a212ee83ca127e3c8cf465891ab7216a705f59",
      "author": {
        "email": "chris@ozmm.org",
        "name": "Chris Wanstrath" 
      },
      "message": "okay i give in",
      "timestamp": "2008-02-15T14:57:17-08:00",
      "added": ["filepath.rb"]
    },
    {
      "id": "de8251ff97ee194a289832576287d6f8ad74e3d0",
      "url": "http://github.com/defunkt/github/commit/de8251ff97ee194a289832576287d6f8ad74e3d0",
      "author": {
        "email": "chris@ozmm.org",
        "name": "Chris Wanstrath" 
      },
      "message": "update pricing a tad",
      "timestamp": "2008-02-15T14:36:34-08:00" 
    }
  ],
  "after": "de8251ff97ee194a289832576287d6f8ad74e3d0",
  "ref": "refs/heads/master" 
}
EOL

PrivateProject = <<-EOL
{ 
  "before": "5aef35982fb2d34e9d9d4502f6ede1072793222d",
  "repository": {
    "url": "http://github.com/defunkt/github",
    "name": "github",
    "private": "true",
    "owner": {
      "email": "chris@ozmm.org",
      "name": "defunkt" 
    }
  },
  "commits": [
    {
      "id": "41a212ee83ca127e3c8cf465891ab7216a705f59",
      "url": "http://github.com/defunkt/github/commit/41a212ee83ca127e3c8cf465891ab7216a705f59",
      "author": {
        "email": "chris@ozmm.org",
        "name": "Chris Wanstrath" 
      },
      "message": "okay i give in",
      "timestamp": "2008-02-15T14:57:17-08:00",
      "added": ["filepath.rb"]
    },
    {
      "id": "de8251ff97ee194a289832576287d6f8ad74e3d0",
      "url": "http://github.com/defunkt/github/commit/de8251ff97ee194a289832576287d6f8ad74e3d0",
      "author": {
        "email": "chris@ozmm.org",
        "name": "Chris Wanstrath" 
      },
      "message": "update pricing a tad",
      "timestamp": "2008-02-15T14:36:34-08:00" 
    }
  ],
  "after": "de8251ff97ee194a289832576287d6f8ad74e3d0",
  "ref": "refs/heads/master" 
}
EOL

FiveRunsPayLoad = <<-EOL
{
  "repository": {
    "name": "brigit",
    "watchers": 9,
    "private": false,
    "url": "http:\/\/github.com\/fiveruns\/brigit",
    "description": "Git utilities for multiple repositories & submodules",
    "forks": 1,
    "homepage": "http:\/\/fiveruns.org",
    "owner": {
      "name": "fiveruns",
      "email": "dev@fiveruns.com"
    }
  },
  "commits": [
    {
      "added": [

      ],
      "message": "Note that the echoe gem is required to use the Rakefile.",
      "timestamp": "2008-08-07T02:32:03-07:00",
      "removed": [

      ],
      "modified": [
        "README.rdoc"
      ],
      "author": {
        "name": "Graeme Mathieson",
        "email": "mathie@woss.name"
      },
      "url": "http:\/\/github.com\/fiveruns\/brigit\/commit\/bb7aebb382539bbd3e7a6118fc37438730c9ade5",
      "id": "bb7aebb382539bbd3e7a6118fc37438730c9ade5"
    },
    {
      "added": [

      ],
      "message": "Ignore the generated packages.",
      "timestamp": "2008-08-07T02:32:32-07:00",
      "removed": [

      ],
      "modified": [
        ".gitignore"
      ],
      "author": {
        "name": "Graeme Mathieson",
        "email": "mathie@woss.name"
      },
      "url": "http:\/\/github.com\/fiveruns\/brigit\/commit\/093560ad918d58f3864507f19462fd7c04f34eac",
      "id": "093560ad918d58f3864507f19462fd7c04f34eac"
    },
    {
      "added": [

      ],
      "message": "Show help if no command line arguments are supplied.",
      "timestamp": "2008-08-07T02:36:32-07:00",
      "removed": [

      ],
      "modified": [
        "lib\/brigit\/cli.rb"
      ],
      "author": {
        "name": "Graeme Mathieson",
        "email": "mathie@woss.name"
      },
      "url": "http:\/\/github.com\/fiveruns\/brigit\/commit\/38b95d0c48fff2a4c233a834e42724744a42bf0a",
      "id": "38b95d0c48fff2a4c233a834e42724744a42bf0a"
    }
  ],
  "after": "38b95d0c48fff2a4c233a834e42724744a42bf0a",
  "ref": "refs\/heads\/master",
  "before": "42f6a49633a985e5cd6dc2cebec15c3401232929"
}
EOL