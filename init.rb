Redmine::Plugin.register :redmine_checkbox_wiki do
  
  Redmine::WikiFormatting::Macros.macro :checkbox, :desc => 'Simple plugin that provides basic checkbox wiki macro format
Adds the following macros

    `{{checkbox()}}`: an open checkbox
`{{checkbox(1)}}`: a true checkbox
`{{checkbox(0)}}`: a false/error checkbox
`{{checkbox(!)}}`: an exclamation point
`{{checkbox(?)}}`: a question mark' do |obj, args|
    if args.nil? || args.empty? || args[0].strip.empty?
      image_tag("unchecked.png", :plugin => :redmine_checkbox_wiki)
    elsif (args[0].strip == '!')
      image_tag("exclamation.png")
    elsif (args[0].strip == '?')
      image_tag("help.png")
    elsif ((args[0].strip.casecmp('true') != 0) && (args[0].strip != '1'))
      image_tag("false.png")
    else
      image_tag("true.png")
    end
  end
  
    
  name 'Redmine Checkbox Wiki plugin'
  author 'David S Anderson'
  description 'Wiki macro providing basic checkbox tagging'
  version '0.0.1'
  url 'https://github.com/ande3577/redmine_checkbox_wiki'
  author_url 'https://github.com/ande3577'
end
