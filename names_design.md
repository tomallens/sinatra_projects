# {{ GET }} {{/names}} Route Design Recipe

_Copy this design recipe template to test-drive a Sinatra route._

## 1. Design the Route Signature

# Request:
GET /names

# Expected response (2OO OK):
Julia, Mary, Karim

## 2. Design the Response

The route might return different responses, depending on the result.

For example, a route for a specific blog post (by its ID) might return `200 OK` if the post exists, but `404 Not Found` if the post is not found in the database.

Your response might return plain text, JSON, or HTML code. 

_Replace the below with your own design. Think of all the different possible responses your route will return._

```html
Response when the post is found: 200 OK

<html>
 Julia, Mary, Karim
```

## 3. Write Examples

_Replace these with your own design._

```html
# Request:

GET /names?name_1=Julia&name_2=Mary&name_3=Karim

# Expected response:

Response for 200 OK
Julia, Mary, Karim
```

## 4. Encode as Tests Examples

```ruby
# EXAMPLE
# file: spec/integration/application_spec.rb

require "spec_helper"

describe Application do
  include Rack::Test::Methods

  let(:app) { Application.new }

  context "GET /names" do
    it 'returns 200 OK' do
      # Assuming the post with id 1 exists.
      response = get('/names?names=Julia,Mary,Karim')

      expect(response.status).to eq(200)
      expect(response.body).to eq('Julia, Mary, Karim')
    end
  end
end
```

## 5. Implement the Route

Write the route and web server code to implement the route behaviour.
