class PetSerializer < ActiveModel::Serializer
  attributes :id, :name, :pet_type, :image_url, :description, :is_available, :created_at, :owner

  has_many :reviews

  def owner
    {id: self.object.user.id, 
     name: "#{self.object.user.first_name} #{self.object.user.last_name}"}
  end 

  class ReviewSerializer < ActiveModel::Serializer
    attributes :id, :title, :body, :rating, :created_at, :reviewer
    belongs_to :pet

    def reviewer
      {id: self.object.user.id, 
       name: "#{self.object.user.first_name} #{self.object.user.last_name}"}
    end 
  end
end
