# AWS::EC2::LocalGatewayRouteTableVPCAssociation generated from spec 18.4.0
use Moose::Util::TypeConstraints;

coerce 'Cfn::Resource::Properties::AWS::EC2::LocalGatewayRouteTableVPCAssociation',
  from 'HashRef',
   via { Cfn::Resource::Properties::AWS::EC2::LocalGatewayRouteTableVPCAssociation->new( %$_ ) };

package Cfn::Resource::AWS::EC2::LocalGatewayRouteTableVPCAssociation {
  use Moose;
  extends 'Cfn::Resource';
  has Properties => (isa => 'Cfn::Resource::Properties::AWS::EC2::LocalGatewayRouteTableVPCAssociation', is => 'rw', coerce => 1);
  
  sub AttributeList {
    [ 'LocalGatewayId','LocalGatewayRouteTableVpcAssociationId','State' ]
  }
  sub supported_regions {
    [ 'ap-east-1','ap-northeast-1','ap-northeast-2','ap-south-1','ap-southeast-1','ap-southeast-2','ca-central-1','eu-central-1','eu-north-1','eu-west-1','eu-west-2','eu-west-3','me-south-1','sa-east-1','us-east-1','us-east-2','us-gov-east-1','us-gov-west-1','us-west-1','us-west-2' ]
  }
}



subtype 'Cfn::Resource::Properties::AWS::EC2::LocalGatewayRouteTableVPCAssociation::Tags',
     as 'Cfn::Value';

coerce 'Cfn::Resource::Properties::AWS::EC2::LocalGatewayRouteTableVPCAssociation::Tags',
  from 'HashRef',
   via {
     if (my $f = Cfn::TypeLibrary::try_function($_)) {
       return $f
     } else {
       return Cfn::Resource::Properties::AWS::EC2::LocalGatewayRouteTableVPCAssociation::Tags::Value->new( %$_ );
     }
   };

package Cfn::Resource::Properties::AWS::EC2::LocalGatewayRouteTableVPCAssociation::Tags::Value {
  use Moose;
  use MooseX::StrictConstructor;
  extends 'Cfn::Value::TypedValue';
  
  has Tags => (isa => 'ArrayOfCfn::Resource::Properties::TagType', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
}

package Cfn::Resource::Properties::AWS::EC2::LocalGatewayRouteTableVPCAssociation {
  use Moose;
  use MooseX::StrictConstructor;
  extends 'Cfn::Resource::Properties';
  
  has LocalGatewayRouteTableId => (isa => 'Cfn::Value::String', is => 'rw', coerce => 1, required => 1, traits => [ 'CfnMutability' ], mutability => 'Immutable');
  has Tags => (isa => 'Cfn::Resource::Properties::AWS::EC2::LocalGatewayRouteTableVPCAssociation::Tags', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has VpcId => (isa => 'Cfn::Value::String', is => 'rw', coerce => 1, required => 1, traits => [ 'CfnMutability' ], mutability => 'Immutable');
}

1;
### main pod documentation begin ###

=encoding UTF-8

=head1 NAME

Cfn::Resource::AWS::EC2::LocalGatewayRouteTableVPCAssociation - Cfn resource for AWS::EC2::LocalGatewayRouteTableVPCAssociation

=head1 DESCRIPTION

This module implements a Perl module that represents the CloudFormation object AWS::EC2::LocalGatewayRouteTableVPCAssociation.

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
