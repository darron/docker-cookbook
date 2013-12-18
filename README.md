Docker Cookbook
=================

Requirements
------------

### Platform:

Ubuntu 12.0.4LTS, 13.0.4, 13.0.10

### Cookbooks:

apt

Attributes
----------

```
default['docker']['package']['distribution'] = 'docker'
default['docker']['package']['repo_url'] = 'https://get.docker.io/ubuntu'
default['docker']['package']['repo_key'] = 'https://get.docker.io/gpg'

default['docker']['upstart_file_path'] = '/etc/init/docker.conf'
default['docker']['upstart_file'] = 'https://raw.github.com/octohost/octohost/master/config/docker.conf'
```

Recipes
-------

### docker::default

Installs, enables and starts Docker.

NOTE: This does not take care of the AUFS kernel modules at the moment - [we're building those separately](https://github.com/octohost/ubuntu-12.0.4-3.8).

Testing
-------

[![Build Status](https://travis-ci.org/darron/docker-cookbook.png?branch=master)](https://travis-ci.org/darron/docker-cookbook)

The cookbook provides the following Rake tasks for testing:

    rake integration                  # Alias for kitchen:all
    rake kitchen:all                  # Run all test instances
    rake kitchen:default-ubuntu-1204  # Run default-ubuntu-1204 test instance
    rake lint                         # Lint Chef cookbooks
    rake rubocop                      # Run rubocop tests
    rake spec                         # Run ChefSpec examples
    rake tailor                       # Run tailor tests
    rake taste                        # Run taste tests
    rake test                         # Run all tests

License and Author
------------------

Author:: Darron Froese <darron@froese.org>

Copyright:: 2013, Darron Froese

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

    http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.

Contributing
------------

We welcome contributed improvements and bug fixes via the usual workflow:

1. Fork this repository
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new pull request
