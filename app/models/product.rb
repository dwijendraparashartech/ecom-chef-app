class Product < ApplicationRecord
    has_many :product_collections
    has_many :collections, through: :product_collections
    mount_uploader :image, AvatarUploader
    belongs_to :user

    def get_image_url
        return self.image && self.image.url ? self.image.try(:url) : 'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcRxzT3N7-TEsb1AD_eU8B2TtTLryBLItF7cKw&usqp=CAU'
    end

    def is_pending?
        !self.status
    end

    def is_approved?
        self.status
    end
    
end


