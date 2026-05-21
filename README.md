# Recuperatorio 1er Parcial - La Liga de Guardianes

La Liga de Guardianes es una organización interplanetaria de élite que protege a las civilizaciones galácticas de amenazas cósmicas. Actualmente, se están entrenando y uniendo nuevos candidatos.

## Candidatos
La  liga de Guardianes tiene registrados a los candidatos que se preparan para ingresar. Hay distintos roles que ocupar en la liga. De ellos, hay uno que se destaca en el funcionamiento de la liga. Inicialmente es precisamente el rol inicial, pero se va modificando con el tiempo y en un futuro podría ser nuevamente el inicial.
La liga tiene la capacidad de entrenar a todos sus candidatos, para mejorar sus chances de ingreso.
Para unirse definitivamente a la liga de Guardianes, los candidatos deben pasar una evaluación de ingreso para un rol en particular. Los que superan el ingreso, dejan de ser candidatos y pasan a considerarse guardianes de la liga

## Roles existentes
- **Ayudante** El candidato debe tener una fuerza entre un valor máximo y mínimo definidos para cualquier candidato que quiera ser ayudante. En cualquier momento pueden cambiar y los valores iniciales son 100 y 0 respectivamente.
-  **Estratega** El candidato debe tener estudios avanzados.
-  **Inicial** El candidato siempre supera la evaluación

## Candidatos
- **Helia** Tiene una fuerza de 22 unidades y como no le interesa estudiar nunca tendrá estudios avanzados Al entrenar su fuerza no varía. 
- **Astro** Inicialmente no maneja ningún arma, pero cada vez que entrena adquiere destreza sobre un arma nueva. Su fuerza es 10 veces la cantidad de armas que maneja. Se considera que sus estudios son avanzados si maneja mas de 5 armas. 
- **Zoe** Su entrenamiento consiste en aprender sobre un nuevo rol, el que en ese momento sea el destacado de la liga. Se considera que tiene estudios avanzados si alguna vez aprendió el rol de estratega. Su fuerza es 8 más la cantidad de roles diferentes que haya aprendido. 

## Requerimientos
1. Hacer que cambie el rol destacado de la liga.
2. Averiguar la suma total de la fuerza de todos los guardianes.
3. Hacer que cambien los valores máximo y mínimo del ayudante.
4. Hacer que todos los candidatos de la liga se entrenen.
5. Determina que la liga puede soportar un ataque de un valor entregado por parámetro la suma de las fuerzas de los guerreros sea mayor al doble de dicho valor. 
6. Averiguar cuáles candidatos podrían superar la evaluación para un rol en particular.
7. Hacer que los candidatos que superen la evaluación para un rol en particular dejen de ser candidatos y pasen a ser guardianes.
8. Hacer tests de ítem 7, cambiando los escenarios iniciales y probando con todos los roles existentes. 

Dejamos 2 test propuestos a modo de ejemplo y ambos tienen una inicialización que agregan a la liga a los 3 candidatos (Helia, Astro y Zoe).  Los test son lo siguientes:
1. Cambia el mínimo del rol ayudante a 10 unidades, la liga entrena  y luego une a candidatos para el rol 2. ayudante. Verificar que solo se convierte en guardianes helia y astro.
2. La liga cambia el rol destacado a estratega, entrena y luego une a los candidatos para el rol estratega. Verificar que solo se convierte en guardián zoe
