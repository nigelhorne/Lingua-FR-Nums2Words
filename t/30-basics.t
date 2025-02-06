#!/usr/bin/env perl

# Failing edge cases that need to be fixed prior to the next release

use strict;
use warnings;
use Test::Most;
use Lingua::FR::Nums2Words qw(num2word);

# Edge case tests
subtest 'Basic numbers' => sub {
    is(num2word(0), 'zéro', '0 should be "zéro"');
    is(num2word(1), 'un', '1 should be "un"');
    is(num2word(10), 'dix', '10 should be "dix"');
    is(num2word(19), 'dix-neuf', '19 should be "dix-neuf"');
};

subtest 'Tens and unique French rules' => sub {
    is(num2word(20), 'vingt', '20 should be "vingt"');
    is(num2word(70), 'soixante-dix', '70 should be "soixante-dix"');
    is(num2word(80), 'quatre-vingt', '80 should be "quatre-vingt"');
    is(num2word(90), 'quatre-vingt-dix', '90 should be "quatre-vingt-dix"');
};

subtest 'Hundreds and special cases' => sub {
    is(num2word(100), 'cent', '100 should be "cent"');
    is(num2word(101), 'cent un', '101 should be "cent un"');
    is(num2word(200), 'deux cent', '200 should be "deux cent"');
    is(num2word(201), 'deux cent un', '201 should be "deux cent un"');
    is(num2word(999), 'neuf cent quatre-vingt-dix-neuf', '999 should be "neuf cent quatre-vingt-dix-neuf"');
};

subtest 'Thousands' => sub {
    is(num2word(1000), 'mille', '1000 should be "mille"');
    is(num2word(2000), 'deux mille', '2000 should be "deux mille"');
    is(num2word(1000000), 'un million', '1000000 should be "un million"');
};

subtest 'Negative numbers' => sub {
    is(num2word(-1), 'moins un', '-1 should be "moins un"');
    is(num2word(-100), 'moins cent', '-100 should be "moins cent"');
    is(num2word(-999999), 'moins neuf cent quatre-vingt-dix-neuf mille neuf cent quatre-vingt-dix-neuf', '-999999 should be correct');
};

subtest 'Large numbers' => sub {
    is(num2word(1_000_000_000), 'un milliard', '1_000_000_000 should be "un milliard"');
    is(num2word(1_000_000_000_000), 'un trillion', '1_000_000_000_000 should be "un trillion"');
};

subtest 'Pluralization and spacing issues' => sub {
    is(num2word(200), 'deux cent', '200 should not have plural s');
    is(num2word(1000000), 'un million', 'Million should be singular with un');
    is(num2word(2000000), 'deux millions', 'Plural s in "millions" for 2 million');
};

# Run tests
done_testing();

