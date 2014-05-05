# update the methods below to make the test pass.

class ImageFetcher

  def initialize(data)
    @data = data
  end

  def count_children
    @data["data"]["children"].count
  end

  def first_child
    @data["data"]["children"][0]["data"]
  end

  def all_images
    image_array = []
    @data["data"]["children"].each do |hash|
      image_array << hash["data"]["url"]
    end
    image_array
  end

  # fetch only the images that begin with `http://i.imgur.com`
  def only_imgur_images
    imgur_array = []
    @data["data"]["children"].each do |hash|
      if hash["data"]["url"] =~ /http:\/\/i.imgur.com/
        imgur_array << hash["data"]["url"]
      end
    end
    imgur_array
  end
end
