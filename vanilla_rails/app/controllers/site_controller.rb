class SiteController < ApplicationController
  def index
    # page_count = PageCount.find_or_create_by(id: 1)
    # page_count.count += 1
    # page_count.save!
    # @count = page_count.count
    @count = rand.to_s[2..3]
  end
end
