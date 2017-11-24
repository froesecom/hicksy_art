# Todos

- friendly_id
- acts_as_list
- 404 page
- browser sniffing
- transactional emails
- Authentication
- Seed migration
- tests

Structure

Painting 
name:string
slug:string
price:integer
details:text
position:integer
featured:boolean
image:attachment

PaintingCategory (Series)
name:string
slug:string
overview:text
position:integer

PaintingPaintingCategory
painting:references
painting_category:references
position:integer

Enquiry
name:string
email:string
message:text

GenericPage
name:string
slug:string
content:text
banner:image
