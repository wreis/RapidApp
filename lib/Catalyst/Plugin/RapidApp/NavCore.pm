package Catalyst::Plugin::RapidApp::NavCore;
use Moose::Role;
use namespace::autoclean;

with 'Catalyst::Plugin::RapidApp::CoreSchema';

use RapidApp::Include qw(sugar perlutil);
use CatalystX::InjectComponent;

after 'setup_components' => sub {
  my $c = shift;
  
  CatalystX::InjectComponent->inject(
    into => $c,
    component => 'Catalyst::Plugin::RapidApp::NavCore::Controller',
    as => 'Controller::View'
  );
};

1;

