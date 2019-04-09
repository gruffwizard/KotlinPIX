import kotlinx.cinterop.*
import platform.posix.*
import pca9685.*

fun main(args: Array<String>) {

var adpt: UByte = 1.toUByte()
var addr: UByte = 0x40.toUByte()

var fd = PCA9685_openI2C(adpt, addr);

if (fd < 0) {
    println("open failed")
    return
  }

PCA9685_dumpAllRegs(fd, addr);

}
