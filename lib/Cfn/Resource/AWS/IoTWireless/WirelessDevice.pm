# AWS::IoTWireless::WirelessDevice generated from spec 22.0.0
use Moose::Util::TypeConstraints;

coerce 'Cfn::Resource::Properties::AWS::IoTWireless::WirelessDevice',
  from 'HashRef',
   via { Cfn::Resource::Properties::AWS::IoTWireless::WirelessDevice->new( %$_ ) };

package Cfn::Resource::AWS::IoTWireless::WirelessDevice {
  use Moose;
  extends 'Cfn::Resource';
  has Properties => (isa => 'Cfn::Resource::Properties::AWS::IoTWireless::WirelessDevice', is => 'rw', coerce => 1);
  
  sub AttributeList {
    [ 'Arn','Id','ThingArn','ThingName' ]
  }
  sub supported_regions {
    [ 'eu-west-1','us-east-1' ]
  }
}



subtype 'Cfn::Resource::Properties::AWS::IoTWireless::WirelessDevice::SessionKeysAbpV11',
     as 'Cfn::Value';

coerce 'Cfn::Resource::Properties::AWS::IoTWireless::WirelessDevice::SessionKeysAbpV11',
  from 'HashRef',
   via {
     if (my $f = Cfn::TypeLibrary::try_function($_)) {
       return $f
     } else {
       return Cfn::Resource::Properties::Object::AWS::IoTWireless::WirelessDevice::SessionKeysAbpV11->new( %$_ );
     }
   };

