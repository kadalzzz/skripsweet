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
          pairwise[col][row] = (1/arr[i])
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
      standard = (standard_temp / normalizator)
      satisfiction = (satisfiction_temp / normalizator)
      total_user = (total_user_temp / normalizator)
      modernity = (modernity_temp / normalizator)
     
      
      sum = (standard  + satisfiction + total_user + modernity )
      
      #if AhpAfter.blank?
       # AhpAfter.build_ahp_after(:standard_a => standard, 
        #                          :satisfiction_a => satisfiction,
         #                         :total_user_a => total_user,
          #                        :modernity_a => modernity   
           #                      ).save
      #else
       # AhpAfter.first.update_attributes(:standard_a => standard, 
        #                                  :satisfiction_a => satisfiction,
         #                                 :total_user_a => total_user,
          #                                :modernity_a => modernity
           #                              )
     # end
      
    end
    
    return standard, satisfiction, total_user, modernity
  end
  
  def self.bayes_score
  
  end

end
