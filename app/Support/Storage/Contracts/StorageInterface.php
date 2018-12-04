<?php

    namespace Cart\Support\Storage\Contracts;

    interface StorageInterface 
    {
        public function get($index);
        public function set($index,$value);
        public function all();
        public function exists($index);
        public function t_UNSET($index);
        public function clear();

    }
    