Deface::Override.new(
  virtual_path: 'pivorak/home/index',
  name:         'few_last_events_to_dashboard',
  insert_after: "[data-mount-point='dashboard_row_2']",
  partial:      'pivorak/events/overrides/few_last_events_to_dashboard',
  namespaced:   true,
  original:     '4ac47f6593da6ad269ecc090dc267d08ae695903'
)
