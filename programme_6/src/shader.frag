#version 330 core

// Variable de sortie (sera utilisé comme couleur)
out vec4 color;

in vec3 coordonnee_3d;

//Un Fragment Shader minimaliste
void main (void)
{
  float x = abs(coordonnee_3d.x);
  float y = abs(coordonnee_3d.y);
  float z = abs(coordonnee_3d.z);

  //calcul du rayon en fonction des cotés du triangle
  float r=(2-sqrt(2.0))/2;
  if((x-r)*(x-r)+(y-r)*(y-r))<(r*r))
    discard;
  color = vec4(x,y,z,1.0);
}
