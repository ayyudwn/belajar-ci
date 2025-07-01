<?php

namespace App\Database\Seeds;

use CodeIgniter\Database\Seeder;

class DiskonSeeder extends Seeder
{
    public function run()
    {
        $faker = \Faker\Factory::create('id_ID');
        $today = new \DateTime('2025-07-01'); // sesuai soal
        $data = [];

        for ($i = 0; $i < 10; $i++) {
            $tanggal = clone $today;
            $tanggal->modify("+$i day");

            $data[] = [
                'tanggal'    => $tanggal->format('Y-m-d'),
                'nominal'    => $faker->numberBetween(20000, 50000),
                'created_at' => date('Y-m-d H:i:s'),
                'updated_at' => date('Y-m-d H:i:s'),
            ];
        }

        $this->db->table('diskon')->insertBatch($data);
    }
}
