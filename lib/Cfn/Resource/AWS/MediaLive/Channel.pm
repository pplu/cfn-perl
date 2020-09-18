# AWS::MediaLive::Channel generated from spec 18.4.0
use Moose::Util::TypeConstraints;

coerce 'Cfn::Resource::Properties::AWS::MediaLive::Channel',
  from 'HashRef',
   via { Cfn::Resource::Properties::AWS::MediaLive::Channel->new( %$_ ) };

package Cfn::Resource::AWS::MediaLive::Channel {
  use Moose;
  extends 'Cfn::Resource';
  has Properties => (isa => 'Cfn::Resource::Properties::AWS::MediaLive::Channel', is => 'rw', coerce => 1);
  
  sub AttributeList {
    [ 'Arn','Inputs' ]
  }
  sub supported_regions {
    [ 'ap-northeast-1','ap-northeast-2','ap-south-1','ap-southeast-1','ap-southeast-2','eu-central-1','eu-west-1','sa-east-1','us-east-1','us-west-2' ]
  }
}



subtype 'Cfn::Resource::Properties::AWS::MediaLive::Channel::M3u8Settings',
     as 'Cfn::Value';

coerce 'Cfn::Resource::Properties::AWS::MediaLive::Channel::M3u8Settings',
  from 'HashRef',
   via {
     if (my $f = Cfn::TypeLibrary::try_function($_)) {
       return $f
     } else {
       return Cfn::Resource::Properties::AWS::MediaLive::Channel::M3u8Settings::Value->new( %$_ );
     }
   };

