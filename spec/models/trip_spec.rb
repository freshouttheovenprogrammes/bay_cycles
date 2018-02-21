require 'rails_helper'

describe Trip, type: :model do
  it { should validate_presence_of(:duration) }
  it { should validate_presence_of(:start_date) }
  it { should validate_presence_of(:end_date) }
  it { should validate_presence_of(:bike_id) }
  it { should validate_presence_of(:subscription_type) }
  it { should validate_presence_of(:zip_code) }

  describe "relationships" do
    it { is_expected.to belong_to(:start_station) }
    it { is_expected.to belong_to(:end_station) }
  end

  describe "class methods" do
    before :all do
      @station_1 = create(:station)
      @station_2 = create(:station)
      @station_3 = create(:station)
      @trip_1 = create(:trip, start_station_id: @station_1.id, end_station_id: @station_2.id)
      @trip_2 = create(:trip, start_station_id: @station_1.id, end_station_id: @station_3.id)
      @trip_3 = create(:trip, start_station_id: @station_2.id, end_station_id: @station_3.id)
    end

    describe ".average_duration" do
      it "returns average duration of all trips" do

        expect(Trip.average_duration).to eq(66)
>>>>>>> Create spec for trips class methods. Modify Trip Factory Bot to sequence.
      end
    end

    describe ".shortest_ride" do
      it "returns average duration of all trips" do

        expect(Trip.shortest_ride).to eq(65)
      end
    end

    describe ".longest_ride" do
      it "returns average duration of all trips" do

        expect(Trip.longest_ride).to eq(67)
      end
    end

    describe ".start_station_ordered_by_rides" do
      it "returns station with the most rides as a starting place" do

        expect(Trip.start_station_ordered_by_rides.first.start_station_id).to eq(@station_1.id)
      end
    end

    describe ".end_station_ordered_by_rides" do
      it "returns station with the most rides as an ending place" do

        expect(Trip.end_station_ordered_by_rides.first.end_station_id).to eq(@station_3.id)
      end
    end
  end
end
