function _init()
	turn = 2
	sprites={}
 cursor_pos={7,7}
	palt(0,false)
	palt(14,true)
end	

function _update60()
 if btnp(0)then
 	sfx(0)
  cursor_pos[1] -= 1
  if(cursor_pos[1]<1)cursor_pos[1]=1
 end
 if btnp(1)then
 	sfx(0)
  cursor_pos[1] += 1
  if(cursor_pos[1]>15)cursor_pos[1]=15
 end
 if btnp(2)then
 	sfx(0)
  cursor_pos[2] -= 1
  if(cursor_pos[2]<1)cursor_pos[2]=1
 end
 if btnp(3)then
 	sfx(0)
  cursor_pos[2] += 1
  if(cursor_pos[2]>15)cursor_pos[2]=15
 end
 turnin()
 if (turn == 3) then
 	if(btnp(4))sprites[cursor_pos[2]*16+cursor_pos[1]]= 3	
 else if (turn == 2) then
 	if(btnp(4))sprites[cursor_pos[2]*16+cursor_pos[1]]= 2 	
	end
	if(btnp(5))sprites[cursor_pos[2]*16+cursor_pos[1]]= false
end
end


function turnin()
	if (btnp(4)) then
 	if (turn == 3) then
	 	turn = 2
	 else if (turn == 2) then
  	turn = 3 end
 end
 end
end
      
function _draw()
	cls()
	map(0,0,0,0,18,18)
 for y=0,16 do
  for x=0,16 do
   if(sprites[y*16+x])spr(sprites[y*16+x],x*8,y*8)
  end
 end
 spr(1,cursor_pos[1]*8,cursor_pos[2]*8)
end
