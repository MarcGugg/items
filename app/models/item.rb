class Item < ApplicationRecord
    default_scope { where.not(status: 'deleted') }

    def soft_delete
        update(deleted_at: Time.current)
    end
    
    def restore
        update(deleted_at: nil)
    end
end
