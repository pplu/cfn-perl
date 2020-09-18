# AWS::CodeDeploy::DeploymentGroup generated from spec 18.4.0
use Moose::Util::TypeConstraints;

coerce 'Cfn::Resource::Properties::AWS::CodeDeploy::DeploymentGroup',
  from 'HashRef',
   via { Cfn::Resource::Properties::AWS::CodeDeploy::DeploymentGroup->new( %$_ ) };

package Cfn::Resource::AWS::CodeDeploy::DeploymentGroup {
  use Moose;
  extends 'Cfn::Resource';
  has Properties => (isa => 'Cfn::Resource::Properties::AWS::CodeDeploy::DeploymentGroup', is => 'rw', coerce => 1);
  
  sub AttributeList {
    [  ]
  }
  sub supported_regions {
    [ 'af-south-1','ap-east-1','ap-northeast-1','ap-northeast-2','ap-northeast-3','ap-south-1','ap-southeast-1','ap-southeast-2','ca-central-1','cn-north-1','cn-northwest-1','eu-central-1','eu-north-1','eu-south-1','eu-west-1','eu-west-2','eu-west-3','me-south-1','sa-east-1','us-east-1','us-east-2','us-gov-east-1','us-gov-west-1','us-west-1','us-west-2' ]
  }
}


subtype 'ArrayOfCfn::Resource::Properties::AWS::CodeDeploy::DeploymentGroup::TagFilter',
     as 'Cfn::Value',
  where { $_->isa('Cfn::Value::Array') or $_->isa('Cfn::Value::Function') },
message { "$_ is not a Cfn::Value or a Cfn::Value::Function" };

coerce 'ArrayOfCfn::Resource::Properties::AWS::CodeDeploy::DeploymentGroup::TagFilter',
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
         Moose::Util::TypeConstraints::find_type_constraint('Cfn::Resource::Properties::AWS::CodeDeploy::DeploymentGroup::TagFilter')->coerce($_)
       } @$_
     ]);
   };

subtype 'Cfn::Resource::Properties::AWS::CodeDeploy::DeploymentGroup::TagFilter',
     as 'Cfn::Value';

coerce 'Cfn::Resource::Properties::AWS::CodeDeploy::DeploymentGroup::TagFilter',
  from 'HashRef',
   via {
     if (my $f = Cfn::TypeLibrary::try_function($_)) {
       return $f
     } else {
       return Cfn::Resource::Properties::AWS::CodeDeploy::DeploymentGroup::TagFilter::Value->new( %$_ );
     }
   };

