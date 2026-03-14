// OP1: insertMany() — insert all 3 documents from sample_documents.json

db.products.insertMany([
{
  "product_name": "Wireless Headphones",
  "category": "Electronics",
  "price": 3200,
  "brand": "Sony",
  "specifications": {
    "battery_life": "30 hours",
    "noise_cancellation": true,
    "bluetooth_version": "5.2"
  },
  "available_colors": ["Black", "Blue", "Silver"],
  "ratings": {
    "average": 4.5,
    "reviews_count": 320
  }
},
{
  "product_name": "Ergonomic Office Chair",
  "category": "Furniture",
  "price": 8500,
  "material": "Mesh and Steel",
  "dimensions": {
    "height": "120 cm",
    "width": "60 cm",
    "depth": "65 cm"
  },
  "features": ["Adjustable Height", "Lumbar Support", "360° Rotation"],
  "ratings": {
    "average": 4.2,
    "reviews_count": 150
  }
},
{
  "product_name": "Premium Notebook Pack",
  "category": "Stationery",
  "price": 120,
  "brand": "Classmate",
  "pack_details": {
    "notebooks_in_pack": 5,
    "pages_per_notebook": 200
  },
  "paper_quality": "High GSM",
  "available_sizes": ["A4", "A5"],
  "ratings": {
    "average": 4.7,
    "reviews_count": 90
  }
}
])

// OP2: find() — retrieve all Electronics products with price > 20000

db.products.find({
  category: "Electronics",
  price: { $gt: 20000 }
})

// OP3: find() — retrieve all Groceries expiring before 2025-01-01

db.products.find({
  category: "Groceries",
  expiry_date: { $lt: new Date("2025-01-01") }
})

// OP4: updateOne() — add a "discount_percent" field to a specific product

db.products.updateOne(
  { product_name: "Wireless Headphones" },
  { $set: { discount_percent: 10 } }
)

// OP5: createIndex() — create an index on category field

db.products.createIndex({ category: 1 })
