require 'opal'
require 'opal-jquery'
require 'constants'

def DefiniteArticlePractice()
  aGender, aCase = Constants.genders.sample, Constants.cases.sample
  expectedArticle = Constants.definiteArticle[aGender][aCase]
  Element['#article-gender'].text = aGender
  Element['#article-case'  ].text = aCase
  expectedArticle
end

expectedArticle = DefiniteArticlePractice()
right = 0
wrong = 0

Element['#article-input'].on(:input) do
  if Element['#article-input'].value.length >= 3
    if Element['#article-input'].value == expectedArticle
      right += 1
    else
      wrong += 1
    end
    Element['#article-input'].value = ''
    expectedArticle = DefiniteArticlePractice()

    Element['#article-right-count'].text = right
    Element['#article-wrong-count'].text = wrong
  end
end

