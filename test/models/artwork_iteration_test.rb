require 'test_helper'

class ArtworkIterationTest < ActiveSupport::TestCase
  test "should create an artwork iteration with project" do
    @artwork_iteration = ArtworkIteration.create
    assert @artwork_iteration.project
  end

  test "should create an artwork iteration with an image file, in a project" do
    @artwork_iteration = ArtworkIteration.create
    @artwork_iteration.image = sample_file
    assert true
  end

end
