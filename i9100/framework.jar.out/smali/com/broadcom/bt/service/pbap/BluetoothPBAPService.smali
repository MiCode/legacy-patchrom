.class public final Lcom/broadcom/bt/service/pbap/BluetoothPBAPService;
.super Lcom/broadcom/bt/service/framework/BaseService;
.source "BluetoothPBAPService.java"


# static fields
.field private static final D:Z = true

.field private static final FILE_ZERO_VCF_21:Ljava/lang/String; = "/data/data/com.broadcom.bt.app.system/0_21.vcf"

.field private static final FILE_ZERO_VCF_30:Ljava/lang/String; = "/data/data/com.broadcom.bt.app.system/0_30.vcf"

.field private static final PBAP_MODE_BTLD:I = 0x1

.field private static final PBAP_MODE_JAVA:I = 0x2

.field private static final PBAP_MODE_UNKNOWN:I = 0x0

.field private static final TAG:Ljava/lang/String; = "BluetoothPBAPService"


# instance fields
.field mCallbacks:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList",
            "<",
            "Lcom/broadcom/bt/service/pbap/IBluetoothPBAPCallback;",
            ">;"
        }
    .end annotation
.end field

.field private mPbapMode:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .prologue
    .line 79
    invoke-static {}, Lcom/broadcom/bt/service/pbap/BluetoothPBAPService;->classInitNative()V

    .line 80
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 108
    invoke-direct {p0, p1}, Lcom/broadcom/bt/service/framework/BaseService;-><init>(Landroid/content/Context;)V

    .line 109
    return-void
.end method

.method private static native classInitNative()V
.end method

.method private native cleanupPbapNativeDataNative()V
.end method

