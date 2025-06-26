<?php

namespace App\Database\Seeds;

use CodeIgniter\Database\Seeder;

class ProdukCategorySeeder extends Seeder
{
    public function run()
    {
        $data = [
            ['name' => 'Peralatan Olah Raga', 'slug' => 'peralatan-olah-raga', 'description' => 'Menyediakan perlatan untuk olahraga', 'is_active' => 1, 'created_at' => '2025-06-26 04:48:44', 'updated_at' => '2025-06-26 04:48:44'],
            ['name' => 'Peralatan Berkemah', 'slug' => 'peralatan-berkemah', 'description' => 'Menyediakan perlatan untuk berkemah', 'is_active' => 1, 'created_at' => '2025-06-26 04:49:53', 'updated_at' => '2025-06-26 04:49:53'],
        ];

        $this->db->table('product_categories')->insertBatch($data);
    }
}