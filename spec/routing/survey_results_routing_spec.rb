require "rails_helper"

RSpec.describe SurveyResultsController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/survey_results").to route_to("survey_results#index")
    end

    it "routes to #new" do
      expect(get: "/survey_results/new").to route_to("survey_results#new")
    end

    it "routes to #show" do
      expect(get: "/survey_results/1").to route_to("survey_results#show", id: "1")
    end

    it "routes to #edit" do
      expect(get: "/survey_results/1/edit").to route_to("survey_results#edit", id: "1")
    end


    it "routes to #create" do
      expect(post: "/survey_results").to route_to("survey_results#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/survey_results/1").to route_to("survey_results#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/survey_results/1").to route_to("survey_results#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/survey_results/1").to route_to("survey_results#destroy", id: "1")
    end
  end
end
