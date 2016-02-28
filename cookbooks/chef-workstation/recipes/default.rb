# This cookbook will install some of the main tools
#   for chef cookbook creaters. You may want to reduce
#   the amount of tools if you need.

# Some lib deps for gems
package 'zlib1g-dev' # for foodcritic

gem_package 'foodcritic' # lint tool
gem_package 'chefspec' # unit test
gem_package 'test-kitchen' # test your cookbook
