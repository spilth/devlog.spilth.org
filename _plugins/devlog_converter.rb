module Jekyll
  require 'csv'
  require 'rdiscount'

  class DevlogConverter < Converter
    safe true

    priority :low

    def matches(ext)
      ext =~ /devlog/i
    end

    def output_ext(ext)
      ".html"
    end

    def convert(content)
      inside_table = false
      new_content = ""

      id = 1
      CSV.parse(content, :col_sep => "\t") do |row|
        time = DateTime.parse(row[0])
        time = time.strftime("%H:%M")
        entry = row[1]
        entry_html = RDiscount.new(entry).to_html
        if entry.start_with?('#')
          if inside_table
            new_content += "</table>"
            inside_table = false
          end

          new_content += "<span id=\"m#{id}\">" + entry_html + "</span>"

        else
          if !inside_table
            inside_table = true
            new_content += '<table class="table table-bordered table-striped">'
            new_content += "<thead><tr><th>Time</th><th>Entry</th></tr></thead>"
            new_content += "<tbody>"
          end
          
          new_content += "<tr id=\"m#{id}\"><td><a href=\"\#m#{id}\">#{time}</a></td><td>#{entry_html}</td></tr>"

        end

        id += 1
      end

      if inside_table
        new_content += "</tbody></table>"
      end

      new_content
    end
  end
end

