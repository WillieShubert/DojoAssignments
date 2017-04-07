owner = Owner.new
owner.update(user_id: 1, blog_id:1)

# Have the third user own all of the blogs that were created.
Owner.all.update_all("user_id = 3")

# Have the first user create 3 posts for the blog with an id of 2.
Post.create(title:"Forsts are the Future", content:"This is the truth and it can't be denied", user_id: User.first.id, blog_id: Blog.find(2).id)
Post.create(title:"The soil in the Amazon is quick depleting", content:"Have you seen the light?", user_id: User.first.id, blog_id: Blog.find(2).id)
Post.create(title:"Forcing a Point", content:"The number of forst guardians is rising", user_id: User.first.id, blog_id: Blog.find(2).id)

#Have the second user create 5 posts for the last Blog.
Post.create(title:"Make my Mekong", content:"Everyday the Mekong flows", user_id: User.second.id, blog_id: Blog.last.id)
Post.create(title:"EIA in Process", content:"Public comment on environmental impact", user_id: User.second.id, blog_id: Blog.last.id)
Post.create(title:"Bangkok Floods!", content:"The river city gets saturated", user_id: User.second.id, blog_id: Blog.last.id)
Post.create(title:"Mining Myanmar!", content:"World Bank funds coal mine", user_id: User.second.id, blog_id: Blog.last.id)
Post.create(title:"Elephant Labor", content:"Timber trade employs elephants", user_id: User.second.id, blog_id: Blog.last.id)

# Have the 3rd user create several posts for different blogs.
Post.create(title:"Indonesian Spliff", content:"Come on and hit that", user_id: User.find(3).id, blog_id: Blog.find(4).id)
Post.create(title:"Mega Spliff", content:"Puff and pass it!", user_id: User.find(3).id, blog_id: Blog.find(2).id)
Post.create(title:"Spliff Mood", content:"Island groove, just me and you, ire mood", user_id: User.find(3).id, blog_id: Blog.find(5).id)
Post.create(title:"Spliff Mood", content:"Island groove, just me and you, ire mood", user_id: User.find(3).id, blog_id: Blog.find(2).id)

# Have the 3rd user create 2 messages for the first post created and 3 messages for the second post created
Message.create(author: User.find(3).first_name, message:"Island groove, just me and you, ire mood", post_id: Post.first.id)
Message.create(author: User.find(3).first_name, message:"Fafa Island is my tropical treasure so far away", post_id: Post.first.id)
Message.create(author: User.find(3).first_name, message:"Never before known mysteries solved!", post_id: Post.second.id)
Message.create(author: User.find(3).first_name, message:"Not on my watch!", post_id: Post.second.id)
Message.create(author: User.find(3).first_name, message:"Oops I don't own a watch!", post_id: Post.second.id)

# Have the 4th user create 3 messages for the last post you created.
Message.create(author: User.find(4).first_name, message:"This is time for batta ram sound!", post_id: Post.last.id)
Message.create(author: User.find(4).first_name, message:"Kick it! Rasta boombaklatt!", post_id: Post.last.id)
Message.create(author: User.find(4).first_name, message:"Remember what Marcus Garvey say!", post_id: Post.last.id)

# Change the owner of the 2nd post to the last user.
post = Post.find(2)
post.user_id = User.last.id
post.save

# Change the 2nd post's content to be something else.
post = Post.find(2)
post.content = "I am an updated content"
post.save

#Retrieve all blogs owned by the 3rd user
User.third.blogs

# Retrieve all posts that were created by the 3rd user
User.third.posts

# Retrieve all messages left by the 3rd user
User.third.messages.where("message.author=?",User.first_name)

# Retrieve all posts associated with the blog id 5 as well as who left these posts.
Post.joins(:user, :blog).where("blogs.id = ?", 5).select("*")

# Retrieve all messages associated with the blog id 5 along with all the user information of those who left the messages
Message.joins(:user).where(post: Blog.find(5).posts).select("*")

# 19. Grab all user information of those that own the first blog
Blog.first.users
