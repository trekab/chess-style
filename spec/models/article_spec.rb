require 'rails_helper'

RSpec.describe Article, type: :model do
  let(:user) { User.create(name: 'TestUser') }

  let(:article) do
    user.articles.build(title: 'Test Article',
                        text: 'This is a test article!!!')
  end

  it 'is valid with a title, text' do
    expect(article).to be_valid
  end

  it 'is invalid without a title' do
    article.title = nil
    article.valid?
    expect(article.errors[:title]).to include("can't be blank")
  end

  it 'is invalid without a text' do
    article.text = nil
    article.valid?
    expect(article.errors[:text]).to include("can't be blank")
  end

  it 'does not allow title less than 6 characters' do
    article.title = 'test'
    article.valid?
    expect(article.errors[:title]).to include('is too short (minimum is 6 characters)')
  end

  it 'does not allow text less than 6 characters' do
    article.text = 'test'
    article.valid?
    expect(article.errors[:text]).to include('is too short (minimum is 6 characters)')
  end

  describe 'Associations' do
    it { should belong_to(:author) }
    it { should have_many(:votes) }
    it { should have_many(:categories) }
  end
end
