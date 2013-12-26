package MetaCPAN::API::Distribution;
# ABSTRACT: A Distribution data object

use Moo;

my @known_fields = qw<name bugs>;

foreach my $field (@known_fields) {
    has $field => (
        is      => 'ro',        
        default => sub {
            my $self = shift;
            return $self->data->{$field};
        },
    );
}

has data => (
    is       => 'ro',
    required => 1,
);

1;

__END__

=head1 DESCRIPTION


=head1 ATTRIBUTES
