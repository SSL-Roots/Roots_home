# Elecrowへの基板発注方法
EAGLEで設計した基板を[Elecrow](https://www.elecrow.com/)へ発注する手順を記します。

[Elecrow](https://www.elecrow.com/)のカテゴリからSERVICESをクリックします。  
SERVICES一覧の中からPCB Manufacturingの[Regular Custom PCB(On-line Ordering)](https://www.elecrow.com/pcb-manufacturing.html)をクリックします。  
(P板製造から部品組付けまで行いたい場合はPCB Assemblyです。今回はP板製造までの手順を記します。)  

![Elecrow_PCB製造申し込みフォーム](../../images/roots_electrical/Elecrow_PCB.PNG)

## 1.基板データをDRCでチェックする 
### 1.1.EAGLE用druファイルのダウンロード
まず、EAGLEで設計した基板がElecrowの製造ルールに沿っているのかを確認します。  
そのために使用するのがEAGLEのDRC機能です。  
DRCで使うdruファイルはElecrowの[Regular Custom PCB(On-line Ordering)](https://www.elecrow.com/pcb-manufacturing.html)の下部にあるURLからダウンロード出来ます。

[EAGLE用druファイルダウンロードリンク](https://www.elecrow.com/download/Elecrow_PCB_eagle_rule.zip)  

![EAGLE_druダウンロード](../../images/roots_electrical/Eagle_dru.png)

### 1.2.EAGLEでDRCを実行する
ダウンロードしたdruファイルを使ってDRCを実行します。
DRCボタンをクリックしDRCwindowを起動します。

![EAGLE_DRCボタン](../../images/roots_electrical/EAGLE_DRC1.png)  

Load…ボタンからdruファイルを読み込み後、CheckをクリックすることでDRCが実行できます。  

![EAGLE_DRC_window](../../images/roots_electrical/EAGLE_DRC2.png)

DRCを実行した結果ERRORがある場合は処置が必要な物を処置してから再度実施してください。  
(画像のエラーはメイン基板で意図的に出している物なのでこのまま製造しています)

![EAGLE_DRC_ERRORS](../../images/roots_electrical/EAGLE_DRC3.png)

## 2.EAGLEのボードデータから製造に必要なガーバデータを作成する
### 2.1.EAGLE用CAMファイルのダウンロード
EAGLEのボードデータから製造に必要なガーバデータを作成します。  
そのために使用するのがEAGLEのCAM機能です。  
DRCで使うCAMファイルはElecrowの[Regular Custom PCB(On-line Ordering)](https://www.elecrow.com/pcb-manufacturing.html)の下部にあるURLからダウンロード出来ます。  
2層基板と4層基板でファイルが違うので注意してください。  
今回は2層基板を説明しますのでEAGLE CAM fileの方をダウンロードしてください。    

[EAGLE用2層基板CAMファイルダウンロードリンク](https://www.elecrow.com/download/Elecrow_Gerber_Generater_DrillAlign.zip)  

![EAGLE_CAMfileダウンロード](../../images/roots_electrical/Eagle_CAMfile.png)

### 2.2.EAGLEでCAMを実行しガーバデータを作成する
ダウンロードしたCAMファイルを使ってCAM Processorを実行します。
CAM ProcessorボタンをクリックしCAM Processor windowを起動します。

![EAGLE_CAM_Processorボタン](../../images/roots_electrical/EAGLE_CAM1.png)  

Open CAM File…ボタンからCAMファイルを読み込み後、Process Jobをクリックして保存するフォルダを選択したらガーバデータが作成できます。  

![EAGLE_CAM_Processor_window](../../images/roots_electrical/EAGLE_CAM2.png)  

作成したガーバデータが下記です。シルク等を入れている場合は別途ガーバビューワで問題ないかを確認すると良いでしょう。

![EAGLE_GerberData](../../images/roots_electrical/EAGLE_GerberData.png)  

## 3.Elecrowで発注する
先ほど作成したガーバデータをzip化してください。  
メタルマスクを作成する場合としない場合で必要なデータが異なります。

P板製造に必要なガーバデータ一覧  
.GTL	部品面(表面)パターン  
.GBL	半田面(裏面)パターン  
.GTS	部品面(表面)レジスト  
.GBS	半田面(裏面)レジスト  
.GTO	部品面(表面)のシルク印刷  
.GBO	半田面(裏面)のシルク印刷  
.TXT	ドリル穴情報  
.GML	外形情報  

ステンシル作成時は下記も必要です。  
.GTP	部品面(表面)マスク  
.GBP	半田面(裏面)マスク  

ElecrowのPCB Manufacturingの[Regular Custom PCB(On-line Ordering)](https://www.elecrow.com/pcb-manufacturing.html)で
ガーバデータが入ったzipファイルを「Add your Gerber」からアップロードしてください。  

![Elecrow_Add_your_Gerber](../../images/roots_electrical/Elecrow_PCB2.png)  

ガーバデータをアップロード後必要な情報を入力してください。  
入力する情報は下記です。 必要情報入力後にAdd To Cartを押してください。  

**Layer：** P板の層数を選択してください。  

**Dimensions：** P板の大きさを入力してください。大きさによって値段が変わります。  

**PCB Qty：** 製造する枚数を選択してください。  

**Different PCB Design：** 面付する場合は面付数を選択してください。(今回はしないため1です)

**PCB Thickness：** P板の厚さを選択してください。(通常は1.6mmです)  

**PCB Color：** P板の色を選択してください。(おすすめは青と赤です)  

**Surface Finish：** 表面処理を選択してください。(基本的には半田処理HASLで良いです)  

**Castellated Hole：** 端面スルーホールがあるかないか選択してください。  

**Copper Weight：** 銅の厚さを選択してください。(通常は1ozです)  

**PCB Stencil：** ステンシルを作る場合は選択してください。  

**Production Time：** 製造時間を選択してください。特急で頼む場合はRush 24hかRush 48hです。  
(前にRush 24hを頼んだ時は24時間以上掛かりましたが通常よりは早く製造できました)  

**Country：** Japanを選択してください。  

**hipping Cost：** 輸送業者を選んでください。(おすすめはOCS/ANAです。ANAが運んでくれます。)

![Elecrow_PCB Manufacturing](../../images/roots_electrical/Elecrow_PCB3.png)  

カートに進んでEstimate Shipping and Taxの欄に必要事項を記入後GO TO CHECKOUTをクリックしてください。  
(Shipping Methodで再度輸送業者を選択する必要があるようです)  

GO TO CHECKOUTに進んだら英語で住所を入力し右下のPlace Orderをクリックしてください。  

支払いにはPaypalがおすすめです。

以上で発注完了です。  

中国の深センから発送されて通常は３週間以内で届きますが、春節などの中国の大型連休中は納期が長くなるので注意が必要です。
