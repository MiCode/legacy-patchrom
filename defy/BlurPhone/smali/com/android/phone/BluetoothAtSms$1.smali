.class Lcom/android/phone/BluetoothAtSms$1;
.super Landroid/content/BroadcastReceiver;
.source "BluetoothAtSms.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/BluetoothAtSms;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/BluetoothAtSms;


# direct methods
.method constructor <init>(Lcom/android/phone/BluetoothAtSms;)V
    .locals 0
    .parameter

    .prologue
    .line 249
    iput-object p1, p0, Lcom/android/phone/BluetoothAtSms$1;->this$0:Lcom/android/phone/BluetoothAtSms;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 20
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 252
    const-string v9, "+CMGS"

    .line 253
    .local v9, mCmdName:Ljava/lang/String;
    const-string v17, "SendCmdName"

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 254
    .local v14, sendCmdName:Ljava/lang/String;
    const-string v17, "BtAtSms"

    move-object v0, v14

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_1

    .line 255
    const-string v17, "BtAtSms"

    const-string v18, "Error! sendCmdName != BtAtSms"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 324
    :cond_0
    :goto_0
    return-void

    .line 258
    :cond_1
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    .line 259
    .local v4, action:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v11

    .line 260
    .local v11, messageUri:Landroid/net/Uri;
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/BluetoothAtSms$1;->getResultCode()I

    move-result v13

    .line 263
    .local v13, resultCode:I
    const-string v17, "BtAtSms"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "resultCode = "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move v1, v13

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 264
    const-string v17, "com.mot.bt.Sms.MESSAGE_SENT"

    move-object/from16 v0, v17

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_0

    .line 265
    new-instance v16, Landroid/content/Intent;

    const-string v17, "com.android.mms.transaction.MESSAGE_SENT"

    invoke-direct/range {v16 .. v17}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 266
    .local v16, smsSendCompleteIntent:Landroid/content/Intent;
    move-object/from16 v0, v16

    move-object v1, v11

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 268
    const/16 v17, 0x1

    move/from16 v0, v17

    move v1, v13

    if-ne v0, v1, :cond_2

    .line 269
    const-string v17, "errorCode"

    const v18, -0x80ea

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    .line 270
    .local v6, errorCode:I
    const-string v17, "errorCode"

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    move v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 271
    const-string v17, "BtAtSms"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "errorCode = "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move v1, v6

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 274
    .end local v6           #errorCode:I
    :cond_2
    const-string v17, "com.motorola.blur.conversations"

    const-string v18, "com.motorola.blur.conversations.transaction.SmsReceiver"

    invoke-virtual/range {v16 .. v18}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 276
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/BluetoothAtSms$1;->this$0:Lcom/android/phone/BluetoothAtSms;

    move-object/from16 v17, v0

    #getter for: Lcom/android/phone/BluetoothAtSms;->mContext:Landroid/content/Context;
    invoke-static/range {v17 .. v17}, Lcom/android/phone/BluetoothAtSms;->access$000(Lcom/android/phone/BluetoothAtSms;)Landroid/content/Context;

    move-result-object v17

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v18

    move-object/from16 v2, v16

    move/from16 v3, v19

    invoke-static {v0, v1, v2, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v15

    .line 278
    .local v15, sentIntent:Landroid/app/PendingIntent;
    if-eqz v15, :cond_3

    .line 280
    :try_start_0
    invoke-virtual {v15, v13}, Landroid/app/PendingIntent;->send(I)V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    .line 285
    :cond_3
    :goto_1
    const/4 v8, 0x0

    .line 287
    .local v8, isLastPackageOfSms:Z
    const-string v17, "IsLastPackageOfSMS"

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 288
    .local v7, flag:Ljava/lang/String;
    if-eqz v7, :cond_4

    .line 289
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "get IsLastPackageOfSMS flag "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move-object v1, v7

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object v0, v9

    move-object/from16 v1, v17

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 290
    const-string v17, "yes"

    move-object v0, v7

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    .line 293
    :cond_4
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "isLastPackageOfSMS  is  "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move v1, v8

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object v0, v9

    move-object/from16 v1, v17

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 295
    if-eqz v8, :cond_0

    .line 296
    const/16 v17, -0x1

    move v0, v13

    move/from16 v1, v17

    if-eq v0, v1, :cond_5

    .line 297
    new-instance v12, Landroid/bluetooth/AtCommandResult;

    const/16 v17, 0x1

    move-object v0, v12

    move/from16 v1, v17

    invoke-direct {v0, v1}, Landroid/bluetooth/AtCommandResult;-><init>(I)V

    .line 298
    .local v12, result:Landroid/bluetooth/AtCommandResult;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/BluetoothAtSms$1;->this$0:Lcom/android/phone/BluetoothAtSms;

    move-object/from16 v17, v0

    #getter for: Lcom/android/phone/BluetoothAtSms;->mHandsfree:Lcom/android/phone/BluetoothHandsfree;
    invoke-static/range {v17 .. v17}, Lcom/android/phone/BluetoothAtSms;->access$100(Lcom/android/phone/BluetoothAtSms;)Lcom/android/phone/BluetoothHandsfree;

    move-result-object v17

    invoke-virtual {v12}, Landroid/bluetooth/AtCommandResult;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Lcom/android/phone/BluetoothHandsfree;->sendURC(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 281
    .end local v7           #flag:Ljava/lang/String;
    .end local v8           #isLastPackageOfSms:Z
    .end local v12           #result:Landroid/bluetooth/AtCommandResult;
    :catch_0
    move-exception v5

    .line 282
    .local v5, e:Landroid/app/PendingIntent$CanceledException;
    invoke-virtual {v5}, Landroid/app/PendingIntent$CanceledException;->printStackTrace()V

    goto :goto_1

    .line 301
    .end local v5           #e:Landroid/app/PendingIntent$CanceledException;
    .restart local v7       #flag:Ljava/lang/String;
    .restart local v8       #isLastPackageOfSms:Z
    :cond_5
    const/4 v10, 0x0

    .line 303
    .local v10, messageRef:I
    :try_start_1
    const-string v17, "refNumber"

    const/16 v18, -0x1

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v10

    .line 304
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "get refNumber "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move v1, v10

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object v0, v9

    move-object/from16 v1, v17

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 305
    const/16 v17, -0x1

    move v0, v10

    move/from16 v1, v17

    if-ne v0, v1, :cond_6

    .line 306
    new-instance v12, Landroid/bluetooth/AtCommandResult;

    const/16 v17, 0x1

    move-object v0, v12

    move/from16 v1, v17

    invoke-direct {v0, v1}, Landroid/bluetooth/AtCommandResult;-><init>(I)V

    .line 307
    .restart local v12       #result:Landroid/bluetooth/AtCommandResult;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/BluetoothAtSms$1;->this$0:Lcom/android/phone/BluetoothAtSms;

    move-object/from16 v17, v0

    #getter for: Lcom/android/phone/BluetoothAtSms;->mHandsfree:Lcom/android/phone/BluetoothHandsfree;
    invoke-static/range {v17 .. v17}, Lcom/android/phone/BluetoothAtSms;->access$100(Lcom/android/phone/BluetoothAtSms;)Lcom/android/phone/BluetoothHandsfree;

    move-result-object v17

    invoke-virtual {v12}, Landroid/bluetooth/AtCommandResult;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Lcom/android/phone/BluetoothHandsfree;->sendURC(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    .line 311
    .end local v12           #result:Landroid/bluetooth/AtCommandResult;
    :catch_1
    move-exception v17

    move-object/from16 v5, v17

    .line 312
    .local v5, e:Ljava/lang/NumberFormatException;
    const-string v17, "get refNumber NumberFormatException"

    move-object v0, v9

    move-object/from16 v1, v17

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 313
    new-instance v12, Landroid/bluetooth/AtCommandResult;

    const/16 v17, 0x1

    move-object v0, v12

    move/from16 v1, v17

    invoke-direct {v0, v1}, Landroid/bluetooth/AtCommandResult;-><init>(I)V

    .line 314
    .restart local v12       #result:Landroid/bluetooth/AtCommandResult;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/BluetoothAtSms$1;->this$0:Lcom/android/phone/BluetoothAtSms;

    move-object/from16 v17, v0

    #getter for: Lcom/android/phone/BluetoothAtSms;->mHandsfree:Lcom/android/phone/BluetoothHandsfree;
    invoke-static/range {v17 .. v17}, Lcom/android/phone/BluetoothAtSms;->access$100(Lcom/android/phone/BluetoothAtSms;)Lcom/android/phone/BluetoothHandsfree;

    move-result-object v17

    invoke-virtual {v12}, Landroid/bluetooth/AtCommandResult;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Lcom/android/phone/BluetoothHandsfree;->sendURC(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 317
    .end local v5           #e:Ljava/lang/NumberFormatException;
    .end local v12           #result:Landroid/bluetooth/AtCommandResult;
    :cond_6
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "get refNumber is: "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move v1, v10

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object v0, v9

    move-object/from16 v1, v17

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 318
    new-instance v12, Landroid/bluetooth/AtCommandResult;

    const/16 v17, 0x0

    move-object v0, v12

    move/from16 v1, v17

    invoke-direct {v0, v1}, Landroid/bluetooth/AtCommandResult;-><init>(I)V

    .line 319
    .restart local v12       #result:Landroid/bluetooth/AtCommandResult;
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v17

    move-object v1, v9

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, ": "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move v1, v10

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object v0, v12

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/bluetooth/AtCommandResult;->addResponse(Ljava/lang/String;)V

    .line 321
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/BluetoothAtSms$1;->this$0:Lcom/android/phone/BluetoothAtSms;

    move-object/from16 v17, v0

    #getter for: Lcom/android/phone/BluetoothAtSms;->mHandsfree:Lcom/android/phone/BluetoothHandsfree;
    invoke-static/range {v17 .. v17}, Lcom/android/phone/BluetoothAtSms;->access$100(Lcom/android/phone/BluetoothAtSms;)Lcom/android/phone/BluetoothHandsfree;

    move-result-object v17

    invoke-virtual {v12}, Landroid/bluetooth/AtCommandResult;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Lcom/android/phone/BluetoothHandsfree;->sendURC(Ljava/lang/String;)V

    goto/16 :goto_0
.end method
