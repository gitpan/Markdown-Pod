
use strict;
use warnings;



use ExtUtils::MakeMaker 6.30;



my %WriteMakefileArgs = (
  "ABSTRACT" => "Convert Markdown to POD",
  "AUTHOR" => "Keedi Kim - \352\271\200\353\217\204\355\230\225 <keedi\@cpan.org>",
  "BUILD_REQUIRES" => {
    "Test::More" => 0
  },
  "CONFIGURE_REQUIRES" => {
    "ExtUtils::MakeMaker" => "6.30"
  },
  "DISTNAME" => "Markdown-Pod",
  "EXE_FILES" => [
    "bin/markdown2pod"
  ],
  "LICENSE" => "perl",
  "NAME" => "Markdown::Pod",
  "PREREQ_PM" => {
    "Encode" => 0,
    "File::Slurp" => 0,
    "Getopt::Long" => 0,
    "List::Util" => 0,
    "Markdent::Parser" => 0,
    "Markdent::Role::EventsAsMethods" => 0,
    "Markdent::Types" => 0,
    "Moose" => 0,
    "MooseX::Params::Validate" => 0,
    "MooseX::SemiAffordanceAccessor" => 0,
    "MooseX::StrictConstructor" => 0,
    "namespace::autoclean" => 0,
    "strict" => 0,
    "warnings" => 0
  },
  "VERSION" => "0.001",
  "test" => {
    "TESTS" => "t/*.t"
  }
);


unless ( eval { ExtUtils::MakeMaker->VERSION(6.56) } ) {
  my $br = delete $WriteMakefileArgs{BUILD_REQUIRES};
  my $pp = $WriteMakefileArgs{PREREQ_PM};
  for my $mod ( keys %$br ) {
    if ( exists $pp->{$mod} ) {
      $pp->{$mod} = $br->{$mod} if $br->{$mod} > $pp->{$mod};
    }
    else {
      $pp->{$mod} = $br->{$mod};
    }
  }
}

delete $WriteMakefileArgs{CONFIGURE_REQUIRES}
  unless eval { ExtUtils::MakeMaker->VERSION(6.52) };

WriteMakefile(%WriteMakefileArgs);



