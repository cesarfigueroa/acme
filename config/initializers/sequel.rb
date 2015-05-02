Sequel::Model.plugin(:timestamps, :update_on_create => true)
Sequel::Model.plugin(:validation_helpers)
Sequel::Model.plugin(:json_serializer)
