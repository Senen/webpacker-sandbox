# frozen_string_literal: true

require 'rails_helper'

describe 'Vue::ListItems' do

  describe "Index" do
    let!(:list_item) { create(:list_item) }

    scenario 'Should show existing list items', :js do
      visit vue_list_items_path

      title = list_item.title.size >= 30 ? list_item.title[0..28] : list_item.title
      expect(page).to have_text(title)
    end

    scenario 'Should go to new list item page when click new button', :js do
      visit vue_list_items_path

      click_on "New List Item"

      expect(page).to have_selector("h1", text: "New List Item")
    end

    scenario 'Should go to list item show page when click show button', :js do
      visit vue_list_items_path

      click_on "Show"

      expect(page).to have_text(list_item.title)
    end

    scenario 'Should go to list item edit page when click edit button', :js do
      visit vue_list_items_path

      click_on "Edit"

      expect(page).to have_selector("h1", text: "Editing List Item")
    end

    scenario 'Should show list items actions', :js do
      visit vue_list_items_path

      expect(page).to have_button('Show')
      expect(page).to have_button('Edit')
      expect(page).to have_link('Destroy')
    end

    describe "Pagination" do

      scenario 'Should show pagination component successfully initialized', :js do
        create_list(:list_item, 10)
        visit vue_list_items_path

        expect(page).to have_selector('.pagination')
        expect(page).not_to have_link('‹')
        expect(page).not_to have_link('«')
        expect(page).to have_link('1')
        expect(page).to have_link('2')
        expect(page).to have_link('›')
        expect(page).to have_link('»')
      end

      scenario 'Should show pagination component at given page', :js do
        create_list(:list_item, 10)
        visit vue_list_items_path(page: 2)

        expect(page).to have_selector('.pagination')
        expect(page).to have_link('‹')
        expect(page).to have_link('«')
        expect(page).to have_link('1')
        expect(page).to have_link('2')
        expect(page).not_to have_link('›')
        expect(page).not_to have_link('»')
      end

      scenario 'Should show next page records after page change', :js do
        create_list(:list_item, 9)
        last_item = create(:list_item, position: 99)
        visit vue_list_items_path

        title = last_item.title.size >= 30 ? last_item.title[0..28] : last_item.title
        expect(page).not_to have_text(title)
        click_link "2"
        expect(page).to have_text(title)
      end

    end

    describe "Search" do

      let!(:list_item2) { create(:list_item, title: "My title") }

      scenario 'Should show only list items containing given term', :js do
        visit vue_list_items_path

        fill_in :searchField, with: "My title"
        # Force blur to launch AJAX REQUEST
        find('body').click


        expect(page).not_to have_text(list_item.title)
        expect(page).to have_text("My title")
      end
    end
  end

  describe "Show" do
    let!(:list_item) { create(:list_item) }

    scenario "Should show all list item information" do
      visit vue_list_item_path(list_item)

      expect(page).to have_content list_item.title
      expect(page).to have_content list_item.description
      expect(page).to have_content list_item.done_at
    end
  end

  describe "Create" do
    scenario "Should show successful creation notice", :js do
      visit new_vue_list_item_path

      fill_in :list_item_title, with: 'Awesome title'
      fill_in :list_item_description, with: 'Awesome description'
      within ".actions" do
        find('input[type=submit]').click
      end

      expect(page).to have_content 'List item was successfully created.'
    end
  end

  describe "Update" do
    let!(:list_item) { create(:list_item) }
    
    scenario "Should show successful update notice", :js do
      visit edit_vue_list_item_path(list_item)

      fill_in :list_item_title, with: 'Another awesome title'
      fill_in :list_item_description, with: 'Another awesome description'
      within ".actions" do
        find('input[type=submit]').click
      end

      expect(page).to have_content 'List item was successfully updated.'
    end
  end

  describe "Destroy" do
    let!(:list_item) { create(:list_item) }

    scenario "Should show successful destroy notice", :js do
      visit vue_list_items_path

      page.evaluate_script('window.confirm = function() { return true; }')
      click_on 'Destroy'

      expect(page).to have_content 'List item was successfully destroyed.'
    end
  end

end