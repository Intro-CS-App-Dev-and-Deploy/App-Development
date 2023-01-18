
Counting Files in a Directory


Important Code
- See https://forum.processing.org/one/topic/counting-how-many-files-are-in-a-folder.html
- Accessed 20230118

import java.io.*;
import java.lang.*;

File file;
file = new File(dataPath(""));
String[] listPath = file.list();

println("the directory contains "+listPath.length+" elements.");
println(listPath);