Rails 5 Sandbox
=============

Ready to use sandbox, back-end/front-end architecture provided.

- Rollincode rails admin theme (new modern bootstrap 3)
- Nested sortable models
- Image and attachment uploaders
- Admin and User accounts configured
- Seo optimization (friendly_id)
- Froala v2 + file and images manager WYSIWYG
- Block system on dashboard
- ... many others

Model link example with slug see friendly_id

```erb
<%= model_path(@model.slug) %>
```

Notifications
```ruby
redirect_to root_path, flash: {success: 'My message'}
```

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

![DASHBOARD](http://i.imgur.com/iWnBkEu.png, "block system")

![DASHBOARD](http://i.imgur.com/GJGfXVO.png, "view")

### TODO ###

- [X] Rails 5 migration
- [ ] Capistrano instructions
- [X] Capistrano initialization
- [X] Clean up
