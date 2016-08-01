Deface::Override.new(
  virtual_path: 'pivorak/home/index',
  name:         'few_last_talks_to_dashboard',
  insert_after: "[data-mount-point='dashboard_row_3']",
  partial:      'pivorak/talks/overrides/few_last_talks_to_dashboard',
  namespaced:   true,
  original:     '7dab84652e749cfe63b1a76c61e2c9192e2f451d'
)
