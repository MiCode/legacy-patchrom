.class final Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;
.super Landroid/os/Handler;
.source "PhoneInterfaceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/PhoneInterfaceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "MainThreadHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/PhoneInterfaceManager;


# direct methods
.method private constructor <init>(Lcom/android/phone/PhoneInterfaceManager;)V
    .locals 0
    .parameter

    .prologue
    .line 145
    iput-object p1, p0, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/phone/PhoneInterfaceManager;Lcom/android/phone/PhoneInterfaceManager$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 145
    invoke-direct {p0, p1}, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;-><init>(Lcom/android/phone/PhoneInterfaceManager;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 33
    .parameter "msg"

    .prologue
    .line 152
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v29, v0

    packed-switch v29, :pswitch_data_0

    .line 488
    const-string v29, "PhoneInterfaceManager"

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "MainThreadHandler: unexpected message code: "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v31, v0

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v29 .. v30}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 492
    .end local p0
    .end local p1
    :cond_0
    :goto_0
    return-void

    .line 155
    .restart local p0
    .restart local p1
    :pswitch_0
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v27, v0

    check-cast v27, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;

    .line 156
    .local v27, request:Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;
    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;->argument:Ljava/lang/Object;

    move-object v6, v0

    check-cast v6, Lcom/android/phone/PhoneInterfaceManager$IccAPDUArgument;

    .line 157
    .local v6, argument:Lcom/android/phone/PhoneInterfaceManager$IccAPDUArgument;
    const/16 v29, 0x8

    move-object/from16 v0, p0

    move/from16 v1, v29

    move-object/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v24

    .line 164
    .local v24, onCompleted:Landroid/os/Message;
    new-instance v9, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v9}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 165
    .local v9, bos:Ljava/io/ByteArrayOutputStream;
    new-instance v15, Ljava/io/DataOutputStream;

    invoke-direct {v15, v9}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 166
    .local v15, dos:Ljava/io/DataOutputStream;
    const/16 v21, 0x0

    .line 168
    .local v21, len:I
    move-object v0, v6

    iget v0, v0, Lcom/android/phone/PhoneInterfaceManager$IccAPDUArgument;->channel:I

    move/from16 v29, v0

    if-nez v29, :cond_6

    .line 169
    move-object v0, v6

    iget-object v0, v0, Lcom/android/phone/PhoneInterfaceManager$IccAPDUArgument;->data:Ljava/lang/String;

    move-object/from16 v29, v0

    if-nez v29, :cond_4

    .line 170
    const/16 v21, 0x9

    .line 175
    :goto_1
    move-object v0, v6

    iget v0, v0, Lcom/android/phone/PhoneInterfaceManager$IccAPDUArgument;->p3:I

    move/from16 v29, v0

    const/16 v30, -0x1

    move/from16 v0, v29

    move/from16 v1, v30

    if-ne v0, v1, :cond_1

    .line 176
    const/16 v29, 0x1

    sub-int v21, v21, v29

    .line 179
    :cond_1
    const/16 v29, 0x15

    :try_start_0
    move-object v0, v15

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 180
    const/16 v29, 0x8

    move-object v0, v15

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 181
    move-object v0, v15

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 182
    move-object v0, v6

    iget v0, v0, Lcom/android/phone/PhoneInterfaceManager$IccAPDUArgument;->cla:I

    move/from16 v29, v0

    move-object v0, v15

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 183
    move-object v0, v6

    iget v0, v0, Lcom/android/phone/PhoneInterfaceManager$IccAPDUArgument;->command:I

    move/from16 v29, v0

    move-object v0, v15

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 184
    move-object v0, v6

    iget v0, v0, Lcom/android/phone/PhoneInterfaceManager$IccAPDUArgument;->p1:I

    move/from16 v29, v0

    move-object v0, v15

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 185
    move-object v0, v6

    iget v0, v0, Lcom/android/phone/PhoneInterfaceManager$IccAPDUArgument;->p2:I

    move/from16 v29, v0

    move-object v0, v15

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 186
    move-object v0, v6

    iget v0, v0, Lcom/android/phone/PhoneInterfaceManager$IccAPDUArgument;->p3:I

    move/from16 v29, v0

    const/16 v30, -0x1

    move/from16 v0, v29

    move/from16 v1, v30

    if-eq v0, v1, :cond_2

    .line 187
    move-object v0, v6

    iget v0, v0, Lcom/android/phone/PhoneInterfaceManager$IccAPDUArgument;->p3:I

    move/from16 v29, v0

    move-object v0, v15

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 189
    :cond_2
    move-object v0, v6

    iget-object v0, v0, Lcom/android/phone/PhoneInterfaceManager$IccAPDUArgument;->data:Ljava/lang/String;

    move-object/from16 v29, v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    if-nez v29, :cond_5

    .line 238
    :cond_3
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    move-object/from16 v29, v0

    const-string v30, "APDU-TEST1"

    #calls: Lcom/android/phone/PhoneInterfaceManager;->log(Ljava/lang/String;)V
    invoke-static/range {v29 .. v30}, Lcom/android/phone/PhoneInterfaceManager;->access$000(Lcom/android/phone/PhoneInterfaceManager;Ljava/lang/String;)V

    .line 239
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    move-object/from16 v29, v0

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "data being sent to RIL is "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object v0, v6

    iget v0, v0, Lcom/android/phone/PhoneInterfaceManager$IccAPDUArgument;->cla:I

    move/from16 v31, v0

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string v31, " "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object v0, v6

    iget v0, v0, Lcom/android/phone/PhoneInterfaceManager$IccAPDUArgument;->command:I

    move/from16 v31, v0

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string v31, " "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object v0, v6

    iget v0, v0, Lcom/android/phone/PhoneInterfaceManager$IccAPDUArgument;->p1:I

    move/from16 v31, v0

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string v31, " "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object v0, v6

    iget v0, v0, Lcom/android/phone/PhoneInterfaceManager$IccAPDUArgument;->p2:I

    move/from16 v31, v0

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string v31, " "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object v0, v6

    iget v0, v0, Lcom/android/phone/PhoneInterfaceManager$IccAPDUArgument;->p3:I

    move/from16 v31, v0

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string v31, "channel id is "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object v0, v6

    iget v0, v0, Lcom/android/phone/PhoneInterfaceManager$IccAPDUArgument;->channel:I

    move/from16 v31, v0

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string v31, " "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object v0, v6

    iget-object v0, v0, Lcom/android/phone/PhoneInterfaceManager$IccAPDUArgument;->data:Ljava/lang/String;

    move-object/from16 v31, v0

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    #calls: Lcom/android/phone/PhoneInterfaceManager;->log(Ljava/lang/String;)V
    invoke-static/range {v29 .. v30}, Lcom/android/phone/PhoneInterfaceManager;->access$000(Lcom/android/phone/PhoneInterfaceManager;Ljava/lang/String;)V

    .line 243
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/android/phone/PhoneInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    move-object/from16 v29, v0

    invoke-virtual {v9}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v30

    const/16 v31, 0x8

    move-object/from16 v0, p0

    move/from16 v1, v31

    move-object/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v31

    invoke-interface/range {v29 .. v31}, Lcom/android/internal/telephony/Phone;->invokeOemRilRequestRaw([BLandroid/os/Message;)V

    .line 246
    if-eqz v15, :cond_0

    .line 248
    :try_start_1
    invoke-virtual {v15}, Ljava/io/DataOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 249
    :catch_0
    move-exception v18

    .line 250
    .local v18, e:Ljava/io/IOException;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    move-object/from16 v29, v0

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "CMD_EXCHANGE_APDU : close fail - "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    #calls: Lcom/android/phone/PhoneInterfaceManager;->log(Ljava/lang/String;)V
    invoke-static/range {v29 .. v30}, Lcom/android/phone/PhoneInterfaceManager;->access$000(Lcom/android/phone/PhoneInterfaceManager;Ljava/lang/String;)V

    .line 251
    invoke-virtual/range {v18 .. v18}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_0

    .line 172
    .end local v18           #e:Ljava/io/IOException;
    :cond_4
    move-object v0, v6

    iget-object v0, v0, Lcom/android/phone/PhoneInterfaceManager$IccAPDUArgument;->data:Ljava/lang/String;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Ljava/lang/String;->length()I

    move-result v29

    div-int/lit8 v29, v29, 0x2

    add-int/lit8 v21, v29, 0x9

    goto/16 :goto_1

    .line 191
    :cond_5
    :try_start_2
    move-object v0, v6

    iget-object v0, v0, Lcom/android/phone/PhoneInterfaceManager$IccAPDUArgument;->data:Ljava/lang/String;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Ljava/lang/String;->length()I

    move-result v29

    div-int/lit8 v29, v29, 0x2

    move/from16 v0, v29

    new-array v0, v0, [B

    move-object v8, v0

    .line 192
    .local v8, ba:[B
    const/16 v20, 0x0

    .local v20, i:I
    :goto_3
    move-object v0, v8

    array-length v0, v0

    move/from16 v29, v0

    move/from16 v0, v20

    move/from16 v1, v29

    if-ge v0, v1, :cond_3

    .line 193
    move-object v0, v6

    iget-object v0, v0, Lcom/android/phone/PhoneInterfaceManager$IccAPDUArgument;->data:Ljava/lang/String;

    move-object/from16 v29, v0

    mul-int/lit8 v30, v20, 0x2

    mul-int/lit8 v31, v20, 0x2

    add-int/lit8 v31, v31, 0x2

    invoke-virtual/range {v29 .. v31}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v29

    const/16 v30, 0x10

    invoke-static/range {v29 .. v30}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v29

    move/from16 v0, v29

    int-to-byte v0, v0

    move/from16 v29, v0

    aput-byte v29, v8, v20

    .line 195
    aget-byte v29, v8, v20

    move-object v0, v15

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->write(I)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 192
    add-int/lit8 v20, v20, 0x1

    goto :goto_3

    .line 198
    .end local v8           #ba:[B
    .end local v20           #i:I
    :catch_1
    move-exception v29

    move-object/from16 v18, v29

    .line 199
    .restart local v18       #e:Ljava/io/IOException;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    move-object/from16 v29, v0

    const-string v30, "IOException in APDU()"

    #calls: Lcom/android/phone/PhoneInterfaceManager;->log(Ljava/lang/String;)V
    invoke-static/range {v29 .. v30}, Lcom/android/phone/PhoneInterfaceManager;->access$000(Lcom/android/phone/PhoneInterfaceManager;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 202
    .end local v18           #e:Ljava/io/IOException;
    :cond_6
    move-object v0, v6

    iget-object v0, v0, Lcom/android/phone/PhoneInterfaceManager$IccAPDUArgument;->data:Ljava/lang/String;

    move-object/from16 v29, v0

    if-nez v29, :cond_9

    .line 203
    const/16 v21, 0xd

    .line 208
    :goto_4
    move-object v0, v6

    iget v0, v0, Lcom/android/phone/PhoneInterfaceManager$IccAPDUArgument;->p3:I

    move/from16 v29, v0

    const/16 v30, -0x1

    move/from16 v0, v29

    move/from16 v1, v30

    if-ne v0, v1, :cond_7

    .line 209
    const/16 v29, 0x1

    sub-int v21, v21, v29

    .line 212
    :cond_7
    const/16 v29, 0x15

    :try_start_3
    move-object v0, v15

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 213
    move-object v0, v6

    iget v0, v0, Lcom/android/phone/PhoneInterfaceManager$IccAPDUArgument;->p3:I

    move/from16 v29, v0

    const/16 v30, -0x1

    move/from16 v0, v29

    move/from16 v1, v30

    if-eq v0, v1, :cond_a

    .line 214
    const/16 v29, 0xb

    move-object v0, v15

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 217
    :goto_5
    move-object v0, v15

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 218
    move-object v0, v6

    iget v0, v0, Lcom/android/phone/PhoneInterfaceManager$IccAPDUArgument;->cla:I

    move/from16 v29, v0

    move-object v0, v15

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 219
    move-object v0, v6

    iget v0, v0, Lcom/android/phone/PhoneInterfaceManager$IccAPDUArgument;->command:I

    move/from16 v29, v0

    move-object v0, v15

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 220
    move-object v0, v6

    iget v0, v0, Lcom/android/phone/PhoneInterfaceManager$IccAPDUArgument;->p1:I

    move/from16 v29, v0

    move-object v0, v15

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 221
    move-object v0, v6

    iget v0, v0, Lcom/android/phone/PhoneInterfaceManager$IccAPDUArgument;->p2:I

    move/from16 v29, v0

    move-object v0, v15

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 222
    move-object v0, v6

    iget v0, v0, Lcom/android/phone/PhoneInterfaceManager$IccAPDUArgument;->p3:I

    move/from16 v29, v0

    const/16 v30, -0x1

    move/from16 v0, v29

    move/from16 v1, v30

    if-eq v0, v1, :cond_8

    .line 223
    move-object v0, v6

    iget v0, v0, Lcom/android/phone/PhoneInterfaceManager$IccAPDUArgument;->p3:I

    move/from16 v29, v0

    move-object v0, v15

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 224
    :cond_8
    move-object v0, v6

    iget v0, v0, Lcom/android/phone/PhoneInterfaceManager$IccAPDUArgument;->channel:I

    move/from16 v29, v0

    move-object v0, v15

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 225
    move-object v0, v6

    iget-object v0, v0, Lcom/android/phone/PhoneInterfaceManager$IccAPDUArgument;->data:Ljava/lang/String;

    move-object/from16 v29, v0

    if-eqz v29, :cond_3

    .line 227
    move-object v0, v6

    iget-object v0, v0, Lcom/android/phone/PhoneInterfaceManager$IccAPDUArgument;->data:Ljava/lang/String;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Ljava/lang/String;->length()I

    move-result v29

    div-int/lit8 v29, v29, 0x2

    move/from16 v0, v29

    new-array v0, v0, [B

    move-object v8, v0

    .line 228
    .restart local v8       #ba:[B
    const/16 v20, 0x0

    .restart local v20       #i:I
    :goto_6
    move-object v0, v8

    array-length v0, v0

    move/from16 v29, v0

    move/from16 v0, v20

    move/from16 v1, v29

    if-ge v0, v1, :cond_3

    .line 229
    move-object v0, v6

    iget-object v0, v0, Lcom/android/phone/PhoneInterfaceManager$IccAPDUArgument;->data:Ljava/lang/String;

    move-object/from16 v29, v0

    mul-int/lit8 v30, v20, 0x2

    mul-int/lit8 v31, v20, 0x2

    add-int/lit8 v31, v31, 0x2

    invoke-virtual/range {v29 .. v31}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v29

    const/16 v30, 0x10

    invoke-static/range {v29 .. v30}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v29

    move/from16 v0, v29

    int-to-byte v0, v0

    move/from16 v29, v0

    aput-byte v29, v8, v20

    .line 231
    aget-byte v29, v8, v20

    move-object v0, v15

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->write(I)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 228
    add-int/lit8 v20, v20, 0x1

    goto :goto_6

    .line 205
    .end local v8           #ba:[B
    .end local v20           #i:I
    :cond_9
    move-object v0, v6

    iget-object v0, v0, Lcom/android/phone/PhoneInterfaceManager$IccAPDUArgument;->data:Ljava/lang/String;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Ljava/lang/String;->length()I

    move-result v29

    div-int/lit8 v29, v29, 0x2

    add-int/lit8 v21, v29, 0xd

    goto/16 :goto_4

    .line 216
    :cond_a
    const/16 v29, 0xc

    :try_start_4
    move-object v0, v15

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeByte(I)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto/16 :goto_5

    .line 234
    :catch_2
    move-exception v29

    move-object/from16 v18, v29

    .line 235
    .restart local v18       #e:Ljava/io/IOException;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    move-object/from16 v29, v0

    const-string v30, "IOException in APDU()"

    #calls: Lcom/android/phone/PhoneInterfaceManager;->log(Ljava/lang/String;)V
    invoke-static/range {v29 .. v30}, Lcom/android/phone/PhoneInterfaceManager;->access$000(Lcom/android/phone/PhoneInterfaceManager;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 266
    .end local v6           #argument:Lcom/android/phone/PhoneInterfaceManager$IccAPDUArgument;
    .end local v9           #bos:Ljava/io/ByteArrayOutputStream;
    .end local v15           #dos:Ljava/io/DataOutputStream;
    .end local v18           #e:Ljava/io/IOException;
    .end local v21           #len:I
    .end local v24           #onCompleted:Landroid/os/Message;
    .end local v27           #request:Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;
    :pswitch_1
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v5, v0

    check-cast v5, Landroid/os/AsyncResult;

    .line 267
    .local v5, ar:Landroid/os/AsyncResult;
    move-object v0, v5

    iget-object v0, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v27, v0

    check-cast v27, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;

    .line 268
    .restart local v27       #request:Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;
    move-object v0, v5

    iget-object v0, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v29, v0

    if-nez v29, :cond_c

    move-object v0, v5

    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v29, v0

    if-eqz v29, :cond_c

    move-object v0, v5

    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 p0, v0

    .end local p0
    check-cast p0, [B

    check-cast p0, [B

    move-object/from16 v0, p0

    array-length v0, v0

    move/from16 v29, v0

    const/16 v30, 0x2

    move/from16 v0, v29

    move/from16 v1, v30

    if-lt v0, v1, :cond_c

    .line 270
    move-object v0, v5

    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 p0, v0

    check-cast p0, [B

    move-object/from16 v0, p0

    check-cast v0, [B

    move-object v7, v0

    .line 271
    .local v7, b:[B
    const/4 v14, 0x0

    .line 273
    .local v14, data:[B
    move-object v0, v7

    array-length v0, v0

    move/from16 v29, v0

    const/16 v30, 0x2

    move/from16 v0, v29

    move/from16 v1, v30

    if-le v0, v1, :cond_b

    .line 274
    move-object v0, v7

    array-length v0, v0

    move/from16 v29, v0

    const/16 v30, 0x2

    sub-int v29, v29, v30

    move/from16 v0, v29

    new-array v0, v0, [B

    move-object v14, v0

    .line 275
    const/16 v29, 0x0

    const/16 v30, 0x0

    move-object v0, v14

    array-length v0, v0

    move/from16 v31, v0

    move-object v0, v7

    move/from16 v1, v29

    move-object v2, v14

    move/from16 v3, v30

    move/from16 v4, v31

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 277
    :cond_b
    new-instance v29, Lcom/android/internal/telephony/IccIoResult;

    move-object v0, v7

    array-length v0, v0

    move/from16 v30, v0

    const/16 v31, 0x2

    sub-int v30, v30, v31

    aget-byte v30, v7, v30

    move/from16 v0, v30

    and-int/lit16 v0, v0, 0xff

    move/from16 v30, v0

    move-object v0, v7

    array-length v0, v0

    move/from16 v31, v0

    const/16 v32, 0x1

    sub-int v31, v31, v32

    aget-byte v31, v7, v31

    move/from16 v0, v31

    and-int/lit16 v0, v0, 0xff

    move/from16 v31, v0

    move-object/from16 v0, v29

    move/from16 v1, v30

    move/from16 v2, v31

    move-object v3, v14

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/IccIoResult;-><init>(II[B)V

    move-object/from16 v0, v29

    move-object/from16 v1, v27

    iput-object v0, v1, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;->result:Ljava/lang/Object;

    .line 282
    .end local v7           #b:[B
    .end local v14           #data:[B
    :goto_7
    monitor-enter v27

    .line 283
    :try_start_5
    invoke-virtual/range {v27 .. v27}, Ljava/lang/Object;->notifyAll()V

    .line 284
    monitor-exit v27

    goto/16 :goto_0

    :catchall_0
    move-exception v29

    monitor-exit v27
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw v29

    .line 280
    :cond_c
    new-instance v29, Lcom/android/internal/telephony/IccIoResult;

    const/16 v30, 0x6f

    const/16 v31, 0x0

    const/16 p0, 0x0

    check-cast p0, [B

    move-object/from16 v0, v29

    move/from16 v1, v30

    move/from16 v2, v31

    move-object/from16 v3, p0

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/IccIoResult;-><init>(II[B)V

    move-object/from16 v0, v29

    move-object/from16 v1, v27

    iput-object v0, v1, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;->result:Ljava/lang/Object;

    goto :goto_7

    .line 288
    .end local v5           #ar:Landroid/os/AsyncResult;
    .end local v27           #request:Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;
    .restart local p0
    :pswitch_2
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v27, v0

    check-cast v27, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;

    .line 289
    .restart local v27       #request:Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;
    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;->argument:Ljava/lang/Object;

    move-object/from16 v25, v0

    check-cast v25, Lcom/android/phone/PhoneInterfaceManager$IccOpenChannel;

    .line 290
    .local v25, openArgument:Lcom/android/phone/PhoneInterfaceManager$IccOpenChannel;
    const/16 v29, 0xa

    move-object/from16 v0, p0

    move/from16 v1, v29

    move-object/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v24

    .line 291
    .restart local v24       #onCompleted:Landroid/os/Message;
    new-instance v11, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v11}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 292
    .local v11, bos_open:Ljava/io/ByteArrayOutputStream;
    new-instance v17, Ljava/io/DataOutputStream;

    move-object/from16 v0, v17

    move-object v1, v11

    invoke-direct {v0, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 293
    .local v17, dos_open:Ljava/io/DataOutputStream;
    const/16 v23, 0x0

    .line 297
    .local v23, len_open:I
    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/android/phone/PhoneInterfaceManager$IccOpenChannel;->AID:Ljava/lang/String;

    move-object/from16 v29, v0

    if-nez v29, :cond_e

    .line 298
    const/16 v23, 0x4

    .line 303
    :goto_8
    const/16 v29, 0x15

    :try_start_6
    move-object/from16 v0, v17

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 304
    const/16 v29, 0x9

    move-object/from16 v0, v17

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 305
    move-object/from16 v0, v17

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 306
    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/android/phone/PhoneInterfaceManager$IccOpenChannel;->AID:Ljava/lang/String;

    move-object/from16 v29, v0
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    if-nez v29, :cond_f

    .line 319
    :cond_d
    :goto_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    move-object/from16 v29, v0

    const-string v30, "OPEN CHANNEL-TEST"

    #calls: Lcom/android/phone/PhoneInterfaceManager;->log(Ljava/lang/String;)V
    invoke-static/range {v29 .. v30}, Lcom/android/phone/PhoneInterfaceManager;->access$000(Lcom/android/phone/PhoneInterfaceManager;Ljava/lang/String;)V

    .line 320
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/android/phone/PhoneInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    move-object/from16 v29, v0

    invoke-virtual {v11}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v30

    const/16 v31, 0xa

    move-object/from16 v0, p0

    move/from16 v1, v31

    move-object/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v31

    invoke-interface/range {v29 .. v31}, Lcom/android/internal/telephony/Phone;->invokeOemRilRequestRaw([BLandroid/os/Message;)V

    .line 323
    if-eqz v17, :cond_0

    .line 325
    :try_start_7
    invoke-virtual/range {v17 .. v17}, Ljava/io/DataOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3

    goto/16 :goto_0

    .line 326
    :catch_3
    move-exception v18

    .line 327
    .restart local v18       #e:Ljava/io/IOException;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    move-object/from16 v29, v0

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "CMD_OPEN_CHANNEL : close fail - "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    #calls: Lcom/android/phone/PhoneInterfaceManager;->log(Ljava/lang/String;)V
    invoke-static/range {v29 .. v30}, Lcom/android/phone/PhoneInterfaceManager;->access$000(Lcom/android/phone/PhoneInterfaceManager;Ljava/lang/String;)V

    .line 328
    invoke-virtual/range {v18 .. v18}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_0

    .line 300
    .end local v18           #e:Ljava/io/IOException;
    :cond_e
    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/android/phone/PhoneInterfaceManager$IccOpenChannel;->AID:Ljava/lang/String;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Ljava/lang/String;->length()I

    move-result v29

    div-int/lit8 v29, v29, 0x2

    add-int/lit8 v23, v29, 0x4

    goto/16 :goto_8

    .line 309
    :cond_f
    :try_start_8
    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/android/phone/PhoneInterfaceManager$IccOpenChannel;->AID:Ljava/lang/String;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Ljava/lang/String;->length()I

    move-result v29

    div-int/lit8 v29, v29, 0x2

    move/from16 v0, v29

    new-array v0, v0, [B

    move-object v8, v0

    .line 310
    .restart local v8       #ba:[B
    const/16 v20, 0x0

    .restart local v20       #i:I
    :goto_a
    move-object v0, v8

    array-length v0, v0

    move/from16 v29, v0

    move/from16 v0, v20

    move/from16 v1, v29

    if-ge v0, v1, :cond_d

    .line 311
    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/android/phone/PhoneInterfaceManager$IccOpenChannel;->AID:Ljava/lang/String;

    move-object/from16 v29, v0

    mul-int/lit8 v30, v20, 0x2

    mul-int/lit8 v31, v20, 0x2

    add-int/lit8 v31, v31, 0x2

    invoke-virtual/range {v29 .. v31}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v29

    const/16 v30, 0x10

    invoke-static/range {v29 .. v30}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v29

    move/from16 v0, v29

    int-to-byte v0, v0

    move/from16 v29, v0

    aput-byte v29, v8, v20

    .line 313
    aget-byte v29, v8, v20

    move-object/from16 v0, v17

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->write(I)V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_4

    .line 310
    add-int/lit8 v20, v20, 0x1

    goto :goto_a

    .line 316
    .end local v8           #ba:[B
    .end local v20           #i:I
    :catch_4
    move-exception v29

    move-object/from16 v18, v29

    .line 317
    .restart local v18       #e:Ljava/io/IOException;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    move-object/from16 v29, v0

    const-string v30, "IOException in open channel"

    #calls: Lcom/android/phone/PhoneInterfaceManager;->log(Ljava/lang/String;)V
    invoke-static/range {v29 .. v30}, Lcom/android/phone/PhoneInterfaceManager;->access$000(Lcom/android/phone/PhoneInterfaceManager;Ljava/lang/String;)V

    goto/16 :goto_9

    .line 336
    .end local v11           #bos_open:Ljava/io/ByteArrayOutputStream;
    .end local v17           #dos_open:Ljava/io/DataOutputStream;
    .end local v18           #e:Ljava/io/IOException;
    .end local v23           #len_open:I
    .end local v24           #onCompleted:Landroid/os/Message;
    .end local v25           #openArgument:Lcom/android/phone/PhoneInterfaceManager$IccOpenChannel;
    .end local v27           #request:Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;
    :pswitch_3
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v5, v0

    check-cast v5, Landroid/os/AsyncResult;

    .line 337
    .restart local v5       #ar:Landroid/os/AsyncResult;
    move-object v0, v5

    iget-object v0, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v27, v0

    check-cast v27, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;

    .line 338
    .restart local v27       #request:Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    move-object/from16 v29, v0

    const-string v30, "response came"

    #calls: Lcom/android/phone/PhoneInterfaceManager;->log(Ljava/lang/String;)V
    invoke-static/range {v29 .. v30}, Lcom/android/phone/PhoneInterfaceManager;->access$000(Lcom/android/phone/PhoneInterfaceManager;Ljava/lang/String;)V

    .line 339
    move-object v0, v5

    iget-object v0, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v29, v0

    if-nez v29, :cond_13

    move-object v0, v5

    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v29, v0

    if-eqz v29, :cond_13

    .line 341
    const/16 v28, 0x0

    .line 342
    .local v28, temp:I
    const/4 v13, 0x0

    .line 344
    .local v13, count:I
    move-object v0, v5

    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 p1, v0

    .end local p1
    check-cast p1, [B

    move-object/from16 v0, p1

    check-cast v0, [B

    move-object v14, v0

    .line 346
    .restart local v14       #data:[B
    move-object v0, v14

    array-length v0, v0

    move/from16 v29, v0

    const/16 v30, 0x1

    sub-int v13, v29, v30

    :goto_b
    if-ltz v13, :cond_12

    .line 347
    aget-byte v29, v14, v13

    if-gez v29, :cond_11

    .line 348
    aget-byte v29, v14, v13

    move/from16 v0, v29

    add-int/lit16 v0, v0, 0x100

    move/from16 v29, v0

    or-int v28, v28, v29

    .line 353
    :goto_c
    if-lez v13, :cond_10

    .line 354
    shl-int/lit8 v28, v28, 0x8

    .line 346
    :cond_10
    add-int/lit8 v13, v13, -0x1

    goto :goto_b

    .line 350
    :cond_11
    aget-byte v29, v14, v13

    or-int v28, v28, v29

    goto :goto_c

    .line 357
    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    move-object/from16 v29, v0

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "data length"

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object v0, v14

    array-length v0, v0

    move/from16 v31, v0

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    #calls: Lcom/android/phone/PhoneInterfaceManager;->log(Ljava/lang/String;)V
    invoke-static/range {v29 .. v30}, Lcom/android/phone/PhoneInterfaceManager;->access$000(Lcom/android/phone/PhoneInterfaceManager;Ljava/lang/String;)V

    .line 358
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    move-object/from16 v29, v0

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "Response from sim is data"

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    move-object v1, v14

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string v31, "session Id"

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    #calls: Lcom/android/phone/PhoneInterfaceManager;->log(Ljava/lang/String;)V
    invoke-static/range {v29 .. v30}, Lcom/android/phone/PhoneInterfaceManager;->access$000(Lcom/android/phone/PhoneInterfaceManager;Ljava/lang/String;)V

    .line 361
    new-instance v29, Ljava/lang/Integer;

    move-object/from16 v0, v29

    move/from16 v1, v28

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    move-object/from16 v0, v29

    move-object/from16 v1, v27

    iput-object v0, v1, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;->result:Ljava/lang/Object;

    .line 366
    .end local v13           #count:I
    .end local v14           #data:[B
    .end local v28           #temp:I
    :goto_d
    monitor-enter v27

    .line 367
    :try_start_9
    invoke-virtual/range {v27 .. v27}, Ljava/lang/Object;->notifyAll()V

    .line 368
    monitor-exit v27

    goto/16 :goto_0

    :catchall_1
    move-exception v29

    monitor-exit v27
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    throw v29

    .line 364
    .restart local p1
    :cond_13
    new-instance v29, Ljava/lang/Integer;

    const/16 v30, -0x1

    invoke-direct/range {v29 .. v30}, Ljava/lang/Integer;-><init>(I)V

    move-object/from16 v0, v29

    move-object/from16 v1, v27

    iput-object v0, v1, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;->result:Ljava/lang/Object;

    goto :goto_d

    .line 371
    .end local v5           #ar:Landroid/os/AsyncResult;
    .end local v27           #request:Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;
    :pswitch_4
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v27, v0

    check-cast v27, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;

    .line 372
    .restart local v27       #request:Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;
    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;->argument:Ljava/lang/Object;

    move-object v12, v0

    check-cast v12, Lcom/android/phone/PhoneInterfaceManager$IccCloseChannel;

    .line 373
    .local v12, closeArgument:Lcom/android/phone/PhoneInterfaceManager$IccCloseChannel;
    const/16 v29, 0xc

    move-object/from16 v0, p0

    move/from16 v1, v29

    move-object/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v24

    .line 374
    .restart local v24       #onCompleted:Landroid/os/Message;
    new-instance v10, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v10}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 375
    .local v10, bos_close:Ljava/io/ByteArrayOutputStream;
    new-instance v16, Ljava/io/DataOutputStream;

    move-object/from16 v0, v16

    move-object v1, v10

    invoke-direct {v0, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 376
    .local v16, dos_close:Ljava/io/DataOutputStream;
    const/16 v22, 0x0

    .line 377
    .local v22, len_close:I
    move-object v0, v12

    iget v0, v0, Lcom/android/phone/PhoneInterfaceManager$IccCloseChannel;->sessionID:I

    move/from16 v29, v0

    if-nez v29, :cond_14

    .line 378
    const/16 v22, 0x4

    .line 383
    :goto_e
    const/16 v29, 0x15

    :try_start_a
    move-object/from16 v0, v16

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 384
    const/16 v29, 0xa

    move-object/from16 v0, v16

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 385
    move-object/from16 v0, v16

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 386
    move-object v0, v12

    iget v0, v0, Lcom/android/phone/PhoneInterfaceManager$IccCloseChannel;->sessionID:I

    move/from16 v29, v0
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_6

    if-nez v29, :cond_15

    .line 396
    :goto_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    move-object/from16 v29, v0

    const-string v30, "CLOSE CHANNEL-TEST"

    #calls: Lcom/android/phone/PhoneInterfaceManager;->log(Ljava/lang/String;)V
    invoke-static/range {v29 .. v30}, Lcom/android/phone/PhoneInterfaceManager;->access$000(Lcom/android/phone/PhoneInterfaceManager;Ljava/lang/String;)V

    .line 397
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/android/phone/PhoneInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    move-object/from16 v29, v0

    invoke-virtual {v10}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v30

    const/16 v31, 0xc

    move-object/from16 v0, p0

    move/from16 v1, v31

    move-object/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v31

    invoke-interface/range {v29 .. v31}, Lcom/android/internal/telephony/Phone;->invokeOemRilRequestRaw([BLandroid/os/Message;)V

    .line 400
    if-eqz v16, :cond_0

    .line 402
    :try_start_b
    invoke-virtual/range {v16 .. v16}, Ljava/io/DataOutputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_5

    goto/16 :goto_0

    .line 403
    :catch_5
    move-exception v18

    .line 404
    .restart local v18       #e:Ljava/io/IOException;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    move-object/from16 v29, v0

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "CMD_CLOSE_CHANNEL : close fail - "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    #calls: Lcom/android/phone/PhoneInterfaceManager;->log(Ljava/lang/String;)V
    invoke-static/range {v29 .. v30}, Lcom/android/phone/PhoneInterfaceManager;->access$000(Lcom/android/phone/PhoneInterfaceManager;Ljava/lang/String;)V

    .line 405
    invoke-virtual/range {v18 .. v18}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_0

    .line 380
    .end local v18           #e:Ljava/io/IOException;
    :cond_14
    const/16 v22, 0x8

    goto :goto_e

    .line 389
    :cond_15
    :try_start_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    move-object/from16 v29, v0

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "Session ID received from application is "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object v0, v12

    iget v0, v0, Lcom/android/phone/PhoneInterfaceManager$IccCloseChannel;->sessionID:I

    move/from16 v31, v0

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    #calls: Lcom/android/phone/PhoneInterfaceManager;->log(Ljava/lang/String;)V
    invoke-static/range {v29 .. v30}, Lcom/android/phone/PhoneInterfaceManager;->access$000(Lcom/android/phone/PhoneInterfaceManager;Ljava/lang/String;)V

    .line 391
    move-object v0, v12

    iget v0, v0, Lcom/android/phone/PhoneInterfaceManager$IccCloseChannel;->sessionID:I

    move/from16 v29, v0

    move-object/from16 v0, v16

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeInt(I)V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_6

    goto/16 :goto_f

    .line 393
    :catch_6
    move-exception v29

    move-object/from16 v18, v29

    .line 394
    .restart local v18       #e:Ljava/io/IOException;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    move-object/from16 v29, v0

    const-string v30, "IOException in close channel"

    #calls: Lcom/android/phone/PhoneInterfaceManager;->log(Ljava/lang/String;)V
    invoke-static/range {v29 .. v30}, Lcom/android/phone/PhoneInterfaceManager;->access$000(Lcom/android/phone/PhoneInterfaceManager;Ljava/lang/String;)V

    goto/16 :goto_f

    .line 410
    .end local v10           #bos_close:Ljava/io/ByteArrayOutputStream;
    .end local v12           #closeArgument:Lcom/android/phone/PhoneInterfaceManager$IccCloseChannel;
    .end local v16           #dos_close:Ljava/io/DataOutputStream;
    .end local v18           #e:Ljava/io/IOException;
    .end local v22           #len_close:I
    .end local v24           #onCompleted:Landroid/os/Message;
    .end local v27           #request:Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;
    :pswitch_5
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v5, v0

    check-cast v5, Landroid/os/AsyncResult;

    .line 411
    .restart local v5       #ar:Landroid/os/AsyncResult;
    move-object v0, v5

    iget-object v0, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v27, v0

    check-cast v27, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;

    .line 412
    .restart local v27       #request:Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;
    move-object v0, v5

    iget-object v0, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v29, v0

    if-nez v29, :cond_16

    .line 413
    new-instance v29, Ljava/lang/Integer;

    const/16 v30, 0x0

    invoke-direct/range {v29 .. v30}, Ljava/lang/Integer;-><init>(I)V

    move-object/from16 v0, v29

    move-object/from16 v1, v27

    iput-object v0, v1, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;->result:Ljava/lang/Object;

    .line 417
    :goto_10
    monitor-enter v27

    .line 418
    :try_start_d
    invoke-virtual/range {v27 .. v27}, Ljava/lang/Object;->notifyAll()V

    .line 419
    monitor-exit v27

    goto/16 :goto_0

    :catchall_2
    move-exception v29

    monitor-exit v27
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_2

    throw v29

    .line 415
    :cond_16
    new-instance v29, Ljava/lang/Integer;

    const/16 v30, -0x1

    invoke-direct/range {v29 .. v30}, Ljava/lang/Integer;-><init>(I)V

    move-object/from16 v0, v29

    move-object/from16 v1, v27

    iput-object v0, v1, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;->result:Ljava/lang/Object;

    goto :goto_10

    .line 423
    .end local v5           #ar:Landroid/os/AsyncResult;
    .end local v27           #request:Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;
    :pswitch_6
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v27, v0

    check-cast v27, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;

    .line 424
    .restart local v27       #request:Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/android/phone/PhoneInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    move-object/from16 v29, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;->argument:Ljava/lang/Object;

    move-object/from16 p0, v0

    .end local p0
    check-cast p0, Ljava/lang/String;

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/Phone;->handlePinMmi(Ljava/lang/String;)Z

    move-result v29

    invoke-static/range {v29 .. v29}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v29

    move-object/from16 v0, v29

    move-object/from16 v1, v27

    iput-object v0, v1, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;->result:Ljava/lang/Object;

    .line 427
    monitor-enter v27

    .line 428
    :try_start_e
    invoke-virtual/range {v27 .. v27}, Ljava/lang/Object;->notifyAll()V

    .line 429
    monitor-exit v27

    goto/16 :goto_0

    :catchall_3
    move-exception v29

    monitor-exit v27
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_3

    throw v29

    .line 433
    .end local v27           #request:Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;
    .restart local p0
    :pswitch_7
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v27, v0

    check-cast v27, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;

    .line 434
    .restart local v27       #request:Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;
    const/16 v29, 0x3

    move-object/from16 v0, p0

    move/from16 v1, v29

    move-object/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v24

    .line 436
    .restart local v24       #onCompleted:Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/android/phone/PhoneInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    move-object/from16 v1, v24

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/Phone;->getNeighboringCids(Landroid/os/Message;)V

    goto/16 :goto_0

    .line 440
    .end local v24           #onCompleted:Landroid/os/Message;
    .end local v27           #request:Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;
    :pswitch_8
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v5, v0

    check-cast v5, Landroid/os/AsyncResult;

    .line 441
    .restart local v5       #ar:Landroid/os/AsyncResult;
    move-object v0, v5

    iget-object v0, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v27, v0

    check-cast v27, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;

    .line 442
    .restart local v27       #request:Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;
    move-object v0, v5

    iget-object v0, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v29, v0

    if-nez v29, :cond_17

    move-object v0, v5

    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v29, v0

    if-eqz v29, :cond_17

    .line 443
    move-object v0, v5

    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    move-object/from16 v1, v27

    iput-object v0, v1, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;->result:Ljava/lang/Object;

    .line 449
    :goto_11
    monitor-enter v27

    .line 450
    :try_start_f
    invoke-virtual/range {v27 .. v27}, Ljava/lang/Object;->notifyAll()V

    .line 451
    monitor-exit v27

    goto/16 :goto_0

    :catchall_4
    move-exception v29

    monitor-exit v27
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_4

    throw v29

    .line 446
    :cond_17
    new-instance v29, Ljava/util/ArrayList;

    invoke-direct/range {v29 .. v29}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v29

    move-object/from16 v1, v27

    iput-object v0, v1, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;->result:Ljava/lang/Object;

    goto :goto_11

    .line 455
    .end local v5           #ar:Landroid/os/AsyncResult;
    .end local v27           #request:Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;
    :pswitch_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    move-object/from16 v29, v0

    #calls: Lcom/android/phone/PhoneInterfaceManager;->answerRingingCallInternal()V
    invoke-static/range {v29 .. v29}, Lcom/android/phone/PhoneInterfaceManager;->access$100(Lcom/android/phone/PhoneInterfaceManager;)V

    goto/16 :goto_0

    .line 459
    :pswitch_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    move-object/from16 v29, v0

    #calls: Lcom/android/phone/PhoneInterfaceManager;->silenceRingerInternal()V
    invoke-static/range {v29 .. v29}, Lcom/android/phone/PhoneInterfaceManager;->access$200(Lcom/android/phone/PhoneInterfaceManager;)V

    goto/16 :goto_0

    .line 463
    :pswitch_b
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v27, v0

    check-cast v27, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;

    .line 464
    .restart local v27       #request:Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;
    const/16 v19, 0x0

    .line 465
    .local v19, hungUp:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/android/phone/PhoneInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    move-object/from16 v29, v0

    invoke-interface/range {v29 .. v29}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v26

    .line 466
    .local v26, phoneType:I
    const/16 v29, 0x2

    move/from16 v0, v26

    move/from16 v1, v29

    if-ne v0, v1, :cond_18

    .line 469
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/android/phone/PhoneInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    move-object/from16 v29, v0

    invoke-static/range {v29 .. v29}, Lcom/android/phone/PhoneUtils;->hangupRingingAndActive(Lcom/android/internal/telephony/Phone;)Z

    move-result v19

    .line 478
    :goto_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    move-object/from16 v29, v0

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "CMD_END_CALL: "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    if-eqz v19, :cond_1a

    const-string v31, "hung up!"

    :goto_13
    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    #calls: Lcom/android/phone/PhoneInterfaceManager;->log(Ljava/lang/String;)V
    invoke-static/range {v29 .. v30}, Lcom/android/phone/PhoneInterfaceManager;->access$000(Lcom/android/phone/PhoneInterfaceManager;Ljava/lang/String;)V

    .line 480
    invoke-static/range {v19 .. v19}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v29

    move-object/from16 v0, v29

    move-object/from16 v1, v27

    iput-object v0, v1, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;->result:Ljava/lang/Object;

    .line 482
    monitor-enter v27

    .line 483
    :try_start_10
    invoke-virtual/range {v27 .. v27}, Ljava/lang/Object;->notifyAll()V

    .line 484
    monitor-exit v27

    goto/16 :goto_0

    :catchall_5
    move-exception v29

    monitor-exit v27
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_5

    throw v29

    .line 470
    :cond_18
    const/16 v29, 0x1

    move/from16 v0, v26

    move/from16 v1, v29

    if-ne v0, v1, :cond_19

    .line 472
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/android/phone/PhoneInterfaceManager;->mCM:Lcom/android/internal/telephony/CallManager;

    move-object/from16 v29, v0

    invoke-static/range {v29 .. v29}, Lcom/android/phone/PhoneUtils;->hangup(Lcom/android/internal/telephony/CallManager;)Z

    move-result v19

    goto :goto_12

    .line 474
    :cond_19
    new-instance v29, Ljava/lang/IllegalStateException;

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "Unexpected phone type: "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-direct/range {v29 .. v30}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v29

    .line 478
    :cond_1a
    const-string v31, "no call to hang up"

    goto :goto_13

    .line 152
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_b
        :pswitch_a
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method
