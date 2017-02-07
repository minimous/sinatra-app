require 'rubygems'
require 'sinatra'
require './models/post'
require 'pry'

def initposts
	@allposts = Array.new
	sample_text = "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam."
	@post1 = Post.new("article","traveling","travel best adventure" ,"January 25,2016",
		"Nathalia Alexy", sample_text, 0)
	@allposts << @post1
	@post2 = Post.new("pic", "traveling", "standard image post" , "January 25,2016", 
		"Nathalia Alexy", sample_text*2, 0)
	@allposts << @post2
	@post3 = Post.new("article", "traveling", "travel best adventure", "January 24,2016",
		"Nathalia Alexy", sample_text*3, 0)
	@allposts << @post3
	@post4 = Post.new("quote", "traveling", "travel best adventure", "January 24,2016",
		"Nathalia Alexy", sample_text, 0)
	@allposts << @post4
	@post5 = Post.new("pic", "traveling", "standard image post", "January 23,2016",
		"Nathalia", sample_text, 0)
	@allposts << @post5
	@post6 = Post.new("article", "lifestyle", "without image post", "January 23,2016",
		"Nathalia", sample_text*3, comment: 0)
	@allposts << @post6
	@post7 = Post.new("link", "travel", "without image post", "January 22,2016",
		"Nathalia", sample_text, comment: 0)
	@allposts << @post7
	@post8 = Post.new("article", "traveling", "without image post", "January 22,2016",
		"Nathalia", sample_text*2, comment: 0)
	@allposts << @post8
	@post9 = Post.new("article", "traveling", "without image post", "January 21,2016",
		"Nathalia", sample_text*4, comment: 0)
	@allposts << @post9
	@allposts
end

get '/' do
	initposts
	@posts = @allposts
	erb :index
end

get '/index2' do
	erb :index2
end

get '/contact' do
	haml :contact2
end

get '/about' do
	erb :about
end

get '/index' do
	erb :index
end
