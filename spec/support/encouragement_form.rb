class EncouragementForm
  include Capybara::DSL

  def leave_encouragement(attrs = {})
    fill_in('encouragement_message', with: attrs.fetch(:text, 'good job'))
    self
  end

  def submit
    click_link_or_button('Encourage')
    self
  end
end