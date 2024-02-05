# frozen_string_literal: true

require "anyway_config"

class JekyllOgImage::Config < Anyway::Config
  attr_config output_dir: "assets/images/og"
  attr_config force: false
  attr_config :image
  attr_config :domain
  attr_config border_bottom: {
    width: 20,
    fill: [ "#211F1F", "#F4CBB2", "#AD5C51", "#9CDAF1", "#7DBBE6" ]
  }

  coerce_types image: { type: :string }

  coerce_types border_bottom: {
    width: { type: :integer },
    fill: { type: :string, array: true }
  }
end
