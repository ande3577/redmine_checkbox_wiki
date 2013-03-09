Redmine::Plugin.register :redmine_checkbox_wiki do
  
  Redmine::WikiFormatting::Macros.macro :checkbox, :desc => 'An open or closed checkbox' do |obj, args|
    if args.nil? || args.empty?
      image_tag("unchecked.png", :plugin => :redmine_checkbox_wiki)
    elsif ((args[0].casecmp('true') != 0) && (args[0] != '1'))
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