package Cfn::Resource::Properties::AWS::CodeDeploy::DeploymentGroup::TagFilter::Value {
  use Moose;
  use MooseX::StrictConstructor;
  extends 'Cfn::Value::TypedValue';
  
  has Key => (isa => 'Cfn::Value::String', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has Type => (isa => 'Cfn::Value::String', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has Value => (isa => 'Cfn::Value::String', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
}

subtype 'Cfn::Resource::Properties::AWS::CodeDeploy::DeploymentGroup::S3Location',
     as 'Cfn::Value';

coerce 'Cfn::Resource::Properties::AWS::CodeDeploy::DeploymentGroup::S3Location',
  from 'HashRef',
   via {
     if (my $f = Cfn::TypeLibrary::try_function($_)) {
       return $f
     } else {
       return Cfn::Resource::Properties::AWS::CodeDeploy::DeploymentGroup::S3Location::Value->new( %$_ );
     }
   };

package Cfn::Resource::Properties::AWS::CodeDeploy::DeploymentGroup::S3Location::Value {
  use Moose;
  use MooseX::StrictConstructor;
  extends 'Cfn::Value::TypedValue';
  
  has Bucket => (isa => 'Cfn::Value::String', is => 'rw', coerce => 1, required => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has BundleType => (isa => 'Cfn::Value::String', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has ETag => (isa => 'Cfn::Value::String', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has Key => (isa => 'Cfn::Value::String', is => 'rw', coerce => 1, required => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has Version => (isa => 'Cfn::Value::String', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
}

subtype 'Cfn::Resource::Properties::AWS::CodeDeploy::DeploymentGroup::GitHubLocation',
     as 'Cfn::Value';

coerce 'Cfn::Resource::Properties::AWS::CodeDeploy::DeploymentGroup::GitHubLocation',
  from 'HashRef',
   via {
     if (my $f = Cfn::TypeLibrary::try_function($_)) {
       return $f
     } else {
       return Cfn::Resource::Properties::AWS::CodeDeploy::DeploymentGroup::GitHubLocation::Value->new( %$_ );
     }
   };

package Cfn::Resource::Properties::AWS::CodeDeploy::DeploymentGroup::GitHubLocation::Value {
  use Moose;
  use MooseX::StrictConstructor;
  extends 'Cfn::Value::TypedValue';
  
  has CommitId => (isa => 'Cfn::Value::String', is => 'rw', coerce => 1, required => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has Repository => (isa => 'Cfn::Value::String', is => 'rw', coerce => 1, required => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
}
subtype 'ArrayOfCfn::Resource::Properties::AWS::CodeDeploy::DeploymentGroup::EC2TagFilter',
     as 'Cfn::Value',
  where { $_->isa('Cfn::Value::Array') or $_->isa('Cfn::Value::Function') },
message { "$_ is not a Cfn::Value or a Cfn::Value::Function" };

coerce 'ArrayOfCfn::Resource::Properties::AWS::CodeDeploy::DeploymentGroup::EC2TagFilter',
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
         Moose::Util::TypeConstraints::find_type_constraint('Cfn::Resource::Properties::AWS::CodeDeploy::DeploymentGroup::EC2TagFilter')->coerce($_)
       } @$_
     ]);
   };

subtype 'Cfn::Resource::Properties::AWS::CodeDeploy::DeploymentGroup::EC2TagFilter',
     as 'Cfn::Value';

coerce 'Cfn::Resource::Properties::AWS::CodeDeploy::DeploymentGroup::EC2TagFilter',
  from 'HashRef',
   via {
     if (my $f = Cfn::TypeLibrary::try_function($_)) {
       return $f
     } else {
       return Cfn::Resource::Properties::AWS::CodeDeploy::DeploymentGroup::EC2TagFilter::Value->new( %$_ );
     }
   };

package Cfn::Resource::Properties::AWS::CodeDeploy::DeploymentGroup::EC2TagFilter::Value {
  use Moose;
  use MooseX::StrictConstructor;
  extends 'Cfn::Value::TypedValue';
  
  has Key => (isa => 'Cfn::Value::String', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has Type => (isa => 'Cfn::Value::String', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has Value => (isa => 'Cfn::Value::String', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
}
subtype 'ArrayOfCfn::Resource::Properties::AWS::CodeDeploy::DeploymentGroup::TargetGroupInfo',
     as 'Cfn::Value',
  where { $_->isa('Cfn::Value::Array') or $_->isa('Cfn::Value::Function') },
message { "$_ is not a Cfn::Value or a Cfn::Value::Function" };

coerce 'ArrayOfCfn::Resource::Properties::AWS::CodeDeploy::DeploymentGroup::TargetGroupInfo',
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
         Moose::Util::TypeConstraints::find_type_constraint('Cfn::Resource::Properties::AWS::CodeDeploy::DeploymentGroup::TargetGroupInfo')->coerce($_)
       } @$_
     ]);
   };

subtype 'Cfn::Resource::Properties::AWS::CodeDeploy::DeploymentGroup::TargetGroupInfo',
     as 'Cfn::Value';

coerce 'Cfn::Resource::Properties::AWS::CodeDeploy::DeploymentGroup::TargetGroupInfo',
  from 'HashRef',
   via {
     if (my $f = Cfn::TypeLibrary::try_function($_)) {
       return $f
     } else {
       return Cfn::Resource::Properties::AWS::CodeDeploy::DeploymentGroup::TargetGroupInfo::Value->new( %$_ );
     }
   };

package Cfn::Resource::Properties::AWS::CodeDeploy::DeploymentGroup::TargetGroupInfo::Value {
  use Moose;
  use MooseX::StrictConstructor;
  extends 'Cfn::Value::TypedValue';
  
  has Name => (isa => 'Cfn::Value::String', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
}

subtype 'Cfn::Resource::Properties::AWS::CodeDeploy::DeploymentGroup::RevisionLocation',
     as 'Cfn::Value';

coerce 'Cfn::Resource::Properties::AWS::CodeDeploy::DeploymentGroup::RevisionLocation',
  from 'HashRef',
   via {
     if (my $f = Cfn::TypeLibrary::try_function($_)) {
       return $f
     } else {
       return Cfn::Resource::Properties::AWS::CodeDeploy::DeploymentGroup::RevisionLocation::Value->new( %$_ );
     }
   };

package Cfn::Resource::Properties::AWS::CodeDeploy::DeploymentGroup::RevisionLocation::Value {
  use Moose;
  use MooseX::StrictConstructor;
  extends 'Cfn::Value::TypedValue';
  
  has GitHubLocation => (isa => 'Cfn::Resource::Properties::AWS::CodeDeploy::DeploymentGroup::GitHubLocation', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has RevisionType => (isa => 'Cfn::Value::String', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has S3Location => (isa => 'Cfn::Resource::Properties::AWS::CodeDeploy::DeploymentGroup::S3Location', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
}
subtype 'ArrayOfCfn::Resource::Properties::AWS::CodeDeploy::DeploymentGroup::OnPremisesTagSetListObject',
     as 'Cfn::Value',
  where { $_->isa('Cfn::Value::Array') or $_->isa('Cfn::Value::Function') },
message { "$_ is not a Cfn::Value or a Cfn::Value::Function" };

coerce 'ArrayOfCfn::Resource::Properties::AWS::CodeDeploy::DeploymentGroup::OnPremisesTagSetListObject',
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
         Moose::Util::TypeConstraints::find_type_constraint('Cfn::Resource::Properties::AWS::CodeDeploy::DeploymentGroup::OnPremisesTagSetListObject')->coerce($_)
       } @$_
     ]);
   };

subtype 'Cfn::Resource::Properties::AWS::CodeDeploy::DeploymentGroup::OnPremisesTagSetListObject',
     as 'Cfn::Value';

coerce 'Cfn::Resource::Properties::AWS::CodeDeploy::DeploymentGroup::OnPremisesTagSetListObject',
  from 'HashRef',
   via {
     if (my $f = Cfn::TypeLibrary::try_function($_)) {
       return $f
     } else {
       return Cfn::Resource::Properties::AWS::CodeDeploy::DeploymentGroup::OnPremisesTagSetListObject::Value->new( %$_ );
     }
   };

package Cfn::Resource::Properties::AWS::CodeDeploy::DeploymentGroup::OnPremisesTagSetListObject::Value {
  use Moose;
  use MooseX::StrictConstructor;
  extends 'Cfn::Value::TypedValue';
  
  has OnPremisesTagGroup => (isa => 'ArrayOfCfn::Resource::Properties::AWS::CodeDeploy::DeploymentGroup::TagFilter', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
}
subtype 'ArrayOfCfn::Resource::Properties::AWS::CodeDeploy::DeploymentGroup::ELBInfo',
     as 'Cfn::Value',
  where { $_->isa('Cfn::Value::Array') or $_->isa('Cfn::Value::Function') },
message { "$_ is not a Cfn::Value or a Cfn::Value::Function" };

coerce 'ArrayOfCfn::Resource::Properties::AWS::CodeDeploy::DeploymentGroup::ELBInfo',
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
         Moose::Util::TypeConstraints::find_type_constraint('Cfn::Resource::Properties::AWS::CodeDeploy::DeploymentGroup::ELBInfo')->coerce($_)
       } @$_
     ]);
   };

subtype 'Cfn::Resource::Properties::AWS::CodeDeploy::DeploymentGroup::ELBInfo',
     as 'Cfn::Value';

coerce 'Cfn::Resource::Properties::AWS::CodeDeploy::DeploymentGroup::ELBInfo',
  from 'HashRef',
   via {
     if (my $f = Cfn::TypeLibrary::try_function($_)) {
       return $f
     } else {
       return Cfn::Resource::Properties::AWS::CodeDeploy::DeploymentGroup::ELBInfo::Value->new( %$_ );
     }
   };

package Cfn::Resource::Properties::AWS::CodeDeploy::DeploymentGroup::ELBInfo::Value {
  use Moose;
  use MooseX::StrictConstructor;
  extends 'Cfn::Value::TypedValue';
  
  has Name => (isa => 'Cfn::Value::String', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
}
subtype 'ArrayOfCfn::Resource::Properties::AWS::CodeDeploy::DeploymentGroup::EC2TagSetListObject',
     as 'Cfn::Value',
  where { $_->isa('Cfn::Value::Array') or $_->isa('Cfn::Value::Function') },
message { "$_ is not a Cfn::Value or a Cfn::Value::Function" };

coerce 'ArrayOfCfn::Resource::Properties::AWS::CodeDeploy::DeploymentGroup::EC2TagSetListObject',
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
         Moose::Util::TypeConstraints::find_type_constraint('Cfn::Resource::Properties::AWS::CodeDeploy::DeploymentGroup::EC2TagSetListObject')->coerce($_)
       } @$_
     ]);
   };

