# README

My Comps

Users can search an address and get a list of comparable properties from Zillow.
  - List includes link to property on Zillow, address, photo, last sold price, last sold date, bedrooms, bathrooms, lot size.
  - Map is returned with comps pinned.

Users can save a searched address to easily perform the search again in the future.

Routes:
  - Home page has sign-in option and search
  - Signed-in users go back to home page to search and get list of saved searches
  - Search returns searched property and details, plus map and list of comps with details. Signed-in users get the option to save search and give it a name ("Home").
  - Clicking on a comp brings up more detailed view. User can click through to open in Zillow in new tab.
  - Delete a saved search
  - Update a saved search

Models:

  Search
  - Name
  - Address
