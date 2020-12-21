# AWS::ElastiCache::UserGroup generated from spec 22.0.0
use Moose::Util::TypeConstraints;

coerce 'Cfn::Resource::Properties::AWS::ElastiCache::UserGroup',
  from 'HashRef',
   via { Cfn::Resource::Properties::AWS::ElastiCache::UserGroup->new( %$_ ) };

package Cfn::Resource::AWS::ElastiCache::UserGroup {
  use Moose;
  extends 'Cfn::Resource';
  has Properties => (isa => 'Cfn::Resource::Properties::AWS::ElastiCache::UserGroup', is => 'rw', coerce => 1);
  
  sub AttributeList {
    [ 'Arn','PendingChanges','ReplicationGroupIds','Status' ]
  }
  sub supported_regions {
    [ 'ap-east-1','ap-northeast-1','ap-northeast-2','ap-northeast-3','ap-south-1','ap-southeast-1','ap-southeast-2','ca-central-1','cn-north-1','cn-northwest-1','eu-central-1','eu-north-1','eu-south-1','eu-west-1','eu-west-2','eu-west-3','me-south-1','sa-east-1','us-east-1','us-east-2','us-west-1','us-west-2' ]
  }
}



subtype 'Cfn::Resource::Properties::AWS::ElastiCache::UserGroup::UserIdList',
     as 'Cfn::Value';

coerce 'Cfn::Resource::Properties::AWS::ElastiCache::UserGroup::UserIdList',
  from 'HashRef',
   via {
     if (my $f = Cfn::TypeLibrary::try_function($_)) {
       return $f
     } else {
       return Cfn::Resource::Properties::Object::AWS::ElastiCache::UserGroup::UserIdList->new( %$_ );
     }
   };

package Cfn::Resource::Properties::Object::AWS::ElastiCache::UserGroup::UserIdList {
  use Moose;
  use MooseX::StrictConstructor;
  extends 'Cfn::Value::TypedValue';
  
  has UserIdList => (isa => 'Cfn::Value::Array|Cfn::Value::Function|Cfn::DynamicValue', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
}

subtype 'Cfn::Resource::Properties::AWS::ElastiCache::UserGroup::UserGroupPendingChanges',
     as 'Cfn::Value';

coerce 'Cfn::Resource::Properties::AWS::ElastiCache::UserGroup::UserGroupPendingChanges',
  from 'HashRef',
   via {
     if (my $f = Cfn::TypeLibrary::try_function($_)) {
       return $f
     } else {
       return Cfn::Resource::Properties::Object::AWS::ElastiCache::UserGroup::UserGroupPendingChanges->new( %$_ );
     }
   };

package Cfn::Resource::Properties::Object::AWS::ElastiCache::UserGroup::UserGroupPendingChanges {
  use Moose;
  use MooseX::StrictConstructor;
  extends 'Cfn::Value::TypedValue';
  
  has UserIdsToAdd => (isa => 'Cfn::Value::Array|Cfn::Value::Function|Cfn::DynamicValue', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has UserIdsToRemove => (isa => 'Cfn::Value::Array|Cfn::Value::Function|Cfn::DynamicValue', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
}

subtype 'Cfn::Resource::Properties::AWS::ElastiCache::UserGroup::ReplicationGroupIdList',
     as 'Cfn::Value';

coerce 'Cfn::Resource::Properties::AWS::ElastiCache::UserGroup::ReplicationGroupIdList',
  from 'HashRef',
   via {
     if (my $f = Cfn::TypeLibrary::try_function($_)) {
       return $f
     } else {
       return Cfn::Resource::Properties::Object::AWS::ElastiCache::UserGroup::ReplicationGroupIdList->new( %$_ );
     }
   };

package Cfn::Resource::Properties::Object::AWS::ElastiCache::UserGroup::ReplicationGroupIdList {
  use Moose;
  use MooseX::StrictConstructor;
  extends 'Cfn::Value::TypedValue';
  
  has ReplicationGroupIdList => (isa => 'Cfn::Value::Array|Cfn::Value::Function|Cfn::DynamicValue', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
}

package Cfn::Resource::Properties::AWS::ElastiCache::UserGroup {
  use Moose;
  use MooseX::StrictConstructor;
  extends 'Cfn::Resource::Properties';
  
  has Engine => (isa => 'Cfn::Value::String', is => 'rw', coerce => 1, required => 1, traits => [ 'CfnMutability' ], mutability => 'Immutable');
  has UserGroupId => (isa => 'Cfn::Value::String', is => 'rw', coerce => 1, required => 1, traits => [ 'CfnMutability' ], mutability => 'Immutable');
  has UserIds => (isa => 'Cfn::Resource::Properties::AWS::ElastiCache::UserGroup::UserIdList', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
}

1;
### main pod documentation begin ###

=encoding UTF-8

=head1 NAME

Cfn::Resource::AWS::ElastiCache::UserGroup - Cfn resource for AWS::ElastiCache::UserGroup

=head1 DESCRIPTION

This module implements a Perl module that represents the CloudFormation object AWS::ElastiCache::UserGroup.

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