subtype 'Cfn::Resource::Properties::AWS::CodeDeploy::DeploymentGroup::EC2TagSetListObject',
     as 'Cfn::Value';

coerce 'Cfn::Resource::Properties::AWS::CodeDeploy::DeploymentGroup::EC2TagSetListObject',
  from 'HashRef',
   via {
     if (my $f = Cfn::TypeLibrary::try_function($_)) {
       return $f
     } else {
       return Cfn::Resource::Properties::AWS::CodeDeploy::DeploymentGroup::EC2TagSetListObject::Value->new( %$_ );
     }
   };

package Cfn::Resource::Properties::AWS::CodeDeploy::DeploymentGroup::EC2TagSetListObject::Value {
  use Moose;
  use MooseX::StrictConstructor;
  extends 'Cfn::Value::TypedValue';
  
  has Ec2TagGroup => (isa => 'ArrayOfCfn::Resource::Properties::AWS::CodeDeploy::DeploymentGroup::EC2TagFilter', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
}
subtype 'ArrayOfCfn::Resource::Properties::AWS::CodeDeploy::DeploymentGroup::Alarm',
     as 'Cfn::Value',
  where { $_->isa('Cfn::Value::Array') or $_->isa('Cfn::Value::Function') },
message { "$_ is not a Cfn::Value or a Cfn::Value::Function" };

coerce 'ArrayOfCfn::Resource::Properties::AWS::CodeDeploy::DeploymentGroup::Alarm',
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
         Moose::Util::TypeConstraints::find_type_constraint('Cfn::Resource::Properties::AWS::CodeDeploy::DeploymentGroup::Alarm')->coerce($_)
       } @$_
     ]);
   };

