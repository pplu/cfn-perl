use Moose::Util::TypeConstraints;

coerce 'Cfn::Resource::Properties::AWS::ApiGateway::Resource',
  from 'HashRef',
   via { Cfn::Resource::Properties::AWS::ApiGateway::Resource->new( %$_ ) };

package Cfn::Resource::AWS::ApiGateway::Resource {
  use Moose;
  extends 'Cfn::Resource';
  has Properties => (isa => 'Cfn::Resource::Properties::AWS::ApiGateway::Resource', is => 'rw', coerce => 1, required => 1);
}

package Cfn::Resource::Properties::AWS::ApiGateway::Resource {
  use Moose;
  use MooseX::StrictConstructor;
  extends 'Cfn::Resource::Properties';
  has ParentId  => (isa => 'Cfn::Value', is => 'rw', coerce => 1, required => 1);
  has PathPart  => (isa => 'Cfn::Value', is => 'rw', coerce => 1, required => 1);
  has RestApiId => (isa => 'Cfn::Value', is => 'rw', coerce => 1, required => 1);
}

1;
