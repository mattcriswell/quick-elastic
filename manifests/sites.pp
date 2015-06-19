##
include epel

yumrepo { 'elasticsearch':
name => "Elasticsearch",
baseurl => "http://packages.elastic.co/elasticsearch/1.6/centos",
gpgcheck => True,
gpgkey =>"http://packages.elastic.co/GPG-KEY-elasticsearch",
}

class { 'java':
  distribution => 'jre',
}

class { 'elasticsearch':
  status => 'running'
}

elasticsearch::instance { 'es-01': }
