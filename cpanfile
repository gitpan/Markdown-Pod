requires "File::Slurp" => "0";
requires "Getopt::Long" => "0";
requires "List::Util" => "0";
requires "Markdent::Parser" => "0";
requires "Markdent::Role::EventsAsMethods" => "0";
requires "Markdent::Types" => "0";
requires "Moose" => "0";
requires "MooseX::Params::Validate" => "0";
requires "MooseX::SemiAffordanceAccessor" => "0";
requires "MooseX::StrictConstructor" => "0";
requires "namespace::autoclean" => "0";

on 'test' => sub {
  requires "Test::More" => "0";
};

on 'configure' => sub {
  requires "ExtUtils::MakeMaker" => "6.30";
};

on 'develop' => sub {
  requires "Pod::Coverage::TrustPod" => "0";
  requires "Test::Pod" => "1.41";
  requires "Test::Pod::Coverage" => "1.08";
};
