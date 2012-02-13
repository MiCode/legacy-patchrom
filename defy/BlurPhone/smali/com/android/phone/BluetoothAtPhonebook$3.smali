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
    .line 199
    iput-object p1, p0, Lcom/android/phone/BluetoothAtPhonebook$3;->this$0:Lcom/android/phone/BluetoothAtPhonebook;

    invoke-direct {p0}, Landroid/bluetooth/AtCommandHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleSetCommand([Ljava/lang/Object;)Landroid/bluetooth/AtCommandResult;
    .locals 19
    .parameter "args"

    .prologue
    .line 208
    move-object/from16 v0, p1

    array-length v0, v0

    move v2, v0

    const/4 v3, 0x1

    if-lt v2, v3, :cond_0

    const/4 v2, 0x0

    aget-object v2, p1, v2

    instance-of v2, v2, Ljava/lang/Integer;

    if-nez v2, :cond_1

    .line 209
    :cond_0
    new-instance v2, Landroid/bluetooth/AtCommandResult;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Landroid/bluetooth/AtCommandResult;-><init>(I)V

    .line 296
    .end local p1
    :goto_0
    return-object v2

    .line 211
    .restart local p1
    :cond_1
    const/4 v2, 0x0

    aget-object v2, p1, v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v11

    .line 214
    .local v11, index1:I
    move-object/from16 v0, p1

    array-length v0, v0

    move v2, v0

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    .line 215
    move v12, v11

    .line 223
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

    .line 224
    new-instance v2, Landroid/bluetooth/AtCommandResult;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Landroid/bluetooth/AtCommandResult;-><init>(I)V

    goto :goto_0

    .line 216
    .end local v12           #index2:I
    .restart local p1
    :cond_2
    const/4 v2, 0x1

    aget-object v2, p1, v2

    instance-of v2, v2, Ljava/lang/Integer;

    if-nez v2, :cond_3

    .line 217
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

    .line 219
    :cond_3
    const/4 v2, 0x1

    aget-object p1, p1, v2

    .end local p1
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Integer;->intValue()I

    move-result v12

    .restart local v12       #index2:I
    goto :goto_1

    .line 228
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
    invoke-static {v2, v3, v4}, Lcom/android/phone/BluetoothAtPhonebook;->access$400(Lcom/android/phone/BluetoothAtPhonebook;Ljava/lang/String;Z)Lcom/android/phone/BluetoothAtPhonebook$PhonebookResult;

    move-result-object v15

    .line 229
    .local v15, pbr:Lcom/android/phone/BluetoothAtPhonebook$PhonebookResult;
    if-nez v15, :cond_5

    .line 230
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

    .line 237
    :cond_5
    iget-object v2, v15, Lcom/android/phone/BluetoothAtPhonebook$PhonebookResult;->cursor:Landroid/database/Cursor;

    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-eqz v2, :cond_6

    if-lez v11, :cond_6

    if-lt v12, v11, :cond_6

    iget-object v2, v15, Lcom/android/phone/BluetoothAtPhonebook$PhonebookResult;->cursor:Landroid/database/Cursor;

    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-gt v12, v2, :cond_6

    iget-object v2, v15, Lcom/android/phone/BluetoothAtPhonebook$PhonebookResult;->cursor:Landroid/database/Cursor;

    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-le v11, v2, :cond_7

    .line 239
    :cond_6
    new-instance v2, Landroid/bluetooth/AtCommandResult;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Landroid/bluetooth/AtCommandResult;-><init>(I)V

    goto/16 :goto_0

    .line 243
    :cond_7
    new-instance v17, Landroid/bluetooth/AtCommandResult;

    const/4 v2, 0x0

    move-object/from16 v0, v17

    move v1, v2

    invoke-direct {v0, v1}, Landroid/bluetooth/AtCommandResult;-><init>(I)V

    .line 244
    .local v17, result:Landroid/bluetooth/AtCommandResult;
    const/4 v9, -0x1

    .line 245
    .local v9, errorDetected:I
    iget-object v2, v15, Lcom/android/phone/BluetoothAtPhonebook$PhonebookResult;->cursor:Landroid/database/Cursor;

    const/4 v3, 0x1

    sub-int v3, v11, v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 246
    move v10, v11

    .local v10, index:I
    :goto_2
    if-gt v10, v12, :cond_f

    .line 247
    iget-object v2, v15, Lcom/android/phone/BluetoothAtPhonebook$PhonebookResult;->cursor:Landroid/database/Cursor;

    iget v3, v15, Lcom/android/phone/BluetoothAtPhonebook$PhonebookResult;->numberColumn:I

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 248
    .local v14, number:Ljava/lang/String;
    const/4 v13, 0x0

    .line 249
    .local v13, name:Ljava/lang/String;
    const/16 v18, -0x1

    .line 250
    .local v18, type:I
    iget v2, v15, Lcom/android/phone/BluetoothAtPhonebook$PhonebookResult;->nameColumn:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_10

    .line 254
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/BluetoothAtPhonebook$3;->this$0:Lcom/android/phone/BluetoothAtPhonebook;

    move-object v2, v0

    #getter for: Lcom/android/phone/BluetoothAtPhonebook;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/phone/BluetoothAtPhonebook;->access$500(Lcom/android/phone/BluetoothAtPhonebook;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Landroid/provider/ContactsContract$PhoneLookup;->CONTENT_FILTER_URI:Landroid/net/Uri;

    invoke-static {v3, v14}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

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

    .line 258
    .local v8, c:Landroid/database/Cursor;
    if-eqz v8, :cond_9

    .line 259
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 260
    const/4 v2, 0x0

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 261
    const/4 v2, 0x1

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v18

    .line 263
    :cond_8
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 270
    .end local v8           #c:Landroid/database/Cursor;
    :cond_9
    :goto_3
    if-nez v13, :cond_a

    const-string v13, ""

    .line 271
    :cond_a
    invoke-virtual {v13}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v13

    .line 272
    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0x1c

    if-le v2, v3, :cond_b

    const/4 v2, 0x0

    const/16 v3, 0x1c

    invoke-virtual {v13, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v13

    .line 274
    :cond_b
    iget v2, v15, Lcom/android/phone/BluetoothAtPhonebook$PhonebookResult;->typeColumn:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_c

    .line 275
    iget-object v2, v15, Lcom/android/phone/BluetoothAtPhonebook$PhonebookResult;->cursor:Landroid/database/Cursor;

    iget v3, v15, Lcom/android/phone/BluetoothAtPhonebook$PhonebookResult;->typeColumn:I

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v18

    .line 276
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    #calls: Lcom/android/phone/BluetoothAtPhonebook;->getPhoneType(I)Ljava/lang/String;
    invoke-static/range {v18 .. v18}, Lcom/android/phone/BluetoothAtPhonebook;->access$600(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 279
    :cond_c
    invoke-static {v14}, Landroid/telephony/PhoneNumberUtils;->toaFromString(Ljava/lang/String;)I

    move-result v16

    .line 281
    .local v16, regionType:I
    invoke-virtual {v14}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v14

    .line 282
    invoke-static {v14}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 283
    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0x1e

    if-le v2, v3, :cond_d

    const/4 v2, 0x0

    const/16 v3, 0x1e

    invoke-virtual {v14, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v14

    .line 284
    :cond_d
    const-string v2, "-1"

    invoke-virtual {v14, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 286
    const-string v14, ""

    .line 287
    const-string v13, "unknown"

    .line 290
    :cond_e
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

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object v0, v2

    move/from16 v1, v16

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

    move-object/from16 v0, v17

    move-object v1, v2

    invoke-virtual {v0, v1}, Landroid/bluetooth/AtCommandResult;->addResponse(Ljava/lang/String;)V

    .line 292
    iget-object v2, v15, Lcom/android/phone/BluetoothAtPhonebook$PhonebookResult;->cursor:Landroid/database/Cursor;

    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-nez v2, :cond_11

    .end local v13           #name:Ljava/lang/String;
    .end local v14           #number:Ljava/lang/String;
    .end local v16           #regionType:I
    .end local v18           #type:I
    :cond_f
    move-object/from16 v2, v17

    .line 296
    goto/16 :goto_0

    .line 268
    .restart local v13       #name:Ljava/lang/String;
    .restart local v14       #number:Ljava/lang/String;
    .restart local v18       #type:I
    :cond_10
    iget-object v2, v15, Lcom/android/phone/BluetoothAtPhonebook$PhonebookResult;->cursor:Landroid/database/Cursor;

    iget v3, v15, Lcom/android/phone/BluetoothAtPhonebook$PhonebookResult;->nameColumn:I

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    goto/16 :goto_3

    .line 246
    .restart local v16       #regionType:I
    :cond_11
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_2
.end method

.method public handleTestCommand()Landroid/bluetooth/AtCommandResult;
    .locals 5

    .prologue
    .line 306
    const-string v2, "SM"

    iget-object v3, p0, Lcom/android/phone/BluetoothAtPhonebook$3;->this$0:Lcom/android/phone/BluetoothAtPhonebook;

    #getter for: Lcom/android/phone/BluetoothAtPhonebook;->mCurrentPhonebook:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/phone/BluetoothAtPhonebook;->access$300(Lcom/android/phone/BluetoothAtPhonebook;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 307
    const/4 v1, 0x0

    .line 316
    .local v1, size:I
    :goto_0
    if-nez v1, :cond_0

    .line 319
    const/4 v1, 0x1

    .line 321
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

    .line 309
    :cond_1
    iget-object v2, p0, Lcom/android/phone/BluetoothAtPhonebook$3;->this$0:Lcom/android/phone/BluetoothAtPhonebook;

    iget-object v3, p0, Lcom/android/phone/BluetoothAtPhonebook$3;->this$0:Lcom/android/phone/BluetoothAtPhonebook;

    #getter for: Lcom/android/phone/BluetoothAtPhonebook;->mCurrentPhonebook:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/phone/BluetoothAtPhonebook;->access$300(Lcom/android/phone/BluetoothAtPhonebook;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    #calls: Lcom/android/phone/BluetoothAtPhonebook;->getPhonebookResult(Ljava/lang/String;Z)Lcom/android/phone/BluetoothAtPhonebook$PhonebookResult;
    invoke-static {v2, v3, v4}, Lcom/android/phone/BluetoothAtPhonebook;->access$400(Lcom/android/phone/BluetoothAtPhonebook;Ljava/lang/String;Z)Lcom/android/phone/BluetoothAtPhonebook$PhonebookResult;

    move-result-object v0

    .line 310
    .local v0, pbr:Lcom/android/phone/BluetoothAtPhonebook$PhonebookResult;
    if-nez v0, :cond_2

    .line 311
    iget-object v2, p0, Lcom/android/phone/BluetoothAtPhonebook$3;->this$0:Lcom/android/phone/BluetoothAtPhonebook;

    #getter for: Lcom/android/phone/BluetoothAtPhonebook;->mHandsfree:Lcom/android/phone/BluetoothHandsfree;
    invoke-static {v2}, Lcom/android/phone/BluetoothAtPhonebook;->access$200(Lcom/android/phone/BluetoothAtPhonebook;)Lcom/android/phone/BluetoothHandsfree;

    move-result-object v2

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Lcom/android/phone/BluetoothHandsfree;->reportCmeError(I)Landroid/bluetooth/AtCommandResult;

    move-result-object v2

    goto :goto_1

    .line 313
    :cond_2
    iget-object v2, v0, Lcom/android/phone/BluetoothAtPhonebook$PhonebookResult;->cursor:Landroid/database/Cursor;

    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v1

    .restart local v1       #size:I
    goto :goto_0
.end method
