json.array!(@kpops) do |kpop|
  json.extract! kpop, :group, :leader, :birth, :member, :famous, :exist
  json.url kpop_url(kpop, format: :json)
end
