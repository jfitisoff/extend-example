# https://github.com/jfitisoff/insite/wiki/Defining-Components
class SelectWrapper < ExtendSite::Component
  select_by tag_name: 'div', class: /css-[a-z0-9]+-SelectWrapper\s+\S+/

  def close
    button.click if open?
    sleep 0.1
  end

  def open
    button.click
  end

  def open?
    sleep 0.1
    ul.present?
  end

  def select(val)
    self.open unless open?
    li(text: val).click
  end

  def update(val)
    select(val)
  end
end