subtype 'Cfn::Resource::Properties::AWS::CodeDeploy::DeploymentGroup::Alarm',
     as 'Cfn::Value';

coerce 'Cfn::Resource::Properties::AWS::CodeDeploy::DeploymentGroup::Alarm',
  from 'HashRef',
   via {
     if (my $f = Cfn::TypeLibrary::try_function($_)) {
       return $f
     } else {
       return Cfn::Resource::Properties::AWS::CodeDeploy::DeploymentGroup::Alarm::Value->new( %$_ );
     }
   };

package Cfn::Resource::Properties::AWS::CodeDeploy::DeploymentGroup::Alarm::Value {
  use Moose;
  use MooseX::StrictConstructor;
  extends 'Cfn::Value::TypedValue';
  
  has Name => (isa => 'Cfn::Value::String', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
}
subtype 'ArrayOfCfn::Resource::Properties::AWS::CodeDeploy::DeploymentGroup::TriggerConfig',
     as 'Cfn::Value',
  where { $_->isa('Cfn::Value::Array') or $_->isa('Cfn::Value::Function') },
message { "$_ is not a Cfn::Value or a Cfn::Value::Function" };

coerce 'ArrayOfCfn::Resource::Properties::AWS::CodeDeploy::DeploymentGroup::TriggerConfig',
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
         Moose::Util::TypeConstraints::find_type_constraint('Cfn::Resource::Properties::AWS::CodeDeploy::DeploymentGroup::TriggerConfig')->coerce($_)
       } @$_
     ]);
   };

