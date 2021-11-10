@follows.each do |follow|
  json.partial! 'api/follows/follow', follow: follow
end