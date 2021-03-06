class ActiveRecord::Base
  def dom_id(prefix = nil) 
    prefix ||= 'new' unless id
    [ prefix, self.class.name.underscore.gsub("/", "_"), id ].compact * '_'
  end
end
