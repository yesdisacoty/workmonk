class PagesController < ApplicationController
    def home
        @free_plan = Plan.find(1)
        @basic_plan = Plan.find(3)
        @advanced_plan = Plan.find(4)
    end
end