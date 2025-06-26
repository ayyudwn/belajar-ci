<?php

namespace App\Database\Seeds;

use CodeIgniter\Database\Seeder;

class ProductSeeder extends Seeder
{
    public function run()
    {
        $data = [
            ['nama' => 'Raket Padel PR Hybrid Carbon', 'harga' => 110000, 'jumlah' => 5, 'foto' => 'RaketPadelPRHybridCarbon.png', 'created_at' => '2025-06-11 14:27:35'],
            ['nama' => 'Sepatu Lari Pria', 'harga' => 120000, 'jumlah' => 7, 'foto' => 'SepatuLariPriaCushion500.png', 'created_at' => '2025-06-11 14:27:35'],
            ['nama' => 'Tenda Camping Arpenaz', 'harga' => 800000, 'jumlah' => 5, 'foto' => 'TendaCampingArpenaz.png', 'created_at' => '2025-06-11 14:27:35'],
            ['nama' => 'Tas Ransel Hiking', 'harga' => 90000, 'jumlah' => 8, 'foto' => 'TasRanselHiking.png', 'created_at' => '2025-06-11 14:27:35'],
        ];

        $this->db->table('product')->insertBatch($data);
    }
}