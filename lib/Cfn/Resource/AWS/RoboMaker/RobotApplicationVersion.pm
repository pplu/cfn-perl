# AWS::RoboMaker::RobotApplicationVersion generated from spec 14.3.0
use Moose::Util::TypeConstraints;

coerce 'Cfn::Resource::Properties::AWS::RoboMaker::RobotApplicationVersion',
  from 'HashRef',
   via { Cfn::Resource::Properties::AWS::RoboMaker::RobotApplicationVersion->new( %$_ ) };

package Cfn::Resource::AWS::RoboMaker::RobotApplicationVersion {
  use Moose;
  extends 'Cfn::Resource';
  has Properties => (isa => 'Cfn::Resource::Properties::AWS::RoboMaker::RobotApplicationVersion', is => 'rw', coerce => 1);
  
  sub AttributeList {
    [  ]
  }
  sub supported_regions {
    [ 'ap-northeast-1','ap-southeast-1','eu-central-1','eu-west-1','us-east-1','us-east-2','us-west-2' ]
  }
}



package Cfn::Resource::Properties::AWS::RoboMaker::RobotApplicationVersion {
  use Moose;
  use MooseX::StrictConstructor;
  extends 'Cfn::Resource::Properties';
  
  has Application => (isa => 'Cfn::Value::String', is => 'rw', coerce => 1, required => 1, traits => [ 'CfnMutability' ], mutability => 'Immutable');
  has CurrentRevisionId => (isa => 'Cfn::Value::String', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Immutable');
}

1;
### main pod documentation begin ###

=encoding UTF-8

=head1 NAME

Cfn::Resource::AWS::RoboMaker::RobotApplicationVersion - Cfn resource for AWS::RoboMaker::RobotApplicationVersion

=head1 DESCRIPTION

This module implements a Perl module that represents the CloudFormation object AWS::RoboMaker::RobotApplicationVersion.

See L<Cfn> for more information on how to use it.

=head1 AUTHOR

    Jose Luis Martinez
    CAPSiDE
    jlmartinez@capside.com

=head1 COPYRIGHT and LICENSE

Copyright (c) 2013 by CAPSiDE
This code is distributed under the Apache 2 License. The full text of the 
license can be found in the LICENSE file included with this module.

=cut
