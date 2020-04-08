class Category < ApplicationRecord
  has_many :products
  acts_as_taggable

  before_destroy :check_for_assignments, prepend: true

  validates :name, presence: true, length: { maximum: 30 }

  validate :check_if_tag_exists


  def self.search(term)
#    where("LOWER(name) LIKE :term", term: "%#{term.downcase}%")
    joins("INNER JOIN taggings  ON taggable_id=categories.id and taggable_type='Category' AND tag_id IN (SELECT tags.id FROM tags WHERE LOWER(tags.name) like '%#{term.downcase}%')")

  end
  
  private
  def check_for_assignments
    if products.any?
      errors.add(:products,:has_a_relation)  # "no tiene suficiente stock para asignar a la tienda #{store.name}")   
      throw :abort      
    end
  end

  #Check if the tag is used in another category
  def check_if_tag_exists
    lista = tag_list.map{|s|  "'#{s}'"}.join(', ') 
    if !lista.empty?
      if Category.find_by_sql( "SELECT `categories`.*  FROM `categories` INNER JOIN `taggings`      ON `taggable_id` = `categories`.`id` AND  `taggable_type` = 'Category' AND `tag_id` IN (SELECT `tags`.`id` FROM `tags` WHERE LOWER(`tags`.`name`) in (#{lista}) ) and categories.id<>#{id};").count>0
        errors.add(:tag_list,:has_been_taken)
      end      
    end
  end

end
