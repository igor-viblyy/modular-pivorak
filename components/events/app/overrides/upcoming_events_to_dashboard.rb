Deface::Override.new(
  virtual_path: 'pivorak/home/index',
  name:         'upcoming_events_to_dashboard',
  insert_after: "[data-mount-point='dashboard_row_1']",
  partial:      'pivorak/events/overrides/upcoming_events_to_dashboard',
  namespaced:   true,
  original:     '1700869d43ebbc9920c2876d9f31fcc3546a52a4'
)
