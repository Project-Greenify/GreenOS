build_img:
    nasm src/main.s -f bin -o build/boot.bin
    cp build/boot.bin build/boot.img
run_img: build_img
    qemu-system-i386 build/boot.img
