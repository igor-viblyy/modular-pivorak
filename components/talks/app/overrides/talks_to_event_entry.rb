if Pivorak::Core.available?(:events)
  Deface::Override.new(
    virtual_path: 'pivorak/events/events/show',
    name:         'talks_to_event_entry',
    insert_after: "[data-mount-point='event_entry']",
    partial:      'pivorak/talks/overrides/talks_to_event_entry',
    namespaced:   true,
    original:     '0d820419bd4398f50498adc12ca9cef05712725d')
end
