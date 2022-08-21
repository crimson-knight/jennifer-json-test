class Example < ApplicationRecord
  with_timestamps

  mapping(
    id: Primary32,
    random: {type: JSON::Any, default: JSON.parse(%({"test": [] })) },
    created_at: Time?,
    updated_at: Time?,
  )
end