subtype 'Cfn::Resource::Properties::AWS::CodeDeploy::DeploymentGroup::TriggerConfig',
     as 'Cfn::Value';

coerce 'Cfn::Resource::Properties::AWS::CodeDeploy::DeploymentGroup::TriggerConfig',
  from 'HashRef',
   via {
     if (my $f = Cfn::TypeLibrary::try_function($_)) {
       return $f
     } else {
       return Cfn::Resource::Properties::AWS::CodeDeploy::DeploymentGroup::TriggerConfig::Value->new( %$_ );
     }
   };

package Cfn::Resource::Properties::AWS::CodeDeploy::DeploymentGroup::TriggerConfig::Value {
  use Moose;
  use MooseX::StrictConstructor;
  extends 'Cfn::Value::TypedValue';
  
  has TriggerEvents => (isa => 'Cfn::Value::Array|Cfn::Value::Function|Cfn::DynamicValue', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has TriggerName => (isa => 'Cfn::Value::String', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has TriggerTargetArn => (isa => 'Cfn::Value::String', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
}

subtype 'Cfn::Resource::Properties::AWS::CodeDeploy::DeploymentGroup::OnPremisesTagSet',
     as 'Cfn::Value';

coerce 'Cfn::Resource::Properties::AWS::CodeDeploy::DeploymentGroup::OnPremisesTagSet',
  from 'HashRef',
   via {
     if (my $f = Cfn::TypeLibrary::try_function($_)) {
       return $f
     } else {
       return Cfn::Resource::Properties::AWS::CodeDeploy::DeploymentGroup::OnPremisesTagSet::Value->new( %$_ );
     }
   };

package Cfn::Resource::Properties::AWS::CodeDeploy::DeploymentGroup::OnPremisesTagSet::Value {
  use Moose;
  use MooseX::StrictConstructor;
  extends 'Cfn::Value::TypedValue';
  
  has OnPremisesTagSetList => (isa => 'ArrayOfCfn::Resource::Properties::AWS::CodeDeploy::DeploymentGroup::OnPremisesTagSetListObject', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
}

subtype 'Cfn::Resource::Properties::AWS::CodeDeploy::DeploymentGroup::LoadBalancerInfo',
     as 'Cfn::Value';

coerce 'Cfn::Resource::Properties::AWS::CodeDeploy::DeploymentGroup::LoadBalancerInfo',
  from 'HashRef',
   via {
     if (my $f = Cfn::TypeLibrary::try_function($_)) {
       return $f
     } else {
       return Cfn::Resource::Properties::AWS::CodeDeploy::DeploymentGroup::LoadBalancerInfo::Value->new( %$_ );
     }
   };

package Cfn::Resource::Properties::AWS::CodeDeploy::DeploymentGroup::LoadBalancerInfo::Value {
  use Moose;
  use MooseX::StrictConstructor;
  extends 'Cfn::Value::TypedValue';
  
  has ElbInfoList => (isa => 'ArrayOfCfn::Resource::Properties::AWS::CodeDeploy::DeploymentGroup::ELBInfo', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has TargetGroupInfoList => (isa => 'ArrayOfCfn::Resource::Properties::AWS::CodeDeploy::DeploymentGroup::TargetGroupInfo', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
}

subtype 'Cfn::Resource::Properties::AWS::CodeDeploy::DeploymentGroup::EC2TagSet',
     as 'Cfn::Value';

coerce 'Cfn::Resource::Properties::AWS::CodeDeploy::DeploymentGroup::EC2TagSet',
  from 'HashRef',
   via {
     if (my $f = Cfn::TypeLibrary::try_function($_)) {
       return $f
     } else {
       return Cfn::Resource::Properties::AWS::CodeDeploy::DeploymentGroup::EC2TagSet::Value->new( %$_ );
     }
   };

package Cfn::Resource::Properties::AWS::CodeDeploy::DeploymentGroup::EC2TagSet::Value {
  use Moose;
  use MooseX::StrictConstructor;
  extends 'Cfn::Value::TypedValue';
  
  has Ec2TagSetList => (isa => 'ArrayOfCfn::Resource::Properties::AWS::CodeDeploy::DeploymentGroup::EC2TagSetListObject', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
}

subtype 'Cfn::Resource::Properties::AWS::CodeDeploy::DeploymentGroup::DeploymentStyle',
     as 'Cfn::Value';

coerce 'Cfn::Resource::Properties::AWS::CodeDeploy::DeploymentGroup::DeploymentStyle',
  from 'HashRef',
   via {
     if (my $f = Cfn::TypeLibrary::try_function($_)) {
       return $f
     } else {
       return Cfn::Resource::Properties::AWS::CodeDeploy::DeploymentGroup::DeploymentStyle::Value->new( %$_ );
     }
   };

package Cfn::Resource::Properties::AWS::CodeDeploy::DeploymentGroup::DeploymentStyle::Value {
  use Moose;
  use MooseX::StrictConstructor;
  extends 'Cfn::Value::TypedValue';
  
  has DeploymentOption => (isa => 'Cfn::Value::String', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has DeploymentType => (isa => 'Cfn::Value::String', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
}

subtype 'Cfn::Resource::Properties::AWS::CodeDeploy::DeploymentGroup::Deployment',
     as 'Cfn::Value';

coerce 'Cfn::Resource::Properties::AWS::CodeDeploy::DeploymentGroup::Deployment',
  from 'HashRef',
   via {
     if (my $f = Cfn::TypeLibrary::try_function($_)) {
       return $f
     } else {
       return Cfn::Resource::Properties::AWS::CodeDeploy::DeploymentGroup::Deployment::Value->new( %$_ );
     }
   };

package Cfn::Resource::Properties::AWS::CodeDeploy::DeploymentGroup::Deployment::Value {
  use Moose;
  use MooseX::StrictConstructor;
  extends 'Cfn::Value::TypedValue';
  
  has Description => (isa => 'Cfn::Value::String', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has IgnoreApplicationStopFailures => (isa => 'Cfn::Value::Boolean', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has Revision => (isa => 'Cfn::Resource::Properties::AWS::CodeDeploy::DeploymentGroup::RevisionLocation', is => 'rw', coerce => 1, required => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
}

subtype 'Cfn::Resource::Properties::AWS::CodeDeploy::DeploymentGroup::AutoRollbackConfiguration',
     as 'Cfn::Value';

coerce 'Cfn::Resource::Properties::AWS::CodeDeploy::DeploymentGroup::AutoRollbackConfiguration',
  from 'HashRef',
   via {
     if (my $f = Cfn::TypeLibrary::try_function($_)) {
       return $f
     } else {
       return Cfn::Resource::Properties::AWS::CodeDeploy::DeploymentGroup::AutoRollbackConfiguration::Value->new( %$_ );
     }
   };

package Cfn::Resource::Properties::AWS::CodeDeploy::DeploymentGroup::AutoRollbackConfiguration::Value {
  use Moose;
  use MooseX::StrictConstructor;
  extends 'Cfn::Value::TypedValue';
  
  has Enabled => (isa => 'Cfn::Value::Boolean', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has Events => (isa => 'Cfn::Value::Array|Cfn::Value::Function|Cfn::DynamicValue', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
}

subtype 'Cfn::Resource::Properties::AWS::CodeDeploy::DeploymentGroup::AlarmConfiguration',
     as 'Cfn::Value';

coerce 'Cfn::Resource::Properties::AWS::CodeDeploy::DeploymentGroup::AlarmConfiguration',
  from 'HashRef',
   via {
     if (my $f = Cfn::TypeLibrary::try_function($_)) {
       return $f
     } else {
       return Cfn::Resource::Properties::AWS::CodeDeploy::DeploymentGroup::AlarmConfiguration::Value->new( %$_ );
     }
   };

package Cfn::Resource::Properties::AWS::CodeDeploy::DeploymentGroup::AlarmConfiguration::Value {
  use Moose;
  use MooseX::StrictConstructor;
  extends 'Cfn::Value::TypedValue';
  
  has Alarms => (isa => 'ArrayOfCfn::Resource::Properties::AWS::CodeDeploy::DeploymentGroup::Alarm', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has Enabled => (isa => 'Cfn::Value::Boolean', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has IgnorePollAlarmFailure => (isa => 'Cfn::Value::Boolean', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
}

package Cfn::Resource::Properties::AWS::CodeDeploy::DeploymentGroup {
  use Moose;
  use MooseX::StrictConstructor;
  extends 'Cfn::Resource::Properties';
  
  has AlarmConfiguration => (isa => 'Cfn::Resource::Properties::AWS::CodeDeploy::DeploymentGroup::AlarmConfiguration', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has ApplicationName => (isa => 'Cfn::Value::String', is => 'rw', coerce => 1, required => 1, traits => [ 'CfnMutability' ], mutability => 'Immutable');
  has AutoRollbackConfiguration => (isa => 'Cfn::Resource::Properties::AWS::CodeDeploy::DeploymentGroup::AutoRollbackConfiguration', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has AutoScalingGroups => (isa => 'Cfn::Value::Array|Cfn::Value::Function|Cfn::DynamicValue', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has Deployment => (isa => 'Cfn::Resource::Properties::AWS::CodeDeploy::DeploymentGroup::Deployment', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has DeploymentConfigName => (isa => 'Cfn::Value::String', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has DeploymentGroupName => (isa => 'Cfn::Value::String', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Immutable');
  has DeploymentStyle => (isa => 'Cfn::Resource::Properties::AWS::CodeDeploy::DeploymentGroup::DeploymentStyle', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has Ec2TagFilters => (isa => 'ArrayOfCfn::Resource::Properties::AWS::CodeDeploy::DeploymentGroup::EC2TagFilter', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has Ec2TagSet => (isa => 'Cfn::Resource::Properties::AWS::CodeDeploy::DeploymentGroup::EC2TagSet', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has LoadBalancerInfo => (isa => 'Cfn::Resource::Properties::AWS::CodeDeploy::DeploymentGroup::LoadBalancerInfo', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has OnPremisesInstanceTagFilters => (isa => 'ArrayOfCfn::Resource::Properties::AWS::CodeDeploy::DeploymentGroup::TagFilter', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has OnPremisesTagSet => (isa => 'Cfn::Resource::Properties::AWS::CodeDeploy::DeploymentGroup::OnPremisesTagSet', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has ServiceRoleArn => (isa => 'Cfn::Value::String', is => 'rw', coerce => 1, required => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has TriggerConfigurations => (isa => 'ArrayOfCfn::Resource::Properties::AWS::CodeDeploy::DeploymentGroup::TriggerConfig', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
}

1;
### main pod documentation begin ###

=encoding UTF-8

=head1 NAME

Cfn::Resource::AWS::CodeDeploy::DeploymentGroup - Cfn resource for AWS::CodeDeploy::DeploymentGroup

=head1 DESCRIPTION

This module implements a Perl module that represents the CloudFormation object AWS::CodeDeploy::DeploymentGroup.

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
