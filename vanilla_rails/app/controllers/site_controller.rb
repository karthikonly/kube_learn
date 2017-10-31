class SiteController < ApplicationController
  def index
    page_count = PageCount.find_or_create_by(id: 1)
    page_count.count += 1
    page_count.save!
    @postgres_count = page_count.count

    @random_count = rand.to_s[2..3]

    @redis_count = $redis.get('redis_count').to_i
    @redis_count += 1
    $redis.set('redis_count', @redis_count)
  end
end
