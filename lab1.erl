-module(lab1).
-export([func/3]).


%function(edge_count, border_count, top_count)
func(6,4,4)->  
     'tetrahedron';
func(12,6,8)-> 
     'hexahedron'; 
func(12,8,6)-> 
     'oktaedr'; 
func(30,12,20)->   
     'while';
func(30,20,12)->
      'ikosaedr'.