# ## Class: utils ##
#
# This module manages arbitrary installation of utilities.
#
# Takes no action if no packages are specified.
#
# ### Parameters ###
#
# packages
# --------
#
# Array of packages to install.
#
# - *Default*: 'UNSET'
#
class utils (
  $packages = 'UNSET',
  $adminfile = undef,
  $provider = undef,
) {
       if $packages != 'UNSET' {
         package { $packages:
            ensure    => present,
            adminfile => $adminfile,
            provider  => $provider,
         }
       }
}

