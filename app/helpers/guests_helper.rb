module GuestsHelper
  def guest_status(guest)
    status = ""
    class_name = "badge "
    if guest.going?
      status = "Going"
      class_name += "badge-success"
    elsif guest.not_going?
      status = "Not Going"
      class_name += "badge-danger"
    end

    content_tag :span, status, class: class_name
  end
end
