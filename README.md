# triqui || Gato || Tic-Tac-Toe
taked to DoctorCode
https://www.youtube.com/watch?v=piDHdpWnoYI
mint 19:57

flutter create triqui


flutter build apk --release


This creates a single APK which works on all devices (x64, arm64 and arm), it's probably pretty big:

flutter build apk --profile
If the people who install your App know which devices they have, you can use the split-per-abi command which creates three different APKs for all architectures (x64, arm64 and arm)

flutter build apk --profile --split-per-abi

ejecutar en navegador
flutter run --no-sound-null-safety

 sdk install gradle

 gradle -v