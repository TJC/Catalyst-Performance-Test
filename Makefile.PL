#!/usr/bin/env perl
# IMPORTANT: if you delete this file your app will not work as
# expected.  You have been warned.
use inc::Module::Install;

name 'PerfComp';
all_from 'lib/PerfComp.pm';

requires 'Catalyst::Runtime' => '5.70013';
requires 'Catalyst::Engine::HTTP::Prefork';
requires 'Catalyst::Plugin::ConfigLoader';
requires 'Catalyst::Plugin::Static::Simple';
requires 'Catalyst::Action::RenderView';
requires 'Catalyst::View::TT';
requires 'parent';
requires 'Config::General';

catalyst;

install_script glob('script/*.pl');
auto_install;
WriteAll;
