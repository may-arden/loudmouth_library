require "test_helper"

class ArtifactsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @artifact = artifacts(:one)
  end

  test "should get index" do
    get artifacts_url, as: :json
    assert_response :success
  end

  test "should create artifact" do
    assert_difference('Artifact.count') do
      post artifacts_url, params: { artifact: { category_id: @artifact.category_id, image_src: @artifact.image_src, keywords: @artifact.keywords, location: @artifact.location, manufacturer: @artifact.manufacturer, name: @artifact.name, sku: @artifact.sku } }, as: :json
    end

    assert_response 201
  end

  test "should show artifact" do
    get artifact_url(@artifact), as: :json
    assert_response :success
  end

  test "should update artifact" do
    patch artifact_url(@artifact), params: { artifact: { category_id: @artifact.category_id, image_src: @artifact.image_src, keywords: @artifact.keywords, location: @artifact.location, manufacturer: @artifact.manufacturer, name: @artifact.name, sku: @artifact.sku } }, as: :json
    assert_response 200
  end

  test "should destroy artifact" do
    assert_difference('Artifact.count', -1) do
      delete artifact_url(@artifact), as: :json
    end

    assert_response 204
  end
end
