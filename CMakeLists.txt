cmake_minimum_required(VERSION 3.0)
project(Glitter)

find_package(OpenGL REQUIRED)
#find_package(GLUT REQUIRED)#sudo apt-get install freeglut3-dev
# message(${GLUT_LIBRARIES})
find_package(GLEW REQUIRED) #sudo apt install libglew-dev
find_package(glfw3 REQUIRED) 

include_directories(
  ${PROJECT_SOURCE_DIR}/Headers
  )

add_executable(${PROJECT_NAME} main.cpp glad.c)
target_link_libraries(${PROJECT_NAME}  glfw
  ${GLFW_LIBRARIES} ${GLAD_LIBRARIES}
  OpenGL::GL
  ${GLUT_LIBRARY}
  ${GLFW_LIBRARIES}
  ${GLEW_LIBRARIES}
  glfw 
  ${CMAKE_DL_LIBS}#https://stackoverflow.com/questions/56841870/how-to-fix-undefined-reference-to-symbol-dlcloseglibc-2-2-5-from-glad-c
  )
set_target_properties(${PROJECT_NAME} PROPERTIES
  RUNTIME_OUTPUT_DIRECTORY ${CMAKE_BINARY_DIR}/)
