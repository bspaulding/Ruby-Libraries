# BSObjectSpaceHelper
# Author: Bradley J. Spaulding
# Created On: 2010-10-22
# Updated On: 2010-12-10

module BSObjectSpaceHelper
  # Returns a collection of all objects whose class name includes matcher.
  def self.objects(matcher = "")
    objs = []
    ObjectSpace.each_object do |object|      
      objs << object if object.class.to_s.include?(matcher)
    end
    objs
  end
end

ObjectSpace.send(:include, BSObjectSpaceHelper)