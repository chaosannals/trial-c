# wasm

## Windows 下安装 Emscripten SDK

```bash
git clone git@github.com:emscripten-core/emsdk.git
cd emsdk

# 安装需要在 VS Build 的命令行环境中进行。
# pwsh 需要 ./emsdk ； cmd 不需要。
emsdk install latest
emsdk activate latest

# 把 emsdk 的路径添加到 PATH 变量里面
```

## 使用 emsdk 开发环境

```bash
# 执行环境配置，就可以使用 emcc 命令了。
emsdk_env.bat
```

### 编译

```bash
# 编译，第一次会初始环境，比较卡。
emcc demo.c

# 指定模板和带编译参数
emcc -o demo/index.html main.c
```
