# Web Scraper HTTP básico

using HTTP
using Gumbo

url = "https://julialang.org"
resp = HTTP.get(url)
html = String(resp.body)
parsed = parsehtml(html)

println("Título de la página:")
for node in parsed.root.children
    if node.tag == :head
        for child in node.children
            if child.tag == :title
                println(child.text)
            end
        end
    end
end
