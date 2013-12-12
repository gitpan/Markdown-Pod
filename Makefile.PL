
use strict;
use warnings;



use ExtUtils::MakeMaker 6.30;



my %WriteMakefileArgs = (
  "ABSTRACT" => "Convert Markdown to POD",
  "AUTHOR" => "Keedi Kim - \x{ae40}\x{b3c4}\x{d615} <keedi\@cpan.org>",
  "BUILD_REQUIRES" => {},
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
    "namespace::autoclean" => 0
  },
  "TEST_REQUIRES" => {
    "Test::More" => 0
  },
  "VERSION" => "0.004",
  "test" => {
    "TESTS" => "t/*.t"
  }
);


my %FallbackPrereqs = (
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
  "Test::More" => 0,
  "namespace::autoclean" => 0
);


unless ( eval { ExtUtils::MakeMaker->VERSION(6.63_03) } ) {
  delete $WriteMakefileArgs{TEST_REQUIRES};
  delete $WriteMakefileArgs{BUILD_REQUIRES};
  $WriteMakefileArgs{PREREQ_PM} = \%FallbackPrereqs;
}

delete $WriteMakefileArgs{CONFIGURE_REQUIRES}
  unless eval { ExtUtils::MakeMaker->VERSION(6.52) };

WriteMakefile(%WriteMakefileArgs);