package Cfn::Resource::Properties::AWS::MediaLive::Channel::M3u8Settings::Value {
  use Moose;
  use MooseX::StrictConstructor;
  extends 'Cfn::Value::TypedValue';
  
  has AudioFramesPerPes => (isa => 'Cfn::Value::Integer', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has AudioPids => (isa => 'Cfn::Value::String', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has EcmPid => (isa => 'Cfn::Value::String', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has NielsenId3Behavior => (isa => 'Cfn::Value::String', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has PatInterval => (isa => 'Cfn::Value::Integer', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has PcrControl => (isa => 'Cfn::Value::String', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has PcrPeriod => (isa => 'Cfn::Value::Integer', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has PcrPid => (isa => 'Cfn::Value::String', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has PmtInterval => (isa => 'Cfn::Value::Integer', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has PmtPid => (isa => 'Cfn::Value::String', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has ProgramNum => (isa => 'Cfn::Value::Integer', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has Scte35Behavior => (isa => 'Cfn::Value::String', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has Scte35Pid => (isa => 'Cfn::Value::String', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has TimedMetadataBehavior => (isa => 'Cfn::Value::String', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has TimedMetadataPid => (isa => 'Cfn::Value::String', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has TransportStreamId => (isa => 'Cfn::Value::Integer', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has VideoPid => (isa => 'Cfn::Value::String', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
}

subtype 'Cfn::Resource::Properties::AWS::MediaLive::Channel::InputLocation',
     as 'Cfn::Value';

coerce 'Cfn::Resource::Properties::AWS::MediaLive::Channel::InputLocation',
  from 'HashRef',
   via {
     if (my $f = Cfn::TypeLibrary::try_function($_)) {
       return $f
     } else {
       return Cfn::Resource::Properties::AWS::MediaLive::Channel::InputLocation::Value->new( %$_ );
     }
   };

package Cfn::Resource::Properties::AWS::MediaLive::Channel::InputLocation::Value {
  use Moose;
  use MooseX::StrictConstructor;
  extends 'Cfn::Value::TypedValue';
  
  has PasswordParam => (isa => 'Cfn::Value::String', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has Uri => (isa => 'Cfn::Value::String', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has Username => (isa => 'Cfn::Value::String', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
}

subtype 'Cfn::Resource::Properties::AWS::MediaLive::Channel::DvbTdtSettings',
     as 'Cfn::Value';

coerce 'Cfn::Resource::Properties::AWS::MediaLive::Channel::DvbTdtSettings',
  from 'HashRef',
   via {
     if (my $f = Cfn::TypeLibrary::try_function($_)) {
       return $f
     } else {
       return Cfn::Resource::Properties::AWS::MediaLive::Channel::DvbTdtSettings::Value->new( %$_ );
     }
   };

package Cfn::Resource::Properties::AWS::MediaLive::Channel::DvbTdtSettings::Value {
  use Moose;
  use MooseX::StrictConstructor;
  extends 'Cfn::Value::TypedValue';
  
  has RepInterval => (isa => 'Cfn::Value::Integer', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
}

subtype 'Cfn::Resource::Properties::AWS::MediaLive::Channel::DvbSdtSettings',
     as 'Cfn::Value';

coerce 'Cfn::Resource::Properties::AWS::MediaLive::Channel::DvbSdtSettings',
  from 'HashRef',
   via {
     if (my $f = Cfn::TypeLibrary::try_function($_)) {
       return $f
     } else {
       return Cfn::Resource::Properties::AWS::MediaLive::Channel::DvbSdtSettings::Value->new( %$_ );
     }
   };

package Cfn::Resource::Properties::AWS::MediaLive::Channel::DvbSdtSettings::Value {
  use Moose;
  use MooseX::StrictConstructor;
  extends 'Cfn::Value::TypedValue';
  
  has OutputSdt => (isa => 'Cfn::Value::String', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has RepInterval => (isa => 'Cfn::Value::Integer', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has ServiceName => (isa => 'Cfn::Value::String', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has ServiceProviderName => (isa => 'Cfn::Value::String', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
}

subtype 'Cfn::Resource::Properties::AWS::MediaLive::Channel::DvbNitSettings',
     as 'Cfn::Value';

coerce 'Cfn::Resource::Properties::AWS::MediaLive::Channel::DvbNitSettings',
  from 'HashRef',
   via {
     if (my $f = Cfn::TypeLibrary::try_function($_)) {
       return $f
     } else {
       return Cfn::Resource::Properties::AWS::MediaLive::Channel::DvbNitSettings::Value->new( %$_ );
     }
   };

package Cfn::Resource::Properties::AWS::MediaLive::Channel::DvbNitSettings::Value {
  use Moose;
  use MooseX::StrictConstructor;
  extends 'Cfn::Value::TypedValue';
  
  has NetworkId => (isa => 'Cfn::Value::Integer', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has NetworkName => (isa => 'Cfn::Value::String', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has RepInterval => (isa => 'Cfn::Value::Integer', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
}

subtype 'Cfn::Resource::Properties::AWS::MediaLive::Channel::StandardHlsSettings',
     as 'Cfn::Value';

coerce 'Cfn::Resource::Properties::AWS::MediaLive::Channel::StandardHlsSettings',
  from 'HashRef',
   via {
     if (my $f = Cfn::TypeLibrary::try_function($_)) {
       return $f
     } else {
       return Cfn::Resource::Properties::AWS::MediaLive::Channel::StandardHlsSettings::Value->new( %$_ );
     }
   };

package Cfn::Resource::Properties::AWS::MediaLive::Channel::StandardHlsSettings::Value {
  use Moose;
  use MooseX::StrictConstructor;
  extends 'Cfn::Value::TypedValue';
  
  has AudioRenditionSets => (isa => 'Cfn::Value::String', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has M3u8Settings => (isa => 'Cfn::Resource::Properties::AWS::MediaLive::Channel::M3u8Settings', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
}

subtype 'Cfn::Resource::Properties::AWS::MediaLive::Channel::M2tsSettings',
     as 'Cfn::Value';

coerce 'Cfn::Resource::Properties::AWS::MediaLive::Channel::M2tsSettings',
  from 'HashRef',
   via {
     if (my $f = Cfn::TypeLibrary::try_function($_)) {
       return $f
     } else {
       return Cfn::Resource::Properties::AWS::MediaLive::Channel::M2tsSettings::Value->new( %$_ );
     }
   };

package Cfn::Resource::Properties::AWS::MediaLive::Channel::M2tsSettings::Value {
  use Moose;
  use MooseX::StrictConstructor;
  extends 'Cfn::Value::TypedValue';
  
  has AbsentInputAudioBehavior => (isa => 'Cfn::Value::String', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has Arib => (isa => 'Cfn::Value::String', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has AribCaptionsPid => (isa => 'Cfn::Value::String', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has AribCaptionsPidControl => (isa => 'Cfn::Value::String', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has AudioBufferModel => (isa => 'Cfn::Value::String', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has AudioFramesPerPes => (isa => 'Cfn::Value::Integer', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has AudioPids => (isa => 'Cfn::Value::String', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has AudioStreamType => (isa => 'Cfn::Value::String', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has Bitrate => (isa => 'Cfn::Value::Integer', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has BufferModel => (isa => 'Cfn::Value::String', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has CcDescriptor => (isa => 'Cfn::Value::String', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has DvbNitSettings => (isa => 'Cfn::Resource::Properties::AWS::MediaLive::Channel::DvbNitSettings', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has DvbSdtSettings => (isa => 'Cfn::Resource::Properties::AWS::MediaLive::Channel::DvbSdtSettings', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has DvbSubPids => (isa => 'Cfn::Value::String', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has DvbTdtSettings => (isa => 'Cfn::Resource::Properties::AWS::MediaLive::Channel::DvbTdtSettings', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has DvbTeletextPid => (isa => 'Cfn::Value::String', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has Ebif => (isa => 'Cfn::Value::String', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has EbpAudioInterval => (isa => 'Cfn::Value::String', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has EbpLookaheadMs => (isa => 'Cfn::Value::Integer', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has EbpPlacement => (isa => 'Cfn::Value::String', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has EcmPid => (isa => 'Cfn::Value::String', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has EsRateInPes => (isa => 'Cfn::Value::String', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has EtvPlatformPid => (isa => 'Cfn::Value::String', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has EtvSignalPid => (isa => 'Cfn::Value::String', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has FragmentTime => (isa => 'Cfn::Value::Double', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has Klv => (isa => 'Cfn::Value::String', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has KlvDataPids => (isa => 'Cfn::Value::String', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has NielsenId3Behavior => (isa => 'Cfn::Value::String', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has NullPacketBitrate => (isa => 'Cfn::Value::Double', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has PatInterval => (isa => 'Cfn::Value::Integer', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has PcrControl => (isa => 'Cfn::Value::String', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has PcrPeriod => (isa => 'Cfn::Value::Integer', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has PcrPid => (isa => 'Cfn::Value::String', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has PmtInterval => (isa => 'Cfn::Value::Integer', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has PmtPid => (isa => 'Cfn::Value::String', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has ProgramNum => (isa => 'Cfn::Value::Integer', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has RateMode => (isa => 'Cfn::Value::String', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has Scte27Pids => (isa => 'Cfn::Value::String', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has Scte35Control => (isa => 'Cfn::Value::String', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has Scte35Pid => (isa => 'Cfn::Value::String', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has SegmentationMarkers => (isa => 'Cfn::Value::String', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has SegmentationStyle => (isa => 'Cfn::Value::String', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has SegmentationTime => (isa => 'Cfn::Value::Double', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has TimedMetadataBehavior => (isa => 'Cfn::Value::String', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has TimedMetadataPid => (isa => 'Cfn::Value::String', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has TransportStreamId => (isa => 'Cfn::Value::Integer', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has VideoPid => (isa => 'Cfn::Value::String', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
}

subtype 'Cfn::Resource::Properties::AWS::MediaLive::Channel::Fmp4HlsSettings',
     as 'Cfn::Value';

coerce 'Cfn::Resource::Properties::AWS::MediaLive::Channel::Fmp4HlsSettings',
  from 'HashRef',
   via {
     if (my $f = Cfn::TypeLibrary::try_function($_)) {
       return $f
     } else {
       return Cfn::Resource::Properties::AWS::MediaLive::Channel::Fmp4HlsSettings::Value->new( %$_ );
     }
   };

package Cfn::Resource::Properties::AWS::MediaLive::Channel::Fmp4HlsSettings::Value {
  use Moose;
  use MooseX::StrictConstructor;
  extends 'Cfn::Value::TypedValue';
  
  has AudioRenditionSets => (isa => 'Cfn::Value::String', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has NielsenId3Behavior => (isa => 'Cfn::Value::String', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has TimedMetadataBehavior => (isa => 'Cfn::Value::String', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
}

subtype 'Cfn::Resource::Properties::AWS::MediaLive::Channel::AudioOnlyHlsSettings',
     as 'Cfn::Value';

coerce 'Cfn::Resource::Properties::AWS::MediaLive::Channel::AudioOnlyHlsSettings',
  from 'HashRef',
   via {
     if (my $f = Cfn::TypeLibrary::try_function($_)) {
       return $f
     } else {
       return Cfn::Resource::Properties::AWS::MediaLive::Channel::AudioOnlyHlsSettings::Value->new( %$_ );
     }
   };

package Cfn::Resource::Properties::AWS::MediaLive::Channel::AudioOnlyHlsSettings::Value {
  use Moose;
  use MooseX::StrictConstructor;
  extends 'Cfn::Value::TypedValue';
  
  has AudioGroupId => (isa => 'Cfn::Value::String', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has AudioOnlyImage => (isa => 'Cfn::Resource::Properties::AWS::MediaLive::Channel::InputLocation', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has AudioTrackType => (isa => 'Cfn::Value::String', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has SegmentType => (isa => 'Cfn::Value::String', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
}

subtype 'Cfn::Resource::Properties::AWS::MediaLive::Channel::UdpContainerSettings',
     as 'Cfn::Value';

coerce 'Cfn::Resource::Properties::AWS::MediaLive::Channel::UdpContainerSettings',
  from 'HashRef',
   via {
     if (my $f = Cfn::TypeLibrary::try_function($_)) {
       return $f
     } else {
       return Cfn::Resource::Properties::AWS::MediaLive::Channel::UdpContainerSettings::Value->new( %$_ );
     }
   };

package Cfn::Resource::Properties::AWS::MediaLive::Channel::UdpContainerSettings::Value {
  use Moose;
  use MooseX::StrictConstructor;
  extends 'Cfn::Value::TypedValue';
  
  has M2tsSettings => (isa => 'Cfn::Resource::Properties::AWS::MediaLive::Channel::M2tsSettings', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
}

subtype 'Cfn::Resource::Properties::AWS::MediaLive::Channel::TemporalFilterSettings',
     as 'Cfn::Value';

coerce 'Cfn::Resource::Properties::AWS::MediaLive::Channel::TemporalFilterSettings',
  from 'HashRef',
   via {
     if (my $f = Cfn::TypeLibrary::try_function($_)) {
       return $f
     } else {
       return Cfn::Resource::Properties::AWS::MediaLive::Channel::TemporalFilterSettings::Value->new( %$_ );
     }
   };

package Cfn::Resource::Properties::AWS::MediaLive::Channel::TemporalFilterSettings::Value {
  use Moose;
  use MooseX::StrictConstructor;
  extends 'Cfn::Value::TypedValue';
  
  has PostFilterSharpening => (isa => 'Cfn::Value::String', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has Strength => (isa => 'Cfn::Value::String', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
}

subtype 'Cfn::Resource::Properties::AWS::MediaLive::Channel::StaticKeySettings',
     as 'Cfn::Value';

coerce 'Cfn::Resource::Properties::AWS::MediaLive::Channel::StaticKeySettings',
  from 'HashRef',
   via {
     if (my $f = Cfn::TypeLibrary::try_function($_)) {
       return $f
     } else {
       return Cfn::Resource::Properties::AWS::MediaLive::Channel::StaticKeySettings::Value->new( %$_ );
     }
   };

package Cfn::Resource::Properties::AWS::MediaLive::Channel::StaticKeySettings::Value {
  use Moose;
  use MooseX::StrictConstructor;
  extends 'Cfn::Value::TypedValue';
  
  has KeyProviderServer => (isa => 'Cfn::Resource::Properties::AWS::MediaLive::Channel::InputLocation', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has StaticKeyValue => (isa => 'Cfn::Value::String', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
}

subtype 'Cfn::Resource::Properties::AWS::MediaLive::Channel::Rec709Settings',
     as 'Cfn::Value';

coerce 'Cfn::Resource::Properties::AWS::MediaLive::Channel::Rec709Settings',
  from 'HashRef',
   via {
     if (my $f = Cfn::TypeLibrary::try_function($_)) {
       return $f
     } else {
       return Cfn::Resource::Properties::AWS::MediaLive::Channel::Rec709Settings::Value->new( %$_ );
     }
   };

package Cfn::Resource::Properties::AWS::MediaLive::Channel::Rec709Settings::Value {
  use Moose;
  use MooseX::StrictConstructor;
  extends 'Cfn::Value::TypedValue';
  
}

subtype 'Cfn::Resource::Properties::AWS::MediaLive::Channel::Rec601Settings',
     as 'Cfn::Value';

coerce 'Cfn::Resource::Properties::AWS::MediaLive::Channel::Rec601Settings',
  from 'HashRef',
   via {
     if (my $f = Cfn::TypeLibrary::try_function($_)) {
       return $f
     } else {
       return Cfn::Resource::Properties::AWS::MediaLive::Channel::Rec601Settings::Value->new( %$_ );
     }
   };

package Cfn::Resource::Properties::AWS::MediaLive::Channel::Rec601Settings::Value {
  use Moose;
  use MooseX::StrictConstructor;
  extends 'Cfn::Value::TypedValue';
  
}

subtype 'Cfn::Resource::Properties::AWS::MediaLive::Channel::OutputLocationRef',
     as 'Cfn::Value';

coerce 'Cfn::Resource::Properties::AWS::MediaLive::Channel::OutputLocationRef',
  from 'HashRef',
   via {
     if (my $f = Cfn::TypeLibrary::try_function($_)) {
       return $f
     } else {
       return Cfn::Resource::Properties::AWS::MediaLive::Channel::OutputLocationRef::Value->new( %$_ );
     }
   };

package Cfn::Resource::Properties::AWS::MediaLive::Channel::OutputLocationRef::Value {
  use Moose;
  use MooseX::StrictConstructor;
  extends 'Cfn::Value::TypedValue';
  
  has DestinationRefId => (isa => 'Cfn::Value::String', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
}

subtype 'Cfn::Resource::Properties::AWS::MediaLive::Channel::HlsWebdavSettings',
     as 'Cfn::Value';

coerce 'Cfn::Resource::Properties::AWS::MediaLive::Channel::HlsWebdavSettings',
  from 'HashRef',
   via {
     if (my $f = Cfn::TypeLibrary::try_function($_)) {
       return $f
     } else {
       return Cfn::Resource::Properties::AWS::MediaLive::Channel::HlsWebdavSettings::Value->new( %$_ );
     }
   };

package Cfn::Resource::Properties::AWS::MediaLive::Channel::HlsWebdavSettings::Value {
  use Moose;
  use MooseX::StrictConstructor;
  extends 'Cfn::Value::TypedValue';
  
  has ConnectionRetryInterval => (isa => 'Cfn::Value::Integer', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has FilecacheDuration => (isa => 'Cfn::Value::Integer', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has HttpTransferMode => (isa => 'Cfn::Value::String', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has NumRetries => (isa => 'Cfn::Value::Integer', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has RestartDelay => (isa => 'Cfn::Value::Integer', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
}

subtype 'Cfn::Resource::Properties::AWS::MediaLive::Channel::HlsSettings',
     as 'Cfn::Value';

coerce 'Cfn::Resource::Properties::AWS::MediaLive::Channel::HlsSettings',
  from 'HashRef',
   via {
     if (my $f = Cfn::TypeLibrary::try_function($_)) {
       return $f
     } else {
       return Cfn::Resource::Properties::AWS::MediaLive::Channel::HlsSettings::Value->new( %$_ );
     }
   };

package Cfn::Resource::Properties::AWS::MediaLive::Channel::HlsSettings::Value {
  use Moose;
  use MooseX::StrictConstructor;
  extends 'Cfn::Value::TypedValue';
  
  has AudioOnlyHlsSettings => (isa => 'Cfn::Resource::Properties::AWS::MediaLive::Channel::AudioOnlyHlsSettings', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has Fmp4HlsSettings => (isa => 'Cfn::Resource::Properties::AWS::MediaLive::Channel::Fmp4HlsSettings', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has StandardHlsSettings => (isa => 'Cfn::Resource::Properties::AWS::MediaLive::Channel::StandardHlsSettings', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
}

subtype 'Cfn::Resource::Properties::AWS::MediaLive::Channel::HlsMediaStoreSettings',
     as 'Cfn::Value';

coerce 'Cfn::Resource::Properties::AWS::MediaLive::Channel::HlsMediaStoreSettings',
  from 'HashRef',
   via {
     if (my $f = Cfn::TypeLibrary::try_function($_)) {
       return $f
     } else {
       return Cfn::Resource::Properties::AWS::MediaLive::Channel::HlsMediaStoreSettings::Value->new( %$_ );
     }
   };

package Cfn::Resource::Properties::AWS::MediaLive::Channel::HlsMediaStoreSettings::Value {
  use Moose;
  use MooseX::StrictConstructor;
  extends 'Cfn::Value::TypedValue';
  
  has ConnectionRetryInterval => (isa => 'Cfn::Value::Integer', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has FilecacheDuration => (isa => 'Cfn::Value::Integer', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has MediaStoreStorageClass => (isa => 'Cfn::Value::String', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has NumRetries => (isa => 'Cfn::Value::Integer', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has RestartDelay => (isa => 'Cfn::Value::Integer', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
}

subtype 'Cfn::Resource::Properties::AWS::MediaLive::Channel::HlsBasicPutSettings',
     as 'Cfn::Value';

coerce 'Cfn::Resource::Properties::AWS::MediaLive::Channel::HlsBasicPutSettings',
  from 'HashRef',
   via {
     if (my $f = Cfn::TypeLibrary::try_function($_)) {
       return $f
     } else {
       return Cfn::Resource::Properties::AWS::MediaLive::Channel::HlsBasicPutSettings::Value->new( %$_ );
     }
   };

package Cfn::Resource::Properties::AWS::MediaLive::Channel::HlsBasicPutSettings::Value {
  use Moose;
  use MooseX::StrictConstructor;
  extends 'Cfn::Value::TypedValue';
  
  has ConnectionRetryInterval => (isa => 'Cfn::Value::Integer', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has FilecacheDuration => (isa => 'Cfn::Value::Integer', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has NumRetries => (isa => 'Cfn::Value::Integer', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has RestartDelay => (isa => 'Cfn::Value::Integer', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
}

subtype 'Cfn::Resource::Properties::AWS::MediaLive::Channel::HlsAkamaiSettings',
     as 'Cfn::Value';

coerce 'Cfn::Resource::Properties::AWS::MediaLive::Channel::HlsAkamaiSettings',
  from 'HashRef',
   via {
     if (my $f = Cfn::TypeLibrary::try_function($_)) {
       return $f
     } else {
       return Cfn::Resource::Properties::AWS::MediaLive::Channel::HlsAkamaiSettings::Value->new( %$_ );
     }
   };

package Cfn::Resource::Properties::AWS::MediaLive::Channel::HlsAkamaiSettings::Value {
  use Moose;
  use MooseX::StrictConstructor;
  extends 'Cfn::Value::TypedValue';
  
  has ConnectionRetryInterval => (isa => 'Cfn::Value::Integer', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has FilecacheDuration => (isa => 'Cfn::Value::Integer', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has HttpTransferMode => (isa => 'Cfn::Value::String', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has NumRetries => (isa => 'Cfn::Value::Integer', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has RestartDelay => (isa => 'Cfn::Value::Integer', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has Salt => (isa => 'Cfn::Value::String', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has Token => (isa => 'Cfn::Value::String', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
}

subtype 'Cfn::Resource::Properties::AWS::MediaLive::Channel::Hdr10Settings',
     as 'Cfn::Value';

coerce 'Cfn::Resource::Properties::AWS::MediaLive::Channel::Hdr10Settings',
  from 'HashRef',
   via {
     if (my $f = Cfn::TypeLibrary::try_function($_)) {
       return $f
     } else {
       return Cfn::Resource::Properties::AWS::MediaLive::Channel::Hdr10Settings::Value->new( %$_ );
     }
   };

package Cfn::Resource::Properties::AWS::MediaLive::Channel::Hdr10Settings::Value {
  use Moose;
  use MooseX::StrictConstructor;
  extends 'Cfn::Value::TypedValue';
  
  has MaxCll => (isa => 'Cfn::Value::Integer', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has MaxFall => (isa => 'Cfn::Value::Integer', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
}

subtype 'Cfn::Resource::Properties::AWS::MediaLive::Channel::FecOutputSettings',
     as 'Cfn::Value';

coerce 'Cfn::Resource::Properties::AWS::MediaLive::Channel::FecOutputSettings',
  from 'HashRef',
   via {
     if (my $f = Cfn::TypeLibrary::try_function($_)) {
       return $f
     } else {
       return Cfn::Resource::Properties::AWS::MediaLive::Channel::FecOutputSettings::Value->new( %$_ );
     }
   };

package Cfn::Resource::Properties::AWS::MediaLive::Channel::FecOutputSettings::Value {
  use Moose;
  use MooseX::StrictConstructor;
  extends 'Cfn::Value::TypedValue';
  
  has ColumnDepth => (isa => 'Cfn::Value::Integer', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has IncludeFec => (isa => 'Cfn::Value::String', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has RowLength => (isa => 'Cfn::Value::Integer', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
}

subtype 'Cfn::Resource::Properties::AWS::MediaLive::Channel::ColorSpacePassthroughSettings',
     as 'Cfn::Value';

coerce 'Cfn::Resource::Properties::AWS::MediaLive::Channel::ColorSpacePassthroughSettings',
  from 'HashRef',
   via {
     if (my $f = Cfn::TypeLibrary::try_function($_)) {
       return $f
     } else {
       return Cfn::Resource::Properties::AWS::MediaLive::Channel::ColorSpacePassthroughSettings::Value->new( %$_ );
     }
   };

package Cfn::Resource::Properties::AWS::MediaLive::Channel::ColorSpacePassthroughSettings::Value {
  use Moose;
  use MooseX::StrictConstructor;
  extends 'Cfn::Value::TypedValue';
  
}
subtype 'ArrayOfCfn::Resource::Properties::AWS::MediaLive::Channel::AudioTrack',
     as 'Cfn::Value',
  where { $_->isa('Cfn::Value::Array') or $_->isa('Cfn::Value::Function') },
message { "$_ is not a Cfn::Value or a Cfn::Value::Function" };

coerce 'ArrayOfCfn::Resource::Properties::AWS::MediaLive::Channel::AudioTrack',
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
         Moose::Util::TypeConstraints::find_type_constraint('Cfn::Resource::Properties::AWS::MediaLive::Channel::AudioTrack')->coerce($_)
       } @$_
     ]);
   };

subtype 'Cfn::Resource::Properties::AWS::MediaLive::Channel::AudioTrack',
     as 'Cfn::Value';

coerce 'Cfn::Resource::Properties::AWS::MediaLive::Channel::AudioTrack',
  from 'HashRef',
   via {
     if (my $f = Cfn::TypeLibrary::try_function($_)) {
       return $f
     } else {
       return Cfn::Resource::Properties::AWS::MediaLive::Channel::AudioTrack::Value->new( %$_ );
     }
   };

package Cfn::Resource::Properties::AWS::MediaLive::Channel::AudioTrack::Value {
  use Moose;
  use MooseX::StrictConstructor;
  extends 'Cfn::Value::TypedValue';
  
  has Track => (isa => 'Cfn::Value::Integer', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
}

subtype 'Cfn::Resource::Properties::AWS::MediaLive::Channel::ArchiveContainerSettings',
     as 'Cfn::Value';

coerce 'Cfn::Resource::Properties::AWS::MediaLive::Channel::ArchiveContainerSettings',
  from 'HashRef',
   via {
     if (my $f = Cfn::TypeLibrary::try_function($_)) {
       return $f
     } else {
       return Cfn::Resource::Properties::AWS::MediaLive::Channel::ArchiveContainerSettings::Value->new( %$_ );
     }
   };

package Cfn::Resource::Properties::AWS::MediaLive::Channel::ArchiveContainerSettings::Value {
  use Moose;
  use MooseX::StrictConstructor;
  extends 'Cfn::Value::TypedValue';
  
  has M2tsSettings => (isa => 'Cfn::Resource::Properties::AWS::MediaLive::Channel::M2tsSettings', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
}

subtype 'Cfn::Resource::Properties::AWS::MediaLive::Channel::VideoSelectorProgramId',
     as 'Cfn::Value';

coerce 'Cfn::Resource::Properties::AWS::MediaLive::Channel::VideoSelectorProgramId',
  from 'HashRef',
   via {
     if (my $f = Cfn::TypeLibrary::try_function($_)) {
       return $f
     } else {
       return Cfn::Resource::Properties::AWS::MediaLive::Channel::VideoSelectorProgramId::Value->new( %$_ );
     }
   };

package Cfn::Resource::Properties::AWS::MediaLive::Channel::VideoSelectorProgramId::Value {
  use Moose;
  use MooseX::StrictConstructor;
  extends 'Cfn::Value::TypedValue';
  
  has ProgramId => (isa => 'Cfn::Value::Integer', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
}

subtype 'Cfn::Resource::Properties::AWS::MediaLive::Channel::VideoSelectorPid',
     as 'Cfn::Value';

coerce 'Cfn::Resource::Properties::AWS::MediaLive::Channel::VideoSelectorPid',
  from 'HashRef',
   via {
     if (my $f = Cfn::TypeLibrary::try_function($_)) {
       return $f
     } else {
       return Cfn::Resource::Properties::AWS::MediaLive::Channel::VideoSelectorPid::Value->new( %$_ );
     }
   };

package Cfn::Resource::Properties::AWS::MediaLive::Channel::VideoSelectorPid::Value {
  use Moose;
  use MooseX::StrictConstructor;
  extends 'Cfn::Value::TypedValue';
  
  has Pid => (isa => 'Cfn::Value::Integer', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
}

subtype 'Cfn::Resource::Properties::AWS::MediaLive::Channel::UdpOutputSettings',
     as 'Cfn::Value';

coerce 'Cfn::Resource::Properties::AWS::MediaLive::Channel::UdpOutputSettings',
  from 'HashRef',
   via {
     if (my $f = Cfn::TypeLibrary::try_function($_)) {
       return $f
     } else {
       return Cfn::Resource::Properties::AWS::MediaLive::Channel::UdpOutputSettings::Value->new( %$_ );
     }
   };

package Cfn::Resource::Properties::AWS::MediaLive::Channel::UdpOutputSettings::Value {
  use Moose;
  use MooseX::StrictConstructor;
  extends 'Cfn::Value::TypedValue';
  
  has BufferMsec => (isa => 'Cfn::Value::Integer', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has ContainerSettings => (isa => 'Cfn::Resource::Properties::AWS::MediaLive::Channel::UdpContainerSettings', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has Destination => (isa => 'Cfn::Resource::Properties::AWS::MediaLive::Channel::OutputLocationRef', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has FecOutputSettings => (isa => 'Cfn::Resource::Properties::AWS::MediaLive::Channel::FecOutputSettings', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
}

subtype 'Cfn::Resource::Properties::AWS::MediaLive::Channel::TeletextSourceSettings',
     as 'Cfn::Value';

coerce 'Cfn::Resource::Properties::AWS::MediaLive::Channel::TeletextSourceSettings',
  from 'HashRef',
   via {
     if (my $f = Cfn::TypeLibrary::try_function($_)) {
       return $f
     } else {
       return Cfn::Resource::Properties::AWS::MediaLive::Channel::TeletextSourceSettings::Value->new( %$_ );
     }
   };

package Cfn::Resource::Properties::AWS::MediaLive::Channel::TeletextSourceSettings::Value {
  use Moose;
  use MooseX::StrictConstructor;
  extends 'Cfn::Value::TypedValue';
  
  has PageNumber => (isa => 'Cfn::Value::String', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
}

subtype 'Cfn::Resource::Properties::AWS::MediaLive::Channel::Scte27SourceSettings',
     as 'Cfn::Value';

coerce 'Cfn::Resource::Properties::AWS::MediaLive::Channel::Scte27SourceSettings',
  from 'HashRef',
   via {
     if (my $f = Cfn::TypeLibrary::try_function($_)) {
       return $f
     } else {
       return Cfn::Resource::Properties::AWS::MediaLive::Channel::Scte27SourceSettings::Value->new( %$_ );
     }
   };

package Cfn::Resource::Properties::AWS::MediaLive::Channel::Scte27SourceSettings::Value {
  use Moose;
  use MooseX::StrictConstructor;
  extends 'Cfn::Value::TypedValue';
  
  has Pid => (isa => 'Cfn::Value::Integer', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
}

subtype 'Cfn::Resource::Properties::AWS::MediaLive::Channel::Scte20SourceSettings',
     as 'Cfn::Value';

coerce 'Cfn::Resource::Properties::AWS::MediaLive::Channel::Scte20SourceSettings',
  from 'HashRef',
   via {
     if (my $f = Cfn::TypeLibrary::try_function($_)) {
       return $f
     } else {
       return Cfn::Resource::Properties::AWS::MediaLive::Channel::Scte20SourceSettings::Value->new( %$_ );
     }
   };

package Cfn::Resource::Properties::AWS::MediaLive::Channel::Scte20SourceSettings::Value {
  use Moose;
  use MooseX::StrictConstructor;
  extends 'Cfn::Value::TypedValue';
  
  has Convert608To708 => (isa => 'Cfn::Value::String', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has Source608ChannelNumber => (isa => 'Cfn::Value::Integer', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
}

subtype 'Cfn::Resource::Properties::AWS::MediaLive::Channel::RtmpOutputSettings',
     as 'Cfn::Value';

coerce 'Cfn::Resource::Properties::AWS::MediaLive::Channel::RtmpOutputSettings',
  from 'HashRef',
   via {
     if (my $f = Cfn::TypeLibrary::try_function($_)) {
       return $f
     } else {
       return Cfn::Resource::Properties::AWS::MediaLive::Channel::RtmpOutputSettings::Value->new( %$_ );
     }
   };

package Cfn::Resource::Properties::AWS::MediaLive::Channel::RtmpOutputSettings::Value {
  use Moose;
  use MooseX::StrictConstructor;
  extends 'Cfn::Value::TypedValue';
  
  has CertificateMode => (isa => 'Cfn::Value::String', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has ConnectionRetryInterval => (isa => 'Cfn::Value::Integer', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has Destination => (isa => 'Cfn::Resource::Properties::AWS::MediaLive::Channel::OutputLocationRef', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has NumRetries => (isa => 'Cfn::Value::Integer', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
}

subtype 'Cfn::Resource::Properties::AWS::MediaLive::Channel::MultiplexOutputSettings',
     as 'Cfn::Value';

coerce 'Cfn::Resource::Properties::AWS::MediaLive::Channel::MultiplexOutputSettings',
  from 'HashRef',
   via {
     if (my $f = Cfn::TypeLibrary::try_function($_)) {
       return $f
     } else {
       return Cfn::Resource::Properties::AWS::MediaLive::Channel::MultiplexOutputSettings::Value->new( %$_ );
     }
   };

package Cfn::Resource::Properties::AWS::MediaLive::Channel::MultiplexOutputSettings::Value {
  use Moose;
  use MooseX::StrictConstructor;
  extends 'Cfn::Value::TypedValue';
  
  has Destination => (isa => 'Cfn::Resource::Properties::AWS::MediaLive::Channel::OutputLocationRef', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
}

subtype 'Cfn::Resource::Properties::AWS::MediaLive::Channel::MsSmoothOutputSettings',
     as 'Cfn::Value';

coerce 'Cfn::Resource::Properties::AWS::MediaLive::Channel::MsSmoothOutputSettings',
  from 'HashRef',
   via {
     if (my $f = Cfn::TypeLibrary::try_function($_)) {
       return $f
     } else {
       return Cfn::Resource::Properties::AWS::MediaLive::Channel::MsSmoothOutputSettings::Value->new( %$_ );
     }
   };

package Cfn::Resource::Properties::AWS::MediaLive::Channel::MsSmoothOutputSettings::Value {
  use Moose;
  use MooseX::StrictConstructor;
  extends 'Cfn::Value::TypedValue';
  
  has H265PackagingType => (isa => 'Cfn::Value::String', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has NameModifier => (isa => 'Cfn::Value::String', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
}

subtype 'Cfn::Resource::Properties::AWS::MediaLive::Channel::MediaPackageOutputSettings',
     as 'Cfn::Value';

coerce 'Cfn::Resource::Properties::AWS::MediaLive::Channel::MediaPackageOutputSettings',
  from 'HashRef',
   via {
     if (my $f = Cfn::TypeLibrary::try_function($_)) {
       return $f
     } else {
       return Cfn::Resource::Properties::AWS::MediaLive::Channel::MediaPackageOutputSettings::Value->new( %$_ );
     }
   };

package Cfn::Resource::Properties::AWS::MediaLive::Channel::MediaPackageOutputSettings::Value {
  use Moose;
  use MooseX::StrictConstructor;
  extends 'Cfn::Value::TypedValue';
  
}

subtype 'Cfn::Resource::Properties::AWS::MediaLive::Channel::KeyProviderSettings',
     as 'Cfn::Value';

coerce 'Cfn::Resource::Properties::AWS::MediaLive::Channel::KeyProviderSettings',
  from 'HashRef',
   via {
     if (my $f = Cfn::TypeLibrary::try_function($_)) {
       return $f
     } else {
       return Cfn::Resource::Properties::AWS::MediaLive::Channel::KeyProviderSettings::Value->new( %$_ );
     }
   };

package Cfn::Resource::Properties::AWS::MediaLive::Channel::KeyProviderSettings::Value {
  use Moose;
  use MooseX::StrictConstructor;
  extends 'Cfn::Value::TypedValue';
  
  has StaticKeySettings => (isa => 'Cfn::Resource::Properties::AWS::MediaLive::Channel::StaticKeySettings', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
}
subtype 'ArrayOfCfn::Resource::Properties::AWS::MediaLive::Channel::InputChannelLevel',
     as 'Cfn::Value',
  where { $_->isa('Cfn::Value::Array') or $_->isa('Cfn::Value::Function') },
message { "$_ is not a Cfn::Value or a Cfn::Value::Function" };

coerce 'ArrayOfCfn::Resource::Properties::AWS::MediaLive::Channel::InputChannelLevel',
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
         Moose::Util::TypeConstraints::find_type_constraint('Cfn::Resource::Properties::AWS::MediaLive::Channel::InputChannelLevel')->coerce($_)
       } @$_
     ]);
   };

subtype 'Cfn::Resource::Properties::AWS::MediaLive::Channel::InputChannelLevel',
     as 'Cfn::Value';

coerce 'Cfn::Resource::Properties::AWS::MediaLive::Channel::InputChannelLevel',
  from 'HashRef',
   via {
     if (my $f = Cfn::TypeLibrary::try_function($_)) {
       return $f
     } else {
       return Cfn::Resource::Properties::AWS::MediaLive::Channel::InputChannelLevel::Value->new( %$_ );
     }
   };

package Cfn::Resource::Properties::AWS::MediaLive::Channel::InputChannelLevel::Value {
  use Moose;
  use MooseX::StrictConstructor;
  extends 'Cfn::Value::TypedValue';
  
  has Gain => (isa => 'Cfn::Value::Integer', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has InputChannel => (isa => 'Cfn::Value::Integer', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
}

subtype 'Cfn::Resource::Properties::AWS::MediaLive::Channel::HlsOutputSettings',
     as 'Cfn::Value';

coerce 'Cfn::Resource::Properties::AWS::MediaLive::Channel::HlsOutputSettings',
  from 'HashRef',
   via {
     if (my $f = Cfn::TypeLibrary::try_function($_)) {
       return $f
     } else {
       return Cfn::Resource::Properties::AWS::MediaLive::Channel::HlsOutputSettings::Value->new( %$_ );
     }
   };

package Cfn::Resource::Properties::AWS::MediaLive::Channel::HlsOutputSettings::Value {
  use Moose;
  use MooseX::StrictConstructor;
  extends 'Cfn::Value::TypedValue';
  
  has H265PackagingType => (isa => 'Cfn::Value::String', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has HlsSettings => (isa => 'Cfn::Resource::Properties::AWS::MediaLive::Channel::HlsSettings', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has NameModifier => (isa => 'Cfn::Value::String', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has SegmentModifier => (isa => 'Cfn::Value::String', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
}

subtype 'Cfn::Resource::Properties::AWS::MediaLive::Channel::HlsCdnSettings',
     as 'Cfn::Value';

coerce 'Cfn::Resource::Properties::AWS::MediaLive::Channel::HlsCdnSettings',
  from 'HashRef',
   via {
     if (my $f = Cfn::TypeLibrary::try_function($_)) {
       return $f
     } else {
       return Cfn::Resource::Properties::AWS::MediaLive::Channel::HlsCdnSettings::Value->new( %$_ );
     }
   };

package Cfn::Resource::Properties::AWS::MediaLive::Channel::HlsCdnSettings::Value {
  use Moose;
  use MooseX::StrictConstructor;
  extends 'Cfn::Value::TypedValue';
  
  has HlsAkamaiSettings => (isa => 'Cfn::Resource::Properties::AWS::MediaLive::Channel::HlsAkamaiSettings', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has HlsBasicPutSettings => (isa => 'Cfn::Resource::Properties::AWS::MediaLive::Channel::HlsBasicPutSettings', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has HlsMediaStoreSettings => (isa => 'Cfn::Resource::Properties::AWS::MediaLive::Channel::HlsMediaStoreSettings', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has HlsWebdavSettings => (isa => 'Cfn::Resource::Properties::AWS::MediaLive::Channel::HlsWebdavSettings', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
}

subtype 'Cfn::Resource::Properties::AWS::MediaLive::Channel::H265FilterSettings',
     as 'Cfn::Value';

coerce 'Cfn::Resource::Properties::AWS::MediaLive::Channel::H265FilterSettings',
  from 'HashRef',
   via {
     if (my $f = Cfn::TypeLibrary::try_function($_)) {
       return $f
     } else {
       return Cfn::Resource::Properties::AWS::MediaLive::Channel::H265FilterSettings::Value->new( %$_ );
     }
   };

package Cfn::Resource::Properties::AWS::MediaLive::Channel::H265FilterSettings::Value {
  use Moose;
  use MooseX::StrictConstructor;
  extends 'Cfn::Value::TypedValue';
  
  has TemporalFilterSettings => (isa => 'Cfn::Resource::Properties::AWS::MediaLive::Channel::TemporalFilterSettings', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
}

subtype 'Cfn::Resource::Properties::AWS::MediaLive::Channel::H265ColorSpaceSettings',
     as 'Cfn::Value';

coerce 'Cfn::Resource::Properties::AWS::MediaLive::Channel::H265ColorSpaceSettings',
  from 'HashRef',
   via {
     if (my $f = Cfn::TypeLibrary::try_function($_)) {
       return $f
     } else {
       return Cfn::Resource::Properties::AWS::MediaLive::Channel::H265ColorSpaceSettings::Value->new( %$_ );
     }
   };

package Cfn::Resource::Properties::AWS::MediaLive::Channel::H265ColorSpaceSettings::Value {
  use Moose;
  use MooseX::StrictConstructor;
  extends 'Cfn::Value::TypedValue';
  
  has ColorSpacePassthroughSettings => (isa => 'Cfn::Resource::Properties::AWS::MediaLive::Channel::ColorSpacePassthroughSettings', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has Hdr10Settings => (isa => 'Cfn::Resource::Properties::AWS::MediaLive::Channel::Hdr10Settings', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has Rec601Settings => (isa => 'Cfn::Resource::Properties::AWS::MediaLive::Channel::Rec601Settings', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has Rec709Settings => (isa => 'Cfn::Resource::Properties::AWS::MediaLive::Channel::Rec709Settings', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
}

subtype 'Cfn::Resource::Properties::AWS::MediaLive::Channel::H264FilterSettings',
     as 'Cfn::Value';

coerce 'Cfn::Resource::Properties::AWS::MediaLive::Channel::H264FilterSettings',
  from 'HashRef',
   via {
     if (my $f = Cfn::TypeLibrary::try_function($_)) {
       return $f
     } else {
       return Cfn::Resource::Properties::AWS::MediaLive::Channel::H264FilterSettings::Value->new( %$_ );
     }
   };

package Cfn::Resource::Properties::AWS::MediaLive::Channel::H264FilterSettings::Value {
  use Moose;
  use MooseX::StrictConstructor;
  extends 'Cfn::Value::TypedValue';
  
  has TemporalFilterSettings => (isa => 'Cfn::Resource::Properties::AWS::MediaLive::Channel::TemporalFilterSettings', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
}

subtype 'Cfn::Resource::Properties::AWS::MediaLive::Channel::H264ColorSpaceSettings',
     as 'Cfn::Value';

coerce 'Cfn::Resource::Properties::AWS::MediaLive::Channel::H264ColorSpaceSettings',
  from 'HashRef',
   via {
     if (my $f = Cfn::TypeLibrary::try_function($_)) {
       return $f
     } else {
       return Cfn::Resource::Properties::AWS::MediaLive::Channel::H264ColorSpaceSettings::Value->new( %$_ );
     }
   };

package Cfn::Resource::Properties::AWS::MediaLive::Channel::H264ColorSpaceSettings::Value {
  use Moose;
  use MooseX::StrictConstructor;
  extends 'Cfn::Value::TypedValue';
  
  has ColorSpacePassthroughSettings => (isa => 'Cfn::Resource::Properties::AWS::MediaLive::Channel::ColorSpacePassthroughSettings', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has Rec601Settings => (isa => 'Cfn::Resource::Properties::AWS::MediaLive::Channel::Rec601Settings', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has Rec709Settings => (isa => 'Cfn::Resource::Properties::AWS::MediaLive::Channel::Rec709Settings', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
}

subtype 'Cfn::Resource::Properties::AWS::MediaLive::Channel::FrameCaptureOutputSettings',
     as 'Cfn::Value';

coerce 'Cfn::Resource::Properties::AWS::MediaLive::Channel::FrameCaptureOutputSettings',
  from 'HashRef',
   via {
     if (my $f = Cfn::TypeLibrary::try_function($_)) {
       return $f
     } else {
       return Cfn::Resource::Properties::AWS::MediaLive::Channel::FrameCaptureOutputSettings::Value->new( %$_ );
     }
   };

package Cfn::Resource::Properties::AWS::MediaLive::Channel::FrameCaptureOutputSettings::Value {
  use Moose;
  use MooseX::StrictConstructor;
  extends 'Cfn::Value::TypedValue';
  
  has NameModifier => (isa => 'Cfn::Value::String', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
}

subtype 'Cfn::Resource::Properties::AWS::MediaLive::Channel::EmbeddedSourceSettings',
     as 'Cfn::Value';

coerce 'Cfn::Resource::Properties::AWS::MediaLive::Channel::EmbeddedSourceSettings',
  from 'HashRef',
   via {
     if (my $f = Cfn::TypeLibrary::try_function($_)) {
       return $f
     } else {
       return Cfn::Resource::Properties::AWS::MediaLive::Channel::EmbeddedSourceSettings::Value->new( %$_ );
     }
   };

package Cfn::Resource::Properties::AWS::MediaLive::Channel::EmbeddedSourceSettings::Value {
  use Moose;
  use MooseX::StrictConstructor;
  extends 'Cfn::Value::TypedValue';
  
  has Convert608To708 => (isa => 'Cfn::Value::String', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has Scte20Detection => (isa => 'Cfn::Value::String', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has Source608ChannelNumber => (isa => 'Cfn::Value::Integer', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has Source608TrackNumber => (isa => 'Cfn::Value::Integer', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
}

subtype 'Cfn::Resource::Properties::AWS::MediaLive::Channel::DvbSubSourceSettings',
     as 'Cfn::Value';

coerce 'Cfn::Resource::Properties::AWS::MediaLive::Channel::DvbSubSourceSettings',
  from 'HashRef',
   via {
     if (my $f = Cfn::TypeLibrary::try_function($_)) {
       return $f
     } else {
       return Cfn::Resource::Properties::AWS::MediaLive::Channel::DvbSubSourceSettings::Value->new( %$_ );
     }
   };

package Cfn::Resource::Properties::AWS::MediaLive::Channel::DvbSubSourceSettings::Value {
  use Moose;
  use MooseX::StrictConstructor;
  extends 'Cfn::Value::TypedValue';
  
  has Pid => (isa => 'Cfn::Value::Integer', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
}
subtype 'ArrayOfCfn::Resource::Properties::AWS::MediaLive::Channel::CaptionLanguageMapping',
     as 'Cfn::Value',
  where { $_->isa('Cfn::Value::Array') or $_->isa('Cfn::Value::Function') },
message { "$_ is not a Cfn::Value or a Cfn::Value::Function" };

coerce 'ArrayOfCfn::Resource::Properties::AWS::MediaLive::Channel::CaptionLanguageMapping',
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
         Moose::Util::TypeConstraints::find_type_constraint('Cfn::Resource::Properties::AWS::MediaLive::Channel::CaptionLanguageMapping')->coerce($_)
       } @$_
     ]);
   };

subtype 'Cfn::Resource::Properties::AWS::MediaLive::Channel::CaptionLanguageMapping',
     as 'Cfn::Value';

coerce 'Cfn::Resource::Properties::AWS::MediaLive::Channel::CaptionLanguageMapping',
  from 'HashRef',
   via {
     if (my $f = Cfn::TypeLibrary::try_function($_)) {
       return $f
     } else {
       return Cfn::Resource::Properties::AWS::MediaLive::Channel::CaptionLanguageMapping::Value->new( %$_ );
     }
   };

package Cfn::Resource::Properties::AWS::MediaLive::Channel::CaptionLanguageMapping::Value {
  use Moose;
  use MooseX::StrictConstructor;
  extends 'Cfn::Value::TypedValue';
  
  has CaptionChannel => (isa => 'Cfn::Value::Integer', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has LanguageCode => (isa => 'Cfn::Value::String', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has LanguageDescription => (isa => 'Cfn::Value::String', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
}

subtype 'Cfn::Resource::Properties::AWS::MediaLive::Channel::AudioTrackSelection',
     as 'Cfn::Value';

coerce 'Cfn::Resource::Properties::AWS::MediaLive::Channel::AudioTrackSelection',
  from 'HashRef',
   via {
     if (my $f = Cfn::TypeLibrary::try_function($_)) {
       return $f
     } else {
       return Cfn::Resource::Properties::AWS::MediaLive::Channel::AudioTrackSelection::Value->new( %$_ );
     }
   };

package Cfn::Resource::Properties::AWS::MediaLive::Channel::AudioTrackSelection::Value {
  use Moose;
  use MooseX::StrictConstructor;
  extends 'Cfn::Value::TypedValue';
  
  has Tracks => (isa => 'ArrayOfCfn::Resource::Properties::AWS::MediaLive::Channel::AudioTrack', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
}

subtype 'Cfn::Resource::Properties::AWS::MediaLive::Channel::AudioPidSelection',
     as 'Cfn::Value';

coerce 'Cfn::Resource::Properties::AWS::MediaLive::Channel::AudioPidSelection',
  from 'HashRef',
   via {
     if (my $f = Cfn::TypeLibrary::try_function($_)) {
       return $f
     } else {
       return Cfn::Resource::Properties::AWS::MediaLive::Channel::AudioPidSelection::Value->new( %$_ );
     }
   };

package Cfn::Resource::Properties::AWS::MediaLive::Channel::AudioPidSelection::Value {
  use Moose;
  use MooseX::StrictConstructor;
  extends 'Cfn::Value::TypedValue';
  
  has Pid => (isa => 'Cfn::Value::Integer', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
}

subtype 'Cfn::Resource::Properties::AWS::MediaLive::Channel::AudioLanguageSelection',
     as 'Cfn::Value';

coerce 'Cfn::Resource::Properties::AWS::MediaLive::Channel::AudioLanguageSelection',
  from 'HashRef',
   via {
     if (my $f = Cfn::TypeLibrary::try_function($_)) {
       return $f
     } else {
       return Cfn::Resource::Properties::AWS::MediaLive::Channel::AudioLanguageSelection::Value->new( %$_ );
     }
   };

package Cfn::Resource::Properties::AWS::MediaLive::Channel::AudioLanguageSelection::Value {
  use Moose;
  use MooseX::StrictConstructor;
  extends 'Cfn::Value::TypedValue';
  
  has LanguageCode => (isa => 'Cfn::Value::String', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has LanguageSelectionPolicy => (isa => 'Cfn::Value::String', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
}

subtype 'Cfn::Resource::Properties::AWS::MediaLive::Channel::AribSourceSettings',
     as 'Cfn::Value';

coerce 'Cfn::Resource::Properties::AWS::MediaLive::Channel::AribSourceSettings',
  from 'HashRef',
   via {
     if (my $f = Cfn::TypeLibrary::try_function($_)) {
       return $f
     } else {
       return Cfn::Resource::Properties::AWS::MediaLive::Channel::AribSourceSettings::Value->new( %$_ );
     }
   };

package Cfn::Resource::Properties::AWS::MediaLive::Channel::AribSourceSettings::Value {
  use Moose;
  use MooseX::StrictConstructor;
  extends 'Cfn::Value::TypedValue';
  
}

subtype 'Cfn::Resource::Properties::AWS::MediaLive::Channel::ArchiveOutputSettings',
     as 'Cfn::Value';

coerce 'Cfn::Resource::Properties::AWS::MediaLive::Channel::ArchiveOutputSettings',
  from 'HashRef',
   via {
     if (my $f = Cfn::TypeLibrary::try_function($_)) {
       return $f
     } else {
       return Cfn::Resource::Properties::AWS::MediaLive::Channel::ArchiveOutputSettings::Value->new( %$_ );
     }
   };

package Cfn::Resource::Properties::AWS::MediaLive::Channel::ArchiveOutputSettings::Value {
  use Moose;
  use MooseX::StrictConstructor;
  extends 'Cfn::Value::TypedValue';
  
  has ContainerSettings => (isa => 'Cfn::Resource::Properties::AWS::MediaLive::Channel::ArchiveContainerSettings', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has Extension => (isa => 'Cfn::Value::String', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has NameModifier => (isa => 'Cfn::Value::String', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
}

subtype 'Cfn::Resource::Properties::AWS::MediaLive::Channel::WebvttDestinationSettings',
     as 'Cfn::Value';

coerce 'Cfn::Resource::Properties::AWS::MediaLive::Channel::WebvttDestinationSettings',
  from 'HashRef',
   via {
     if (my $f = Cfn::TypeLibrary::try_function($_)) {
       return $f
     } else {
       return Cfn::Resource::Properties::AWS::MediaLive::Channel::WebvttDestinationSettings::Value->new( %$_ );
     }
   };

package Cfn::Resource::Properties::AWS::MediaLive::Channel::WebvttDestinationSettings::Value {
  use Moose;
  use MooseX::StrictConstructor;
  extends 'Cfn::Value::TypedValue';
  
}

subtype 'Cfn::Resource::Properties::AWS::MediaLive::Channel::VideoSelectorSettings',
     as 'Cfn::Value';

coerce 'Cfn::Resource::Properties::AWS::MediaLive::Channel::VideoSelectorSettings',
  from 'HashRef',
   via {
     if (my $f = Cfn::TypeLibrary::try_function($_)) {
       return $f
     } else {
       return Cfn::Resource::Properties::AWS::MediaLive::Channel::VideoSelectorSettings::Value->new( %$_ );
     }
   };

package Cfn::Resource::Properties::AWS::MediaLive::Channel::VideoSelectorSettings::Value {
  use Moose;
  use MooseX::StrictConstructor;
  extends 'Cfn::Value::TypedValue';
  
  has VideoSelectorPid => (isa => 'Cfn::Resource::Properties::AWS::MediaLive::Channel::VideoSelectorPid', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has VideoSelectorProgramId => (isa => 'Cfn::Resource::Properties::AWS::MediaLive::Channel::VideoSelectorProgramId', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
}

subtype 'Cfn::Resource::Properties::AWS::MediaLive::Channel::UdpGroupSettings',
     as 'Cfn::Value';

coerce 'Cfn::Resource::Properties::AWS::MediaLive::Channel::UdpGroupSettings',
  from 'HashRef',
   via {
     if (my $f = Cfn::TypeLibrary::try_function($_)) {
       return $f
     } else {
       return Cfn::Resource::Properties::AWS::MediaLive::Channel::UdpGroupSettings::Value->new( %$_ );
     }
   };

package Cfn::Resource::Properties::AWS::MediaLive::Channel::UdpGroupSettings::Value {
  use Moose;
  use MooseX::StrictConstructor;
  extends 'Cfn::Value::TypedValue';
  
  has InputLossAction => (isa => 'Cfn::Value::String', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has TimedMetadataId3Frame => (isa => 'Cfn::Value::String', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has TimedMetadataId3Period => (isa => 'Cfn::Value::Integer', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
}

subtype 'Cfn::Resource::Properties::AWS::MediaLive::Channel::TtmlDestinationSettings',
     as 'Cfn::Value';

coerce 'Cfn::Resource::Properties::AWS::MediaLive::Channel::TtmlDestinationSettings',
  from 'HashRef',
   via {
     if (my $f = Cfn::TypeLibrary::try_function($_)) {
       return $f
     } else {
       return Cfn::Resource::Properties::AWS::MediaLive::Channel::TtmlDestinationSettings::Value->new( %$_ );
     }
   };

package Cfn::Resource::Properties::AWS::MediaLive::Channel::TtmlDestinationSettings::Value {
  use Moose;
  use MooseX::StrictConstructor;
  extends 'Cfn::Value::TypedValue';
  
  has StyleControl => (isa => 'Cfn::Value::String', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
}

subtype 'Cfn::Resource::Properties::AWS::MediaLive::Channel::TeletextDestinationSettings',
     as 'Cfn::Value';

coerce 'Cfn::Resource::Properties::AWS::MediaLive::Channel::TeletextDestinationSettings',
  from 'HashRef',
   via {
     if (my $f = Cfn::TypeLibrary::try_function($_)) {
       return $f
     } else {
       return Cfn::Resource::Properties::AWS::MediaLive::Channel::TeletextDestinationSettings::Value->new( %$_ );
     }
   };

package Cfn::Resource::Properties::AWS::MediaLive::Channel::TeletextDestinationSettings::Value {
  use Moose;
  use MooseX::StrictConstructor;
  extends 'Cfn::Value::TypedValue';
  
}

subtype 'Cfn::Resource::Properties::AWS::MediaLive::Channel::SmpteTtDestinationSettings',
     as 'Cfn::Value';

coerce 'Cfn::Resource::Properties::AWS::MediaLive::Channel::SmpteTtDestinationSettings',
  from 'HashRef',
   via {
     if (my $f = Cfn::TypeLibrary::try_function($_)) {
       return $f
     } else {
       return Cfn::Resource::Properties::AWS::MediaLive::Channel::SmpteTtDestinationSettings::Value->new( %$_ );
     }
   };

package Cfn::Resource::Properties::AWS::MediaLive::Channel::SmpteTtDestinationSettings::Value {
  use Moose;
  use MooseX::StrictConstructor;
  extends 'Cfn::Value::TypedValue';
  
}

subtype 'Cfn::Resource::Properties::AWS::MediaLive::Channel::Scte35TimeSignalApos',
     as 'Cfn::Value';

coerce 'Cfn::Resource::Properties::AWS::MediaLive::Channel::Scte35TimeSignalApos',
  from 'HashRef',
   via {
     if (my $f = Cfn::TypeLibrary::try_function($_)) {
       return $f
     } else {
       return Cfn::Resource::Properties::AWS::MediaLive::Channel::Scte35TimeSignalApos::Value->new( %$_ );
     }
   };

package Cfn::Resource::Properties::AWS::MediaLive::Channel::Scte35TimeSignalApos::Value {
  use Moose;
  use MooseX::StrictConstructor;
  extends 'Cfn::Value::TypedValue';
  
  has AdAvailOffset => (isa => 'Cfn::Value::Integer', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has NoRegionalBlackoutFlag => (isa => 'Cfn::Value::String', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has WebDeliveryAllowedFlag => (isa => 'Cfn::Value::String', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
}

subtype 'Cfn::Resource::Properties::AWS::MediaLive::Channel::Scte35SpliceInsert',
     as 'Cfn::Value';

coerce 'Cfn::Resource::Properties::AWS::MediaLive::Channel::Scte35SpliceInsert',
  from 'HashRef',
   via {
     if (my $f = Cfn::TypeLibrary::try_function($_)) {
       return $f
     } else {
       return Cfn::Resource::Properties::AWS::MediaLive::Channel::Scte35SpliceInsert::Value->new( %$_ );
     }
   };

package Cfn::Resource::Properties::AWS::MediaLive::Channel::Scte35SpliceInsert::Value {
  use Moose;
  use MooseX::StrictConstructor;
  extends 'Cfn::Value::TypedValue';
  
  has AdAvailOffset => (isa => 'Cfn::Value::Integer', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has NoRegionalBlackoutFlag => (isa => 'Cfn::Value::String', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has WebDeliveryAllowedFlag => (isa => 'Cfn::Value::String', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
}

subtype 'Cfn::Resource::Properties::AWS::MediaLive::Channel::Scte27DestinationSettings',
     as 'Cfn::Value';

coerce 'Cfn::Resource::Properties::AWS::MediaLive::Channel::Scte27DestinationSettings',
  from 'HashRef',
   via {
     if (my $f = Cfn::TypeLibrary::try_function($_)) {
       return $f
     } else {
       return Cfn::Resource::Properties::AWS::MediaLive::Channel::Scte27DestinationSettings::Value->new( %$_ );
     }
   };

package Cfn::Resource::Properties::AWS::MediaLive::Channel::Scte27DestinationSettings::Value {
  use Moose;
  use MooseX::StrictConstructor;
  extends 'Cfn::Value::TypedValue';
  
}

subtype 'Cfn::Resource::Properties::AWS::MediaLive::Channel::Scte20PlusEmbeddedDestinationSettings',
     as 'Cfn::Value';

coerce 'Cfn::Resource::Properties::AWS::MediaLive::Channel::Scte20PlusEmbeddedDestinationSettings',
  from 'HashRef',
   via {
     if (my $f = Cfn::TypeLibrary::try_function($_)) {
       return $f
     } else {
       return Cfn::Resource::Properties::AWS::MediaLive::Channel::Scte20PlusEmbeddedDestinationSettings::Value->new( %$_ );
     }
   };

package Cfn::Resource::Properties::AWS::MediaLive::Channel::Scte20PlusEmbeddedDestinationSettings::Value {
  use Moose;
  use MooseX::StrictConstructor;
  extends 'Cfn::Value::TypedValue';
  
}

subtype 'Cfn::Resource::Properties::AWS::MediaLive::Channel::RtmpGroupSettings',
     as 'Cfn::Value';

coerce 'Cfn::Resource::Properties::AWS::MediaLive::Channel::RtmpGroupSettings',
  from 'HashRef',
   via {
     if (my $f = Cfn::TypeLibrary::try_function($_)) {
       return $f
     } else {
       return Cfn::Resource::Properties::AWS::MediaLive::Channel::RtmpGroupSettings::Value->new( %$_ );
     }
   };

package Cfn::Resource::Properties::AWS::MediaLive::Channel::RtmpGroupSettings::Value {
  use Moose;
  use MooseX::StrictConstructor;
  extends 'Cfn::Value::TypedValue';
  
  has AuthenticationScheme => (isa => 'Cfn::Value::String', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has CacheFullBehavior => (isa => 'Cfn::Value::String', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has CacheLength => (isa => 'Cfn::Value::Integer', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has CaptionData => (isa => 'Cfn::Value::String', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has InputLossAction => (isa => 'Cfn::Value::String', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has RestartDelay => (isa => 'Cfn::Value::Integer', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
}

subtype 'Cfn::Resource::Properties::AWS::MediaLive::Channel::RtmpCaptionInfoDestinationSettings',
     as 'Cfn::Value';

coerce 'Cfn::Resource::Properties::AWS::MediaLive::Channel::RtmpCaptionInfoDestinationSettings',
  from 'HashRef',
   via {
     if (my $f = Cfn::TypeLibrary::try_function($_)) {
       return $f
     } else {
       return Cfn::Resource::Properties::AWS::MediaLive::Channel::RtmpCaptionInfoDestinationSettings::Value->new( %$_ );
     }
   };

package Cfn::Resource::Properties::AWS::MediaLive::Channel::RtmpCaptionInfoDestinationSettings::Value {
  use Moose;
  use MooseX::StrictConstructor;
  extends 'Cfn::Value::TypedValue';
  
}

subtype 'Cfn::Resource::Properties::AWS::MediaLive::Channel::PassThroughSettings',
     as 'Cfn::Value';

coerce 'Cfn::Resource::Properties::AWS::MediaLive::Channel::PassThroughSettings',
  from 'HashRef',
   via {
     if (my $f = Cfn::TypeLibrary::try_function($_)) {
       return $f
     } else {
       return Cfn::Resource::Properties::AWS::MediaLive::Channel::PassThroughSettings::Value->new( %$_ );
     }
   };

package Cfn::Resource::Properties::AWS::MediaLive::Channel::PassThroughSettings::Value {
  use Moose;
  use MooseX::StrictConstructor;
  extends 'Cfn::Value::TypedValue';
  
}

subtype 'Cfn::Resource::Properties::AWS::MediaLive::Channel::OutputSettings',
     as 'Cfn::Value';

coerce 'Cfn::Resource::Properties::AWS::MediaLive::Channel::OutputSettings',
  from 'HashRef',
   via {
     if (my $f = Cfn::TypeLibrary::try_function($_)) {
       return $f
     } else {
       return Cfn::Resource::Properties::AWS::MediaLive::Channel::OutputSettings::Value->new( %$_ );
     }
   };

package Cfn::Resource::Properties::AWS::MediaLive::Channel::OutputSettings::Value {
  use Moose;
  use MooseX::StrictConstructor;
  extends 'Cfn::Value::TypedValue';
  
  has ArchiveOutputSettings => (isa => 'Cfn::Resource::Properties::AWS::MediaLive::Channel::ArchiveOutputSettings', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has FrameCaptureOutputSettings => (isa => 'Cfn::Resource::Properties::AWS::MediaLive::Channel::FrameCaptureOutputSettings', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has HlsOutputSettings => (isa => 'Cfn::Resource::Properties::AWS::MediaLive::Channel::HlsOutputSettings', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has MediaPackageOutputSettings => (isa => 'Cfn::Resource::Properties::AWS::MediaLive::Channel::MediaPackageOutputSettings', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has MsSmoothOutputSettings => (isa => 'Cfn::Resource::Properties::AWS::MediaLive::Channel::MsSmoothOutputSettings', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has MultiplexOutputSettings => (isa => 'Cfn::Resource::Properties::AWS::MediaLive::Channel::MultiplexOutputSettings', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has RtmpOutputSettings => (isa => 'Cfn::Resource::Properties::AWS::MediaLive::Channel::RtmpOutputSettings', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has UdpOutputSettings => (isa => 'Cfn::Resource::Properties::AWS::MediaLive::Channel::UdpOutputSettings', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
}

subtype 'Cfn::Resource::Properties::AWS::MediaLive::Channel::MultiplexGroupSettings',
     as 'Cfn::Value';

coerce 'Cfn::Resource::Properties::AWS::MediaLive::Channel::MultiplexGroupSettings',
  from 'HashRef',
   via {
     if (my $f = Cfn::TypeLibrary::try_function($_)) {
       return $f
     } else {
       return Cfn::Resource::Properties::AWS::MediaLive::Channel::MultiplexGroupSettings::Value->new( %$_ );
     }
   };

package Cfn::Resource::Properties::AWS::MediaLive::Channel::MultiplexGroupSettings::Value {
  use Moose;
  use MooseX::StrictConstructor;
  extends 'Cfn::Value::TypedValue';
  
}

subtype 'Cfn::Resource::Properties::AWS::MediaLive::Channel::MsSmoothGroupSettings',
     as 'Cfn::Value';

coerce 'Cfn::Resource::Properties::AWS::MediaLive::Channel::MsSmoothGroupSettings',
  from 'HashRef',
   via {
     if (my $f = Cfn::TypeLibrary::try_function($_)) {
       return $f
     } else {
       return Cfn::Resource::Properties::AWS::MediaLive::Channel::MsSmoothGroupSettings::Value->new( %$_ );
     }
   };

package Cfn::Resource::Properties::AWS::MediaLive::Channel::MsSmoothGroupSettings::Value {
  use Moose;
  use MooseX::StrictConstructor;
  extends 'Cfn::Value::TypedValue';
  
  has AcquisitionPointId => (isa => 'Cfn::Value::String', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has AudioOnlyTimecodeControl => (isa => 'Cfn::Value::String', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has CertificateMode => (isa => 'Cfn::Value::String', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has ConnectionRetryInterval => (isa => 'Cfn::Value::Integer', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has Destination => (isa => 'Cfn::Resource::Properties::AWS::MediaLive::Channel::OutputLocationRef', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has EventId => (isa => 'Cfn::Value::String', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has EventIdMode => (isa => 'Cfn::Value::String', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has EventStopBehavior => (isa => 'Cfn::Value::String', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has FilecacheDuration => (isa => 'Cfn::Value::Integer', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has FragmentLength => (isa => 'Cfn::Value::Integer', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has InputLossAction => (isa => 'Cfn::Value::String', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has NumRetries => (isa => 'Cfn::Value::Integer', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has RestartDelay => (isa => 'Cfn::Value::Integer', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has SegmentationMode => (isa => 'Cfn::Value::String', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has SendDelayMs => (isa => 'Cfn::Value::Integer', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has SparseTrackType => (isa => 'Cfn::Value::String', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has StreamManifestBehavior => (isa => 'Cfn::Value::String', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has TimestampOffset => (isa => 'Cfn::Value::String', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has TimestampOffsetMode => (isa => 'Cfn::Value::String', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
}

subtype 'Cfn::Resource::Properties::AWS::MediaLive::Channel::Mp2Settings',
     as 'Cfn::Value';

coerce 'Cfn::Resource::Properties::AWS::MediaLive::Channel::Mp2Settings',
  from 'HashRef',
   via {
     if (my $f = Cfn::TypeLibrary::try_function($_)) {
       return $f
     } else {
       return Cfn::Resource::Properties::AWS::MediaLive::Channel::Mp2Settings::Value->new( %$_ );
     }
   };

package Cfn::Resource::Properties::AWS::MediaLive::Channel::Mp2Settings::Value {
  use Moose;
  use MooseX::StrictConstructor;
  extends 'Cfn::Value::TypedValue';
  
  has Bitrate => (isa => 'Cfn::Value::Double', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has CodingMode => (isa => 'Cfn::Value::String', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has SampleRate => (isa => 'Cfn::Value::Double', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
}

subtype 'Cfn::Resource::Properties::AWS::MediaLive::Channel::MediaPackageGroupSettings',
     as 'Cfn::Value';

coerce 'Cfn::Resource::Properties::AWS::MediaLive::Channel::MediaPackageGroupSettings',
  from 'HashRef',
   via {
     if (my $f = Cfn::TypeLibrary::try_function($_)) {
       return $f
     } else {
       return Cfn::Resource::Properties::AWS::MediaLive::Channel::MediaPackageGroupSettings::Value->new( %$_ );
     }
   };

package Cfn::Resource::Properties::AWS::MediaLive::Channel::MediaPackageGroupSettings::Value {
  use Moose;
  use MooseX::StrictConstructor;
  extends 'Cfn::Value::TypedValue';
  
  has Destination => (isa => 'Cfn::Resource::Properties::AWS::MediaLive::Channel::OutputLocationRef', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
}

subtype 'Cfn::Resource::Properties::AWS::MediaLive::Channel::HlsInputSettings',
     as 'Cfn::Value';

coerce 'Cfn::Resource::Properties::AWS::MediaLive::Channel::HlsInputSettings',
  from 'HashRef',
   via {
     if (my $f = Cfn::TypeLibrary::try_function($_)) {
       return $f
     } else {
       return Cfn::Resource::Properties::AWS::MediaLive::Channel::HlsInputSettings::Value->new( %$_ );
     }
   };

package Cfn::Resource::Properties::AWS::MediaLive::Channel::HlsInputSettings::Value {
  use Moose;
  use MooseX::StrictConstructor;
  extends 'Cfn::Value::TypedValue';
  
  has Bandwidth => (isa => 'Cfn::Value::Integer', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has BufferSegments => (isa => 'Cfn::Value::Integer', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has Retries => (isa => 'Cfn::Value::Integer', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has RetryInterval => (isa => 'Cfn::Value::Integer', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
}

subtype 'Cfn::Resource::Properties::AWS::MediaLive::Channel::HlsGroupSettings',
     as 'Cfn::Value';

coerce 'Cfn::Resource::Properties::AWS::MediaLive::Channel::HlsGroupSettings',
  from 'HashRef',
   via {
     if (my $f = Cfn::TypeLibrary::try_function($_)) {
       return $f
     } else {
       return Cfn::Resource::Properties::AWS::MediaLive::Channel::HlsGroupSettings::Value->new( %$_ );
     }
   };

package Cfn::Resource::Properties::AWS::MediaLive::Channel::HlsGroupSettings::Value {
  use Moose;
  use MooseX::StrictConstructor;
  extends 'Cfn::Value::TypedValue';
  
  has AdMarkers => (isa => 'Cfn::Value::Array|Cfn::Value::Function|Cfn::DynamicValue', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has BaseUrlContent => (isa => 'Cfn::Value::String', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has BaseUrlContent1 => (isa => 'Cfn::Value::String', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has BaseUrlManifest => (isa => 'Cfn::Value::String', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has BaseUrlManifest1 => (isa => 'Cfn::Value::String', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has CaptionLanguageMappings => (isa => 'ArrayOfCfn::Resource::Properties::AWS::MediaLive::Channel::CaptionLanguageMapping', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has CaptionLanguageSetting => (isa => 'Cfn::Value::String', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has ClientCache => (isa => 'Cfn::Value::String', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has CodecSpecification => (isa => 'Cfn::Value::String', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has ConstantIv => (isa => 'Cfn::Value::String', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has Destination => (isa => 'Cfn::Resource::Properties::AWS::MediaLive::Channel::OutputLocationRef', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has DirectoryStructure => (isa => 'Cfn::Value::String', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has EncryptionType => (isa => 'Cfn::Value::String', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has HlsCdnSettings => (isa => 'Cfn::Resource::Properties::AWS::MediaLive::Channel::HlsCdnSettings', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has HlsId3SegmentTagging => (isa => 'Cfn::Value::String', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has IFrameOnlyPlaylists => (isa => 'Cfn::Value::String', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has IndexNSegments => (isa => 'Cfn::Value::Integer', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has InputLossAction => (isa => 'Cfn::Value::String', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has IvInManifest => (isa => 'Cfn::Value::String', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has IvSource => (isa => 'Cfn::Value::String', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has KeepSegments => (isa => 'Cfn::Value::Integer', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has KeyFormat => (isa => 'Cfn::Value::String', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has KeyFormatVersions => (isa => 'Cfn::Value::String', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has KeyProviderSettings => (isa => 'Cfn::Resource::Properties::AWS::MediaLive::Channel::KeyProviderSettings', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has ManifestCompression => (isa => 'Cfn::Value::String', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has ManifestDurationFormat => (isa => 'Cfn::Value::String', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has MinSegmentLength => (isa => 'Cfn::Value::Integer', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has Mode => (isa => 'Cfn::Value::String', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has OutputSelection => (isa => 'Cfn::Value::String', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has ProgramDateTime => (isa => 'Cfn::Value::String', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has ProgramDateTimePeriod => (isa => 'Cfn::Value::Integer', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has RedundantManifest => (isa => 'Cfn::Value::String', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has SegmentationMode => (isa => 'Cfn::Value::String', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has SegmentLength => (isa => 'Cfn::Value::Integer', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has SegmentsPerSubdirectory => (isa => 'Cfn::Value::Integer', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has StreamInfResolution => (isa => 'Cfn::Value::String', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has TimedMetadataId3Frame => (isa => 'Cfn::Value::String', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has TimedMetadataId3Period => (isa => 'Cfn::Value::Integer', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has TimestampDeltaMilliseconds => (isa => 'Cfn::Value::Integer', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has TsFileMode => (isa => 'Cfn::Value::String', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
}

subtype 'Cfn::Resource::Properties::AWS::MediaLive::Channel::H265Settings',
     as 'Cfn::Value';

coerce 'Cfn::Resource::Properties::AWS::MediaLive::Channel::H265Settings',
  from 'HashRef',
   via {
     if (my $f = Cfn::TypeLibrary::try_function($_)) {
       return $f
     } else {
       return Cfn::Resource::Properties::AWS::MediaLive::Channel::H265Settings::Value->new( %$_ );
     }
   };

package Cfn::Resource::Properties::AWS::MediaLive::Channel::H265Settings::Value {
  use Moose;
  use MooseX::StrictConstructor;
  extends 'Cfn::Value::TypedValue';
  
  has AdaptiveQuantization => (isa => 'Cfn::Value::String', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has AfdSignaling => (isa => 'Cfn::Value::String', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has AlternativeTransferFunction => (isa => 'Cfn::Value::String', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has Bitrate => (isa => 'Cfn::Value::Integer', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has BufSize => (isa => 'Cfn::Value::Integer', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has ColorMetadata => (isa => 'Cfn::Value::String', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has ColorSpaceSettings => (isa => 'Cfn::Resource::Properties::AWS::MediaLive::Channel::H265ColorSpaceSettings', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has FilterSettings => (isa => 'Cfn::Resource::Properties::AWS::MediaLive::Channel::H265FilterSettings', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has FixedAfd => (isa => 'Cfn::Value::String', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has FlickerAq => (isa => 'Cfn::Value::String', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has FramerateDenominator => (isa => 'Cfn::Value::Integer', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has FramerateNumerator => (isa => 'Cfn::Value::Integer', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has GopClosedCadence => (isa => 'Cfn::Value::Integer', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has GopSize => (isa => 'Cfn::Value::Double', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has GopSizeUnits => (isa => 'Cfn::Value::String', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has Level => (isa => 'Cfn::Value::String', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has LookAheadRateControl => (isa => 'Cfn::Value::String', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has MaxBitrate => (isa => 'Cfn::Value::Integer', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has MinIInterval => (isa => 'Cfn::Value::Integer', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has ParDenominator => (isa => 'Cfn::Value::Integer', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has ParNumerator => (isa => 'Cfn::Value::Integer', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has Profile => (isa => 'Cfn::Value::String', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has QvbrQualityLevel => (isa => 'Cfn::Value::Integer', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has RateControlMode => (isa => 'Cfn::Value::String', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has ScanType => (isa => 'Cfn::Value::String', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has SceneChangeDetect => (isa => 'Cfn::Value::String', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has Slices => (isa => 'Cfn::Value::Integer', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has Tier => (isa => 'Cfn::Value::String', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has TimecodeInsertion => (isa => 'Cfn::Value::String', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
}

subtype 'Cfn::Resource::Properties::AWS::MediaLive::Channel::H264Settings',
     as 'Cfn::Value';

coerce 'Cfn::Resource::Properties::AWS::MediaLive::Channel::H264Settings',
  from 'HashRef',
   via {
     if (my $f = Cfn::TypeLibrary::try_function($_)) {
       return $f
     } else {
       return Cfn::Resource::Properties::AWS::MediaLive::Channel::H264Settings::Value->new( %$_ );
     }
   };

package Cfn::Resource::Properties::AWS::MediaLive::Channel::H264Settings::Value {
  use Moose;
  use MooseX::StrictConstructor;
  extends 'Cfn::Value::TypedValue';
  
  has AdaptiveQuantization => (isa => 'Cfn::Value::String', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has AfdSignaling => (isa => 'Cfn::Value::String', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has Bitrate => (isa => 'Cfn::Value::Integer', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has BufFillPct => (isa => 'Cfn::Value::Integer', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has BufSize => (isa => 'Cfn::Value::Integer', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has ColorMetadata => (isa => 'Cfn::Value::String', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has ColorSpaceSettings => (isa => 'Cfn::Resource::Properties::AWS::MediaLive::Channel::H264ColorSpaceSettings', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has EntropyEncoding => (isa => 'Cfn::Value::String', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has FilterSettings => (isa => 'Cfn::Resource::Properties::AWS::MediaLive::Channel::H264FilterSettings', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has FixedAfd => (isa => 'Cfn::Value::String', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has FlickerAq => (isa => 'Cfn::Value::String', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has ForceFieldPictures => (isa => 'Cfn::Value::String', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has FramerateControl => (isa => 'Cfn::Value::String', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has FramerateDenominator => (isa => 'Cfn::Value::Integer', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has FramerateNumerator => (isa => 'Cfn::Value::Integer', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has GopBReference => (isa => 'Cfn::Value::String', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has GopClosedCadence => (isa => 'Cfn::Value::Integer', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has GopNumBFrames => (isa => 'Cfn::Value::Integer', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has GopSize => (isa => 'Cfn::Value::Double', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has GopSizeUnits => (isa => 'Cfn::Value::String', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has Level => (isa => 'Cfn::Value::String', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has LookAheadRateControl => (isa => 'Cfn::Value::String', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has MaxBitrate => (isa => 'Cfn::Value::Integer', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has MinIInterval => (isa => 'Cfn::Value::Integer', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has NumRefFrames => (isa => 'Cfn::Value::Integer', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has ParControl => (isa => 'Cfn::Value::String', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has ParDenominator => (isa => 'Cfn::Value::Integer', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has ParNumerator => (isa => 'Cfn::Value::Integer', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has Profile => (isa => 'Cfn::Value::String', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has QualityLevel => (isa => 'Cfn::Value::String', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has QvbrQualityLevel => (isa => 'Cfn::Value::Integer', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has RateControlMode => (isa => 'Cfn::Value::String', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has ScanType => (isa => 'Cfn::Value::String', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has SceneChangeDetect => (isa => 'Cfn::Value::String', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has Slices => (isa => 'Cfn::Value::Integer', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has Softness => (isa => 'Cfn::Value::Integer', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has SpatialAq => (isa => 'Cfn::Value::String', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has SubgopLength => (isa => 'Cfn::Value::String', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has Syntax => (isa => 'Cfn::Value::String', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has TemporalAq => (isa => 'Cfn::Value::String', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has TimecodeInsertion => (isa => 'Cfn::Value::String', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
}

subtype 'Cfn::Resource::Properties::AWS::MediaLive::Channel::FrameCaptureSettings',
     as 'Cfn::Value';

coerce 'Cfn::Resource::Properties::AWS::MediaLive::Channel::FrameCaptureSettings',
  from 'HashRef',
   via {
     if (my $f = Cfn::TypeLibrary::try_function($_)) {
       return $f
     } else {
       return Cfn::Resource::Properties::AWS::MediaLive::Channel::FrameCaptureSettings::Value->new( %$_ );
     }
   };

package Cfn::Resource::Properties::AWS::MediaLive::Channel::FrameCaptureSettings::Value {
  use Moose;
  use MooseX::StrictConstructor;
  extends 'Cfn::Value::TypedValue';
  
  has CaptureInterval => (isa => 'Cfn::Value::Integer', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has CaptureIntervalUnits => (isa => 'Cfn::Value::String', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
}

subtype 'Cfn::Resource::Properties::AWS::MediaLive::Channel::FrameCaptureGroupSettings',
     as 'Cfn::Value';

coerce 'Cfn::Resource::Properties::AWS::MediaLive::Channel::FrameCaptureGroupSettings',
  from 'HashRef',
   via {
     if (my $f = Cfn::TypeLibrary::try_function($_)) {
       return $f
     } else {
       return Cfn::Resource::Properties::AWS::MediaLive::Channel::FrameCaptureGroupSettings::Value->new( %$_ );
     }
   };

package Cfn::Resource::Properties::AWS::MediaLive::Channel::FrameCaptureGroupSettings::Value {
  use Moose;
  use MooseX::StrictConstructor;
  extends 'Cfn::Value::TypedValue';
  
  has Destination => (isa => 'Cfn::Resource::Properties::AWS::MediaLive::Channel::OutputLocationRef', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
}

subtype 'Cfn::Resource::Properties::AWS::MediaLive::Channel::EmbeddedPlusScte20DestinationSettings',
     as 'Cfn::Value';

coerce 'Cfn::Resource::Properties::AWS::MediaLive::Channel::EmbeddedPlusScte20DestinationSettings',
  from 'HashRef',
   via {
     if (my $f = Cfn::TypeLibrary::try_function($_)) {
       return $f
     } else {
       return Cfn::Resource::Properties::AWS::MediaLive::Channel::EmbeddedPlusScte20DestinationSettings::Value->new( %$_ );
     }
   };

package Cfn::Resource::Properties::AWS::MediaLive::Channel::EmbeddedPlusScte20DestinationSettings::Value {
  use Moose;
  use MooseX::StrictConstructor;
  extends 'Cfn::Value::TypedValue';
  
}

subtype 'Cfn::Resource::Properties::AWS::MediaLive::Channel::EmbeddedDestinationSettings',
     as 'Cfn::Value';

coerce 'Cfn::Resource::Properties::AWS::MediaLive::Channel::EmbeddedDestinationSettings',
  from 'HashRef',
   via {
     if (my $f = Cfn::TypeLibrary::try_function($_)) {
       return $f
     } else {
       return Cfn::Resource::Properties::AWS::MediaLive::Channel::EmbeddedDestinationSettings::Value->new( %$_ );
     }
   };

package Cfn::Resource::Properties::AWS::MediaLive::Channel::EmbeddedDestinationSettings::Value {
  use Moose;
  use MooseX::StrictConstructor;
  extends 'Cfn::Value::TypedValue';
  
}

subtype 'Cfn::Resource::Properties::AWS::MediaLive::Channel::EbuTtDDestinationSettings',
     as 'Cfn::Value';

coerce 'Cfn::Resource::Properties::AWS::MediaLive::Channel::EbuTtDDestinationSettings',
  from 'HashRef',
   via {
     if (my $f = Cfn::TypeLibrary::try_function($_)) {
       return $f
     } else {
       return Cfn::Resource::Properties::AWS::MediaLive::Channel::EbuTtDDestinationSettings::Value->new( %$_ );
     }
   };

package Cfn::Resource::Properties::AWS::MediaLive::Channel::EbuTtDDestinationSettings::Value {
  use Moose;
  use MooseX::StrictConstructor;
  extends 'Cfn::Value::TypedValue';
  
  has FillLineGap => (isa => 'Cfn::Value::String', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has FontFamily => (isa => 'Cfn::Value::String', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has StyleControl => (isa => 'Cfn::Value::String', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
}

subtype 'Cfn::Resource::Properties::AWS::MediaLive::Channel::Eac3Settings',
     as 'Cfn::Value';

coerce 'Cfn::Resource::Properties::AWS::MediaLive::Channel::Eac3Settings',
  from 'HashRef',
   via {
     if (my $f = Cfn::TypeLibrary::try_function($_)) {
       return $f
     } else {
       return Cfn::Resource::Properties::AWS::MediaLive::Channel::Eac3Settings::Value->new( %$_ );
     }
   };

package Cfn::Resource::Properties::AWS::MediaLive::Channel::Eac3Settings::Value {
  use Moose;
  use MooseX::StrictConstructor;
  extends 'Cfn::Value::TypedValue';
  
  has AttenuationControl => (isa => 'Cfn::Value::String', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has Bitrate => (isa => 'Cfn::Value::Double', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has BitstreamMode => (isa => 'Cfn::Value::String', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has CodingMode => (isa => 'Cfn::Value::String', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has DcFilter => (isa => 'Cfn::Value::String', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has Dialnorm => (isa => 'Cfn::Value::Integer', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has DrcLine => (isa => 'Cfn::Value::String', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has DrcRf => (isa => 'Cfn::Value::String', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has LfeControl => (isa => 'Cfn::Value::String', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has LfeFilter => (isa => 'Cfn::Value::String', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has LoRoCenterMixLevel => (isa => 'Cfn::Value::Double', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has LoRoSurroundMixLevel => (isa => 'Cfn::Value::Double', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has LtRtCenterMixLevel => (isa => 'Cfn::Value::Double', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has LtRtSurroundMixLevel => (isa => 'Cfn::Value::Double', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has MetadataControl => (isa => 'Cfn::Value::String', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has PassthroughControl => (isa => 'Cfn::Value::String', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has PhaseControl => (isa => 'Cfn::Value::String', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has StereoDownmix => (isa => 'Cfn::Value::String', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has SurroundExMode => (isa => 'Cfn::Value::String', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has SurroundMode => (isa => 'Cfn::Value::String', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
}

subtype 'Cfn::Resource::Properties::AWS::MediaLive::Channel::DvbSubDestinationSettings',
     as 'Cfn::Value';

coerce 'Cfn::Resource::Properties::AWS::MediaLive::Channel::DvbSubDestinationSettings',
  from 'HashRef',
   via {
     if (my $f = Cfn::TypeLibrary::try_function($_)) {
       return $f
     } else {
       return Cfn::Resource::Properties::AWS::MediaLive::Channel::DvbSubDestinationSettings::Value->new( %$_ );
     }
   };

package Cfn::Resource::Properties::AWS::MediaLive::Channel::DvbSubDestinationSettings::Value {
  use Moose;
  use MooseX::StrictConstructor;
  extends 'Cfn::Value::TypedValue';
  
  has Alignment => (isa => 'Cfn::Value::String', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has BackgroundColor => (isa => 'Cfn::Value::String', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has BackgroundOpacity => (isa => 'Cfn::Value::Integer', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has Font => (isa => 'Cfn::Resource::Properties::AWS::MediaLive::Channel::InputLocation', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has FontColor => (isa => 'Cfn::Value::String', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has FontOpacity => (isa => 'Cfn::Value::Integer', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has FontResolution => (isa => 'Cfn::Value::Integer', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has FontSize => (isa => 'Cfn::Value::String', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has OutlineColor => (isa => 'Cfn::Value::String', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has OutlineSize => (isa => 'Cfn::Value::Integer', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has ShadowColor => (isa => 'Cfn::Value::String', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has ShadowOpacity => (isa => 'Cfn::Value::Integer', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has ShadowXOffset => (isa => 'Cfn::Value::Integer', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has ShadowYOffset => (isa => 'Cfn::Value::Integer', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has TeletextGridControl => (isa => 'Cfn::Value::String', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has XPosition => (isa => 'Cfn::Value::Integer', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has YPosition => (isa => 'Cfn::Value::Integer', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
}

subtype 'Cfn::Resource::Properties::AWS::MediaLive::Channel::CaptionSelectorSettings',
     as 'Cfn::Value';

coerce 'Cfn::Resource::Properties::AWS::MediaLive::Channel::CaptionSelectorSettings',
  from 'HashRef',
   via {
     if (my $f = Cfn::TypeLibrary::try_function($_)) {
       return $f
     } else {
       return Cfn::Resource::Properties::AWS::MediaLive::Channel::CaptionSelectorSettings::Value->new( %$_ );
     }
   };

package Cfn::Resource::Properties::AWS::MediaLive::Channel::CaptionSelectorSettings::Value {
  use Moose;
  use MooseX::StrictConstructor;
  extends 'Cfn::Value::TypedValue';
  
  has AribSourceSettings => (isa => 'Cfn::Resource::Properties::AWS::MediaLive::Channel::AribSourceSettings', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has DvbSubSourceSettings => (isa => 'Cfn::Resource::Properties::AWS::MediaLive::Channel::DvbSubSourceSettings', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has EmbeddedSourceSettings => (isa => 'Cfn::Resource::Properties::AWS::MediaLive::Channel::EmbeddedSourceSettings', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has Scte20SourceSettings => (isa => 'Cfn::Resource::Properties::AWS::MediaLive::Channel::Scte20SourceSettings', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has Scte27SourceSettings => (isa => 'Cfn::Resource::Properties::AWS::MediaLive::Channel::Scte27SourceSettings', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has TeletextSourceSettings => (isa => 'Cfn::Resource::Properties::AWS::MediaLive::Channel::TeletextSourceSettings', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
}

subtype 'Cfn::Resource::Properties::AWS::MediaLive::Channel::BurnInDestinationSettings',
     as 'Cfn::Value';

coerce 'Cfn::Resource::Properties::AWS::MediaLive::Channel::BurnInDestinationSettings',
  from 'HashRef',
   via {
     if (my $f = Cfn::TypeLibrary::try_function($_)) {
       return $f
     } else {
       return Cfn::Resource::Properties::AWS::MediaLive::Channel::BurnInDestinationSettings::Value->new( %$_ );
     }
   };

package Cfn::Resource::Properties::AWS::MediaLive::Channel::BurnInDestinationSettings::Value {
  use Moose;
  use MooseX::StrictConstructor;
  extends 'Cfn::Value::TypedValue';
  
  has Alignment => (isa => 'Cfn::Value::String', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has BackgroundColor => (isa => 'Cfn::Value::String', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has BackgroundOpacity => (isa => 'Cfn::Value::Integer', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has Font => (isa => 'Cfn::Resource::Properties::AWS::MediaLive::Channel::InputLocation', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has FontColor => (isa => 'Cfn::Value::String', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has FontOpacity => (isa => 'Cfn::Value::Integer', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has FontResolution => (isa => 'Cfn::Value::Integer', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has FontSize => (isa => 'Cfn::Value::String', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has OutlineColor => (isa => 'Cfn::Value::String', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has OutlineSize => (isa => 'Cfn::Value::Integer', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has ShadowColor => (isa => 'Cfn::Value::String', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has ShadowOpacity => (isa => 'Cfn::Value::Integer', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has ShadowXOffset => (isa => 'Cfn::Value::Integer', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has ShadowYOffset => (isa => 'Cfn::Value::Integer', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has TeletextGridControl => (isa => 'Cfn::Value::String', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has XPosition => (isa => 'Cfn::Value::Integer', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has YPosition => (isa => 'Cfn::Value::Integer', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
}

subtype 'Cfn::Resource::Properties::AWS::MediaLive::Channel::AudioSelectorSettings',
     as 'Cfn::Value';

coerce 'Cfn::Resource::Properties::AWS::MediaLive::Channel::AudioSelectorSettings',
  from 'HashRef',
   via {
     if (my $f = Cfn::TypeLibrary::try_function($_)) {
       return $f
     } else {
       return Cfn::Resource::Properties::AWS::MediaLive::Channel::AudioSelectorSettings::Value->new( %$_ );
     }
   };

package Cfn::Resource::Properties::AWS::MediaLive::Channel::AudioSelectorSettings::Value {
  use Moose;
  use MooseX::StrictConstructor;
  extends 'Cfn::Value::TypedValue';
  
  has AudioLanguageSelection => (isa => 'Cfn::Resource::Properties::AWS::MediaLive::Channel::AudioLanguageSelection', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has AudioPidSelection => (isa => 'Cfn::Resource::Properties::AWS::MediaLive::Channel::AudioPidSelection', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has AudioTrackSelection => (isa => 'Cfn::Resource::Properties::AWS::MediaLive::Channel::AudioTrackSelection', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
}
subtype 'ArrayOfCfn::Resource::Properties::AWS::MediaLive::Channel::AudioChannelMapping',
     as 'Cfn::Value',
  where { $_->isa('Cfn::Value::Array') or $_->isa('Cfn::Value::Function') },
message { "$_ is not a Cfn::Value or a Cfn::Value::Function" };

coerce 'ArrayOfCfn::Resource::Properties::AWS::MediaLive::Channel::AudioChannelMapping',
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
         Moose::Util::TypeConstraints::find_type_constraint('Cfn::Resource::Properties::AWS::MediaLive::Channel::AudioChannelMapping')->coerce($_)
       } @$_
     ]);
   };

subtype 'Cfn::Resource::Properties::AWS::MediaLive::Channel::AudioChannelMapping',
     as 'Cfn::Value';

coerce 'Cfn::Resource::Properties::AWS::MediaLive::Channel::AudioChannelMapping',
  from 'HashRef',
   via {
     if (my $f = Cfn::TypeLibrary::try_function($_)) {
       return $f
     } else {
       return Cfn::Resource::Properties::AWS::MediaLive::Channel::AudioChannelMapping::Value->new( %$_ );
     }
   };

package Cfn::Resource::Properties::AWS::MediaLive::Channel::AudioChannelMapping::Value {
  use Moose;
  use MooseX::StrictConstructor;
  extends 'Cfn::Value::TypedValue';
  
  has InputChannelLevels => (isa => 'ArrayOfCfn::Resource::Properties::AWS::MediaLive::Channel::InputChannelLevel', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has OutputChannel => (isa => 'Cfn::Value::Integer', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
}

subtype 'Cfn::Resource::Properties::AWS::MediaLive::Channel::AribDestinationSettings',
     as 'Cfn::Value';

coerce 'Cfn::Resource::Properties::AWS::MediaLive::Channel::AribDestinationSettings',
  from 'HashRef',
   via {
     if (my $f = Cfn::TypeLibrary::try_function($_)) {
       return $f
     } else {
       return Cfn::Resource::Properties::AWS::MediaLive::Channel::AribDestinationSettings::Value->new( %$_ );
     }
   };

package Cfn::Resource::Properties::AWS::MediaLive::Channel::AribDestinationSettings::Value {
  use Moose;
  use MooseX::StrictConstructor;
  extends 'Cfn::Value::TypedValue';
  
}

subtype 'Cfn::Resource::Properties::AWS::MediaLive::Channel::ArchiveGroupSettings',
     as 'Cfn::Value';

coerce 'Cfn::Resource::Properties::AWS::MediaLive::Channel::ArchiveGroupSettings',
  from 'HashRef',
   via {
     if (my $f = Cfn::TypeLibrary::try_function($_)) {
       return $f
     } else {
       return Cfn::Resource::Properties::AWS::MediaLive::Channel::ArchiveGroupSettings::Value->new( %$_ );
     }
   };

package Cfn::Resource::Properties::AWS::MediaLive::Channel::ArchiveGroupSettings::Value {
  use Moose;
  use MooseX::StrictConstructor;
  extends 'Cfn::Value::TypedValue';
  
  has Destination => (isa => 'Cfn::Resource::Properties::AWS::MediaLive::Channel::OutputLocationRef', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has RolloverInterval => (isa => 'Cfn::Value::Integer', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
}

subtype 'Cfn::Resource::Properties::AWS::MediaLive::Channel::Ac3Settings',
     as 'Cfn::Value';

coerce 'Cfn::Resource::Properties::AWS::MediaLive::Channel::Ac3Settings',
  from 'HashRef',
   via {
     if (my $f = Cfn::TypeLibrary::try_function($_)) {
       return $f
     } else {
       return Cfn::Resource::Properties::AWS::MediaLive::Channel::Ac3Settings::Value->new( %$_ );
     }
   };

package Cfn::Resource::Properties::AWS::MediaLive::Channel::Ac3Settings::Value {
  use Moose;
  use MooseX::StrictConstructor;
  extends 'Cfn::Value::TypedValue';
  
  has Bitrate => (isa => 'Cfn::Value::Double', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has BitstreamMode => (isa => 'Cfn::Value::String', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has CodingMode => (isa => 'Cfn::Value::String', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has Dialnorm => (isa => 'Cfn::Value::Integer', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has DrcProfile => (isa => 'Cfn::Value::String', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has LfeFilter => (isa => 'Cfn::Value::String', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has MetadataControl => (isa => 'Cfn::Value::String', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
}

subtype 'Cfn::Resource::Properties::AWS::MediaLive::Channel::AacSettings',
     as 'Cfn::Value';

coerce 'Cfn::Resource::Properties::AWS::MediaLive::Channel::AacSettings',
  from 'HashRef',
   via {
     if (my $f = Cfn::TypeLibrary::try_function($_)) {
       return $f
     } else {
       return Cfn::Resource::Properties::AWS::MediaLive::Channel::AacSettings::Value->new( %$_ );
     }
   };

package Cfn::Resource::Properties::AWS::MediaLive::Channel::AacSettings::Value {
  use Moose;
  use MooseX::StrictConstructor;
  extends 'Cfn::Value::TypedValue';
  
  has Bitrate => (isa => 'Cfn::Value::Double', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has CodingMode => (isa => 'Cfn::Value::String', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has InputType => (isa => 'Cfn::Value::String', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has Profile => (isa => 'Cfn::Value::String', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has RateControlMode => (isa => 'Cfn::Value::String', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has RawFormat => (isa => 'Cfn::Value::String', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has SampleRate => (isa => 'Cfn::Value::Double', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has Spec => (isa => 'Cfn::Value::String', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has VbrQuality => (isa => 'Cfn::Value::String', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
}

subtype 'Cfn::Resource::Properties::AWS::MediaLive::Channel::VideoSelector',
     as 'Cfn::Value';

coerce 'Cfn::Resource::Properties::AWS::MediaLive::Channel::VideoSelector',
  from 'HashRef',
   via {
     if (my $f = Cfn::TypeLibrary::try_function($_)) {
       return $f
     } else {
       return Cfn::Resource::Properties::AWS::MediaLive::Channel::VideoSelector::Value->new( %$_ );
     }
   };

package Cfn::Resource::Properties::AWS::MediaLive::Channel::VideoSelector::Value {
  use Moose;
  use MooseX::StrictConstructor;
  extends 'Cfn::Value::TypedValue';
  
  has ColorSpace => (isa => 'Cfn::Value::String', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has ColorSpaceUsage => (isa => 'Cfn::Value::String', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has SelectorSettings => (isa => 'Cfn::Resource::Properties::AWS::MediaLive::Channel::VideoSelectorSettings', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
}

subtype 'Cfn::Resource::Properties::AWS::MediaLive::Channel::VideoCodecSettings',
     as 'Cfn::Value';

coerce 'Cfn::Resource::Properties::AWS::MediaLive::Channel::VideoCodecSettings',
  from 'HashRef',
   via {
     if (my $f = Cfn::TypeLibrary::try_function($_)) {
       return $f
     } else {
       return Cfn::Resource::Properties::AWS::MediaLive::Channel::VideoCodecSettings::Value->new( %$_ );
     }
   };

package Cfn::Resource::Properties::AWS::MediaLive::Channel::VideoCodecSettings::Value {
  use Moose;
  use MooseX::StrictConstructor;
  extends 'Cfn::Value::TypedValue';
  
  has FrameCaptureSettings => (isa => 'Cfn::Resource::Properties::AWS::MediaLive::Channel::FrameCaptureSettings', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has H264Settings => (isa => 'Cfn::Resource::Properties::AWS::MediaLive::Channel::H264Settings', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has H265Settings => (isa => 'Cfn::Resource::Properties::AWS::MediaLive::Channel::H265Settings', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
}

subtype 'Cfn::Resource::Properties::AWS::MediaLive::Channel::RemixSettings',
     as 'Cfn::Value';

coerce 'Cfn::Resource::Properties::AWS::MediaLive::Channel::RemixSettings',
  from 'HashRef',
   via {
     if (my $f = Cfn::TypeLibrary::try_function($_)) {
       return $f
     } else {
       return Cfn::Resource::Properties::AWS::MediaLive::Channel::RemixSettings::Value->new( %$_ );
     }
   };

package Cfn::Resource::Properties::AWS::MediaLive::Channel::RemixSettings::Value {
  use Moose;
  use MooseX::StrictConstructor;
  extends 'Cfn::Value::TypedValue';
  
  has ChannelMappings => (isa => 'ArrayOfCfn::Resource::Properties::AWS::MediaLive::Channel::AudioChannelMapping', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has ChannelsIn => (isa => 'Cfn::Value::Integer', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has ChannelsOut => (isa => 'Cfn::Value::Integer', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
}

subtype 'Cfn::Resource::Properties::AWS::MediaLive::Channel::OutputGroupSettings',
     as 'Cfn::Value';

coerce 'Cfn::Resource::Properties::AWS::MediaLive::Channel::OutputGroupSettings',
  from 'HashRef',
   via {
     if (my $f = Cfn::TypeLibrary::try_function($_)) {
       return $f
     } else {
       return Cfn::Resource::Properties::AWS::MediaLive::Channel::OutputGroupSettings::Value->new( %$_ );
     }
   };

package Cfn::Resource::Properties::AWS::MediaLive::Channel::OutputGroupSettings::Value {
  use Moose;
  use MooseX::StrictConstructor;
  extends 'Cfn::Value::TypedValue';
  
  has ArchiveGroupSettings => (isa => 'Cfn::Resource::Properties::AWS::MediaLive::Channel::ArchiveGroupSettings', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has FrameCaptureGroupSettings => (isa => 'Cfn::Resource::Properties::AWS::MediaLive::Channel::FrameCaptureGroupSettings', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has HlsGroupSettings => (isa => 'Cfn::Resource::Properties::AWS::MediaLive::Channel::HlsGroupSettings', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has MediaPackageGroupSettings => (isa => 'Cfn::Resource::Properties::AWS::MediaLive::Channel::MediaPackageGroupSettings', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has MsSmoothGroupSettings => (isa => 'Cfn::Resource::Properties::AWS::MediaLive::Channel::MsSmoothGroupSettings', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has MultiplexGroupSettings => (isa => 'Cfn::Resource::Properties::AWS::MediaLive::Channel::MultiplexGroupSettings', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has RtmpGroupSettings => (isa => 'Cfn::Resource::Properties::AWS::MediaLive::Channel::RtmpGroupSettings', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has UdpGroupSettings => (isa => 'Cfn::Resource::Properties::AWS::MediaLive::Channel::UdpGroupSettings', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
}
subtype 'ArrayOfCfn::Resource::Properties::AWS::MediaLive::Channel::Output',
     as 'Cfn::Value',
  where { $_->isa('Cfn::Value::Array') or $_->isa('Cfn::Value::Function') },
message { "$_ is not a Cfn::Value or a Cfn::Value::Function" };

coerce 'ArrayOfCfn::Resource::Properties::AWS::MediaLive::Channel::Output',
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
         Moose::Util::TypeConstraints::find_type_constraint('Cfn::Resource::Properties::AWS::MediaLive::Channel::Output')->coerce($_)
       } @$_
     ]);
   };

subtype 'Cfn::Resource::Properties::AWS::MediaLive::Channel::Output',
     as 'Cfn::Value';

coerce 'Cfn::Resource::Properties::AWS::MediaLive::Channel::Output',
  from 'HashRef',
   via {
     if (my $f = Cfn::TypeLibrary::try_function($_)) {
       return $f
     } else {
       return Cfn::Resource::Properties::AWS::MediaLive::Channel::Output::Value->new( %$_ );
     }
   };

package Cfn::Resource::Properties::AWS::MediaLive::Channel::Output::Value {
  use Moose;
  use MooseX::StrictConstructor;
  extends 'Cfn::Value::TypedValue';
  
  has AudioDescriptionNames => (isa => 'Cfn::Value::Array|Cfn::Value::Function|Cfn::DynamicValue', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has CaptionDescriptionNames => (isa => 'Cfn::Value::Array|Cfn::Value::Function|Cfn::DynamicValue', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has OutputName => (isa => 'Cfn::Value::String', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has OutputSettings => (isa => 'Cfn::Resource::Properties::AWS::MediaLive::Channel::OutputSettings', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has VideoDescriptionName => (isa => 'Cfn::Value::String', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
}

subtype 'Cfn::Resource::Properties::AWS::MediaLive::Channel::NetworkInputSettings',
     as 'Cfn::Value';

coerce 'Cfn::Resource::Properties::AWS::MediaLive::Channel::NetworkInputSettings',
  from 'HashRef',
   via {
     if (my $f = Cfn::TypeLibrary::try_function($_)) {
       return $f
     } else {
       return Cfn::Resource::Properties::AWS::MediaLive::Channel::NetworkInputSettings::Value->new( %$_ );
     }
   };

package Cfn::Resource::Properties::AWS::MediaLive::Channel::NetworkInputSettings::Value {
  use Moose;
  use MooseX::StrictConstructor;
  extends 'Cfn::Value::TypedValue';
  
  has HlsInputSettings => (isa => 'Cfn::Resource::Properties::AWS::MediaLive::Channel::HlsInputSettings', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has ServerValidation => (isa => 'Cfn::Value::String', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
}

subtype 'Cfn::Resource::Properties::AWS::MediaLive::Channel::InputLossBehavior',
     as 'Cfn::Value';

coerce 'Cfn::Resource::Properties::AWS::MediaLive::Channel::InputLossBehavior',
  from 'HashRef',
   via {
     if (my $f = Cfn::TypeLibrary::try_function($_)) {
       return $f
     } else {
       return Cfn::Resource::Properties::AWS::MediaLive::Channel::InputLossBehavior::Value->new( %$_ );
     }
   };

package Cfn::Resource::Properties::AWS::MediaLive::Channel::InputLossBehavior::Value {
  use Moose;
  use MooseX::StrictConstructor;
  extends 'Cfn::Value::TypedValue';
  
  has BlackFrameMsec => (isa => 'Cfn::Value::Integer', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has InputLossImageColor => (isa => 'Cfn::Value::String', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has InputLossImageSlate => (isa => 'Cfn::Resource::Properties::AWS::MediaLive::Channel::InputLocation', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has InputLossImageType => (isa => 'Cfn::Value::String', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has RepeatFrameMsec => (isa => 'Cfn::Value::Integer', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
}
subtype 'ArrayOfCfn::Resource::Properties::AWS::MediaLive::Channel::CaptionSelector',
     as 'Cfn::Value',
  where { $_->isa('Cfn::Value::Array') or $_->isa('Cfn::Value::Function') },
message { "$_ is not a Cfn::Value or a Cfn::Value::Function" };

coerce 'ArrayOfCfn::Resource::Properties::AWS::MediaLive::Channel::CaptionSelector',
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
         Moose::Util::TypeConstraints::find_type_constraint('Cfn::Resource::Properties::AWS::MediaLive::Channel::CaptionSelector')->coerce($_)
       } @$_
     ]);
   };

subtype 'Cfn::Resource::Properties::AWS::MediaLive::Channel::CaptionSelector',
     as 'Cfn::Value';

coerce 'Cfn::Resource::Properties::AWS::MediaLive::Channel::CaptionSelector',
  from 'HashRef',
   via {
     if (my $f = Cfn::TypeLibrary::try_function($_)) {
       return $f
     } else {
       return Cfn::Resource::Properties::AWS::MediaLive::Channel::CaptionSelector::Value->new( %$_ );
     }
   };

package Cfn::Resource::Properties::AWS::MediaLive::Channel::CaptionSelector::Value {
  use Moose;
  use MooseX::StrictConstructor;
  extends 'Cfn::Value::TypedValue';
  
  has LanguageCode => (isa => 'Cfn::Value::String', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has Name => (isa => 'Cfn::Value::String', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has SelectorSettings => (isa => 'Cfn::Resource::Properties::AWS::MediaLive::Channel::CaptionSelectorSettings', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
}

subtype 'Cfn::Resource::Properties::AWS::MediaLive::Channel::CaptionDestinationSettings',
     as 'Cfn::Value';

coerce 'Cfn::Resource::Properties::AWS::MediaLive::Channel::CaptionDestinationSettings',
  from 'HashRef',
   via {
     if (my $f = Cfn::TypeLibrary::try_function($_)) {
       return $f
     } else {
       return Cfn::Resource::Properties::AWS::MediaLive::Channel::CaptionDestinationSettings::Value->new( %$_ );
     }
   };

package Cfn::Resource::Properties::AWS::MediaLive::Channel::CaptionDestinationSettings::Value {
  use Moose;
  use MooseX::StrictConstructor;
  extends 'Cfn::Value::TypedValue';
  
  has AribDestinationSettings => (isa => 'Cfn::Resource::Properties::AWS::MediaLive::Channel::AribDestinationSettings', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has BurnInDestinationSettings => (isa => 'Cfn::Resource::Properties::AWS::MediaLive::Channel::BurnInDestinationSettings', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has DvbSubDestinationSettings => (isa => 'Cfn::Resource::Properties::AWS::MediaLive::Channel::DvbSubDestinationSettings', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has EbuTtDDestinationSettings => (isa => 'Cfn::Resource::Properties::AWS::MediaLive::Channel::EbuTtDDestinationSettings', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has EmbeddedDestinationSettings => (isa => 'Cfn::Resource::Properties::AWS::MediaLive::Channel::EmbeddedDestinationSettings', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has EmbeddedPlusScte20DestinationSettings => (isa => 'Cfn::Resource::Properties::AWS::MediaLive::Channel::EmbeddedPlusScte20DestinationSettings', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has RtmpCaptionInfoDestinationSettings => (isa => 'Cfn::Resource::Properties::AWS::MediaLive::Channel::RtmpCaptionInfoDestinationSettings', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has Scte20PlusEmbeddedDestinationSettings => (isa => 'Cfn::Resource::Properties::AWS::MediaLive::Channel::Scte20PlusEmbeddedDestinationSettings', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has Scte27DestinationSettings => (isa => 'Cfn::Resource::Properties::AWS::MediaLive::Channel::Scte27DestinationSettings', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has SmpteTtDestinationSettings => (isa => 'Cfn::Resource::Properties::AWS::MediaLive::Channel::SmpteTtDestinationSettings', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has TeletextDestinationSettings => (isa => 'Cfn::Resource::Properties::AWS::MediaLive::Channel::TeletextDestinationSettings', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has TtmlDestinationSettings => (isa => 'Cfn::Resource::Properties::AWS::MediaLive::Channel::TtmlDestinationSettings', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has WebvttDestinationSettings => (isa => 'Cfn::Resource::Properties::AWS::MediaLive::Channel::WebvttDestinationSettings', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
}

subtype 'Cfn::Resource::Properties::AWS::MediaLive::Channel::AvailSettings',
     as 'Cfn::Value';

coerce 'Cfn::Resource::Properties::AWS::MediaLive::Channel::AvailSettings',
  from 'HashRef',
   via {
     if (my $f = Cfn::TypeLibrary::try_function($_)) {
       return $f
     } else {
       return Cfn::Resource::Properties::AWS::MediaLive::Channel::AvailSettings::Value->new( %$_ );
     }
   };

package Cfn::Resource::Properties::AWS::MediaLive::Channel::AvailSettings::Value {
  use Moose;
  use MooseX::StrictConstructor;
  extends 'Cfn::Value::TypedValue';
  
  has Scte35SpliceInsert => (isa => 'Cfn::Resource::Properties::AWS::MediaLive::Channel::Scte35SpliceInsert', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has Scte35TimeSignalApos => (isa => 'Cfn::Resource::Properties::AWS::MediaLive::Channel::Scte35TimeSignalApos', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
}
subtype 'ArrayOfCfn::Resource::Properties::AWS::MediaLive::Channel::AudioSelector',
     as 'Cfn::Value',
  where { $_->isa('Cfn::Value::Array') or $_->isa('Cfn::Value::Function') },
message { "$_ is not a Cfn::Value or a Cfn::Value::Function" };

coerce 'ArrayOfCfn::Resource::Properties::AWS::MediaLive::Channel::AudioSelector',
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
         Moose::Util::TypeConstraints::find_type_constraint('Cfn::Resource::Properties::AWS::MediaLive::Channel::AudioSelector')->coerce($_)
       } @$_
     ]);
   };

subtype 'Cfn::Resource::Properties::AWS::MediaLive::Channel::AudioSelector',
     as 'Cfn::Value';

coerce 'Cfn::Resource::Properties::AWS::MediaLive::Channel::AudioSelector',
  from 'HashRef',
   via {
     if (my $f = Cfn::TypeLibrary::try_function($_)) {
       return $f
     } else {
       return Cfn::Resource::Properties::AWS::MediaLive::Channel::AudioSelector::Value->new( %$_ );
     }
   };

package Cfn::Resource::Properties::AWS::MediaLive::Channel::AudioSelector::Value {
  use Moose;
  use MooseX::StrictConstructor;
  extends 'Cfn::Value::TypedValue';
  
  has Name => (isa => 'Cfn::Value::String', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has SelectorSettings => (isa => 'Cfn::Resource::Properties::AWS::MediaLive::Channel::AudioSelectorSettings', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
}

subtype 'Cfn::Resource::Properties::AWS::MediaLive::Channel::AudioNormalizationSettings',
     as 'Cfn::Value';

coerce 'Cfn::Resource::Properties::AWS::MediaLive::Channel::AudioNormalizationSettings',
  from 'HashRef',
   via {
     if (my $f = Cfn::TypeLibrary::try_function($_)) {
       return $f
     } else {
       return Cfn::Resource::Properties::AWS::MediaLive::Channel::AudioNormalizationSettings::Value->new( %$_ );
     }
   };

package Cfn::Resource::Properties::AWS::MediaLive::Channel::AudioNormalizationSettings::Value {
  use Moose;
  use MooseX::StrictConstructor;
  extends 'Cfn::Value::TypedValue';
  
  has Algorithm => (isa => 'Cfn::Value::String', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has AlgorithmControl => (isa => 'Cfn::Value::String', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has TargetLkfs => (isa => 'Cfn::Value::Double', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
}

subtype 'Cfn::Resource::Properties::AWS::MediaLive::Channel::AudioCodecSettings',
     as 'Cfn::Value';

coerce 'Cfn::Resource::Properties::AWS::MediaLive::Channel::AudioCodecSettings',
  from 'HashRef',
   via {
     if (my $f = Cfn::TypeLibrary::try_function($_)) {
       return $f
     } else {
       return Cfn::Resource::Properties::AWS::MediaLive::Channel::AudioCodecSettings::Value->new( %$_ );
     }
   };

package Cfn::Resource::Properties::AWS::MediaLive::Channel::AudioCodecSettings::Value {
  use Moose;
  use MooseX::StrictConstructor;
  extends 'Cfn::Value::TypedValue';
  
  has AacSettings => (isa => 'Cfn::Resource::Properties::AWS::MediaLive::Channel::AacSettings', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has Ac3Settings => (isa => 'Cfn::Resource::Properties::AWS::MediaLive::Channel::Ac3Settings', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has Eac3Settings => (isa => 'Cfn::Resource::Properties::AWS::MediaLive::Channel::Eac3Settings', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has Mp2Settings => (isa => 'Cfn::Resource::Properties::AWS::MediaLive::Channel::Mp2Settings', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has PassThroughSettings => (isa => 'Cfn::Resource::Properties::AWS::MediaLive::Channel::PassThroughSettings', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
}
subtype 'ArrayOfCfn::Resource::Properties::AWS::MediaLive::Channel::VideoDescription',
     as 'Cfn::Value',
  where { $_->isa('Cfn::Value::Array') or $_->isa('Cfn::Value::Function') },
message { "$_ is not a Cfn::Value or a Cfn::Value::Function" };

coerce 'ArrayOfCfn::Resource::Properties::AWS::MediaLive::Channel::VideoDescription',
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
         Moose::Util::TypeConstraints::find_type_constraint('Cfn::Resource::Properties::AWS::MediaLive::Channel::VideoDescription')->coerce($_)
       } @$_
     ]);
   };

subtype 'Cfn::Resource::Properties::AWS::MediaLive::Channel::VideoDescription',
     as 'Cfn::Value';

coerce 'Cfn::Resource::Properties::AWS::MediaLive::Channel::VideoDescription',
  from 'HashRef',
   via {
     if (my $f = Cfn::TypeLibrary::try_function($_)) {
       return $f
     } else {
       return Cfn::Resource::Properties::AWS::MediaLive::Channel::VideoDescription::Value->new( %$_ );
     }
   };

package Cfn::Resource::Properties::AWS::MediaLive::Channel::VideoDescription::Value {
  use Moose;
  use MooseX::StrictConstructor;
  extends 'Cfn::Value::TypedValue';
  
  has CodecSettings => (isa => 'Cfn::Resource::Properties::AWS::MediaLive::Channel::VideoCodecSettings', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has Height => (isa => 'Cfn::Value::Integer', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has Name => (isa => 'Cfn::Value::String', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has RespondToAfd => (isa => 'Cfn::Value::String', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has ScalingBehavior => (isa => 'Cfn::Value::String', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has Sharpness => (isa => 'Cfn::Value::Integer', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has Width => (isa => 'Cfn::Value::Integer', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
}

subtype 'Cfn::Resource::Properties::AWS::MediaLive::Channel::TimecodeConfig',
     as 'Cfn::Value';

coerce 'Cfn::Resource::Properties::AWS::MediaLive::Channel::TimecodeConfig',
  from 'HashRef',
   via {
     if (my $f = Cfn::TypeLibrary::try_function($_)) {
       return $f
     } else {
       return Cfn::Resource::Properties::AWS::MediaLive::Channel::TimecodeConfig::Value->new( %$_ );
     }
   };

package Cfn::Resource::Properties::AWS::MediaLive::Channel::TimecodeConfig::Value {
  use Moose;
  use MooseX::StrictConstructor;
  extends 'Cfn::Value::TypedValue';
  
  has Source => (isa => 'Cfn::Value::String', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has SyncThreshold => (isa => 'Cfn::Value::Integer', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
}
subtype 'ArrayOfCfn::Resource::Properties::AWS::MediaLive::Channel::OutputGroup',
     as 'Cfn::Value',
  where { $_->isa('Cfn::Value::Array') or $_->isa('Cfn::Value::Function') },
message { "$_ is not a Cfn::Value or a Cfn::Value::Function" };

coerce 'ArrayOfCfn::Resource::Properties::AWS::MediaLive::Channel::OutputGroup',
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
         Moose::Util::TypeConstraints::find_type_constraint('Cfn::Resource::Properties::AWS::MediaLive::Channel::OutputGroup')->coerce($_)
       } @$_
     ]);
   };

subtype 'Cfn::Resource::Properties::AWS::MediaLive::Channel::OutputGroup',
     as 'Cfn::Value';

coerce 'Cfn::Resource::Properties::AWS::MediaLive::Channel::OutputGroup',
  from 'HashRef',
   via {
     if (my $f = Cfn::TypeLibrary::try_function($_)) {
       return $f
     } else {
       return Cfn::Resource::Properties::AWS::MediaLive::Channel::OutputGroup::Value->new( %$_ );
     }
   };

package Cfn::Resource::Properties::AWS::MediaLive::Channel::OutputGroup::Value {
  use Moose;
  use MooseX::StrictConstructor;
  extends 'Cfn::Value::TypedValue';
  
  has Name => (isa => 'Cfn::Value::String', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has OutputGroupSettings => (isa => 'Cfn::Resource::Properties::AWS::MediaLive::Channel::OutputGroupSettings', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has Outputs => (isa => 'ArrayOfCfn::Resource::Properties::AWS::MediaLive::Channel::Output', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
}
subtype 'ArrayOfCfn::Resource::Properties::AWS::MediaLive::Channel::OutputDestinationSettings',
     as 'Cfn::Value',
  where { $_->isa('Cfn::Value::Array') or $_->isa('Cfn::Value::Function') },
message { "$_ is not a Cfn::Value or a Cfn::Value::Function" };

coerce 'ArrayOfCfn::Resource::Properties::AWS::MediaLive::Channel::OutputDestinationSettings',
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
         Moose::Util::TypeConstraints::find_type_constraint('Cfn::Resource::Properties::AWS::MediaLive::Channel::OutputDestinationSettings')->coerce($_)
       } @$_
     ]);
   };

subtype 'Cfn::Resource::Properties::AWS::MediaLive::Channel::OutputDestinationSettings',
     as 'Cfn::Value';

coerce 'Cfn::Resource::Properties::AWS::MediaLive::Channel::OutputDestinationSettings',
  from 'HashRef',
   via {
     if (my $f = Cfn::TypeLibrary::try_function($_)) {
       return $f
     } else {
       return Cfn::Resource::Properties::AWS::MediaLive::Channel::OutputDestinationSettings::Value->new( %$_ );
     }
   };

package Cfn::Resource::Properties::AWS::MediaLive::Channel::OutputDestinationSettings::Value {
  use Moose;
  use MooseX::StrictConstructor;
  extends 'Cfn::Value::TypedValue';
  
  has PasswordParam => (isa => 'Cfn::Value::String', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has StreamName => (isa => 'Cfn::Value::String', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has Url => (isa => 'Cfn::Value::String', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has Username => (isa => 'Cfn::Value::String', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
}

subtype 'Cfn::Resource::Properties::AWS::MediaLive::Channel::NielsenConfiguration',
     as 'Cfn::Value';

coerce 'Cfn::Resource::Properties::AWS::MediaLive::Channel::NielsenConfiguration',
  from 'HashRef',
   via {
     if (my $f = Cfn::TypeLibrary::try_function($_)) {
       return $f
     } else {
       return Cfn::Resource::Properties::AWS::MediaLive::Channel::NielsenConfiguration::Value->new( %$_ );
     }
   };

package Cfn::Resource::Properties::AWS::MediaLive::Channel::NielsenConfiguration::Value {
  use Moose;
  use MooseX::StrictConstructor;
  extends 'Cfn::Value::TypedValue';
  
  has DistributorId => (isa => 'Cfn::Value::String', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has NielsenPcmToId3Tagging => (isa => 'Cfn::Value::String', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
}

subtype 'Cfn::Resource::Properties::AWS::MediaLive::Channel::MultiplexProgramChannelDestinationSettings',
     as 'Cfn::Value';

coerce 'Cfn::Resource::Properties::AWS::MediaLive::Channel::MultiplexProgramChannelDestinationSettings',
  from 'HashRef',
   via {
     if (my $f = Cfn::TypeLibrary::try_function($_)) {
       return $f
     } else {
       return Cfn::Resource::Properties::AWS::MediaLive::Channel::MultiplexProgramChannelDestinationSettings::Value->new( %$_ );
     }
   };

package Cfn::Resource::Properties::AWS::MediaLive::Channel::MultiplexProgramChannelDestinationSettings::Value {
  use Moose;
  use MooseX::StrictConstructor;
  extends 'Cfn::Value::TypedValue';
  
  has MultiplexId => (isa => 'Cfn::Value::String', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has ProgramName => (isa => 'Cfn::Value::String', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
}
subtype 'ArrayOfCfn::Resource::Properties::AWS::MediaLive::Channel::MediaPackageOutputDestinationSettings',
     as 'Cfn::Value',
  where { $_->isa('Cfn::Value::Array') or $_->isa('Cfn::Value::Function') },
message { "$_ is not a Cfn::Value or a Cfn::Value::Function" };

coerce 'ArrayOfCfn::Resource::Properties::AWS::MediaLive::Channel::MediaPackageOutputDestinationSettings',
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
         Moose::Util::TypeConstraints::find_type_constraint('Cfn::Resource::Properties::AWS::MediaLive::Channel::MediaPackageOutputDestinationSettings')->coerce($_)
       } @$_
     ]);
   };

subtype 'Cfn::Resource::Properties::AWS::MediaLive::Channel::MediaPackageOutputDestinationSettings',
     as 'Cfn::Value';

coerce 'Cfn::Resource::Properties::AWS::MediaLive::Channel::MediaPackageOutputDestinationSettings',
  from 'HashRef',
   via {
     if (my $f = Cfn::TypeLibrary::try_function($_)) {
       return $f
     } else {
       return Cfn::Resource::Properties::AWS::MediaLive::Channel::MediaPackageOutputDestinationSettings::Value->new( %$_ );
     }
   };

package Cfn::Resource::Properties::AWS::MediaLive::Channel::MediaPackageOutputDestinationSettings::Value {
  use Moose;
  use MooseX::StrictConstructor;
  extends 'Cfn::Value::TypedValue';
  
  has ChannelId => (isa => 'Cfn::Value::String', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
}

subtype 'Cfn::Resource::Properties::AWS::MediaLive::Channel::InputSettings',
     as 'Cfn::Value';

coerce 'Cfn::Resource::Properties::AWS::MediaLive::Channel::InputSettings',
  from 'HashRef',
   via {
     if (my $f = Cfn::TypeLibrary::try_function($_)) {
       return $f
     } else {
       return Cfn::Resource::Properties::AWS::MediaLive::Channel::InputSettings::Value->new( %$_ );
     }
   };

package Cfn::Resource::Properties::AWS::MediaLive::Channel::InputSettings::Value {
  use Moose;
  use MooseX::StrictConstructor;
  extends 'Cfn::Value::TypedValue';
  
  has AudioSelectors => (isa => 'ArrayOfCfn::Resource::Properties::AWS::MediaLive::Channel::AudioSelector', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has CaptionSelectors => (isa => 'ArrayOfCfn::Resource::Properties::AWS::MediaLive::Channel::CaptionSelector', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has DeblockFilter => (isa => 'Cfn::Value::String', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has DenoiseFilter => (isa => 'Cfn::Value::String', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has FilterStrength => (isa => 'Cfn::Value::Integer', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has InputFilter => (isa => 'Cfn::Value::String', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has NetworkInputSettings => (isa => 'Cfn::Resource::Properties::AWS::MediaLive::Channel::NetworkInputSettings', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has Smpte2038DataPreference => (isa => 'Cfn::Value::String', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has SourceEndBehavior => (isa => 'Cfn::Value::String', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has VideoSelector => (isa => 'Cfn::Resource::Properties::AWS::MediaLive::Channel::VideoSelector', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
}

subtype 'Cfn::Resource::Properties::AWS::MediaLive::Channel::GlobalConfiguration',
     as 'Cfn::Value';

coerce 'Cfn::Resource::Properties::AWS::MediaLive::Channel::GlobalConfiguration',
  from 'HashRef',
   via {
     if (my $f = Cfn::TypeLibrary::try_function($_)) {
       return $f
     } else {
       return Cfn::Resource::Properties::AWS::MediaLive::Channel::GlobalConfiguration::Value->new( %$_ );
     }
   };

package Cfn::Resource::Properties::AWS::MediaLive::Channel::GlobalConfiguration::Value {
  use Moose;
  use MooseX::StrictConstructor;
  extends 'Cfn::Value::TypedValue';
  
  has InitialAudioGain => (isa => 'Cfn::Value::Integer', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has InputEndAction => (isa => 'Cfn::Value::String', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has InputLossBehavior => (isa => 'Cfn::Resource::Properties::AWS::MediaLive::Channel::InputLossBehavior', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has OutputLockingMode => (isa => 'Cfn::Value::String', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has OutputTimingSource => (isa => 'Cfn::Value::String', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has SupportLowFramerateInputs => (isa => 'Cfn::Value::String', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
}

subtype 'Cfn::Resource::Properties::AWS::MediaLive::Channel::FeatureActivations',
     as 'Cfn::Value';

coerce 'Cfn::Resource::Properties::AWS::MediaLive::Channel::FeatureActivations',
  from 'HashRef',
   via {
     if (my $f = Cfn::TypeLibrary::try_function($_)) {
       return $f
     } else {
       return Cfn::Resource::Properties::AWS::MediaLive::Channel::FeatureActivations::Value->new( %$_ );
     }
   };

package Cfn::Resource::Properties::AWS::MediaLive::Channel::FeatureActivations::Value {
  use Moose;
  use MooseX::StrictConstructor;
  extends 'Cfn::Value::TypedValue';
  
  has InputPrepareScheduleActions => (isa => 'Cfn::Value::String', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
}
subtype 'ArrayOfCfn::Resource::Properties::AWS::MediaLive::Channel::CaptionDescription',
     as 'Cfn::Value',
  where { $_->isa('Cfn::Value::Array') or $_->isa('Cfn::Value::Function') },
message { "$_ is not a Cfn::Value or a Cfn::Value::Function" };

coerce 'ArrayOfCfn::Resource::Properties::AWS::MediaLive::Channel::CaptionDescription',
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
         Moose::Util::TypeConstraints::find_type_constraint('Cfn::Resource::Properties::AWS::MediaLive::Channel::CaptionDescription')->coerce($_)
       } @$_
     ]);
   };

subtype 'Cfn::Resource::Properties::AWS::MediaLive::Channel::CaptionDescription',
     as 'Cfn::Value';

coerce 'Cfn::Resource::Properties::AWS::MediaLive::Channel::CaptionDescription',
  from 'HashRef',
   via {
     if (my $f = Cfn::TypeLibrary::try_function($_)) {
       return $f
     } else {
       return Cfn::Resource::Properties::AWS::MediaLive::Channel::CaptionDescription::Value->new( %$_ );
     }
   };

package Cfn::Resource::Properties::AWS::MediaLive::Channel::CaptionDescription::Value {
  use Moose;
  use MooseX::StrictConstructor;
  extends 'Cfn::Value::TypedValue';
  
  has CaptionSelectorName => (isa => 'Cfn::Value::String', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has DestinationSettings => (isa => 'Cfn::Resource::Properties::AWS::MediaLive::Channel::CaptionDestinationSettings', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has LanguageCode => (isa => 'Cfn::Value::String', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has LanguageDescription => (isa => 'Cfn::Value::String', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has Name => (isa => 'Cfn::Value::String', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
}

subtype 'Cfn::Resource::Properties::AWS::MediaLive::Channel::BlackoutSlate',
     as 'Cfn::Value';

coerce 'Cfn::Resource::Properties::AWS::MediaLive::Channel::BlackoutSlate',
  from 'HashRef',
   via {
     if (my $f = Cfn::TypeLibrary::try_function($_)) {
       return $f
     } else {
       return Cfn::Resource::Properties::AWS::MediaLive::Channel::BlackoutSlate::Value->new( %$_ );
     }
   };

package Cfn::Resource::Properties::AWS::MediaLive::Channel::BlackoutSlate::Value {
  use Moose;
  use MooseX::StrictConstructor;
  extends 'Cfn::Value::TypedValue';
  
  has BlackoutSlateImage => (isa => 'Cfn::Resource::Properties::AWS::MediaLive::Channel::InputLocation', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has NetworkEndBlackout => (isa => 'Cfn::Value::String', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has NetworkEndBlackoutImage => (isa => 'Cfn::Resource::Properties::AWS::MediaLive::Channel::InputLocation', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has NetworkId => (isa => 'Cfn::Value::String', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has State => (isa => 'Cfn::Value::String', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
}

subtype 'Cfn::Resource::Properties::AWS::MediaLive::Channel::AvailConfiguration',
     as 'Cfn::Value';

coerce 'Cfn::Resource::Properties::AWS::MediaLive::Channel::AvailConfiguration',
  from 'HashRef',
   via {
     if (my $f = Cfn::TypeLibrary::try_function($_)) {
       return $f
     } else {
       return Cfn::Resource::Properties::AWS::MediaLive::Channel::AvailConfiguration::Value->new( %$_ );
     }
   };

package Cfn::Resource::Properties::AWS::MediaLive::Channel::AvailConfiguration::Value {
  use Moose;
  use MooseX::StrictConstructor;
  extends 'Cfn::Value::TypedValue';
  
  has AvailSettings => (isa => 'Cfn::Resource::Properties::AWS::MediaLive::Channel::AvailSettings', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
}

subtype 'Cfn::Resource::Properties::AWS::MediaLive::Channel::AvailBlanking',
     as 'Cfn::Value';

coerce 'Cfn::Resource::Properties::AWS::MediaLive::Channel::AvailBlanking',
  from 'HashRef',
   via {
     if (my $f = Cfn::TypeLibrary::try_function($_)) {
       return $f
     } else {
       return Cfn::Resource::Properties::AWS::MediaLive::Channel::AvailBlanking::Value->new( %$_ );
     }
   };

package Cfn::Resource::Properties::AWS::MediaLive::Channel::AvailBlanking::Value {
  use Moose;
  use MooseX::StrictConstructor;
  extends 'Cfn::Value::TypedValue';
  
  has AvailBlankingImage => (isa => 'Cfn::Resource::Properties::AWS::MediaLive::Channel::InputLocation', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has State => (isa => 'Cfn::Value::String', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
}

subtype 'Cfn::Resource::Properties::AWS::MediaLive::Channel::AutomaticInputFailoverSettings',
     as 'Cfn::Value';

coerce 'Cfn::Resource::Properties::AWS::MediaLive::Channel::AutomaticInputFailoverSettings',
  from 'HashRef',
   via {
     if (my $f = Cfn::TypeLibrary::try_function($_)) {
       return $f
     } else {
       return Cfn::Resource::Properties::AWS::MediaLive::Channel::AutomaticInputFailoverSettings::Value->new( %$_ );
     }
   };

package Cfn::Resource::Properties::AWS::MediaLive::Channel::AutomaticInputFailoverSettings::Value {
  use Moose;
  use MooseX::StrictConstructor;
  extends 'Cfn::Value::TypedValue';
  
  has InputPreference => (isa => 'Cfn::Value::String', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has SecondaryInputId => (isa => 'Cfn::Value::String', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
}
subtype 'ArrayOfCfn::Resource::Properties::AWS::MediaLive::Channel::AudioDescription',
     as 'Cfn::Value',
  where { $_->isa('Cfn::Value::Array') or $_->isa('Cfn::Value::Function') },
message { "$_ is not a Cfn::Value or a Cfn::Value::Function" };

coerce 'ArrayOfCfn::Resource::Properties::AWS::MediaLive::Channel::AudioDescription',
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
         Moose::Util::TypeConstraints::find_type_constraint('Cfn::Resource::Properties::AWS::MediaLive::Channel::AudioDescription')->coerce($_)
       } @$_
     ]);
   };

subtype 'Cfn::Resource::Properties::AWS::MediaLive::Channel::AudioDescription',
     as 'Cfn::Value';

coerce 'Cfn::Resource::Properties::AWS::MediaLive::Channel::AudioDescription',
  from 'HashRef',
   via {
     if (my $f = Cfn::TypeLibrary::try_function($_)) {
       return $f
     } else {
       return Cfn::Resource::Properties::AWS::MediaLive::Channel::AudioDescription::Value->new( %$_ );
     }
   };

package Cfn::Resource::Properties::AWS::MediaLive::Channel::AudioDescription::Value {
  use Moose;
  use MooseX::StrictConstructor;
  extends 'Cfn::Value::TypedValue';
  
  has AudioNormalizationSettings => (isa => 'Cfn::Resource::Properties::AWS::MediaLive::Channel::AudioNormalizationSettings', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has AudioSelectorName => (isa => 'Cfn::Value::String', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has AudioType => (isa => 'Cfn::Value::String', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has AudioTypeControl => (isa => 'Cfn::Value::String', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has CodecSettings => (isa => 'Cfn::Resource::Properties::AWS::MediaLive::Channel::AudioCodecSettings', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has LanguageCode => (isa => 'Cfn::Value::String', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has LanguageCodeControl => (isa => 'Cfn::Value::String', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has Name => (isa => 'Cfn::Value::String', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has RemixSettings => (isa => 'Cfn::Resource::Properties::AWS::MediaLive::Channel::RemixSettings', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has StreamName => (isa => 'Cfn::Value::String', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
}
subtype 'ArrayOfCfn::Resource::Properties::AWS::MediaLive::Channel::OutputDestination',
     as 'Cfn::Value',
  where { $_->isa('Cfn::Value::Array') or $_->isa('Cfn::Value::Function') },
message { "$_ is not a Cfn::Value or a Cfn::Value::Function" };

coerce 'ArrayOfCfn::Resource::Properties::AWS::MediaLive::Channel::OutputDestination',
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
         Moose::Util::TypeConstraints::find_type_constraint('Cfn::Resource::Properties::AWS::MediaLive::Channel::OutputDestination')->coerce($_)
       } @$_
     ]);
   };

subtype 'Cfn::Resource::Properties::AWS::MediaLive::Channel::OutputDestination',
     as 'Cfn::Value';

coerce 'Cfn::Resource::Properties::AWS::MediaLive::Channel::OutputDestination',
  from 'HashRef',
   via {
     if (my $f = Cfn::TypeLibrary::try_function($_)) {
       return $f
     } else {
       return Cfn::Resource::Properties::AWS::MediaLive::Channel::OutputDestination::Value->new( %$_ );
     }
   };

package Cfn::Resource::Properties::AWS::MediaLive::Channel::OutputDestination::Value {
  use Moose;
  use MooseX::StrictConstructor;
  extends 'Cfn::Value::TypedValue';
  
  has Id => (isa => 'Cfn::Value::String', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has MediaPackageSettings => (isa => 'ArrayOfCfn::Resource::Properties::AWS::MediaLive::Channel::MediaPackageOutputDestinationSettings', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has MultiplexSettings => (isa => 'Cfn::Resource::Properties::AWS::MediaLive::Channel::MultiplexProgramChannelDestinationSettings', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has Settings => (isa => 'ArrayOfCfn::Resource::Properties::AWS::MediaLive::Channel::OutputDestinationSettings', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
}

subtype 'Cfn::Resource::Properties::AWS::MediaLive::Channel::InputSpecification',
     as 'Cfn::Value';

coerce 'Cfn::Resource::Properties::AWS::MediaLive::Channel::InputSpecification',
  from 'HashRef',
   via {
     if (my $f = Cfn::TypeLibrary::try_function($_)) {
       return $f
     } else {
       return Cfn::Resource::Properties::AWS::MediaLive::Channel::InputSpecification::Value->new( %$_ );
     }
   };

package Cfn::Resource::Properties::AWS::MediaLive::Channel::InputSpecification::Value {
  use Moose;
  use MooseX::StrictConstructor;
  extends 'Cfn::Value::TypedValue';
  
  has Codec => (isa => 'Cfn::Value::String', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has MaximumBitrate => (isa => 'Cfn::Value::String', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has Resolution => (isa => 'Cfn::Value::String', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
}
subtype 'ArrayOfCfn::Resource::Properties::AWS::MediaLive::Channel::InputAttachment',
     as 'Cfn::Value',
  where { $_->isa('Cfn::Value::Array') or $_->isa('Cfn::Value::Function') },
message { "$_ is not a Cfn::Value or a Cfn::Value::Function" };

coerce 'ArrayOfCfn::Resource::Properties::AWS::MediaLive::Channel::InputAttachment',
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
         Moose::Util::TypeConstraints::find_type_constraint('Cfn::Resource::Properties::AWS::MediaLive::Channel::InputAttachment')->coerce($_)
       } @$_
     ]);
   };

subtype 'Cfn::Resource::Properties::AWS::MediaLive::Channel::InputAttachment',
     as 'Cfn::Value';

coerce 'Cfn::Resource::Properties::AWS::MediaLive::Channel::InputAttachment',
  from 'HashRef',
   via {
     if (my $f = Cfn::TypeLibrary::try_function($_)) {
       return $f
     } else {
       return Cfn::Resource::Properties::AWS::MediaLive::Channel::InputAttachment::Value->new( %$_ );
     }
   };

package Cfn::Resource::Properties::AWS::MediaLive::Channel::InputAttachment::Value {
  use Moose;
  use MooseX::StrictConstructor;
  extends 'Cfn::Value::TypedValue';
  
  has AutomaticInputFailoverSettings => (isa => 'Cfn::Resource::Properties::AWS::MediaLive::Channel::AutomaticInputFailoverSettings', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has InputAttachmentName => (isa => 'Cfn::Value::String', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has InputId => (isa => 'Cfn::Value::String', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Immutable');
  has InputSettings => (isa => 'Cfn::Resource::Properties::AWS::MediaLive::Channel::InputSettings', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
}

subtype 'Cfn::Resource::Properties::AWS::MediaLive::Channel::EncoderSettings',
     as 'Cfn::Value';

coerce 'Cfn::Resource::Properties::AWS::MediaLive::Channel::EncoderSettings',
  from 'HashRef',
   via {
     if (my $f = Cfn::TypeLibrary::try_function($_)) {
       return $f
     } else {
       return Cfn::Resource::Properties::AWS::MediaLive::Channel::EncoderSettings::Value->new( %$_ );
     }
   };

package Cfn::Resource::Properties::AWS::MediaLive::Channel::EncoderSettings::Value {
  use Moose;
  use MooseX::StrictConstructor;
  extends 'Cfn::Value::TypedValue';
  
  has AudioDescriptions => (isa => 'ArrayOfCfn::Resource::Properties::AWS::MediaLive::Channel::AudioDescription', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has AvailBlanking => (isa => 'Cfn::Resource::Properties::AWS::MediaLive::Channel::AvailBlanking', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has AvailConfiguration => (isa => 'Cfn::Resource::Properties::AWS::MediaLive::Channel::AvailConfiguration', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has BlackoutSlate => (isa => 'Cfn::Resource::Properties::AWS::MediaLive::Channel::BlackoutSlate', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has CaptionDescriptions => (isa => 'ArrayOfCfn::Resource::Properties::AWS::MediaLive::Channel::CaptionDescription', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has FeatureActivations => (isa => 'Cfn::Resource::Properties::AWS::MediaLive::Channel::FeatureActivations', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has GlobalConfiguration => (isa => 'Cfn::Resource::Properties::AWS::MediaLive::Channel::GlobalConfiguration', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has NielsenConfiguration => (isa => 'Cfn::Resource::Properties::AWS::MediaLive::Channel::NielsenConfiguration', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has OutputGroups => (isa => 'ArrayOfCfn::Resource::Properties::AWS::MediaLive::Channel::OutputGroup', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has TimecodeConfig => (isa => 'Cfn::Resource::Properties::AWS::MediaLive::Channel::TimecodeConfig', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has VideoDescriptions => (isa => 'ArrayOfCfn::Resource::Properties::AWS::MediaLive::Channel::VideoDescription', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
}

package Cfn::Resource::Properties::AWS::MediaLive::Channel {
  use Moose;
  use MooseX::StrictConstructor;
  extends 'Cfn::Resource::Properties';
  
  has ChannelClass => (isa => 'Cfn::Value::String', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has Destinations => (isa => 'ArrayOfCfn::Resource::Properties::AWS::MediaLive::Channel::OutputDestination', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has EncoderSettings => (isa => 'Cfn::Resource::Properties::AWS::MediaLive::Channel::EncoderSettings', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has InputAttachments => (isa => 'ArrayOfCfn::Resource::Properties::AWS::MediaLive::Channel::InputAttachment', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has InputSpecification => (isa => 'Cfn::Resource::Properties::AWS::MediaLive::Channel::InputSpecification', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has LogLevel => (isa => 'Cfn::Value::String', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has Name => (isa => 'Cfn::Value::String', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has RoleArn => (isa => 'Cfn::Value::String', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has Tags => (isa => 'Cfn::Value::Json|Cfn::DynamicValue', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
}

1;
### main pod documentation begin ###

=encoding UTF-8

=head1 NAME

Cfn::Resource::AWS::MediaLive::Channel - Cfn resource for AWS::MediaLive::Channel

=head1 DESCRIPTION

This module implements a Perl module that represents the CloudFormation object AWS::MediaLive::Channel.

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
