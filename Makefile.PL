use 5.010000;
use ExtUtils::MakeMaker;
# See lib/ExtUtils/MakeMaker.pm for details of how to influence
# the contents of the Makefile that is written.

die "OS unsupported\n" if ($^O ne 'MSWin32');
 
WriteMakefile(
    NAME              => 'RAR::Unrar',
    VERSION_FROM      => 'lib/RAR/Unrar.pm', # finds $VERSION
    PREREQ_PM         => {'Win32::API' => 0,'Carp' => 0,'File::Basename' => 0}, # e.g., Module::Name => 1.1
	'dist'  => {
        COMPRESS => 'gzip -9f', 
        SUFFIX   => 'gz'
    },
    ($] >= 5.005 ?     ## Add these new keywords supported since 5.005
      (ABSTRACT_FROM  => 'lib/RAR/Unrar.pm', # retrieve abstract from module
       AUTHOR         => 'Nikos Vaggalis <nikos.vaggalis@gmail.com>') : ()),
);
