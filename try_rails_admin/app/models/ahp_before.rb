class AhpBefore < ActiveRecord::Base
  after_create :run_ahp
  after_update :run_ahp
  
  def run_ahp
    Algorithm.ahp_priority
  end

end
