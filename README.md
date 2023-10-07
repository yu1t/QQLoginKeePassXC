# 使用KeePassXC自动填充QQ登录
![image](https://github.com/yu1t/QQLoginKeePassXC/assets/21243409/5a5c9419-ef30-42a6-9ce0-8d71685eb77c)

PCQQ客户端禁止粘贴密码登录，即使通过 KeePassXC 这种带有自动输入功能的密码管理器，也无法填写密码，本项目使用 AutoHotKey 编写了一个小工具，通过 KeePassXC 先将账号密码自动输入到此工具窗口中，然后再由本工具自动输入到QQ登录窗口中。
测试兼容QQ和QQNT架构

## 使用方法

1. 安装 [AutoHotKey](https://www.autohotkey.com/)
2. 打开 QQ登录窗口，将光标定位到QQ输入框中，并清空已有内容
3. 运行 QQ自动填充.ahk ，将光标定位到输入框中
4. 在 KeePassXC 执行自动输入


当然，除了使用KeePassXC自动输入，手动粘贴也可以，先输入QQ，按<kbd>Tab</kbd> 键 再粘贴密码，点击 OK 按钮或按<kbd>Enter</kbd> 键即可。