package Cfn::Resource::Properties::Object::AWS::IoTWireless::WirelessDevice::SessionKeysAbpV11 {
  use Moose;
  use MooseX::StrictConstructor;
  extends 'Cfn::Value::TypedValue';
  
  has AppSKey => (isa => 'Cfn::Value::String', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has FNwkSIntKey => (isa => 'Cfn::Value::String', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has NwkSEncKey => (isa => 'Cfn::Value::String', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has SNwkSIntKey => (isa => 'Cfn::Value::String', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
}

subtype 'Cfn::Resource::Properties::AWS::IoTWireless::WirelessDevice::SessionKeysAbpV10X',
     as 'Cfn::Value';

coerce 'Cfn::Resource::Properties::AWS::IoTWireless::WirelessDevice::SessionKeysAbpV10X',
  from 'HashRef',
   via {
     if (my $f = Cfn::TypeLibrary::try_function($_)) {
       return $f
     } else {
       return Cfn::Resource::Properties::Object::AWS::IoTWireless::WirelessDevice::SessionKeysAbpV10X->new( %$_ );
     }
   };

package Cfn::Resource::Properties::Object::AWS::IoTWireless::WirelessDevice::SessionKeysAbpV10X {
  use Moose;
  use MooseX::StrictConstructor;
  extends 'Cfn::Value::TypedValue';
  
  has AppSKey => (isa => 'Cfn::Value::String', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has NwkSKey => (isa => 'Cfn::Value::String', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
}

subtype 'Cfn::Resource::Properties::AWS::IoTWireless::WirelessDevice::OtaaV11',
     as 'Cfn::Value';

coerce 'Cfn::Resource::Properties::AWS::IoTWireless::WirelessDevice::OtaaV11',
  from 'HashRef',
   via {
     if (my $f = Cfn::TypeLibrary::try_function($_)) {
       return $f
     } else {
       return Cfn::Resource::Properties::Object::AWS::IoTWireless::WirelessDevice::OtaaV11->new( %$_ );
     }
   };

package Cfn::Resource::Properties::Object::AWS::IoTWireless::WirelessDevice::OtaaV11 {
  use Moose;
  use MooseX::StrictConstructor;
  extends 'Cfn::Value::TypedValue';
  
  has AppKey => (isa => 'Cfn::Value::String', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has JoinEui => (isa => 'Cfn::Value::String', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has NwkKey => (isa => 'Cfn::Value::String', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
}

subtype 'Cfn::Resource::Properties::AWS::IoTWireless::WirelessDevice::OtaaV10X',
     as 'Cfn::Value';

coerce 'Cfn::Resource::Properties::AWS::IoTWireless::WirelessDevice::OtaaV10X',
  from 'HashRef',
   via {
     if (my $f = Cfn::TypeLibrary::try_function($_)) {
       return $f
     } else {
       return Cfn::Resource::Properties::Object::AWS::IoTWireless::WirelessDevice::OtaaV10X->new( %$_ );
     }
   };

package Cfn::Resource::Properties::Object::AWS::IoTWireless::WirelessDevice::OtaaV10X {
  use Moose;
  use MooseX::StrictConstructor;
  extends 'Cfn::Value::TypedValue';
  
  has AppEui => (isa => 'Cfn::Value::String', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has AppKey => (isa => 'Cfn::Value::String', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
}

subtype 'Cfn::Resource::Properties::AWS::IoTWireless::WirelessDevice::AbpV11',
     as 'Cfn::Value';

coerce 'Cfn::Resource::Properties::AWS::IoTWireless::WirelessDevice::AbpV11',
  from 'HashRef',
   via {
     if (my $f = Cfn::TypeLibrary::try_function($_)) {
       return $f
     } else {
       return Cfn::Resource::Properties::Object::AWS::IoTWireless::WirelessDevice::AbpV11->new( %$_ );
     }
   };

package Cfn::Resource::Properties::Object::AWS::IoTWireless::WirelessDevice::AbpV11 {
  use Moose;
  use MooseX::StrictConstructor;
  extends 'Cfn::Value::TypedValue';
  
  has DevAddr => (isa => 'Cfn::Value::String', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has SessionKeys => (isa => 'Cfn::Resource::Properties::AWS::IoTWireless::WirelessDevice::SessionKeysAbpV11', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
}

subtype 'Cfn::Resource::Properties::AWS::IoTWireless::WirelessDevice::AbpV10X',
     as 'Cfn::Value';

coerce 'Cfn::Resource::Properties::AWS::IoTWireless::WirelessDevice::AbpV10X',
  from 'HashRef',
   via {
     if (my $f = Cfn::TypeLibrary::try_function($_)) {
       return $f
     } else {
       return Cfn::Resource::Properties::Object::AWS::IoTWireless::WirelessDevice::AbpV10X->new( %$_ );
     }
   };

package Cfn::Resource::Properties::Object::AWS::IoTWireless::WirelessDevice::AbpV10X {
  use Moose;
  use MooseX::StrictConstructor;
  extends 'Cfn::Value::TypedValue';
  
  has DevAddr => (isa => 'Cfn::Value::String', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has SessionKeys => (isa => 'Cfn::Resource::Properties::AWS::IoTWireless::WirelessDevice::SessionKeysAbpV10X', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
}

subtype 'Cfn::Resource::Properties::AWS::IoTWireless::WirelessDevice::LoRaWANDevice',
     as 'Cfn::Value';

coerce 'Cfn::Resource::Properties::AWS::IoTWireless::WirelessDevice::LoRaWANDevice',
  from 'HashRef',
   via {
     if (my $f = Cfn::TypeLibrary::try_function($_)) {
       return $f
     } else {
       return Cfn::Resource::Properties::Object::AWS::IoTWireless::WirelessDevice::LoRaWANDevice->new( %$_ );
     }
   };

package Cfn::Resource::Properties::Object::AWS::IoTWireless::WirelessDevice::LoRaWANDevice {
  use Moose;
  use MooseX::StrictConstructor;
  extends 'Cfn::Value::TypedValue';
  
  has AbpV10X => (isa => 'Cfn::Resource::Properties::AWS::IoTWireless::WirelessDevice::AbpV10X', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has AbpV11 => (isa => 'Cfn::Resource::Properties::AWS::IoTWireless::WirelessDevice::AbpV11', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has DevEui => (isa => 'Cfn::Value::String', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has DeviceProfileId => (isa => 'Cfn::Value::String', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has OtaaV10X => (isa => 'Cfn::Resource::Properties::AWS::IoTWireless::WirelessDevice::OtaaV10X', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has OtaaV11 => (isa => 'Cfn::Resource::Properties::AWS::IoTWireless::WirelessDevice::OtaaV11', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has ServiceProfileId => (isa => 'Cfn::Value::String', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
}

package Cfn::Resource::Properties::AWS::IoTWireless::WirelessDevice {
  use Moose;
  use MooseX::StrictConstructor;
  extends 'Cfn::Resource::Properties';
  
  has Description => (isa => 'Cfn::Value::String', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has DestinationName => (isa => 'Cfn::Value::String', is => 'rw', coerce => 1, required => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has LoRaWANDevice => (isa => 'Cfn::Resource::Properties::AWS::IoTWireless::WirelessDevice::LoRaWANDevice', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has Name => (isa => 'Cfn::Value::String', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has NextToken => (isa => 'Cfn::Value::String', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has Tags => (isa => 'ArrayOfCfn::Resource::Properties::TagType', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has Type => (isa => 'Cfn::Value::String', is => 'rw', coerce => 1, required => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
}

1;
### main pod documentation begin ###

=encoding UTF-8

=head1 NAME

Cfn::Resource::AWS::IoTWireless::WirelessDevice - Cfn resource for AWS::IoTWireless::WirelessDevice

=head1 DESCRIPTION

This module implements a Perl module that represents the CloudFormation object AWS::IoTWireless::WirelessDevice.

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
