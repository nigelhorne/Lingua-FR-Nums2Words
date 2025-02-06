# NAME

Lingua::FR::Nums2Words - Converts numbers to French words

# DESCRIPTION

Nums2Words converts numbers to French words.

# VERSION

Version 1.01

# SYNOPSIS

    use Lingua::FR::Nums2Words;

    $result = num2word(5);
    # $result now holds 'cinq'

    @results = num2word(1, -2, 10, 100, 1000, 9999);
    # @results now holds ('un', 'moins deux', 'dix', 'cent', 'mil',
    #                     'neuf mille neuf cent quatre-vingt-dix neuf')

## num2word

Given a number, or array of numbers, returns their equivalent in French.

# AUTHOR

Fabien POTENCIER, <fabpot@cpan.org>

Maintained by Nigel Horne, `<njh at bandsman.co.uk>`

# SEE ALSO

[Lingua::FR::Numbers](https://metacpan.org/pod/Lingua%3A%3AFR%3A%3ANumbers)

# SUPPORT

You can find documentation for this module with the perldoc command.

    perldoc Lingua::FR::Nums2Words

You can also look for information at:

- MetaCPAN

    [https://metacpan.org/release/Lingua-FR-Nums2Words](https://metacpan.org/release/Lingua-FR-Nums2Words)

- RT: CPAN's request tracker

    [https://rt.cpan.org/NoAuth/Bugs.html?Dist=Lingua-FR-Nums2Words](https://rt.cpan.org/NoAuth/Bugs.html?Dist=Lingua-FR-Nums2Words)

- CPANTS

    [http://cpants.cpanauthors.org/dist/Lingua-FR-Nums2Words](http://cpants.cpanauthors.org/dist/Lingua-FR-Nums2Words)

- CPAN Testers' Matrix

    [http://matrix.cpantesters.org/?dist=Lingua-FR-Nums2Words](http://matrix.cpantesters.org/?dist=Lingua-FR-Nums2Words)

- CPAN Testers Dependencies

    [http://deps.cpantesters.org/?module=Lingua::FR::Nums2Words](http://deps.cpantesters.org/?module=Lingua::FR::Nums2Words)

# COPYRIGHT AND LICENSE

Copyright (c) 2004 by Fabien POTENCIER

This library is free software; you can redistribute it and/or modify
it under the same terms as Perl itself, either Perl version 5.8.3 or,
at your option, any later version of Perl 5 you may have available.
