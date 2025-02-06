use ExtUtils::MakeMaker;

my $dist = {
	COMPRESS => 'gzip -9f',	# Compress tarball using gzip
	SUFFIX => 'gz',	# File suffix for tarball
};

if($^O eq 'darwin') {
	$dist->{'TAR'} = 'gtar';
}

WriteMakefile(
	AUTHOR		=> q{Nigel Horne <njh@bandsman.co.uk>},
    NAME              => 'Lingua::FR::Nums2Words',
    VERSION_FROM      => 'lib/Lingua/FR/Nums2Words.pm',
	TEST_REQUIRES => {
		'Test::DescribeMe' => 0,
		'Test::Most' => 0,
		'Test::Needs' => 0,
	}, PREREQ_PM => {
		'ExtUtils::MakeMaker' => 6.64,	# Minimum version for TEST_REQUIRES
	},
	ABSTRACT_FROM	   => 'lib/Lingua/FR/Nums2Words.pm',
       # AUTHOR         => 'Fabien POTENCIER <fabpot@cpan.org>') : ()),
	META_MERGE		=> {
		'meta-spec' => { version => 2 },
		resources => {
			repository => {
				type => 'git',
				url => 'git://github.com/nigelhorne/Lingua-FR-Nums2Words.git',
				web => 'https://github.com/nigelhorne/Lingua-FR-Nums2Words',
				repository => 'https://github.com/nigelhorne/Lingua-FR-Nums2Words',
			},
			bugtracker => {
				# web => 'https://rt.cpan.org/Public/Dist/Display.html?Name=Lingua-FR-Nums2Words',
				# mailto => 'bug-Lingua-FR-Nums2Words@rt.cpan.org'
				web => 'https://github.com/nigelhorne/Lingua-FR-Nums2Words/issues',
				url => 'https://github.com/nigelhorne/Lingua-FR-Nums2Words/issues',
			}
		},
	},
);
