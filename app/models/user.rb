class User < ApplicationRecord
    def self.current
        Thread.current[:admin_user]
    end
    def self.current=(admin_user)
        Thread.current[:admin_user] = admin_user
    end
end
