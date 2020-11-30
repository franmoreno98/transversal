<?php
    require_once 'connection.php';

    class participante{
        private $id_part;
        private $dni;
        private $nombre;
        private $primer;
        private $segon;
        private $email;
        private $sexe;
        private $data;
        
   
    
        public function __construct($dni,$nombre,$primer,$segon,$email,$sexe,$data){
            $this->dni=$dni;
            $this->nombre=$nombre;
            $this->primer=$primer;
            $this->segon=$segon;
            $this->email=$email;
            $this->sexe=$data;
        }


        /**
         * Get the value of id_part
         */ 
        public function getId_part()
        {
                return $this->id_part;
        }

        /**
         * Set the value of id_part
         *
         * @return  self
         */ 
        public function setId_part($id_part)
        {
                $this->id_part = $id_part;

                return $this;
        }

        /**
         * Get the value of dni
         */ 
        public function getDni()
        {
                return $this->dni;
        }

        /**
         * Set the value of dni
         *
         * @return  self
         */ 
        public function setDni($dni)
        {
                $this->dni = $dni;

                return $this;
        }

        /**
         * Get the value of nombre
         */ 
        public function getNombre()
        {
                return $this->nombre;
        }

        /**
         * Set the value of nombre
         *
         * @return  self
         */ 
        public function setNombre($nombre)
        {
                $this->nombre = $nombre;

                return $this;
        }

        /**
         * Get the value of primer
         */ 
        public function getPrimer()
        {
                return $this->primer;
        }

        /**
         * Set the value of primer
         *
         * @return  self
         */ 
        public function setPrimer($primer)
        {
                $this->primer = $primer;

                return $this;
        }

        /**
         * Get the value of segon
         */ 
        public function getSegon()
        {
                return $this->segon;
        }

        /**
         * Set the value of segon
         *
         * @return  self
         */ 
        public function setSegon($segon)
        {
                $this->segon = $segon;

                return $this;
        }

        /**
         * Get the value of email
         */ 
        public function getEmail()
        {
                return $this->email;
        }

        /**
         * Set the value of email
         *
         * @return  self
         */ 
        public function setEmail($email)
        {
                $this->email = $email;

                return $this;
        }

        /**
         * Get the value of sexe
         */ 
        public function getSexe()
        {
                return $this->sexe;
        }

        /**
         * Set the value of sexe
         *
         * @return  self
         */ 
        public function setSexe($sexe)
        {
                $this->sexe = $sexe;

                return $this;
        }

        /**
         * Get the value of data
         */ 
        public function getData()
        {
                return $this->data;
        }

        /**
         * Set the value of data
         *
         * @return  self
         */ 
        public function setData($data)
        {
                $this->data = $data;

                return $this;
        }
    }