module ApplicationHelper
  def welcome_text
    str = "" #jika user telah login, tampilkan welcome textnya
    if current_user
      str =raw("<li> <a>")
      str += "Welcome, #{current_user.username} |"
      str += raw("</a></li>")
      str += raw("<li>")
      str += link_to "Logout", log_out_path
      str += raw("</li>")
    end
  
  end

  def link_show(link)
    link = "http://#{link}" if !link.include?("http://")
    link
  end

end
