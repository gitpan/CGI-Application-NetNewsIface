use strict;
use warnings;
use Module::Build;

my $builder = Module::Build->new(
    module_name         => 'CGI::Application::NetNewsIface',
    license             => 'bsd',
    dist_author         => 'Shlomi Fish <shlomif@iglu.org.il>',
    dist_version_from   => 'lib/CGI/Application/NetNewsIface.pm',
    requires => {
        'Test::More' => 0,
        'CGI::Application' => 0,
        'Net::NNTP' => 0,
        'Class::Accessor' => 0,
        'CGI::Application::Plugin::TT' => 0,
    },
    add_to_cleanup      => [ 'CGI-Application-NetNewsIface-*' ],
    create_makefile_pl => 'traditional',
);

$builder->create_build_script();
