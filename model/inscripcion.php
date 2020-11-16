<?php
require_once 'connection.php';
require_once 'config.php';
// require_once 'participanteDAO.php';

// $addPart=new participantDAO;
// $addPart->inscripcio($participant);

try {
    $pdo->beginTransaction();



        //$sentencia1=$pdo->prepare($query);
        $dni=$_REQUEST['fdni'];
        $nom=$_REQUEST['fnom'];
        $primer=$_REQUEST['fprimer'];
        $segon=$_REQUEST['fsegon'];
        $email=$_REQUEST['femail'];
        $sexe=$_REQUEST['fsexe'];
        $data=$_REQUEST['fdata'];
        
    //calcular edad participante
    //crear una variable para el id del ultimo participante

    //no sale bien
    //$ultimo_id=$pdo->lastInsertId();

    //$query3="SELECT YEAR(CURDATE())-YEAR(`tbl_participant`.`fecha_naci`) + IF(DATE_FORMAT(CURDATE(),'%m-%d') > DATE_FORMAT(`tbl_participant`.`fecha_naci`,'%m-%d'), 0 , -1 ) AS `EDAD_ACTUAL` FROM `tbl_participant` WHERE `tbl_participant`.`id_participant`='$ultimo_id'";
    
    $query3="SELECT YEAR(CURDATE())-YEAR(`tbl_participant`.`fecha_naci`) + IF(DATE_FORMAT(CURDATE(),'%m-%d') > DATE_FORMAT(`tbl_participant`.`fecha_naci`,'%m-%d'), 0 , -1 ) AS `EDAD_ACTUAL` FROM `tbl_participant` WHERE `tbl_participant`.`id_participant`='1'";
    $sentencia3=$pdo->prepare($query3);
    $sentencia3->execute();
    $edad_part=$sentencia3->fetch();//$edad_part[0]

    // if($query3 >=6 and <=11){
    //     echo='alevin';
    // }

    //no hace esta mierda
    if($edad_part[0] >=18 && $sexe='home'){
        // echo $edad_part[0];
        echo "hombre";
    }else if($edad_part[0] >=18 && $sexe='dona'){
        echo "mmijer";
    }

    echo $edad_part[0];

    ///////////////////////////////////////////////


    //hacer que se rellene la tabla categoria con los datos que tocan
        $cat=3;
    /////////////////////////////////////////////////////////////////

    //no se añade si no ponemos el id_categoria
    $query="INSERT INTO `tbl_participant`(`id_participant`, `dni_part`, `nom_part`, `primer`, `segon`, `fecha_naci`, `email_part`, `sexe`, `id_categoria`)
     VALUES (NULL,?,?,?,?,?,?,?,?)";
    $sentencia1=$pdo->prepare($query);
    $sentencia1->bindParam(1,$dni);
    $sentencia1->bindParam(2,$nom);
    $sentencia1->bindParam(3,$primer);
    $sentencia1->bindParam(4,$segon);
    $sentencia1->bindParam(5,$data);
    $sentencia1->bindParam(6,$email);
    $sentencia1->bindParam(7,$sexe);
    $sentencia1->bindParam(8,$cat);


    $sentencia1->execute();
    $ultimo_id=$pdo->lastInsertId();

    //Hacer que añada a la tabla categoria los datos
    // $query2="INSERT INTO 'tbl_inscripcio' ('dorsal', 'id_participant', 'id_cursa') VALUES ('788','1','1')";
    // $sentencia2=$pdo->prepare($query2);
    // $sentencia2->execute();




    $pdo->commit(); //hace todas las sentencias
    //foreach ($variable as $key => $value) {
    //     echo $query3;
    // }
    

    //header('Location: ../view/inscripcion.html');


} catch (Exception $ex) {
    /* Reconocer un error y no hacer los cambios */
    $pdo->rollback();
    echo $ex->getMessage();
    echo 'error';
}