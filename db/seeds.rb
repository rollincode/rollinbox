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

SeoTool.create!(
    code: 'GOOGLE_SITE_VERIFICATION_CODE',
    value: ''
)

SeoTool.create!(
    code: 'GOOGLE_ANALYTIC_CODE',
    value: ''
)

SeoTool.create!(
    code: 'GOOGLE_TAG_MANAGER_CODE',
    value: ''
)