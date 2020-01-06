class Spinach::Features::ASecondGetRequestReturns200 < Spinach::FeatureSteps
  step 'that I make a GET request to /images/new_content.jpg again' do
    @second_get_response = Requests.get("/images/new_content.jpg")
    puts("SECOND GET: #{@second_get_response}")
  end

  step 'my response should have status code 200' do
    expect(@second_get_response.status_code).to eq(200)
  end
end
