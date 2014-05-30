Releaf.setup do |conf|
  # Default settings are commented out

  ### setup menu items and therefore available controllers
  conf.menu = [
    {
      :controller => 'releaf/content/nodes',
      :icon => 'sitemap',
    },
    {
      :name => "inventory",
      :items =>   %w[admin/books admin/authors],
      :icon => 'briefcase',
    },
    {
      :name => "permissions",
      :items =>   %w[releaf/permissions/admins releaf/permissions/roles],
      :icon => 'user',
    },
    {
      :controller => 'releaf/i18n_database/translations',
      :icon => 'group',
    },
   ]

  conf.additional_controllers = %w[admin/chapters]

  conf.available_locales = ["en", "lv"]
  # conf.layout = 'releaf/admin'
  # conf.devise_for 'releaf/admin'
end
