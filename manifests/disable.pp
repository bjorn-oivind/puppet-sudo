class sudo::disable inherits sudo {
    Package['sudo'] {
        ensure => absent,
    }

    File['/etc/sudoers'] {
        ensure => absent,
    }
}
