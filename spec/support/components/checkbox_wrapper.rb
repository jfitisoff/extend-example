# https://github.com/jfitisoff/insite/wiki/Defining-Components
class CheckboxWrapper < ExtendSite::Component
  select_by tag_name: 'label', class: /css-[a-z0-9]+-Wrapper-Checkbox/

  def clear
    if set?
      element(class: /css-[a-z0-9]+-(Checked|Unchecked)/).click
    end
  end

  def set
    if !set?
      element(class: /css-[a-z0-9]+-(Checked|Unchecked)/).click
    end
  end

  def set?
    el = element(class: /css-[a-z0-9]+-(Checked|Unchecked)/)
    !el.attribute_values[:class].match(/Checked/).nil?
  end
end
