require './test/test_helper'
require 'pry'

class HomepageTest < CapybaraTestCase
  def test_user_can_see_the_homepage
    visit '/'

    assert page.has_content?('Welcome!')
    assert_equal 200, page.status_code
  end

  def test_raises_an_error_if_page_doesnt_exist
    visit '/blog'

    assert page.has_content?('Page not found.')
    assert_equal 404, page.status_code
  end

  def test_about_me_has_info_about_me
    visit '/about'

    assert page.has_content?("Here's some stuff to know.")
    assert_equal 200, page.status_code
  end
end
