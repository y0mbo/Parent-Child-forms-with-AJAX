class Parent < ActiveRecord::Base
  has_many :children, :class_name => "Child", :dependent => :destroy
  accepts_nested_attributes_for :children, :allow_destroy => :true
end
