.class final Lcom/android/internal/telephony/gsm/CbDispatcher;
.super Landroid/os/Handler;
.source "CbDispatcher.java"


# static fields
.field private static final CB_BYTE_LENGTH:I = 0x58

.field private static final EVENT_NEW_CB:I = 0x1

.field private static final EVENT_SEND_CB_CHANNEL:I = 0x2

.field private static final TAG:Ljava/lang/String; = "CbDispatcher"


# instance fields
.field private final mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/gsm/GSMPhone;)V
    .locals 3
    .parameter "phone"

    .prologue
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lcom/android/internal/telephony/gsm/CbDispatcher;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    iget-object v0, p1, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-interface {v0, p0, v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->setOnNewGsmBroadcastSms(Landroid/os/Handler;ILjava/lang/Object;)V

    return-void
.end method

.method private dispatchCmasPdus(Ljava/lang/String;III)V
    .locals 4
    .parameter "cbMessage"
    .parameter "octet2"
    .parameter "octet1"
    .parameter "messageId"

    .prologue
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gsm/CbDispatcher;->getValidString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.provider.Telephony.CMAS_RECEIVED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v0, intent:Landroid/content/Intent;
    const-string v1, "CELL_BROADCAST"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "SERIAL_NUMBER_OCTET1"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "SERIAL_NUMBER_OCTET2"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "MESSAGE_ID"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "CB_CMAS"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/CbDispatcher;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    const-string v1, "CbDispatcher"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CMAS Received!:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private dispatchPdus(Ljava/lang/String;IIII)V
    .locals 4
    .parameter "cbMessage"
    .parameter "pageNumber"
    .parameter "serialNumber"
    .parameter "messageId"
    .parameter "numberOfPages"

    .prologue
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gsm/CbDispatcher;->getValidString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.CB_RECEIVED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v0, intent:Landroid/content/Intent;
    const-string v1, "CELLBROADCAST"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "PAGENUMBER"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "SERIALNUMBER"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "MESSAGEID"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "NUMBEROFPAGES"

    invoke-virtual {v0, v1, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/CbDispatcher;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    const-string v1, "CbDispatcher"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CB Received!:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private getValidString(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "strMessage"

    .prologue
    const/4 v0, 0x0

    .local v0, length:I
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v0, v2, :cond_0

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0xd

    if-ne v2, v3, :cond_1

    :cond_0
    const/4 v2, 0x0

    invoke-virtual {p1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .local v1, text:Ljava/lang/String;
    return-object v1

    .end local v1           #text:Ljava/lang/String;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private isCmas(Lcom/android/internal/telephony/gsm/CbMessage;)Z
    .locals 9
    .parameter "cb"

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/CbMessage;->getNumberOfPages()I

    move-result v3

    .local v3, numberOfPages:I
    if-eq v3, v8, :cond_0

    move v5, v7

    :goto_0
    return v5

    :cond_0
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/CbMessage;->getPageNumber()I

    move-result v4

    .local v4, pageNumber:I
    if-eq v3, v4, :cond_1

    move v5, v7

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/CbMessage;->getMessageId()I

    move-result v2

    .local v2, messageId:I
    sget-object v5, Landroid/telephony/CmasMessage;->cmasCBChannels:Ljava/util/List;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    move v5, v7

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/CbMessage;->getDataCodingScheme()I

    move-result v0

    .local v0, dataCodingScheme:I
    if-eq v0, v8, :cond_3

    move v5, v7

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/CbMessage;->getMessageBody()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v1

    .local v1, length:I
    const/16 v5, 0x5a

    if-le v1, v5, :cond_4

    move v5, v7

    goto :goto_0

    :cond_4
    move v5, v8

    goto :goto_0
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 12
    .parameter "msg"

    .prologue
    const/16 v3, 0x10

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget-object v7, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v7, Landroid/os/AsyncResult;

    .local v7, ar:Landroid/os/AsyncResult;
    iget-object v0, v7, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v0, :cond_1

    const-string v0, "CbDispatcher"

    const-string v1, "Exception processing incoming CB"

    iget-object v2, v7, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :cond_1
    iget-object v11, v7, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v11, Ljava/lang/String;

    .local v11, my_cb_str:Ljava/lang/String;
    const/16 v0, 0x58

    new-array v6, v0, [B

    .local v6, a:[B
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v10

    .local v10, len:I
    const/4 v9, 0x0

    .local v9, i:I
    :goto_1
    if-ge v9, v10, :cond_2

    div-int/lit8 v0, v9, 0x2

    invoke-virtual {v11, v9}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1, v3}, Ljava/lang/Character;->digit(CI)I

    move-result v1

    shl-int/lit8 v1, v1, 0x4

    add-int/lit8 v2, v9, 0x1

    invoke-virtual {v11, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2, v3}, Ljava/lang/Character;->digit(CI)I

    move-result v2

    add-int/2addr v1, v2

    int-to-byte v1, v1

    aput-byte v1, v6, v0

    add-int/lit8 v9, v9, 0x2

    goto :goto_1

    :cond_2
    invoke-static {v6}, Lcom/android/internal/telephony/gsm/CbMessage;->newFromByte([B)Lcom/android/internal/telephony/gsm/CbMessage;

    move-result-object v8

    .local v8, cb:Lcom/android/internal/telephony/gsm/CbMessage;
    if-eqz v8, :cond_0

    invoke-direct {p0, v8}, Lcom/android/internal/telephony/gsm/CbDispatcher;->isCmas(Lcom/android/internal/telephony/gsm/CbMessage;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {v8}, Lcom/android/internal/telephony/gsm/CbMessage;->getMessageBody()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8}, Lcom/android/internal/telephony/gsm/CbMessage;->getSerialNumber()I

    move-result v1

    invoke-virtual {v8}, Lcom/android/internal/telephony/gsm/CbMessage;->getOldSerialNumber()I

    move-result v2

    invoke-virtual {v8}, Lcom/android/internal/telephony/gsm/CbMessage;->getMessageId()I

    move-result v3

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/android/internal/telephony/gsm/CbDispatcher;->dispatchCmasPdus(Ljava/lang/String;III)V

    goto :goto_0

    :cond_3
    invoke-virtual {v8}, Lcom/android/internal/telephony/gsm/CbMessage;->getMessageBody()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8}, Lcom/android/internal/telephony/gsm/CbMessage;->getPageNumber()I

    move-result v2

    invoke-virtual {v8}, Lcom/android/internal/telephony/gsm/CbMessage;->getSerialNumber()I

    move-result v3

    invoke-virtual {v8}, Lcom/android/internal/telephony/gsm/CbMessage;->getMessageId()I

    move-result v4

    invoke-virtual {v8}, Lcom/android/internal/telephony/gsm/CbMessage;->getNumberOfPages()I

    move-result v5

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/telephony/gsm/CbDispatcher;->dispatchPdus(Ljava/lang/String;IIII)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
