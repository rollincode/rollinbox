# Admin default
Admin.create!(
  email:                  'admin@rollincode.github',
  password:               'admin888',
  password_confirmation:  'admin888'
)

User.create!(
  email:                  'nico@neptos.com',
  password:               'username@nk',
  password_confirmation:  'username@nk'
)

Content.create!(
  code:     'LOREM',
  content:  'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla et mi viverra arcu venenatis vulputate. Nullam feugiat maximus leo non convallis.'
)
