require 'rails_helper'

RSpec.describe Game, type: :model do
  let(:user) { User.create(
    email: 'test@example.com',
    password: 'password'
    )
  }


  it "should validate game title" do
    game = Game.create(
      title: nil,
      rating: 9.6,
      platform: 'Windows PC, Mac OS',
      genre: 'Multiplayer Online Battle Arena (MOBA)',
      developer: 'Riot Games',
      image: 'https://www.leagueoflegends.com/static/twitter-fafabb053dd48811ea554fe63188cc1a.jpg',
      summary: "League of Legends is one of the world's most popular video games, developed by Riot Games. It features a team-based competitive game mode based on strategy and outplaying opponents. Players work with their team to break the enemy Nexus before the enemy team breaks theirs.", 
      release_date: '2009-10-27',
      user_id: user.id
    )
    expect(game.errors[:title]).to_not be_empty
  end

  it "should validate game rating" do
    game = Game.create(
      title: 'League of Legends',
      rating: nil,
      platform: 'Windows PC, Mac OS',
      genre: 'Multiplayer Online Battle Arena (MOBA)',
      developer: 'Riot Games',
      image: 'https://www.leagueoflegends.com/static/twitter-fafabb053dd48811ea554fe63188cc1a.jpg',
      summary: "League of Legends is one of the world's most popular video games, developed by Riot Games. It features a team-based competitive game mode based on strategy and outplaying opponents. Players work with their team to break the enemy Nexus before the enemy team breaks theirs.", 
      release_date: '2009-10-27',
      user_id: user.id
    )
    expect(game.errors[:rating]).to_not be_empty
  end

  it "should validate game platform" do
    game = Game.create(
      title: 'League of Legends',
      rating: 9.6,
      platform: nil,
      genre: 'Multiplayer Online Battle Arena (MOBA)',
      developer: 'Riot Games',
      image: 'https://www.leagueoflegends.com/static/twitter-fafabb053dd48811ea554fe63188cc1a.jpg',
      summary: "League of Legends is one of the world's most popular video games, developed by Riot Games. It features a team-based competitive game mode based on strategy and outplaying opponents. Players work with their team to break the enemy Nexus before the enemy team breaks theirs.", 
      release_date: '2009-10-27',
      user_id: user.id
    )
    expect(game.errors[:platform]).to_not be_empty
  end

  it "should validate game genre" do
    game = Game.create(
      title: 'League of Legends',
      rating: 9.6,
      platform: 'Windows PC, Mac OS',
      genre: nil,
      developer: 'Riot Games',
      image: 'https://www.leagueoflegends.com/static/twitter-fafabb053dd48811ea554fe63188cc1a.jpg',
      summary: "League of Legends is one of the world's most popular video games, developed by Riot Games. It features a team-based competitive game mode based on strategy and outplaying opponents. Players work with their team to break the enemy Nexus before the enemy team breaks theirs.", 
      release_date: '2009-10-27',
      user_id: user.id
    )
    expect(game.errors[:genre]).to_not be_empty
  end

  it "should validate game developer" do
    game = Game.create(
      title: 'League of Legends',
      rating: 9.6,
      platform: 'Windows PC, Mac OS',
      genre: 'Multiplayer Online Battle Arena (MOBA)',
      developer: nil,
      image: 'https://www.leagueoflegends.com/static/twitter-fafabb053dd48811ea554fe63188cc1a.jpg',
      summary: "League of Legends is one of the world's most popular video games, developed by Riot Games. It features a team-based competitive game mode based on strategy and outplaying opponents. Players work with their team to break the enemy Nexus before the enemy team breaks theirs.", 
      release_date: '2009-10-27',
      user_id: user.id
    )
    expect(game.errors[:developer]).to_not be_empty
  end

  it "should validate game image" do
    game = Game.create(
      title: 'League of Legends',
      rating: 9.6,
      platform: 'Windows PC, Mac OS',
      genre: 'Multiplayer Online Battle Arena (MOBA)',
      developer: 'nil',
      image: nil,
      summary: "League of Legends is one of the world's most popular video games, developed by Riot Games. It features a team-based competitive game mode based on strategy and outplaying opponents. Players work with their team to break the enemy Nexus before the enemy team breaks theirs.", 
      release_date: '2009-10-27',
      user_id: user.id
    )
    expect(game.errors[:image]).to_not be_empty
  end

  it "should validate game summary" do
    game = Game.create(
      title: 'League of Legends',
      rating: 9.6,
      platform: 'Windows PC, Mac OS',
      genre: 'Multiplayer Online Battle Arena (MOBA)',
      developer: 'nil',
      image: 'https://www.leagueoflegends.com/static/twitter-fafabb053dd48811ea554fe63188cc1a.jpg',
      summary: nil, 
      release_date: '2009-10-27',
      user_id: user.id
    )
    expect(game.errors[:summary]).to_not be_empty
  end

  it "should validate game release_date" do
    game = Game.create(
      title: 'League of Legends',
      rating: 9.6,
      platform: 'Windows PC, Mac OS',
      genre: 'Multiplayer Online Battle Arena (MOBA)',
      developer: 'nil',
      image: 'https://www.leagueoflegends.com/static/twitter-fafabb053dd48811ea554fe63188cc1a.jpg',
      summary: "League of Legends is one of the world's most popular video games, developed by Riot Games. It features a team-based competitive game mode based on strategy and outplaying opponents. Players work with their team to break the enemy Nexus before the enemy team breaks theirs.", 
      release_date: nil,
      user_id: user.id
    )
    expect(game.errors[:release_date]).to_not be_empty
  end

  it "should validate user_id" do
    game = Game.create(
      title: 'League of Legends',
      rating: 9.6,
      platform: 'Windows PC, Mac OS',
      genre: 'Multiplayer Online Battle Arena (MOBA)',
      developer: 'nil',
      image: 'https://www.leagueoflegends.com/static/twitter-fafabb053dd48811ea554fe63188cc1a.jpg',
      summary: "League of Legends is one of the world's most popular video games, developed by Riot Games. It features a team-based competitive game mode based on strategy and outplaying opponents. Players work with their team to break the enemy Nexus before the enemy team breaks theirs.", 
      release_date: '2009-10-27',
      user_id: nil
    )
    expect(game.errors[:user_id]).to_not be_empty
  end

end
