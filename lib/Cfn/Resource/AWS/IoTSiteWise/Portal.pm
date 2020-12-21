# AWS::IoTSiteWise::Portal generated from spec 22.0.0
use Moose::Util::TypeConstraints;

coerce 'Cfn::Resource::Properties::AWS::IoTSiteWise::Portal',
  from 'HashRef',
   via { Cfn::Resource::Properties::AWS::IoTSiteWise::Portal->new( %$_ ) };

package Cfn::Resource::AWS::IoTSiteWise::Portal {
  use Moose;
  extends 'Cfn::Resource';
  has Properties => (isa => 'Cfn::Resource::Properties::AWS::IoTSiteWise::Portal', is => 'rw', coerce => 1);
  
  sub AttributeList {
    [ 'PortalArn','PortalClientId','PortalId','PortalStartUrl','PortalStatus' ]
  }
  sub supported_regions {
    [ 'ap-southeast-1','ap-southeast-2','eu-central-1','eu-west-1','us-east-1','us-west-2' ]
  }
}



subtype 'Cfn::Resource::Properties::AWS::IoTSiteWise::Portal::MonitorErrorDetails',
     as 'Cfn::Value';

coerce 'Cfn::Resource::Properties::AWS::IoTSiteWise::Portal::MonitorErrorDetails',
  from 'HashRef',
   via {
     if (my $f = Cfn::TypeLibrary::try_function($_)) {
       return $f
     } else {
       return Cfn::Resource::Properties::Object::AWS::IoTSiteWise::Portal::MonitorErrorDetails->new( %$_ );
     }
   };

package Cfn::Resource::Properties::Object::AWS::IoTSiteWise::Portal::MonitorErrorDetails {
  use Moose;
  use MooseX::StrictConstructor;
  extends 'Cfn::Value::TypedValue';
  
  has code => (isa => 'Cfn::Value::String', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has message => (isa => 'Cfn::Value::String', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
}

subtype 'Cfn::Resource::Properties::AWS::IoTSiteWise::Portal::PortalStatus',
     as 'Cfn::Value';

coerce 'Cfn::Resource::Properties::AWS::IoTSiteWise::Portal::PortalStatus',
  from 'HashRef',
   via {
     if (my $f = Cfn::TypeLibrary::try_function($_)) {
       return $f
     } else {
       return Cfn::Resource::Properties::Object::AWS::IoTSiteWise::Portal::PortalStatus->new( %$_ );
     }
   };

package Cfn::Resource::Properties::Object::AWS::IoTSiteWise::Portal::PortalStatus {
  use Moose;
  use MooseX::StrictConstructor;
  extends 'Cfn::Value::TypedValue';
  
  has error => (isa => 'Cfn::Resource::Properties::AWS::IoTSiteWise::Portal::MonitorErrorDetails', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has state => (isa => 'Cfn::Value::String', is => 'rw', coerce => 1, required => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
}

package Cfn::Resource::Properties::AWS::IoTSiteWise::Portal {
  use Moose;
  use MooseX::StrictConstructor;
  extends 'Cfn::Resource::Properties';
  
  has PortalContactEmail => (isa => 'Cfn::Value::String', is => 'rw', coerce => 1, required => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has PortalDescription => (isa => 'Cfn::Value::String', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has PortalName => (isa => 'Cfn::Value::String', is => 'rw', coerce => 1, required => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has RoleArn => (isa => 'Cfn::Value::String', is => 'rw', coerce => 1, required => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has Tags => (isa => 'ArrayOfCfn::Resource::Properties::TagType', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
}

1;
### main pod documentation begin ###

=encoding UTF-8

=head1 NAME

Cfn::Resource::AWS::IoTSiteWise::Portal - Cfn resource for AWS::IoTSiteWise::Portal

=head1 DESCRIPTION

This module implements a Perl module that represents the CloudFormation object AWS::IoTSiteWise::Portal.

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
