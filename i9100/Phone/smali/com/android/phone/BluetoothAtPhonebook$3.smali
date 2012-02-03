.class Lcom/android/phone/BluetoothAtPhonebook$3;
.super Landroid/bluetooth/AtCommandHandler;
.source "BluetoothAtPhonebook.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/BluetoothAtPhonebook;->register(Landroid/bluetooth/AtParser;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/BluetoothAtPhonebook;


# direct methods
.method constructor <init>(Lcom/android/phone/BluetoothAtPhonebook;)V
    .locals 0
    .parameter

    .prologue
    .line 301
    iput-object p1, p0, Lcom/android/phone/BluetoothAtPhonebook$3;->this$0:Lcom/android/phone/BluetoothAtPhonebook;

    invoke-direct {p0}, Landroid/bluetooth/AtCommandHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleSetCommand([Ljava/lang/Object;)Landroid/bluetooth/AtCommandResult;
    .locals 20
    .parameter "args"

    .prologue
    .line 310
    move-object/from16 v0, p1

    array-length v0, v0

    move v2, v0

    const/4 v3, 0x1

    if-lt v2, v3, :cond_0

    const/4 v2, 0x0

    aget-object v2, p1, v2

    instance-of v2, v2, Ljava/lang/Integer;

    if-nez v2, :cond_1

    .line 311
    :cond_0
    new-instance v2, Landroid/bluetooth/AtCommandResult;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Landroid/bluetooth/AtCommandResult;-><init>(I)V

    .line 431
    .end local p1
    :goto_0
    return-object v2

    .line 313
    .restart local p1
    :cond_1
    const/4 v2, 0x0

    aget-object v2, p1, v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v11

    .line 316
    .local v11, index1:I
    move-object/from16 v0, p1

    array-length v0, v0

    move v2, v0

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    .line 317
    move v12, v11

    .line 326
    .end local p1
    .local v12, index2:I
    :goto_1
    const-string v2, "SM"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/BluetoothAtPhonebook$3;->this$0:Lcom/android/phone/BluetoothAtPhonebook;

    move-object v3, v0

    #getter for: Lcom/android/phone/BluetoothAtPhonebook;->mCurrentPhonebook:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/phone/BluetoothAtPhonebook;->access$300(Lcom/android/phone/BluetoothAtPhonebook;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/BluetoothAtPhonebook$3;->this$0:Lcom/android/phone/BluetoothAtPhonebook;

    move-object v2, v0

    #getter for: Lcom/android/phone/BluetoothAtPhonebook;->mSimSupported:Z
    invoke-static {v2}, Lcom/android/phone/BluetoothAtPhonebook;->access$400(Lcom/android/phone/BluetoothAtPhonebook;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 327
    new-instance v2, Landroid/bluetooth/AtCommandResult;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Landroid/bluetooth/AtCommandResult;-><init>(I)V

    goto :goto_0

    .line 318
    .end local v12           #index2:I
    .restart local p1
    :cond_2
    const/4 v2, 0x1

    aget-object v2, p1, v2

    instance-of v2, v2, Ljava/lang/Integer;

    if-nez v2, :cond_3

    .line 319
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/BluetoothAtPhonebook$3;->this$0:Lcom/android/phone/BluetoothAtPhonebook;

    move-object v2, v0

    #getter for: Lcom/android/phone/BluetoothAtPhonebook;->mHandsfree:Lcom/android/phone/BluetoothHandsfree;
    invoke-static {v2}, Lcom/android/phone/BluetoothAtPhonebook;->access$200(Lcom/android/phone/BluetoothAtPhonebook;)Lcom/android/phone/BluetoothHandsfree;

    move-result-object v2

    const/16 v3, 0x19

    invoke-virtual {v2, v3}, Lcom/android/phone/BluetoothHandsfree;->reportCmeError(I)Landroid/bluetooth/AtCommandResult;

    move-result-object v2

    goto :goto_0

    .line 321
    :cond_3
    const/4 v2, 0x1

    aget-object p1, p1, v2

    .end local p1
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Integer;->intValue()I

    move-result v12

    .restart local v12       #index2:I
    goto :goto_1

    .line 332
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/BluetoothAtPhonebook$3;->this$0:Lcom/android/phone/BluetoothAtPhonebook;

    move-object v2, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/BluetoothAtPhonebook$3;->this$0:Lcom/android/phone/BluetoothAtPhonebook;

    move-object v3, v0

    #getter for: Lcom/android/phone/BluetoothAtPhonebook;->mCurrentPhonebook:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/phone/BluetoothAtPhonebook;->access$300(Lcom/android/phone/BluetoothAtPhonebook;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    #calls: Lcom/android/phone/BluetoothAtPhonebook;->getPhonebookResult(Ljava/lang/String;Z)Lcom/android/phone/BluetoothAtPhonebook$PhonebookResult;
    invoke-static {v2, v3, v4}, Lcom/android/phone/BluetoothAtPhonebook;->access$600(Lcom/android/phone/BluetoothAtPhonebook;Ljava/lang/String;Z)Lcom/android/phone/BluetoothAtPhonebook$PhonebookResult;

    move-result-object v16

    .line 333
    .local v16, pbr:Lcom/android/phone/BluetoothAtPhonebook$PhonebookResult;
    if-nez v16, :cond_5

    .line 334
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/BluetoothAtPhonebook$3;->this$0:Lcom/android/phone/BluetoothAtPhonebook;

    move-object v2, v0

    #getter for: Lcom/android/phone/BluetoothAtPhonebook;->mHandsfree:Lcom/android/phone/BluetoothHandsfree;
    invoke-static {v2}, Lcom/android/phone/BluetoothAtPhonebook;->access$200(Lcom/android/phone/BluetoothAtPhonebook;)Lcom/android/phone/BluetoothHandsfree;

    move-result-object v2

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Lcom/android/phone/BluetoothHandsfree;->reportCmeError(I)Landroid/bluetooth/AtCommandResult;

    move-result-object v2

    goto :goto_0

    .line 341
    :cond_5
    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/phone/BluetoothAtPhonebook$PhonebookResult;->cursor:Landroid/database/Cursor;

    move-object v2, v0

    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-eqz v2, :cond_6

    if-lez v11, :cond_6

    if-lt v12, v11, :cond_6

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/phone/BluetoothAtPhonebook$PhonebookResult;->cursor:Landroid/database/Cursor;

    move-object v2, v0

    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-le v11, v2, :cond_7

    .line 343
    :cond_6
    new-instance v2, Landroid/bluetooth/AtCommandResult;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Landroid/bluetooth/AtCommandResult;-><init>(I)V

    goto/16 :goto_0

    .line 346
    :cond_7
    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/phone/BluetoothAtPhonebook$PhonebookResult;->cursor:Landroid/database/Cursor;

    move-object v2, v0

    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-le v12, v2, :cond_8

    .line 347
    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/phone/BluetoothAtPhonebook$PhonebookResult;->cursor:Landroid/database/Cursor;

    move-object v2, v0

    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v12

    .line 351
    :cond_8
    new-instance v18, Landroid/bluetooth/AtCommandResult;

    const/4 v2, 0x0

    move-object/from16 v0, v18

    move v1, v2

    invoke-direct {v0, v1}, Landroid/bluetooth/AtCommandResult;-><init>(I)V

    .line 352
    .local v18, result:Landroid/bluetooth/AtCommandResult;
    const/4 v9, -0x1

    .line 353
    .local v9, errorDetected:I
    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/phone/BluetoothAtPhonebook$PhonebookResult;->cursor:Landroid/database/Cursor;

    move-object v2, v0

    const/4 v3, 0x1

    sub-int v3, v11, v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 354
    move v10, v11

    .local v10, index:I
    :goto_2
    if-gt v10, v12, :cond_12

    .line 355
    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/phone/BluetoothAtPhonebook$PhonebookResult;->cursor:Landroid/database/Cursor;

    move-object v2, v0

    move-object/from16 v0, v16

    iget v0, v0, Lcom/android/phone/BluetoothAtPhonebook$PhonebookResult;->numberColumn:I

    move v3, v0

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 356
    .local v15, number:Ljava/lang/String;
    const/4 v13, 0x0

    .line 357
    .local v13, name:Ljava/lang/String;
    const/16 v19, -0x1

    .line 358
    .local v19, type:I
    move-object/from16 v0, v16

    iget v0, v0, Lcom/android/phone/BluetoothAtPhonebook$PhonebookResult;->nameColumn:I

    move v2, v0

    const/4 v3, -0x1

    if-ne v2, v3, :cond_13

    .line 362
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/BluetoothAtPhonebook$3;->this$0:Lcom/android/phone/BluetoothAtPhonebook;

    move-object v2, v0

    #getter for: Lcom/android/phone/BluetoothAtPhonebook;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/phone/BluetoothAtPhonebook;->access$700(Lcom/android/phone/BluetoothAtPhonebook;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Landroid/provider/ContactsContract$PhoneLookup;->CONTENT_FILTER_URI:Landroid/net/Uri;

    invoke-static {v3, v15}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "display_name"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-string v6, "type"

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 366
    .local v8, c:Landroid/database/Cursor;
    if-eqz v8, :cond_a

    .line 367
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 368
    const/4 v2, 0x0

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 369
    const/4 v2, 0x1

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v19

    .line 371
    :cond_9
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 378
    .end local v8           #c:Landroid/database/Cursor;
    :cond_a
    :goto_3
    if-nez v13, :cond_b

    const-string v13, ""

    .line 379
    :cond_b
    invoke-virtual {v13}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v13

    .line 380
    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0x1c

    if-le v2, v3, :cond_c

    const/4 v2, 0x0

    const/16 v3, 0x1c

    invoke-virtual {v13, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v13

    .line 382
    :cond_c
    move-object/from16 v0, v16

    iget v0, v0, Lcom/android/phone/BluetoothAtPhonebook$PhonebookResult;->typeColumn:I

    move v2, v0

    const/4 v3, -0x1

    if-eq v2, v3, :cond_d

    .line 383
    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/phone/BluetoothAtPhonebook$PhonebookResult;->cursor:Landroid/database/Cursor;

    move-object v2, v0

    move-object/from16 v0, v16

    iget v0, v0, Lcom/android/phone/BluetoothAtPhonebook$PhonebookResult;->typeColumn:I

    move v3, v0

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v19

    .line 384
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    #calls: Lcom/android/phone/BluetoothAtPhonebook;->getPhoneType(I)Ljava/lang/String;
    invoke-static/range {v19 .. v19}, Lcom/android/phone/BluetoothAtPhonebook;->access$800(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 387
    :cond_d
    if-nez v15, :cond_e

    const-string v15, ""

    .line 388
    :cond_e
    invoke-static {v15}, Landroid/telephony/PhoneNumberUtils;->toaFromString(Ljava/lang/String;)I

    move-result v17

    .line 390
    .local v17, regionType:I
    invoke-virtual {v15}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v15

    .line 391
    invoke-static {v15}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 392
    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0x1e

    if-le v2, v3, :cond_f

    const/4 v2, 0x0

    const/16 v3, 0x1e

    invoke-virtual {v15, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v15

    .line 393
    :cond_f
    const-string v2, "-1"

    invoke-virtual {v15, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 395
    const-string v15, ""

    .line 396
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/BluetoothAtPhonebook$3;->this$0:Lcom/android/phone/BluetoothAtPhonebook;

    move-object v2, v0

    #getter for: Lcom/android/phone/BluetoothAtPhonebook;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/phone/BluetoothAtPhonebook;->access$700(Lcom/android/phone/BluetoothAtPhonebook;)Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0d0008

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 401
    :cond_10
    const-string v2, ""

    invoke-virtual {v13, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_11

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/BluetoothAtPhonebook$3;->this$0:Lcom/android/phone/BluetoothAtPhonebook;

    move-object v2, v0

    #getter for: Lcom/android/phone/BluetoothAtPhonebook;->mCharacterSet:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/phone/BluetoothAtPhonebook;->access$100(Lcom/android/phone/BluetoothAtPhonebook;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "GSM"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11

    .line 402
    invoke-static {v13}, Lcom/android/internal/telephony/GsmAlphabet;->stringToGsm8BitPacked(Ljava/lang/String;)[B

    move-result-object v14

    .line 403
    .local v14, nameByte:[B
    if-nez v14, :cond_14

    .line 404
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/BluetoothAtPhonebook$3;->this$0:Lcom/android/phone/BluetoothAtPhonebook;

    move-object v2, v0

    #getter for: Lcom/android/phone/BluetoothAtPhonebook;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/phone/BluetoothAtPhonebook;->access$700(Lcom/android/phone/BluetoothAtPhonebook;)Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0d0008

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 423
    .end local v14           #nameByte:[B
    :cond_11
    :goto_4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "+CPBR: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object v0, v2

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v18

    move-object v1, v2

    invoke-virtual {v0, v1}, Landroid/bluetooth/AtCommandResult;->addResponse(Ljava/lang/String;)V

    .line 427
    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/phone/BluetoothAtPhonebook$PhonebookResult;->cursor:Landroid/database/Cursor;

    move-object v2, v0

    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-nez v2, :cond_15

    .end local v13           #name:Ljava/lang/String;
    .end local v15           #number:Ljava/lang/String;
    .end local v17           #regionType:I
    .end local v19           #type:I
    :cond_12
    move-object/from16 v2, v18

    .line 431
    goto/16 :goto_0

    .line 376
    .restart local v13       #name:Ljava/lang/String;
    .restart local v15       #number:Ljava/lang/String;
    .restart local v19       #type:I
    :cond_13
    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/phone/BluetoothAtPhonebook$PhonebookResult;->cursor:Landroid/database/Cursor;

    move-object v2, v0

    move-object/from16 v0, v16

    iget v0, v0, Lcom/android/phone/BluetoothAtPhonebook$PhonebookResult;->nameColumn:I

    move v3, v0

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    goto/16 :goto_3

    .line 406
    .restart local v14       #nameByte:[B
    .restart local v17       #regionType:I
    :cond_14
    new-instance v13, Ljava/lang/String;

    .end local v13           #name:Ljava/lang/String;
    invoke-direct {v13, v14}, Ljava/lang/String;-><init>([B)V

    .restart local v13       #name:Ljava/lang/String;
    goto :goto_4

    .line 354
    .end local v14           #nameByte:[B
    :cond_15
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_2
.end method

.method public handleTestCommand()Landroid/bluetooth/AtCommandResult;
    .locals 5

    .prologue
    .line 442
    const-string v2, "SM"

    iget-object v3, p0, Lcom/android/phone/BluetoothAtPhonebook$3;->this$0:Lcom/android/phone/BluetoothAtPhonebook;

    #getter for: Lcom/android/phone/BluetoothAtPhonebook;->mCurrentPhonebook:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/phone/BluetoothAtPhonebook;->access$300(Lcom/android/phone/BluetoothAtPhonebook;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/phone/BluetoothAtPhonebook$3;->this$0:Lcom/android/phone/BluetoothAtPhonebook;

    #getter for: Lcom/android/phone/BluetoothAtPhonebook;->mSimSupported:Z
    invoke-static {v2}, Lcom/android/phone/BluetoothAtPhonebook;->access$400(Lcom/android/phone/BluetoothAtPhonebook;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 443
    const/4 v1, 0x0

    .line 452
    .local v1, size:I
    :goto_0
    if-nez v1, :cond_0

    .line 455
    const/4 v1, 0x1

    .line 457
    :cond_0
    new-instance v2, Landroid/bluetooth/AtCommandResult;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "+CPBR: (1-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "),30,30"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/bluetooth/AtCommandResult;-><init>(Ljava/lang/String;)V

    .end local v1           #size:I
    :goto_1
    return-object v2

    .line 445
    :cond_1
    iget-object v2, p0, Lcom/android/phone/BluetoothAtPhonebook$3;->this$0:Lcom/android/phone/BluetoothAtPhonebook;

    iget-object v3, p0, Lcom/android/phone/BluetoothAtPhonebook$3;->this$0:Lcom/android/phone/BluetoothAtPhonebook;

    #getter for: Lcom/android/phone/BluetoothAtPhonebook;->mCurrentPhonebook:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/phone/BluetoothAtPhonebook;->access$300(Lcom/android/phone/BluetoothAtPhonebook;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    #calls: Lcom/android/phone/BluetoothAtPhonebook;->getPhonebookResult(Ljava/lang/String;Z)Lcom/android/phone/BluetoothAtPhonebook$PhonebookResult;
    invoke-static {v2, v3, v4}, Lcom/android/phone/BluetoothAtPhonebook;->access$600(Lcom/android/phone/BluetoothAtPhonebook;Ljava/lang/String;Z)Lcom/android/phone/BluetoothAtPhonebook$PhonebookResult;

    move-result-object v0

    .line 446
    .local v0, pbr:Lcom/android/phone/BluetoothAtPhonebook$PhonebookResult;
    if-nez v0, :cond_2

    .line 447
    iget-object v2, p0, Lcom/android/phone/BluetoothAtPhonebook$3;->this$0:Lcom/android/phone/BluetoothAtPhonebook;

    #getter for: Lcom/android/phone/BluetoothAtPhonebook;->mHandsfree:Lcom/android/phone/BluetoothHandsfree;
    invoke-static {v2}, Lcom/android/phone/BluetoothAtPhonebook;->access$200(Lcom/android/phone/BluetoothAtPhonebook;)Lcom/android/phone/BluetoothHandsfree;

    move-result-object v2

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Lcom/android/phone/BluetoothHandsfree;->reportCmeError(I)Landroid/bluetooth/AtCommandResult;

    move-result-object v2

    goto :goto_1

    .line 449
    :cond_2
    iget-object v2, v0, Lcom/android/phone/BluetoothAtPhonebook$PhonebookResult;->cursor:Landroid/database/Cursor;

    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v1

    .restart local v1       #size:I
    goto :goto_0
.end method
