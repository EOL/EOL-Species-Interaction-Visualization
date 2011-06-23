class Biome < ActiveRecord::Base
  
  acts_as_tree :order=>"sort_order"
  has_many :ecosystems, :dependent=>:nullify
  
  def self.return_tree(params={})
    
    levels=params[:levels].to_s
    
    roots=Biome.roots

    result=Array.new 
    roots.each do |root|
      result << root
      if levels == "1" || levels == "2" 
        root.children.each do |child|
          child.name = root.name + ' -> ' + child.name
          result << child
          if levels == "2"
            child.children.each do |sub_child|
              sub_child.name = child.name + ' -> ' + sub_child.name
              result << sub_child
            end
          end
        end
      end
    end

    return result

  end
  
end
