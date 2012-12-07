module Jekyll
  require 'csv'

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
      new_content = '<table class="table table-bordered table-striped table-condensed">'
      new_content += "<thead><tr><th>Time</th><th>Entry</th></tr></thead>"
      new_content += "<tbody>"
      # Loop through each line in file
      # first part is time stamp, second part is entry
      id = 1
      CSV.parse(content, :col_sep => "\t") do |row|
        time = DateTime.parse(row[0])
        time = time.strftime("%H:%M")
        new_content += "<tr id=\"m#{id}\"><td><a href=\"\#m#{id}\">#{time}</a></td><td>#{row[1]}</td></tr>"
        id += 1
      end

      new_content += "</tbody></table>"
      new_content
    end
  end
end

