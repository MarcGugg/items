# README
SETUP INSTRUCTIONS:

1. Clone repo
2. add RSpec to your Gemfile:

```
  group :development, :test do
    gem 'rspec-rails', '~> 3.0'
  end
```


3. install the gem with this command:

```
   bundle install
```
4. run this command to generate the necessary RSpec files:
```
   -rails generate rspec:install
```
5.Organize your tests:

Now you can organize your tests within the spec directory. For models, you can create a models directory and place your model spec files inside it.
  this should be the directory structure
   
   
![image](https://github.com/MarcGugg/items/assets/109707298/8d4a761e-919e-4e67-b20c-ea80fcc3b392)

6. inside item_spec.rb, paste the follwing code:


```
require 'rails_helper'

RSpec.describe Item, type: :model do
  describe 'Soft Delete functionality' do
    let!(:item) { create(:item) }

    it 'soft deletes an item' do
      expect { item.soft_delete }.to change { Item.count }.by(-1)
      expect(item.reload.deleted_at).to be_present
    end

    it 'restores a soft-deleted item' do
      item.soft_delete
      expect { item.restore }.to change { Item.count }.by(1)
      expect(item.reload.deleted_at).to be_nil
    end

    it 'excludes soft-deleted items from normal queries' do
      soft_deleted_item = create(:item, deleted_at: Time.current)
      expect(Item.all).to include(item)
      expect(Item.all).not_to include(soft_deleted_item)
    end
  end
end
```

7. run the following commands:
 ```
    rails db:create
    rails db:migrate
    rails db:seed
    rspec
```

   
