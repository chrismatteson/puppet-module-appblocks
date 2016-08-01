define appblocks::tier (
  Enum['docker','kubernetes','aws-rds','f5','netscaler','aws-elb'] $type,
  $artifact = undef,
  $produces = undef,
  $consumes = undef,
) {

  appblocks::tier::$type { $title:
    artifact => $artifact,
    produces => $produces,
    consumes => $consumes,
  }

#  case $type {
#    'kubernetes': {
#      appblocks::tier::kubernetes { $title:
#        artifact => $artifact,
#        produces => $produces,
#        consumes => $consumes,
#      }
#    }
#    'aws-rds':    {
#      appblocks::tier::kubernetes { $title:
#        artifact => $artifact,
#        produces => $produces,
#        consumes => $consumes,
#      }
#    }
  }
}
