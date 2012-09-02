class Algorithm 
  require 'matrix'
 

  def self.ahp_priority
    ahp_before = AhpBefore.find_by_id("1")
    
    
    unless ahp_before.blank?
      pairwise = Matrix.identity(4).to_a
  
      arr = []
      ahp_before.attributes.each do |i, val|
        unless i == "id" || i == "created_at" || i == "updated_at"
          arr = arr << val
        end
      end
 
      handler = 1
      row = 0
      col = 0
      i = 0
      while handler <= 3
        col = handler
        while col <= 3
          pairwise[row][col] = (arr[i])
          pairwise[col][row] = (1/arr[i]).to_f
          i += 1
          col += 1
        end
        handler += 1          
        row += 1
      end
      
      pairwise_matrices = Matrix.rows(pairwise) ** 2
    
      standard_temp = pairwise_matrices.row(0).to_a.sum
      satisfiction_temp = pairwise_matrices.row(1).to_a.sum
      total_user_temp = pairwise_matrices.row(2).to_a.sum
      modernity_temp = pairwise_matrices.row(3).to_a.sum
           
      normalizator = standard_temp + satisfiction_temp + total_user_temp + modernity_temp 
      standard = (standard_temp / normalizator).to_f
      satisfiction = (satisfiction_temp / normalizator).to_f
      total_user = (total_user_temp / normalizator).to_f
      modernity = (modernity_temp / normalizator).to_f
     
      
      sum = (standard  + satisfiction + total_user + modernity )
      
      if AhpAfter.first.blank?
        AhpAfter.create(:standard_a => standard, 
                                  :satisfaction_a => satisfiction,
                                  :total_user_a => total_user,
                                  :modernity_a => modernity   
                                 ).save
      else
        AhpAfter.first.update_attributes(:standard_a => standard, 
                                          :satisfaction_a => satisfiction,
                                          :total_user_a => total_user,
                                          :modernity_a => modernity
                                         )
      end
       return standard, satisfiction, total_user, modernity, sum
    end
    
   
  end
  
  def self.bayes_score(stand, satis, tot, mod)
    if AhpAfter.first.nil?
      Algorithm.ahp_priority
      value = AhpAfter.first
    else
      value = AhpAfter.first
    end
    
     max = Product.maximum(:total_user) 
     min = Product.minimum(:total_user) 
      
      tot_user = (((tot - min)/ max - min) * 100).to_f
      
      if (tot_user < 20) 
        tu = 1
      elsif (tot_user >= 20) and (tot_user < 40)
        tu = 2
      elsif (tot_user >= 40) and (tot_user < 60)
      
        tu = 3
      elsif (tot_user >= 60) and (tot_user < 80) 
      
        tu = 4
      elsif (tot_user >= 80) and (tot_user <= 100) 
      
        tu = 5
      end
      
      total_score = ((value.standard_a * stand)+(value.satisfaction_a * satis) + (value.total_user_a * tu) + (value.modernity_a * mod))
    
    return total_score 
  end

  def self.auto_bayes_score
    products = Product.all
    
    products.each do |product|
      new_tot_score = Algorithm.bayes_score(product.standard, product.satisfaction, product.total_user, product.modernity )
      
      Product.find_by_id(product.id).update_attributes( :total_score => new_tot_score )
    
    end
  end

end
