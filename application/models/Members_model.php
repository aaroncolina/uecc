<?php

class Members_model extends CI_Model {

    public function __construct()
    {
            parent::__construct();
            // Your own constructor code
    }

    /*--------------------------------------------------------------------------*/  
    /* Get functions */
    function get_member_list(){
        $query = 'SELECT
                        *
                    FROM 
                        m_members
                    WHERE 
                        enabled = "Y"';
        $result = fetch_rows($query);
        return $result;
    }


    /* Get functions [ End ] */
    /*--------------------------------------------------------------------------*/  
    /* Set functions */



    /* Set functions [ End ] */
    /*--------------------------------------------------------------------------*/
    /* Checker functions */



    /* Checker functions [ End ] */
    /*--------------------------------------------------------------------------*/
    /* Insert functions */



    /* Insert functions [ End ] */
    /*--------------------------------------------------------------------------*/
    /* Update functions */

    

    /* Update functions [ End ] */
    /*--------------------------------------------------------------------------*/
    /* Insert + Update functions*/
        

    /* Insert + Update functions [ End ] */
    /*--------------------------------------------------------------------------*/
}

?>