Admin.create!(
  email:                  'admin@admin.com',
  password:               'admin888',
  password_confirmation:  'admin888'
)

Parameter.create!(
  code: 'DEFAULT_SEO_TITLE',
  value: 'DEFAULT TITLE'
)

Parameter.create!(
  code: 'DEFAULT_SEO_DESCRIPTION',
  value: 'DEFAULT DESCRIPTION'
)
