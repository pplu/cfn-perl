# AWS::AuditManager::Assessment generated from spec 22.0.0
use Moose::Util::TypeConstraints;

coerce 'Cfn::Resource::Properties::AWS::AuditManager::Assessment',
  from 'HashRef',
   via { Cfn::Resource::Properties::AWS::AuditManager::Assessment->new( %$_ ) };

package Cfn::Resource::AWS::AuditManager::Assessment {
  use Moose;
  extends 'Cfn::Resource';
  has Properties => (isa => 'Cfn::Resource::Properties::AWS::AuditManager::Assessment', is => 'rw', coerce => 1);
  
  sub AttributeList {
    [ 'arn','assessmentId','creationTime','delegations','frameworkId' ]
  }
  sub supported_regions {
    [ 'ap-northeast-1','ap-southeast-1','ap-southeast-2','eu-central-1','eu-west-1','eu-west-2','us-east-1','us-east-2','us-west-1','us-west-2' ]
  }
}


subtype 'ArrayOfCfn::Resource::Properties::AWS::AuditManager::Assessment::AWSService',
     as 'Cfn::Value',
  where { $_->isa('Cfn::Value::Array') or $_->isa('Cfn::Value::Function') },
message { "$_ is not a Cfn::Value or a Cfn::Value::Function" };

coerce 'ArrayOfCfn::Resource::Properties::AWS::AuditManager::Assessment::AWSService',
  from 'HashRef',
   via {
     if (my $f = Cfn::TypeLibrary::try_function($_)) {
       return $f
     } else {
       die 'Only accepts functions'; 
     }
   },
  from 'ArrayRef',
   via {
     Cfn::Value::Array->new(Value => [
       map { 
         Moose::Util::TypeConstraints::find_type_constraint('Cfn::Resource::Properties::AWS::AuditManager::Assessment::AWSService')->coerce($_)
       } @$_
     ]);
   };

subtype 'Cfn::Resource::Properties::AWS::AuditManager::Assessment::AWSService',
     as 'Cfn::Value';

coerce 'Cfn::Resource::Properties::AWS::AuditManager::Assessment::AWSService',
  from 'HashRef',
   via {
     if (my $f = Cfn::TypeLibrary::try_function($_)) {
       return $f
     } else {
       return Cfn::Resource::Properties::Object::AWS::AuditManager::Assessment::AWSService->new( %$_ );
     }
   };

