require 'rails_helper'

RSpec.describe Blog, type: :model do
  it 'is not valid without a title' do 
    blog = Blog.create content: 'stuff'
    expect(blog.errors[:title]).to_not be_empty
  end
  it 'is not valid without content' do 
    blog = Blog.create title: 'Random'
    expect(blog.errors[:content]).to_not be_empty
  end
  it 'is not valid if title is at least 10 characters' do
    blog = Blog.create title: 'Random', content: 'stuff'
    expect(blog.errors[:title]).to_not be_empty
  end
  it 'does not allow duplicate titles' do
    Blog.create title: 'This is a cool title', content: 'stuff'
    blog = Blog.create title: 'This is a cool title', content: 'stuff'
    expect(blog.errors[:title]).to_not be_empty
  end
end
