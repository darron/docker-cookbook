# encoding: utf-8
name             'docker'
maintainer       'Darron Froese'
maintainer_email 'darron@froese.org'
license          'Apache 2.0'
description      'Installs/configures docker'
version          '0.16.0'
recipe           'docker::default', 'Installs/configures docker'

depends 'apt'
depends 'chef-sugar'
