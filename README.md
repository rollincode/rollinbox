Rails Sandbox
=============

Easy sandbox to start projects, administration and site architecture provided

- rollincode rails admin theme
- nested sortable
- ancestry
- image and attachment uploader
- admin + user multi account
- page handle & seo optimization
- froala v2 + file and images manager
- block system on dashboard
- ... many others

Block on dashboard
integration example in model:
```ruby
included do
  rails_admin do
    navigation_label 'Page'
    navigation_icon 'fa fa-book'
    label_plural 'Pages'
```
navigation_icon and label_plural are optional

![DASHBOARD](http://imgur.com/g0SLBfS, "block system")

### TODO ###

- [ ] Clean up
