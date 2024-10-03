$+2:: Send +{"}  ;对JIS布局的数字部分进行切换
Exit
$+6:: Send +{7}
Exit
$+7:: Send {'}
Exit
$+8:: Send {(}
Exit
$+9:: Send {)}
Exit
$+0:: Send N/A
Exit
$+-:: Send {=}
Exit
$=:: Send +{6}
Exit
$+=:: Send +{SC029}  ;该部存在失效现象
Exit
SC07D:: Send ￥  ;SC+16进制识别码对无对应键进行切换
Exit        ;传统UTF8中文日文存在乱码现象，应该改为BOM-UTF
+SC07D:: Send |
Exit
$[:: Send +{2}
Exit
$+[:: Send {SC029} ;发神经了是吧，半角全角键疑似不能以名称调用
Exit       ;Documentation里面没见过这种抽象要求，换SC试试
$]:: Send {[} ;测试成功，全角半角键疑似被划为保留字，以SC形式调用成功
Exit
$+]:: Send +{[}
Exit
$+;:: Send +{=}
Exit
$+':: Send +{8}
Exit
$':: Send {:}
Exit
$\:: Send {]}
Exit
$+\:: Send +{]}
Exit
SC073:: Send {\}
Exit
+SC073:: Send +{-}
Exit           ;右侧键完成替换
SC07B:: Send {Space}
Exit
SC079:: Send {Space}
Exit
SC070:: Send {RAlt}
Exit
$`:: Send #{Space} ;需要注意日文输入法一旦被切换到后就无法切换出
Exit    ;不过一般使用者并无日文输入习惯，就算要换出win+空格也行


