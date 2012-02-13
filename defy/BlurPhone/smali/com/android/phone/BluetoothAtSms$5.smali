.class Lcom/android/phone/BluetoothAtSms$5;
.super Landroid/bluetooth/AtCommandHandler;
.source "BluetoothAtSms.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/BluetoothAtSms;->register(Landroid/bluetooth/AtParser;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field cmdName:Ljava/lang/String;

.field index:I

.field final synthetic this$0:Lcom/android/phone/BluetoothAtSms;


# direct methods
.method constructor <init>(Lcom/android/phone/BluetoothAtSms;)V
    .locals 1
    .parameter

    .prologue
    .line 1764
    iput-object p1, p0, Lcom/android/phone/BluetoothAtSms$5;->this$0:Lcom/android/phone/BluetoothAtSms;

    invoke-direct {p0}, Landroid/bluetooth/AtCommandHandler;-><init>()V

    .line 1765
    const-string v0, "+CMGR"

    iput-object v0, p0, Lcom/android/phone/BluetoothAtSms$5;->cmdName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public handleSetCommand([Ljava/lang/Object;)Landroid/bluetooth/AtCommandResult;
    .locals 12
    .parameter "args"

    .prologue
    .line 1772
    const/4 v0, -0x1

    .line 1774
    .local v0, error:I
    const/4 v8, 0x0

    aget-object v8, p1, v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    iput v8, p0, Lcom/android/phone/BluetoothAtSms$5;->index:I

    .line 1775
    iget-object v8, p0, Lcom/android/phone/BluetoothAtSms$5;->this$0:Lcom/android/phone/BluetoothAtSms;

    const/4 v9, 0x1

    #calls: Lcom/android/phone/BluetoothAtSms;->getSmsMessageStorageName(I)Ljava/lang/String;
    invoke-static {v8, v9}, Lcom/android/phone/BluetoothAtSms;->access$900(Lcom/android/phone/BluetoothAtSms;I)Ljava/lang/String;

    move-result-object v1

    .line 1776
    .local v1, mem1:Ljava/lang/String;
    if-nez v1, :cond_0

    .line 1777
    new-instance v8, Landroid/bluetooth/AtCommandResult;

    const/4 v9, 0x1

    invoke-direct {v8, v9}, Landroid/bluetooth/AtCommandResult;-><init>(I)V

    .line 1854
    :goto_0
    return-object v8

    .line 1778
    :cond_0
    const-string v8, "\"ME\""

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_9

    .line 1779
    new-instance v2, Lcom/android/phone/BluetoothAtSms$SmsMessageOnME;

    const/4 v8, 0x0

    invoke-direct {v2, v8}, Lcom/android/phone/BluetoothAtSms$SmsMessageOnME;-><init>(Lcom/android/phone/BluetoothAtSms$1;)V

    .line 1780
    .local v2, message:Lcom/android/phone/BluetoothAtSms$SmsMessageOnME;
    iget-object v8, p0, Lcom/android/phone/BluetoothAtSms$5;->this$0:Lcom/android/phone/BluetoothAtSms;

    iget-object v9, p0, Lcom/android/phone/BluetoothAtSms$5;->this$0:Lcom/android/phone/BluetoothAtSms;

    #getter for: Lcom/android/phone/BluetoothAtSms;->mContext:Landroid/content/Context;
    invoke-static {v9}, Lcom/android/phone/BluetoothAtSms;->access$000(Lcom/android/phone/BluetoothAtSms;)Landroid/content/Context;

    move-result-object v9

    iget v10, p0, Lcom/android/phone/BluetoothAtSms$5;->index:I

    #calls: Lcom/android/phone/BluetoothAtSms;->readMessageFromME(Landroid/content/Context;ILcom/android/phone/BluetoothAtSms$SmsMessageOnME;)I
    invoke-static {v8, v9, v10, v2}, Lcom/android/phone/BluetoothAtSms;->access$1300(Lcom/android/phone/BluetoothAtSms;Landroid/content/Context;ILcom/android/phone/BluetoothAtSms$SmsMessageOnME;)I

    move-result v0

    .line 1781
    const/4 v8, -0x1

    if-eq v8, v0, :cond_1

    .line 1782
    new-instance v8, Landroid/bluetooth/AtCommandResult;

    const/4 v9, 0x1

    invoke-direct {v8, v9}, Landroid/bluetooth/AtCommandResult;-><init>(I)V

    goto :goto_0

    .line 1784
    :cond_1
    iget-object v8, p0, Lcom/android/phone/BluetoothAtSms$5;->this$0:Lcom/android/phone/BluetoothAtSms;

    #getter for: Lcom/android/phone/BluetoothAtSms;->mSmsFormatType:I
    invoke-static {v8}, Lcom/android/phone/BluetoothAtSms;->access$300(Lcom/android/phone/BluetoothAtSms;)I

    move-result v8

    if-nez v8, :cond_5

    .line 1785
    iget-object v8, p0, Lcom/android/phone/BluetoothAtSms$5;->this$0:Lcom/android/phone/BluetoothAtSms;

    #getter for: Lcom/android/phone/BluetoothAtSms;->mContext:Landroid/content/Context;
    invoke-static {v8}, Lcom/android/phone/BluetoothAtSms;->access$000(Lcom/android/phone/BluetoothAtSms;)Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v2, v8}, Lcom/android/phone/BluetoothAtSms$SmsMessageOnME;->getEncodePdu(Landroid/content/Context;)[B

    move-result-object v3

    .line 1786
    .local v3, pdu:[B
    iget-object v8, p0, Lcom/android/phone/BluetoothAtSms$5;->this$0:Lcom/android/phone/BluetoothAtSms;

    #calls: Lcom/android/phone/BluetoothAtSms;->SmsPdubyte2HexStr([B)Ljava/lang/String;
    invoke-static {v8, v3}, Lcom/android/phone/BluetoothAtSms;->access$500(Lcom/android/phone/BluetoothAtSms;[B)Ljava/lang/String;

    move-result-object v4

    .line 1788
    .local v4, pduHexStr:Ljava/lang/String;
    iget v8, v2, Lcom/android/phone/BluetoothAtSms$SmsMessageOnME;->type:I

    const/4 v9, 0x1

    if-ne v8, v9, :cond_3

    .line 1789
    new-instance v5, Landroid/bluetooth/AtCommandResult;

    const/4 v8, 0x0

    invoke-direct {v5, v8}, Landroid/bluetooth/AtCommandResult;-><init>(I)V

    .line 1792
    .local v5, result:Landroid/bluetooth/AtCommandResult;
    iget v8, v2, Lcom/android/phone/BluetoothAtSms$SmsMessageOnME;->read:I

    if-nez v8, :cond_2

    .line 1793
    const/4 v6, 0x0

    .line 1794
    .local v6, stat:I
    new-instance v7, Landroid/content/ContentValues;

    invoke-direct {v7}, Landroid/content/ContentValues;-><init>()V

    .line 1795
    .local v7, values:Landroid/content/ContentValues;
    const-string v8, "read"

    const/4 v9, 0x1

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1796
    iget-object v8, p0, Lcom/android/phone/BluetoothAtSms$5;->this$0:Lcom/android/phone/BluetoothAtSms;

    iget-object v9, p0, Lcom/android/phone/BluetoothAtSms$5;->this$0:Lcom/android/phone/BluetoothAtSms;

    #getter for: Lcom/android/phone/BluetoothAtSms;->mContext:Landroid/content/Context;
    invoke-static {v9}, Lcom/android/phone/BluetoothAtSms;->access$000(Lcom/android/phone/BluetoothAtSms;)Landroid/content/Context;

    move-result-object v9

    iget v10, p0, Lcom/android/phone/BluetoothAtSms$5;->index:I

    #calls: Lcom/android/phone/BluetoothAtSms;->updateSmsOnME(Landroid/content/Context;ILandroid/content/ContentValues;)V
    invoke-static {v8, v9, v10, v7}, Lcom/android/phone/BluetoothAtSms;->access$1400(Lcom/android/phone/BluetoothAtSms;Landroid/content/Context;ILandroid/content/ContentValues;)V

    .line 1799
    .end local v7           #values:Landroid/content/ContentValues;
    :goto_1
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, p0, Lcom/android/phone/BluetoothAtSms$5;->cmdName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ": "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ",,"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/phone/BluetoothAtSms$5;->this$0:Lcom/android/phone/BluetoothAtSms;

    #getter for: Lcom/android/phone/BluetoothAtSms;->mContext:Landroid/content/Context;
    invoke-static {v9}, Lcom/android/phone/BluetoothAtSms;->access$000(Lcom/android/phone/BluetoothAtSms;)Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v2, v9}, Lcom/android/phone/BluetoothAtSms$SmsMessageOnME;->getEncodeMessagePduLength(Landroid/content/Context;)I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\r\n"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\r\n"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Landroid/bluetooth/AtCommandResult;->addResponse(Ljava/lang/String;)V

    move-object v8, v5

    .line 1802
    goto/16 :goto_0

    .line 1798
    .end local v6           #stat:I
    :cond_2
    const/4 v6, 0x1

    .restart local v6       #stat:I
    goto :goto_1

    .line 1807
    .end local v5           #result:Landroid/bluetooth/AtCommandResult;
    .end local v6           #stat:I
    :cond_3
    new-instance v5, Landroid/bluetooth/AtCommandResult;

    const/4 v8, 0x0

    invoke-direct {v5, v8}, Landroid/bluetooth/AtCommandResult;-><init>(I)V

    .line 1809
    .restart local v5       #result:Landroid/bluetooth/AtCommandResult;
    iget v8, v2, Lcom/android/phone/BluetoothAtSms$SmsMessageOnME;->type:I

    const/4 v9, 0x2

    if-ne v8, v9, :cond_4

    .line 1810
    const/4 v6, 0x3

    .line 1813
    .restart local v6       #stat:I
    :goto_2
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, p0, Lcom/android/phone/BluetoothAtSms$5;->cmdName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ": "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ",,"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/phone/BluetoothAtSms$5;->this$0:Lcom/android/phone/BluetoothAtSms;

    #getter for: Lcom/android/phone/BluetoothAtSms;->mContext:Landroid/content/Context;
    invoke-static {v9}, Lcom/android/phone/BluetoothAtSms;->access$000(Lcom/android/phone/BluetoothAtSms;)Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v2, v9}, Lcom/android/phone/BluetoothAtSms$SmsMessageOnME;->getEncodeMessagePduLength(Landroid/content/Context;)I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\r\n"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\r\n"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Landroid/bluetooth/AtCommandResult;->addResponse(Ljava/lang/String;)V

    move-object v8, v5

    .line 1816
    goto/16 :goto_0

    .line 1812
    .end local v6           #stat:I
    :cond_4
    const/4 v6, 0x2

    .restart local v6       #stat:I
    goto :goto_2

    .line 1822
    .end local v3           #pdu:[B
    .end local v4           #pduHexStr:Ljava/lang/String;
    .end local v5           #result:Landroid/bluetooth/AtCommandResult;
    .end local v6           #stat:I
    :cond_5
    iget v8, v2, Lcom/android/phone/BluetoothAtSms$SmsMessageOnME;->type:I

    const/4 v9, 0x1

    if-ne v8, v9, :cond_7

    .line 1823
    new-instance v5, Landroid/bluetooth/AtCommandResult;

    const/4 v8, 0x0

    invoke-direct {v5, v8}, Landroid/bluetooth/AtCommandResult;-><init>(I)V

    .line 1826
    .restart local v5       #result:Landroid/bluetooth/AtCommandResult;
    iget v8, v2, Lcom/android/phone/BluetoothAtSms$SmsMessageOnME;->read:I

    if-nez v8, :cond_6

    .line 1827
    const-string v6, "\"REC UNREAD\""

    .line 1828
    .local v6, stat:Ljava/lang/String;
    new-instance v7, Landroid/content/ContentValues;

    invoke-direct {v7}, Landroid/content/ContentValues;-><init>()V

    .line 1829
    .restart local v7       #values:Landroid/content/ContentValues;
    const-string v8, "read"

    const/4 v9, 0x1

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1830
    iget-object v8, p0, Lcom/android/phone/BluetoothAtSms$5;->this$0:Lcom/android/phone/BluetoothAtSms;

    iget-object v9, p0, Lcom/android/phone/BluetoothAtSms$5;->this$0:Lcom/android/phone/BluetoothAtSms;

    #getter for: Lcom/android/phone/BluetoothAtSms;->mContext:Landroid/content/Context;
    invoke-static {v9}, Lcom/android/phone/BluetoothAtSms;->access$000(Lcom/android/phone/BluetoothAtSms;)Landroid/content/Context;

    move-result-object v9

    iget v10, p0, Lcom/android/phone/BluetoothAtSms$5;->index:I

    #calls: Lcom/android/phone/BluetoothAtSms;->updateSmsOnME(Landroid/content/Context;ILandroid/content/ContentValues;)V
    invoke-static {v8, v9, v10, v7}, Lcom/android/phone/BluetoothAtSms;->access$1400(Lcom/android/phone/BluetoothAtSms;Landroid/content/Context;ILandroid/content/ContentValues;)V

    .line 1833
    .end local v7           #values:Landroid/content/ContentValues;
    :goto_3
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, p0, Lcom/android/phone/BluetoothAtSms$5;->cmdName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ": \""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\",\""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v2, Lcom/android/phone/BluetoothAtSms$SmsMessageOnME;->address:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\",\""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/phone/BluetoothAtSms$5;->this$0:Lcom/android/phone/BluetoothAtSms;

    iget v10, v2, Lcom/android/phone/BluetoothAtSms$SmsMessageOnME;->date:I

    int-to-long v10, v10

    #calls: Lcom/android/phone/BluetoothAtSms;->timeStampFormat(J)Ljava/lang/String;
    invoke-static {v9, v10, v11}, Lcom/android/phone/BluetoothAtSms;->access$600(Lcom/android/phone/BluetoothAtSms;J)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\"\r\n"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v2, Lcom/android/phone/BluetoothAtSms$SmsMessageOnME;->body:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\r\n"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Landroid/bluetooth/AtCommandResult;->addResponse(Ljava/lang/String;)V

    move-object v8, v5

    .line 1836
    goto/16 :goto_0

    .line 1832
    .end local v6           #stat:Ljava/lang/String;
    :cond_6
    const-string v6, "\"REC READ\""

    .restart local v6       #stat:Ljava/lang/String;
    goto :goto_3

    .line 1841
    .end local v5           #result:Landroid/bluetooth/AtCommandResult;
    .end local v6           #stat:Ljava/lang/String;
    :cond_7
    new-instance v5, Landroid/bluetooth/AtCommandResult;

    const/4 v8, 0x0

    invoke-direct {v5, v8}, Landroid/bluetooth/AtCommandResult;-><init>(I)V

    .line 1843
    .restart local v5       #result:Landroid/bluetooth/AtCommandResult;
    iget v8, v2, Lcom/android/phone/BluetoothAtSms$SmsMessageOnME;->type:I

    const/4 v9, 0x2

    if-ne v8, v9, :cond_8

    .line 1844
    const-string v6, "\"STO SENT\""

    .line 1847
    .restart local v6       #stat:Ljava/lang/String;
    :goto_4
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, p0, Lcom/android/phone/BluetoothAtSms$5;->cmdName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ": \""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\",\""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v2, Lcom/android/phone/BluetoothAtSms$SmsMessageOnME;->address:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\"\r\n"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v2, Lcom/android/phone/BluetoothAtSms$SmsMessageOnME;->body:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\r\n"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Landroid/bluetooth/AtCommandResult;->addResponse(Ljava/lang/String;)V

    move-object v8, v5

    .line 1849
    goto/16 :goto_0

    .line 1846
    .end local v6           #stat:Ljava/lang/String;
    :cond_8
    const-string v6, "\"STO UNSENT\""

    .restart local v6       #stat:Ljava/lang/String;
    goto :goto_4

    .line 1854
    .end local v2           #message:Lcom/android/phone/BluetoothAtSms$SmsMessageOnME;
    .end local v5           #result:Landroid/bluetooth/AtCommandResult;
    .end local v6           #stat:Ljava/lang/String;
    :cond_9
    new-instance v8, Landroid/bluetooth/AtCommandResult;

    const/4 v9, 0x1

    invoke-direct {v8, v9}, Landroid/bluetooth/AtCommandResult;-><init>(I)V

    goto/16 :goto_0
.end method
