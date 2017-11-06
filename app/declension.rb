require 'opal'
require 'opal-jquery'
require 'constants'

def DefiniteArticlePractice()
  aGender, aCase = Constants.genders.sample, Constants.cases.sample
  expectedArticle = Constants.definiteArticle[aGender][aCase]
  Element['#article-gender'].text(aGender)
  Element['#article-case'  ].text(aCase)
  expectedArticle
end

expectedArticle = DefiniteArticlePractice()

Element['#article-input'].on(:input) do
  if Element['#article-input'].value == expectedArticle
    Element['#article-input'].value = ''
    expectedArticle = DefiniteArticlePractice()
  end
end

