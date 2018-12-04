<?php 

namespace Cart\Validation\Contracts;

//use \Prs\Http\Message\ServerRequestInterface as Request;
use Slim\Http\Request as Request;
use Slim\Http\Response as Response;
    
    
    interface ValidatorInterface
    {
        public function validate(Request $request,array $rules);
        public function fails();
        
    }
