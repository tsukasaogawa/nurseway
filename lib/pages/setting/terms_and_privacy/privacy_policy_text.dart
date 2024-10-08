const String privacyPolicyText = '''
プライバシーポリシー

1. はじめに

このプライバシーポリシー（以下「本ポリシー」）は、NurseWayアプリ（以下「本サービス」）の利用に関連して収集される個人情報の取り扱いについて定めるものです。本サービスを利用することで、本ポリシーに同意したものとみなされます。

2. 収集する情報

本サービスは、以下の情報を収集することがあります：

個人情報: メールアドレスのみが収集され、ログイン時に入力されます。
利用情報: アプリの利用状況、アクセスログ、IPアドレス、デバイス情報など、サービスの利用に関する情報。これにはFirebase Analyticsを通じたユーザー行動データやクラッシュレポートが含まれます。
広告情報: AdMobによる広告配信に関連して収集されるデバイスIDや広告識別子などの情報。
通信内容: チャット相談機能や問い合わせフォームを通じたユーザーとの通信内容。このデータはFirebase Firestoreに保存されます。
3. 情報の利用目的

収集した情報は、以下の目的で利用されます：

サービスの提供: ユーザーに対する本サービスの提供およびその改善。これには、Firebaseを利用したリアルタイムのデータ保存および広告のターゲティングが含まれます。
カスタマーサポート: ユーザーからの問い合わせへの対応。
マーケティング: Firebaseを通じて収集されたデータを元に、新機能やキャンペーンの案内を行います。
セキュリティ: Firebaseのセキュリティ機能を活用し、不正利用の防止およびシステムの保護を行います。
法令遵守: 法的義務の履行。
4. 第三者への提供

本サービスは、以下の場合を除き、ユーザーの同意なく第三者に個人情報を提供することはありません：

法令に基づく場合: 法令により必要とされる場合。
サービス提供のために必要な場合: 業務委託先に対して業務遂行に必要な範囲で提供する場合。
5. 情報の保護

本サービスは、ユーザーの個人情報を適切に保護するために、以下の対策を講じます：

技術的対策: SSL/TLSによる通信の暗号化、Firebase Authenticationによるユーザー認証、Firebase Firestoreでのデータの保護、AdMobのプライバシー保護設定。
物理的対策: 個人情報を取り扱う機器や文書の施錠管理。
6. ユーザーの権利

ユーザーは、以下の権利を有します：

アクセス権: Firebaseに保存されている自身の個人情報の開示を求める権利。
訂正権: 不正確な個人情報の訂正を求める権利。
削除権: Firebase Firestoreに保存されている個人情報の削除を求める権利。これには、AdMobを介して収集されたデータの削除要求も含まれます。
処理の制限権: 個人情報の処理を制限するよう求める権利。
7. データ保持期間

本サービスで収集された個人情報および利用情報は、サービスの提供および法的義務を果たすために必要な期間保存されます。デフォルトの状態では、以下のように設定されています：

チャット履歴: Firebase Firestoreに保存されたチャットデータは、ユーザーがアカウントを削除するまで保持されます。チャットの記憶は最大5回分のメッセージが保存され、それを超えるメッセージは上書きされます。
広告データ: AdMobを介して収集された広告データは、Googleのプライバシーポリシーに従い、必要な期間保持されます。
その他のデータ: 利用情報やアクセスログは、サービス改善のためにFirebase FirestoreやAdMobを通じて保存されます。これらのデータは、デフォルトで永続的に保存されますが、サービスの運用上、1年を超えないように保持期間を設定することを検討しています。
8. クッキーと同様の技術

本サービスは、ユーザーの利便性向上のために、AdMobによるクッキーや類似の追跡技術を使用することがあります。ユーザーは、デバイスの設定でこれらの技術を管理することができます。

9. プライバシーポリシーの変更

当社は、本ポリシーを随時見直し、変更することがあります。変更が行われた場合、改定後のポリシーは本サービス内で通知され、通知後に本サービスを利用した場合、ユーザーは改定後のポリシーに同意したものとみなされます。

10. お問い合わせ

本ポリシーに関するお問い合わせは、以下の連絡先までお願いいたします：

連絡先: otmhvecu@gmail.com

''';