package Cfn::Resource::Properties::Object::AWS::AuditManager::Assessment::AWSService {
  use Moose;
  use MooseX::StrictConstructor;
  extends 'Cfn::Value::TypedValue';
  
  has serviceName => (isa => 'Cfn::Value::String', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
}
subtype 'ArrayOfCfn::Resource::Properties::AWS::AuditManager::Assessment::AWSAccount',
     as 'Cfn::Value',
  where { $_->isa('Cfn::Value::Array') or $_->isa('Cfn::Value::Function') },
message { "$_ is not a Cfn::Value or a Cfn::Value::Function" };

coerce 'ArrayOfCfn::Resource::Properties::AWS::AuditManager::Assessment::AWSAccount',
  from 'HashRef',
   via {
     if (my $f = Cfn::TypeLibrary::try_function($_)) {
       return $f
     } else {
       die 'Only accepts functions'; 
     }
   },
  from 'ArrayRef',
   via {
     Cfn::Value::Array->new(Value => [
       map { 
         Moose::Util::TypeConstraints::find_type_constraint('Cfn::Resource::Properties::AWS::AuditManager::Assessment::AWSAccount')->coerce($_)
       } @$_
     ]);
   };

subtype 'Cfn::Resource::Properties::AWS::AuditManager::Assessment::AWSAccount',
     as 'Cfn::Value';

coerce 'Cfn::Resource::Properties::AWS::AuditManager::Assessment::AWSAccount',
  from 'HashRef',
   via {
     if (my $f = Cfn::TypeLibrary::try_function($_)) {
       return $f
     } else {
       return Cfn::Resource::Properties::Object::AWS::AuditManager::Assessment::AWSAccount->new( %$_ );
     }
   };

package Cfn::Resource::Properties::Object::AWS::AuditManager::Assessment::AWSAccount {
  use Moose;
  use MooseX::StrictConstructor;
  extends 'Cfn::Value::TypedValue';
  
  has emailAddress => (isa => 'Cfn::Value::String', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Immutable');
  has id => (isa => 'Cfn::Value::String', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Immutable');
  has name => (isa => 'Cfn::Value::String', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Immutable');
}
subtype 'ArrayOfCfn::Resource::Properties::AWS::AuditManager::Assessment::Role',
     as 'Cfn::Value',
  where { $_->isa('Cfn::Value::Array') or $_->isa('Cfn::Value::Function') },
message { "$_ is not a Cfn::Value or a Cfn::Value::Function" };

coerce 'ArrayOfCfn::Resource::Properties::AWS::AuditManager::Assessment::Role',
  from 'HashRef',
   via {
     if (my $f = Cfn::TypeLibrary::try_function($_)) {
       return $f
     } else {
       die 'Only accepts functions'; 
     }
   },
  from 'ArrayRef',
   via {
     Cfn::Value::Array->new(Value => [
       map { 
         Moose::Util::TypeConstraints::find_type_constraint('Cfn::Resource::Properties::AWS::AuditManager::Assessment::Role')->coerce($_)
       } @$_
     ]);
   };

subtype 'Cfn::Resource::Properties::AWS::AuditManager::Assessment::Role',
     as 'Cfn::Value';

coerce 'Cfn::Resource::Properties::AWS::AuditManager::Assessment::Role',
  from 'HashRef',
   via {
     if (my $f = Cfn::TypeLibrary::try_function($_)) {
       return $f
     } else {
       return Cfn::Resource::Properties::Object::AWS::AuditManager::Assessment::Role->new( %$_ );
     }
   };

package Cfn::Resource::Properties::Object::AWS::AuditManager::Assessment::Role {
  use Moose;
  use MooseX::StrictConstructor;
  extends 'Cfn::Value::TypedValue';
  
  has roleArn => (isa => 'Cfn::Value::String', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has roleType => (isa => 'Cfn::Value::String', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
}
subtype 'ArrayOfCfn::Resource::Properties::AWS::AuditManager::Assessment::Delegation',
     as 'Cfn::Value',
  where { $_->isa('Cfn::Value::Array') or $_->isa('Cfn::Value::Function') },
message { "$_ is not a Cfn::Value or a Cfn::Value::Function" };

coerce 'ArrayOfCfn::Resource::Properties::AWS::AuditManager::Assessment::Delegation',
  from 'HashRef',
   via {
     if (my $f = Cfn::TypeLibrary::try_function($_)) {
       return $f
     } else {
       die 'Only accepts functions'; 
     }
   },
  from 'ArrayRef',
   via {
     Cfn::Value::Array->new(Value => [
       map { 
         Moose::Util::TypeConstraints::find_type_constraint('Cfn::Resource::Properties::AWS::AuditManager::Assessment::Delegation')->coerce($_)
       } @$_
     ]);
   };

subtype 'Cfn::Resource::Properties::AWS::AuditManager::Assessment::Delegation',
     as 'Cfn::Value';

coerce 'Cfn::Resource::Properties::AWS::AuditManager::Assessment::Delegation',
  from 'HashRef',
   via {
     if (my $f = Cfn::TypeLibrary::try_function($_)) {
       return $f
     } else {
       return Cfn::Resource::Properties::Object::AWS::AuditManager::Assessment::Delegation->new( %$_ );
     }
   };

package Cfn::Resource::Properties::Object::AWS::AuditManager::Assessment::Delegation {
  use Moose;
  use MooseX::StrictConstructor;
  extends 'Cfn::Value::TypedValue';
  
  has assessmentId => (isa => 'Cfn::Value::String', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has assessmentName => (isa => 'Cfn::Value::String', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has comment => (isa => 'Cfn::Value::String', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has controlSetId => (isa => 'Cfn::Value::String', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has createdBy => (isa => 'Cfn::Value::String', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has creationTime => (isa => 'Cfn::Value::Double', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has id => (isa => 'Cfn::Value::String', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has lastUpdated => (isa => 'Cfn::Value::Double', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has roleArn => (isa => 'Cfn::Value::String', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has roleType => (isa => 'Cfn::Value::String', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has status => (isa => 'Cfn::Value::String', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
}

subtype 'Cfn::Resource::Properties::AWS::AuditManager::Assessment::AWSServices',
     as 'Cfn::Value';

coerce 'Cfn::Resource::Properties::AWS::AuditManager::Assessment::AWSServices',
  from 'HashRef',
   via {
     if (my $f = Cfn::TypeLibrary::try_function($_)) {
       return $f
     } else {
       return Cfn::Resource::Properties::Object::AWS::AuditManager::Assessment::AWSServices->new( %$_ );
     }
   };

package Cfn::Resource::Properties::Object::AWS::AuditManager::Assessment::AWSServices {
  use Moose;
  use MooseX::StrictConstructor;
  extends 'Cfn::Value::TypedValue';
  
  has AWSServices => (isa => 'ArrayOfCfn::Resource::Properties::AWS::AuditManager::Assessment::AWSService', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
}

subtype 'Cfn::Resource::Properties::AWS::AuditManager::Assessment::AWSAccounts',
     as 'Cfn::Value';

coerce 'Cfn::Resource::Properties::AWS::AuditManager::Assessment::AWSAccounts',
  from 'HashRef',
   via {
     if (my $f = Cfn::TypeLibrary::try_function($_)) {
       return $f
     } else {
       return Cfn::Resource::Properties::Object::AWS::AuditManager::Assessment::AWSAccounts->new( %$_ );
     }
   };

package Cfn::Resource::Properties::Object::AWS::AuditManager::Assessment::AWSAccounts {
  use Moose;
  use MooseX::StrictConstructor;
  extends 'Cfn::Value::TypedValue';
  
  has AWSAccounts => (isa => 'ArrayOfCfn::Resource::Properties::AWS::AuditManager::Assessment::AWSAccount', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
}

subtype 'Cfn::Resource::Properties::AWS::AuditManager::Assessment::Tags',
     as 'Cfn::Value';

coerce 'Cfn::Resource::Properties::AWS::AuditManager::Assessment::Tags',
  from 'HashRef',
   via {
     if (my $f = Cfn::TypeLibrary::try_function($_)) {
       return $f
     } else {
       return Cfn::Resource::Properties::Object::AWS::AuditManager::Assessment::Tags->new( %$_ );
     }
   };

package Cfn::Resource::Properties::Object::AWS::AuditManager::Assessment::Tags {
  use Moose;
  use MooseX::StrictConstructor;
  extends 'Cfn::Value::TypedValue';
  
  has Tags => (isa => 'ArrayOfCfn::Resource::Properties::TagType', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
}

subtype 'Cfn::Resource::Properties::AWS::AuditManager::Assessment::Scope',
     as 'Cfn::Value';

coerce 'Cfn::Resource::Properties::AWS::AuditManager::Assessment::Scope',
  from 'HashRef',
   via {
     if (my $f = Cfn::TypeLibrary::try_function($_)) {
       return $f
     } else {
       return Cfn::Resource::Properties::Object::AWS::AuditManager::Assessment::Scope->new( %$_ );
     }
   };

package Cfn::Resource::Properties::Object::AWS::AuditManager::Assessment::Scope {
  use Moose;
  use MooseX::StrictConstructor;
  extends 'Cfn::Value::TypedValue';
  
  has awsAccounts => (isa => 'Cfn::Resource::Properties::AWS::AuditManager::Assessment::AWSAccounts', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has awsServices => (isa => 'Cfn::Resource::Properties::AWS::AuditManager::Assessment::AWSServices', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
}

subtype 'Cfn::Resource::Properties::AWS::AuditManager::Assessment::Roles',
     as 'Cfn::Value';

coerce 'Cfn::Resource::Properties::AWS::AuditManager::Assessment::Roles',
  from 'HashRef',
   via {
     if (my $f = Cfn::TypeLibrary::try_function($_)) {
       return $f
     } else {
       return Cfn::Resource::Properties::Object::AWS::AuditManager::Assessment::Roles->new( %$_ );
     }
   };

package Cfn::Resource::Properties::Object::AWS::AuditManager::Assessment::Roles {
  use Moose;
  use MooseX::StrictConstructor;
  extends 'Cfn::Value::TypedValue';
  
  has Roles => (isa => 'ArrayOfCfn::Resource::Properties::AWS::AuditManager::Assessment::Role', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
}

subtype 'Cfn::Resource::Properties::AWS::AuditManager::Assessment::Delegations',
     as 'Cfn::Value';

coerce 'Cfn::Resource::Properties::AWS::AuditManager::Assessment::Delegations',
  from 'HashRef',
   via {
     if (my $f = Cfn::TypeLibrary::try_function($_)) {
       return $f
     } else {
       return Cfn::Resource::Properties::Object::AWS::AuditManager::Assessment::Delegations->new( %$_ );
     }
   };

package Cfn::Resource::Properties::Object::AWS::AuditManager::Assessment::Delegations {
  use Moose;
  use MooseX::StrictConstructor;
  extends 'Cfn::Value::TypedValue';
  
  has Delegations => (isa => 'ArrayOfCfn::Resource::Properties::AWS::AuditManager::Assessment::Delegation', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
}

subtype 'Cfn::Resource::Properties::AWS::AuditManager::Assessment::AssessmentReportsDestination',
     as 'Cfn::Value';

coerce 'Cfn::Resource::Properties::AWS::AuditManager::Assessment::AssessmentReportsDestination',
  from 'HashRef',
   via {
     if (my $f = Cfn::TypeLibrary::try_function($_)) {
       return $f
     } else {
       return Cfn::Resource::Properties::Object::AWS::AuditManager::Assessment::AssessmentReportsDestination->new( %$_ );
     }
   };

package Cfn::Resource::Properties::Object::AWS::AuditManager::Assessment::AssessmentReportsDestination {
  use Moose;
  use MooseX::StrictConstructor;
  extends 'Cfn::Value::TypedValue';
  
  has destination => (isa => 'Cfn::Value::String', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has destinationType => (isa => 'Cfn::Value::String', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
}

package Cfn::Resource::Properties::AWS::AuditManager::Assessment {
  use Moose;
  use MooseX::StrictConstructor;
  extends 'Cfn::Resource::Properties';
  
  has assessmentReportsDestination => (isa => 'Cfn::Resource::Properties::AWS::AuditManager::Assessment::AssessmentReportsDestination', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has awsAccount => (isa => 'Cfn::Resource::Properties::AWS::AuditManager::Assessment::AWSAccount', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Immutable');
  has description => (isa => 'Cfn::Value::String', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has frameworkId => (isa => 'Cfn::Value::String', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Immutable');
  has name => (isa => 'Cfn::Value::String', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has roles => (isa => 'Cfn::Resource::Properties::AWS::AuditManager::Assessment::Roles', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has scope => (isa => 'Cfn::Resource::Properties::AWS::AuditManager::Assessment::Scope', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has status => (isa => 'Cfn::Value::String', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has tags => (isa => 'Cfn::Resource::Properties::AWS::AuditManager::Assessment::Tags', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
}

1;
### main pod documentation begin ###

=encoding UTF-8

=head1 NAME

Cfn::Resource::AWS::AuditManager::Assessment - Cfn resource for AWS::AuditManager::Assessment

=head1 DESCRIPTION

This module implements a Perl module that represents the CloudFormation object AWS::AuditManager::Assessment.

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
