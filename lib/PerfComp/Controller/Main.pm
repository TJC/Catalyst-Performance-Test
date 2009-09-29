package PerfComp::Controller::Main;

use strict;
use warnings;
use parent 'Catalyst::Controller';

=head1 NAME

PerfComp::Controller::Main - Main Controller for PerfComp

=head1 DESCRIPTION

[enter your description here]

=head1 METHODS

=cut

=head2 index

=cut

sub main :Chained :CaptureArgs(1) {
    my ( $self, $c, $arg ) = @_;

    $c->stash->{first_arg} = $arg;
}

=head2 foo

=cut

sub foo :Chained('main') :Args(1) {
    my ( $self, $c, $arg ) = @_;
    $c->stash->{second_arg} = $arg;
}

=head2 bar

=cut

sub bar :Chained('main') :Args(1) {
    my ( $self, $c, $arg ) = @_;
    $c->stash->{second_arg} = $arg;
}

=head1 AUTHOR

Toby Corkindale,,,

=head1 LICENSE

This library is free software. You can redistribute it and/or modify
it under the same terms as Perl itself.

=cut

1;
