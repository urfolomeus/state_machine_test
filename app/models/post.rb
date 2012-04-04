class Post < ActiveRecord::Base
  before_validation :ensure_default_state, :on => :create

  attr_accessible :description, :state, :title

  state_machine :state, :initial => :draft do
    state :draft
    state :listed

    event :publish do
      transition :draft => :listed
    end
  end

  private
  def ensure_default_state
    self.state ||= "draft"
  end
end
