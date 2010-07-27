require 'forwardable'
require 'rubygems'
require 'active_support'

dir = File.expand_path(File.dirname(__FILE__))

require File.join(dir, 'object_extension')
require File.join(dir, 'errors')
require File.join(dir, 'validatable_class_methods')
require File.join(dir, 'macros')
require File.join(dir, 'validatable_instance_methods')
require File.join(dir, 'included_validation')
require File.join(dir, 'child_validation')
require File.join(dir, 'understandable')
require File.join(dir, 'requireable')
require File.join(dir, 'validations/validation_base')
require File.join(dir, 'validations/validates_format_of')
require File.join(dir, 'validations/validates_presence_of')
require File.join(dir, 'validations/validates_acceptance_of')
require File.join(dir, 'validations/validates_confirmation_of')
require File.join(dir, 'validations/validates_length_of')
require File.join(dir, 'validations/validates_true_for')
require File.join(dir, 'validations/validates_numericality_of')
require File.join(dir, 'validations/validates_each')
require File.join(dir, 'validations/validates_associated')
require File.join(dir, 'validations/validates_uniqueness_of')
require File.join(dir, 'validations/validates_inclusion_of')
require File.join(dir, 'validations/validates_exclusion_of')
