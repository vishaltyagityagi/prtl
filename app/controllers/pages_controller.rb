class PagesController < ApplicationController

  def services
  end

  def single_services
  end

  def blog_single
  end

  def protfolio
  end

  def protfolio_single
  end

  def testmonials
  end

  def ask_questions
  end

  def gallery
    @galleries = Gallery.all
  end

  def page
  end

end
