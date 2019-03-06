module StaticPagesHelper
  def static_bg(action)
    if action == 'home'
      "c-home__bg"
    else
      "c-container"
    end
  end
end
