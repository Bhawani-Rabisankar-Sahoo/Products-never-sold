select category_id
from facebook_product_categories
where category_id not in (select facebook_products.product_category from facebook_sales
left  join  facebook_products
on facebook_products.product_id = facebook_sales.product_id)