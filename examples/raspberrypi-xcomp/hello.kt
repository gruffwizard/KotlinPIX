import platform.posix.*

fun main(args: Array<String>) {
    println("Hello PI World (again)!")
    val dir = opendir("/dev")
    if (dir != null) {
        var ep = readdir(dir)
        while (ep != null) {
            println(ep)
            ep = readdir(dir)
        }
      try {
      } finally {
        closedir(dir)
      }
    }
}
