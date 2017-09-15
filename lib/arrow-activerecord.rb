require "arrow-activerecord/active_record_ex"

puts "Fdsaffasdfafafasdfdsafsafasf"

module ArrowActiveRecord
  # Your code goes here...
end

ActiveSupport.on_load :active_record do
    ActiveRecord::Base.include(ArrowActiveRecord::ActiveRecordExt)
end

# active_hash do not use ActiveSupport::LazyLoadHooks
if defined?(ActiveHash)
  ActiveHash::Base.include(ArrowActiveRecord::ActiveRecordExt)
end