.method private createOwnerVCard()V
    .locals 15

    .prologue
    .line 282
    iget-object v11, p0, Lcom/broadcom/bt/service/framework/BaseService;->mContext:Landroid/content/Context;

    const-string/jumbo v12, "phone"

    invoke-virtual {v11, v12}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/telephony/TelephonyManager;

    .line 283
    .local v9, tm:Landroid/telephony/TelephonyManager;
    if-nez v9, :cond_1

    .line 284
    const-string v11, "BluetoothPBAPService"

    const-string v12, "Telephony service not found"

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 363
    :cond_0
    :goto_0
    return-void

    .line 288
    :cond_1
    invoke-virtual {v9}, Landroid/telephony/TelephonyManager;->getLine1Number()Ljava/lang/String;

    move-result-object v7

    .line 289
    .local v7, phoneNum:Ljava/lang/String;
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 290
    const-string v7, "0000000000"

    .line 293
    :cond_2
    invoke-virtual {v9}, Landroid/telephony/TelephonyManager;->getLine1AlphaTag()Ljava/lang/String;

    move-result-object v6

    .line 294
    .local v6, phoneName:Ljava/lang/String;
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 295
    iget-object v11, p0, Lcom/broadcom/bt/service/framework/BaseService;->mContext:Landroid/content/Context;

    const v12, 0x104000e

    invoke-virtual {v11, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 298
    :cond_3
    new-instance v0, Landroid/pim/vcard/VCardBuilder;

    const/4 v11, 0x0

    const-string v12, "UTF-8"

    invoke-direct {v0, v11, v12}, Landroid/pim/vcard/VCardBuilder;-><init>(ILjava/lang/String;)V

    .line 300
    .local v0, builder:Landroid/pim/vcard/VCardBuilder;
    const-string v11, "N"

    const/4 v12, 0x1

    const/4 v13, 0x0

    invoke-virtual {v0, v11, v6, v12, v13}, Landroid/pim/vcard/VCardBuilder;->appendLine(Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 301
    const-string v11, "FN"

    const/4 v12, 0x1

    const/4 v13, 0x0

    invoke-virtual {v0, v11, v6, v12, v13}, Landroid/pim/vcard/VCardBuilder;->appendLine(Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 303
    const/4 v11, 0x2

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    .line 304
    .local v8, phonetype:Ljava/lang/Integer;
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    .line 305
    .local v3, label:Ljava/lang/String;
    const/4 v11, 0x0

    invoke-virtual {v0, v8, v3, v7, v11}, Landroid/pim/vcard/VCardBuilder;->appendTelLine(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 307
    invoke-virtual {v0}, Landroid/pim/vcard/VCardBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 308
    .local v10, vcard:Ljava/lang/String;
    const/4 v4, 0x0

    .line 309
    .local v4, output:Ljava/io/Writer;
    new-instance v2, Ljava/io/File;

    const-string v11, "/data/data/com.broadcom.bt.app.system/0_21.vcf"

    invoke-direct {v2, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 311
    .local v2, file:Ljava/io/File;
    :try_start_0
    new-instance v5, Ljava/io/BufferedWriter;

    new-instance v11, Ljava/io/FileWriter;

    invoke-direct {v11, v2}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V

    invoke-direct {v5, v11}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 312
    .end local v4           #output:Ljava/io/Writer;
    .local v5, output:Ljava/io/Writer;
    :try_start_1
    invoke-virtual {v5, v10}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_9

    .line 317
    if-eqz v5, :cond_4

    .line 318
    :try_start_2
    invoke-virtual {v5}, Ljava/io/BufferedWriter;->flush()V

    .line 319
    invoke-virtual {v5}, Ljava/io/BufferedWriter;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_4
    move-object v4, v5

    .line 325
    .end local v5           #output:Ljava/io/Writer;
    .restart local v4       #output:Ljava/io/Writer;
    :cond_5
    :goto_1
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v11

    if-eqz v11, :cond_6

    .line 326
    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v11

    const/16 v12, 0x1b0

    const/4 v13, -0x1

    const/4 v14, -0x1

    invoke-static {v11, v12, v13, v14}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    .line 330
    :cond_6
    new-instance v0, Landroid/pim/vcard/VCardBuilder;

    .end local v0           #builder:Landroid/pim/vcard/VCardBuilder;
    const/4 v11, 0x1

    const-string v12, "UTF-8"

    invoke-direct {v0, v11, v12}, Landroid/pim/vcard/VCardBuilder;-><init>(ILjava/lang/String;)V

    .line 333
    .restart local v0       #builder:Landroid/pim/vcard/VCardBuilder;
    const-string v11, "N"

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-virtual {v0, v11, v6, v12, v13}, Landroid/pim/vcard/VCardBuilder;->appendLine(Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 334
    const-string v11, "FN"

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-virtual {v0, v11, v6, v12, v13}, Landroid/pim/vcard/VCardBuilder;->appendLine(Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 336
    const/4 v11, 0x2

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    .line 337
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    .line 338
    const/4 v11, 0x0

    invoke-virtual {v0, v8, v3, v7, v11}, Landroid/pim/vcard/VCardBuilder;->appendTelLine(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 340
    invoke-virtual {v0}, Landroid/pim/vcard/VCardBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 341
    const/4 v4, 0x0

    .line 342
    new-instance v2, Ljava/io/File;

    .end local v2           #file:Ljava/io/File;
    const-string v11, "/data/data/com.broadcom.bt.app.system/0_30.vcf"

    invoke-direct {v2, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 344
    .restart local v2       #file:Ljava/io/File;
    :try_start_3
    new-instance v5, Ljava/io/BufferedWriter;

    new-instance v11, Ljava/io/FileWriter;

    invoke-direct {v11, v2}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V

    invoke-direct {v5, v11}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_5

    .line 345
    .end local v4           #output:Ljava/io/Writer;
    .restart local v5       #output:Ljava/io/Writer;
    :try_start_4
    invoke-virtual {v5, v10}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_8

    .line 350
    if-eqz v5, :cond_7

    .line 351
    :try_start_5
    invoke-virtual {v5}, Ljava/io/BufferedWriter;->flush()V

    .line 352
    invoke-virtual {v5}, Ljava/io/BufferedWriter;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    :cond_7
    move-object v4, v5

    .line 359
    .end local v5           #output:Ljava/io/Writer;
    .restart local v4       #output:Ljava/io/Writer;
    :cond_8
    :goto_2
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v11

    if-eqz v11, :cond_0

    .line 360
    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v11

    const/16 v12, 0x1b0

    const/4 v13, -0x1

    const/4 v14, -0x1

    invoke-static {v11, v12, v13, v14}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    goto/16 :goto_0

    .line 321
    .end local v4           #output:Ljava/io/Writer;
    .restart local v5       #output:Ljava/io/Writer;
    :catch_0
    move-exception v11

    move-object v1, v11

    .line 322
    .local v1, e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    move-object v4, v5

    .line 324
    .end local v5           #output:Ljava/io/Writer;
    .restart local v4       #output:Ljava/io/Writer;
    goto :goto_1

    .line 313
    .end local v1           #e:Ljava/io/IOException;
    :catch_1
    move-exception v11

    move-object v1, v11

    .line 314
    .local v1, e:Ljava/lang/Exception;
    :goto_3
    :try_start_6
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 317
    if-eqz v4, :cond_5

    .line 318
    :try_start_7
    invoke-virtual {v4}, Ljava/io/BufferedWriter;->flush()V

    .line 319
    invoke-virtual {v4}, Ljava/io/BufferedWriter;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2

    goto/16 :goto_1

    .line 321
    :catch_2
    move-exception v11

    move-object v1, v11

    .line 322
    .local v1, e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_1

    .line 316
    .end local v1           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v11

    .line 317
    :goto_4
    if-eqz v4, :cond_9

    .line 318
    :try_start_8
    invoke-virtual {v4}, Ljava/io/BufferedWriter;->flush()V

    .line 319
    invoke-virtual {v4}, Ljava/io/BufferedWriter;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_3

    .line 323
    :cond_9
    :goto_5
    throw v11

    .line 321
    :catch_3
    move-exception v12

    move-object v1, v12

    .line 322
    .restart local v1       #e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5

    .line 354
    .end local v1           #e:Ljava/io/IOException;
    .end local v4           #output:Ljava/io/Writer;
    .restart local v5       #output:Ljava/io/Writer;
    :catch_4
    move-exception v11

    move-object v1, v11

    .line 355
    .restart local v1       #e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    move-object v4, v5

    .line 357
    .end local v5           #output:Ljava/io/Writer;
    .restart local v4       #output:Ljava/io/Writer;
    goto :goto_2

    .line 346
    .end local v1           #e:Ljava/io/IOException;
    :catch_5
    move-exception v11

    move-object v1, v11

    .line 347
    .local v1, e:Ljava/lang/Exception;
    :goto_6
    :try_start_9
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 350
    if-eqz v4, :cond_8

    .line 351
    :try_start_a
    invoke-virtual {v4}, Ljava/io/BufferedWriter;->flush()V

    .line 352
    invoke-virtual {v4}, Ljava/io/BufferedWriter;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_6

    goto :goto_2

    .line 354
    :catch_6
    move-exception v11

    move-object v1, v11

    .line 355
    .local v1, e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 349
    .end local v1           #e:Ljava/io/IOException;
    :catchall_1
    move-exception v11

    .line 350
    :goto_7
    if-eqz v4, :cond_a

    .line 351
    :try_start_b
    invoke-virtual {v4}, Ljava/io/BufferedWriter;->flush()V

    .line 352
    invoke-virtual {v4}, Ljava/io/BufferedWriter;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_7

    .line 356
    :cond_a
    :goto_8
    throw v11

    .line 354
    :catch_7
    move-exception v12

    move-object v1, v12

    .line 355
    .restart local v1       #e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_8

    .line 349
    .end local v1           #e:Ljava/io/IOException;
    .end local v4           #output:Ljava/io/Writer;
    .restart local v5       #output:Ljava/io/Writer;
    :catchall_2
    move-exception v11

    move-object v4, v5

    .end local v5           #output:Ljava/io/Writer;
    .restart local v4       #output:Ljava/io/Writer;
    goto :goto_7

    .line 346
    .end local v4           #output:Ljava/io/Writer;
    .restart local v5       #output:Ljava/io/Writer;
    :catch_8
    move-exception v11

    move-object v1, v11

    move-object v4, v5

    .end local v5           #output:Ljava/io/Writer;
    .restart local v4       #output:Ljava/io/Writer;
    goto :goto_6

    .line 316
    .end local v4           #output:Ljava/io/Writer;
    .restart local v5       #output:Ljava/io/Writer;
    :catchall_3
    move-exception v11

    move-object v4, v5

    .end local v5           #output:Ljava/io/Writer;
    .restart local v4       #output:Ljava/io/Writer;
    goto :goto_4

    .line 313
    .end local v4           #output:Ljava/io/Writer;
    .restart local v5       #output:Ljava/io/Writer;
    :catch_9
    move-exception v11

    move-object v1, v11

    move-object v4, v5

    .end local v5           #output:Ljava/io/Writer;
    .restart local v4       #output:Ljava/io/Writer;
    goto :goto_3
.end method

.method private native disablePbapServerNative()V
.end method

.method private native enableDefaultPbapServerNative()V
.end method

.method private native enablePbapServerNative(ILjava/lang/String;Ljava/lang/String;ZB[B)V
.end method

.method private native initPbapNativeDataNative()V
.end method

.method private static needAccessRequest()Z
    .locals 4

    .prologue
    .line 86
    :try_start_0
    const-string/jumbo v1, "true"

    const-string/jumbo v2, "service.brcm.bt.secure_mode"

    const-string v3, ""

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 90
    :goto_0
    return v1

    .line 88
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 89
    .local v0, t:Ljava/lang/Throwable;
    const-string v1, "BluetoothPBAPService"

    const-string/jumbo v2, "needAccessRequest()"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 90
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private onPbapAccessRequested(BLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 9
    .parameter "opCode"
    .parameter "fileName"
    .parameter "remoteAddress"
    .parameter "remoteDeviceName"

    .prologue
    .line 460
    const-string v0, "BluetoothPBAPService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onPbapAccessRequested "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " File name "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 463
    iget-object v8, p0, Lcom/broadcom/bt/service/framework/BaseService;->mContext:Landroid/content/Context;

    const/4 v0, 0x0

    const-string v1, "bluetooth_pbap"

    const/4 v5, -0x1

    const/4 v7, 0x0

    move-object v2, p4

    move-object v3, p3

    move v4, p1

    move-object v6, p2

    invoke-static/range {v0 .. v7}, Lcom/broadcom/bt/service/framework/BluetoothIntent;->createAccessRequest(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "android.permission.BLUETOOTH"

    invoke-virtual {v8, v0, v1}, Landroid/content/Context;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 466
    return-void
.end method

.method private onPbapAuth()V
    .locals 0

    .prologue
    .line 435
    return-void
.end method

.method private onPbapClosed()V
    .locals 5

    .prologue
    const-string v4, "android.permission.BLUETOOTH"

    .line 406
    const-string v1, "BluetoothPBAPService"

    const-string/jumbo v2, "onPbapClosed"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 409
    new-instance v0, Landroid/content/Intent;

    const-string v1, "broadcom.android.bluetooth.intent.action.BT_SERVICE_CONNECTION"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 410
    .local v0, pbapClosedIntent:Landroid/content/Intent;
    const-string v1, "broadcom.android.bluetooth.intent.BLUETOOTH_SERVICE_CONNECTED"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;B)Landroid/content/Intent;

    .line 411
    const-string v1, "bt_svc_name"

    invoke-virtual {p0}, Lcom/broadcom/bt/service/pbap/BluetoothPBAPService;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 412
    iget-object v1, p0, Lcom/broadcom/bt/service/framework/BaseService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.BLUETOOTH"

    invoke-virtual {v1, v0, v4}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 415
    iget-object v1, p0, Lcom/broadcom/bt/service/framework/BaseService;->mContext:Landroid/content/Context;

    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.broadcom.bt.app.pbap.action.ON_PBAP_CLOSED"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "android.permission.BLUETOOTH"

    invoke-virtual {v1, v2, v4}, Landroid/content/Context;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 429
    return-void
.end method

.method private onPbapConnected()V
    .locals 5

    .prologue
    const-string v4, "android.permission.BLUETOOTH"

    .line 374
    const-string v1, "BluetoothPBAPService"

    const-string/jumbo v2, "onPbapConnected"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 377
    new-instance v0, Landroid/content/Intent;

    const-string v1, "broadcom.android.bluetooth.intent.action.BT_SERVICE_CONNECTION"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 378
    .local v0, pbapOpenIntent:Landroid/content/Intent;
    const-string v1, "broadcom.android.bluetooth.intent.BLUETOOTH_SERVICE_CONNECTED"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;B)Landroid/content/Intent;

    .line 379
    const-string v1, "bt_svc_name"

    invoke-virtual {p0}, Lcom/broadcom/bt/service/pbap/BluetoothPBAPService;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 380
    iget-object v1, p0, Lcom/broadcom/bt/service/framework/BaseService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.BLUETOOTH"

    invoke-virtual {v1, v0, v4}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 383
    iget-object v1, p0, Lcom/broadcom/bt/service/framework/BaseService;->mContext:Landroid/content/Context;

    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.broadcom.bt.app.pbap.action.ON_PBAP_OPENED"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "android.permission.BLUETOOTH"

    invoke-virtual {v1, v2, v4}, Landroid/content/Context;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 397
    return-void
.end method

.method private onPbapDisabled()V
    .locals 2

    .prologue
    .line 367
    const-string v0, "BluetoothPBAPService"

    const-string/jumbo v1, "onPbapDisabled"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 369
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/broadcom/bt/service/pbap/BluetoothPBAPService;->onStateChangeEvent(Z)V

    .line 370
    return-void
.end method

.method private onPbapEnabled()V
    .locals 2

    .prologue
    .line 275
    const-string v0, "BluetoothPBAPService"

    const-string/jumbo v1, "onPbapEnabled"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 277
    invoke-direct {p0}, Lcom/broadcom/bt/service/pbap/BluetoothPBAPService;->createOwnerVCard()V

    .line 278
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/broadcom/bt/service/pbap/BluetoothPBAPService;->onStateChangeEvent(Z)V

    .line 279
    return-void
.end method

.method private onPbapOperCompleted(Ljava/lang/String;BB)V
    .locals 3
    .parameter "filePath"
    .parameter "op_code"
    .parameter "status"

    .prologue
    .line 474
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.broadcom.bt.app.pbap.action.ON_PBAP_OP_COMPLETED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 475
    .local v0, i:Landroid/content/Intent;
    const-string v1, "FILEPATH"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 476
    const-string v1, "OPERATION"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;B)Landroid/content/Intent;

    .line 477
    const-string v1, "STATUS"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;B)Landroid/content/Intent;

    .line 478
    iget-object v1, p0, Lcom/broadcom/bt/service/framework/BaseService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.BLUETOOTH"

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 491
    return-void
.end method

.method private native pbapServerAccessRspNative(BZLjava/lang/String;)V
.end method

.method private native pbapServerAuthenRspNative(Ljava/lang/String;Ljava/lang/String;)V
.end method


# virtual methods
.method declared-synchronized enablePbapServer(ILjava/lang/String;Ljava/lang/String;ZB[B)V
    .locals 3
    .parameter "security_mask"
    .parameter "service_name"
    .parameter "root_path"
    .parameter "enable_authen"
    .parameter "realm_len"
    .parameter "realm"

    .prologue
    .line 266
    monitor-enter p0

    :try_start_0
    invoke-direct/range {p0 .. p6}, Lcom/broadcom/bt/service/pbap/BluetoothPBAPService;->enablePbapServerNative(ILjava/lang/String;Ljava/lang/String;ZB[B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 271
    :goto_0
    monitor-exit p0

    return-void

    .line 268
    :catch_0
    move-exception v0

    .line 269
    .local v0, e:Ljava/lang/Exception;
    :try_start_1
    const-string v1, "BluetoothPBAPService"

    const-string v2, "enablePbapServerNative failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 266
    .end local v0           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method protected finalize()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 198
    invoke-virtual {p0}, Lcom/broadcom/bt/service/pbap/BluetoothPBAPService;->finish()V

    .line 199
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 200
    return-void
.end method

.method public declared-synchronized finish()V
    .locals 3

    .prologue
    .line 187
    monitor-enter p0

    :try_start_0
    iget-boolean v1, p0, Lcom/broadcom/bt/service/framework/BaseService;->mIsFinish:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 189
    :try_start_1
    invoke-direct {p0}, Lcom/broadcom/bt/service/pbap/BluetoothPBAPService;->cleanupPbapNativeDataNative()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 193
    :goto_0
    const/4 v1, 0x1

    :try_start_2
    iput-boolean v1, p0, Lcom/broadcom/bt/service/framework/BaseService;->mIsFinish:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 195
    :cond_0
    monitor-exit p0

    return-void

    .line 190
    :catch_0
    move-exception v0

    .line 191
    .local v0, t:Ljava/lang/Throwable;
    :try_start_3
    const-string v1, "BluetoothPBAPService"

    const-string v2, "Unable to cleanup pbap service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 187
    .end local v0           #t:Ljava/lang/Throwable;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 112
    const-string v0, "bluetooth_pbap"

    return-object v0
.end method

.method public declared-synchronized init()V
    .locals 1

    .prologue
    .line 123
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/broadcom/bt/service/framework/BaseService;->mIsFinish:Z

    .line 125
    const/4 v0, 0x2

    iput v0, p0, Lcom/broadcom/bt/service/pbap/BluetoothPBAPService;->mPbapMode:I

    .line 126
    invoke-direct {p0}, Lcom/broadcom/bt/service/pbap/BluetoothPBAPService;->initPbapNativeDataNative()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 131
    monitor-exit p0

    return-void

    .line 123
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized pbapServerAccessRsp(BZLjava/lang/String;)V
    .locals 3
    .parameter "op_code"
    .parameter "access"
    .parameter "filename"

    .prologue
    .line 225
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1, p2, p3}, Lcom/broadcom/bt/service/pbap/BluetoothPBAPService;->pbapServerAccessRspNative(BZLjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 229
    :goto_0
    monitor-exit p0

    return-void

    .line 226
    :catch_0
    move-exception v0

    .line 227
    .local v0, e:Ljava/lang/Exception;
    :try_start_1
    const-string v1, "BluetoothPBAPService"

    const-string v2, "PbapServerAccessRspNative failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 225
    .end local v0           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized pbapServerAuthenRsp(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "password"
    .parameter "userId"

    .prologue
    .line 204
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/broadcom/bt/service/pbap/BluetoothPBAPService;->pbapServerAuthenRspNative(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 208
    :goto_0
    monitor-exit p0

    return-void

    .line 205
    :catch_0
    move-exception v0

    .line 206
    .local v0, e:Ljava/lang/Exception;
    :try_start_1
    const-string v1, "BluetoothPBAPService"

    const-string v2, "PbapServerAuthRspNative failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 204
    .end local v0           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public registerCallback(Lcom/broadcom/bt/service/pbap/IBluetoothPBAPCallback;)V
    .locals 1
    .parameter "cb"

    .prologue
    .line 247
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/broadcom/bt/service/pbap/BluetoothPBAPService;->mCallbacks:Landroid/os/RemoteCallbackList;

    if-eqz v0, :cond_0

    .line 248
    iget-object v0, p0, Lcom/broadcom/bt/service/pbap/BluetoothPBAPService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    .line 250
    :cond_0
    return-void
.end method

.method public declared-synchronized start()V
    .locals 8

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    const-string v3, "BluetoothPBAPService"

    .line 134
    monitor-enter p0

    :try_start_0
    const-string v3, "BluetoothPBAPService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "start: mPbapMode = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/broadcom/bt/service/pbap/BluetoothPBAPService;->mPbapMode:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    iget v3, p0, Lcom/broadcom/bt/service/pbap/BluetoothPBAPService;->mPbapMode:I

    if-nez v3, :cond_0

    .line 137
    const-string/jumbo v3, "service.brcm.bt.pbap_mode"

    const-string/jumbo v4, "property not found"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 139
    .local v2, pbapMode:Ljava/lang/String;
    const-string v3, "BluetoothPBAPService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "**********PBAP_MODE= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    if-eqz v2, :cond_2

    const-string v3, "java"

    invoke-virtual {v2, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_2

    .line 141
    const/4 v3, 0x2

    iput v3, p0, Lcom/broadcom/bt/service/pbap/BluetoothPBAPService;->mPbapMode:I

    .line 148
    .end local v2           #pbapMode:Ljava/lang/String;
    :cond_0
    :goto_0
    iget v3, p0, Lcom/broadcom/bt/service/pbap/BluetoothPBAPService;->mPbapMode:I

    if-ne v3, v6, :cond_3

    .line 149
    const-string v3, "BluetoothPBAPService"

    const-string v4, "Start BTLD PBAP server..."

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 151
    :try_start_1
    invoke-direct {p0}, Lcom/broadcom/bt/service/pbap/BluetoothPBAPService;->enableDefaultPbapServerNative()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 162
    :cond_1
    :goto_1
    monitor-exit p0

    return-void

    .line 144
    .restart local v2       #pbapMode:Ljava/lang/String;
    :cond_2
    const/4 v3, 0x1

    :try_start_2
    iput v3, p0, Lcom/broadcom/bt/service/pbap/BluetoothPBAPService;->mPbapMode:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 134
    .end local v2           #pbapMode:Ljava/lang/String;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 152
    :catch_0
    move-exception v0

    .line 153
    .local v0, e:Ljava/lang/Exception;
    :try_start_3
    const-string v3, "BluetoothPBAPService"

    const-string v4, "enableDefaultPbapServerNative failed"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 156
    .end local v0           #e:Ljava/lang/Exception;
    :cond_3
    iget v3, p0, Lcom/broadcom/bt/service/pbap/BluetoothPBAPService;->mPbapMode:I

    if-ne v3, v7, :cond_1

    .line 157
    const-string v3, "BluetoothPBAPService"

    const-string v4, "Start Java PBAP server: permission = [android.permission.BLUETOOTH]..."

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    new-instance v1, Landroid/content/Intent;

    const-string v3, "broadcom.android.bluetooth.intent.action.BT_PBAP_CHANGED"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 159
    .local v1, i:Landroid/content/Intent;
    const-string v3, "android.bluetooth.adapter.extra.STATE"

    const/16 v4, 0xc

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 160
    iget-object v3, p0, Lcom/broadcom/bt/service/framework/BaseService;->mContext:Landroid/content/Context;

    const-string v4, "android.permission.BLUETOOTH"

    invoke-virtual {v3, v1, v4}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1
.end method

.method public declared-synchronized stop()V
    .locals 5

    .prologue
    const-string v2, "BluetoothPBAPService"

    .line 165
    monitor-enter p0

    :try_start_0
    const-string v2, "BluetoothPBAPService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "stop: mPbapMode = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/broadcom/bt/service/pbap/BluetoothPBAPService;->mPbapMode:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    iget v2, p0, Lcom/broadcom/bt/service/pbap/BluetoothPBAPService;->mPbapMode:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 169
    :try_start_1
    invoke-direct {p0}, Lcom/broadcom/bt/service/pbap/BluetoothPBAPService;->disablePbapServerNative()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 183
    :cond_0
    :goto_0
    :try_start_2
    invoke-direct {p0}, Lcom/broadcom/bt/service/pbap/BluetoothPBAPService;->onPbapDisabled()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 184
    monitor-exit p0

    return-void

    .line 170
    :catch_0
    move-exception v0

    .line 171
    .local v0, e:Ljava/lang/Exception;
    :try_start_3
    const-string v2, "BluetoothPBAPService"

    const-string v3, "disablePbapServerNative failed"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 165
    .end local v0           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 174
    :cond_1
    :try_start_4
    iget v2, p0, Lcom/broadcom/bt/service/pbap/BluetoothPBAPService;->mPbapMode:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    .line 175
    const-string v2, "BluetoothPBAPService"

    const-string v3, "Stop Java PBAP server..."

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    new-instance v1, Landroid/content/Intent;

    const-string v2, "broadcom.android.bluetooth.intent.action.BT_PBAP_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 177
    .local v1, i:Landroid/content/Intent;
    const-string v2, "android.bluetooth.adapter.extra.STATE"

    const/16 v3, 0xa

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 178
    iget-object v2, p0, Lcom/broadcom/bt/service/framework/BaseService;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.BLUETOOTH"

    invoke-virtual {v2, v1, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0
.end method

.method public unregisterCallback(Lcom/broadcom/bt/service/pbap/IBluetoothPBAPCallback;)V
    .locals 1
    .parameter "cb"

    .prologue
    .line 253
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/broadcom/bt/service/pbap/BluetoothPBAPService;->mCallbacks:Landroid/os/RemoteCallbackList;

    if-eqz v0, :cond_0

    .line 254
    iget-object v0, p0, Lcom/broadcom/bt/service/pbap/BluetoothPBAPService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    .line 256
    :cond_0
    return-void
.end method
