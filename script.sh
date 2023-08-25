# llvm 설치(brew install llvm)

# 참조 링크 : https://medium.com/simform-engineering/ffigen-easy-way-to-access-ios-libraries-a508d18489

# 1.audioplayer.swift 파일 추가 /ios/Runner

# 2.커맨드 실행
cd /ios/Runner 
swiftc -c audioplayer.swift -module-name audioplayer -emit-objc-header-path audioplayer.h -emit-library -o libaudioplayer.dylib

# 3.파일 옮기기
1)audioplayer.h
2)libaudioplayer.dylib

# 4.ffigen.yaml 추가

# 5.커맨드 실행
dart run ffigen --config ffigen.yaml

# 6.확인
dart run lib/demo.dart