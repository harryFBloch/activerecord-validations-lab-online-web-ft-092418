class MyValidator < ActiveModel::Validator
  def validate(post)
    if post.title
    bait_array = ["Won't Believe","Secret","Top ","Guess"]
    unless bait_array.any? {|bait| post.title.include?(bait)}
      post.errors[:name] << 'name is not clickbaity'
    end
    else
      false
    end
  end
end
