require 'rails_helper'

RSpec.describe "When a user visits the vending machine index", type: :feature do
  scenario "they see a list of vending machine locations" do
    sam = Owner.create(name: "Sam's Snacks")
    sams_dons_mixed_drink = sam.machines.create(location: "Don's Mixed Drinks")
    snapbuns = sams_dons_mixed_drink.snacks.create(name: "Snap Buns", price: 1.33)
    hoghandles = sams_dons_mixed_drink.snacks.create(name: "Hog Handles", price: 1.55)


    visit machine_path(1)

    expect(page).to have_content("1.44")

    within "snack-object-#{snapbuns.id}"

    expect(page).to have_content("Snap Buns")
    expect(page).to have_content("1.33")

  end
end
