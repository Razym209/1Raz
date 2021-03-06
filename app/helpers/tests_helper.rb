module TestsHelper
  def test_header(test)
    test.persisted? ? t('.edit_test') : t('.new_test')
  end

  def test_authors(authors)
    authors.map do |author|
      tag.p "#{author.full_name}"
    end.join.html_safe
  end
end


