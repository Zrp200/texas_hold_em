namespace 'silent' do
    task :update do
        `git pull --quiet`
        `git push --quiet`
    end
end
task :spec => ['silent:update'] do
    puts `rspec spec/lib/texas_hold_em.rb`
end
