require 'rails_helper'

RSpec.describe Event, type: :model do
  before do
    @event = FactoryBot.build(:event)
  end

  describe "イベント作成" do
    context "イベント作成がうまくいくとき" do
      it "すべてが入力されているとき" do
        expect(@event).to be_valid
      end
    end

    context "イベント作成がうまくいかないとき" do
      it "imageが空のとき" do
        @event.image = nil
        @event.valid?
        expect(@event.errors.full_messages).to include("Image can't be blank")
      end
      it "nameが空のとき" do
        @event.name = nil
        @event.valid?
        expect(@event.errors.full_messages).to include("Name can't be blank")
      end
      it "purpose_idが0のとき" do
        @event.purpose_id = 0
        @event.valid?
        expect(@event.errors.full_messages).to include("Purpose must be other than 0")
      end
      it "event_dateが空のとき" do
        @event.event_date = nil
        @event.valid?
        expect(@event.errors.full_messages).to include("Event date can't be blank")
      end
      it "event_timeが空のとき" do
        @event.event_time = nil
        @event.valid?
        expect(@event.errors.full_messages).to include("Event time can't be blank")
      end
      it "placeが空のとき" do
        @event.place = nil
        @event.valid?
        expect(@event.errors.full_messages).to include("Place can't be blank")
      end
      it "infoが空のとき" do
        @event.info = nil
        @event.valid?
        expect(@event.errors.full_messages).to include("Info can't be blank")
      end
    end
  end
end