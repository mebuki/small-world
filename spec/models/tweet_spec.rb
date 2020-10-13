require 'rails_helper'

RSpec.describe Tweet, type: :model do
  before do
    @tweet = FactoryBot.build(:tweet)
  end

  describe "ツイート作成" do
    context "ツイート作成がうまくいくとき" do
      it "すべてが入力されているとき" do
        expect(@tweet).to be_valid
      end
    end

    context "ツイート作成がうまくいかないとき" do
      it "imageが空のとき" do
        @tweet.image = nil
        @tweet.valid?
        expect(@tweet.errors.full_messages).to include("Image can't be blank")
      end
      it "titleが空のとき" do
        @tweet.title = nil
        @tweet.valid?
        expect(@tweet.errors.full_messages).to include("Title can't be blank")
      end
      it "titleが10文字以上のとき" do
        @tweet.title = "aaaaaaaaaaaa"
        @tweet.valid?
        expect(@tweet.errors.full_messages).to include("Title is too long (maximum is 10 characters)")
      end
      it "textが空のとき" do
        @tweet.text = nil
        @tweet.valid?
        expect(@tweet.errors.full_messages).to include("Text can't be blank")
      end
    end
  end
end