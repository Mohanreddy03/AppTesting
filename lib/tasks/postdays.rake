#rake db:postdays

namespace :db do 
  desc "Post Days count"
  task :postdays => :environment do
     Post.postdays
  end
end
