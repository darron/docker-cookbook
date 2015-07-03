# encoding: utf-8
name             'docker'
maintainer       'Darron Froese'
maintainer_email 'darron@froese.org'
license          'Apache 2.0'
description      'Installs/configures docker'
version          '1.0.1'
recipe           'docker::default', 'Installs/configures docker'

depends 'apt'
depends 'chef-sugar'
