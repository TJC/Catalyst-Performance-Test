#!/usr/bin/env perl
use strict;
use warnings;
use Test::More tests => 4;

BEGIN { use_ok 'Catalyst::Test', 'PerfComp' }

ok( request('/')->is_success, 'Request should succeed' );

ok( request('/main/1/foo/2')->is_success, 'Request should succeed' );

ok( request('/main/wibble/bar/wotsit')->is_success, 'Request should succeed' );
