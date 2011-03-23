class sudo {
    package {'sudo':
        ensure => latest,
    }

    file {'/etc/sudoers':
        owner   => 'root',
        group   => 'root',
        mode    => '440',
        content => template("sudo/sudoers.erb"),
        require => Package['sudo'],
    }
}
