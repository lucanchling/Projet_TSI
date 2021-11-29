#version 330 core

// Variable de sortie (sera utilisé comme couleur)
out vec4 color;

//Un Fragment Shader minimaliste
/*void main (void)
*{
*  //Couleur du fragment
* color = vec4(0.0,0.0,1.0,1.0);
*}
*/

void main (void)
{
float x=gl_FragCoord.x/600.0;
float y=gl_FragCoord.y/600.0;
float r=0.0;
float g=0.0;
if(pow(x-0.5,2)+pow(y-0.5,2)<0.1*0.1)
r=1.0;
else
g=1.0;
color = vec4(r,g,0.0,0.0);

}
