.class Lcom/android/phone/BluetoothAtPhonebook$2;
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
    .line 257
    iput-object p1, p0, Lcom/android/phone/BluetoothAtPhonebook$2;->this$0:Lcom/android/phone/BluetoothAtPhonebook;

    invoke-direct {p0}, Landroid/bluetooth/AtCommandHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleReadCommand()Landroid/bluetooth/AtCommandResult;
    .locals 6

    .prologue
    .line 262
    const-string v2, "SM"

    iget-object v3, p0, Lcom/android/phone/BluetoothAtPhonebook$2;->this$0:Lcom/android/phone/BluetoothAtPhonebook;

    #getter for: Lcom/android/phone/BluetoothAtPhonebook;->mCurrentPhonebook:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/phone/BluetoothAtPhonebook;->access$300(Lcom/android/phone/BluetoothAtPhonebook;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/phone/BluetoothAtPhonebook$2;->this$0:Lcom/android/phone/BluetoothAtPhonebook;

    #getter for: Lcom/android/phone/BluetoothAtPhonebook;->mSimSupported:Z
    invoke-static {v2}, Lcom/android/phone/BluetoothAtPhonebook;->access$400(Lcom/android/phone/BluetoothAtPhonebook;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 263
    new-instance v2, Landroid/bluetooth/AtCommandResult;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "+CPBS: \"SM\",0,"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/phone/BluetoothAtPhonebook$2;->this$0:Lcom/android/phone/BluetoothAtPhonebook;

    const/4 v5, 0x0

    #calls: Lcom/android/phone/BluetoothAtPhonebook;->getMaxPhoneBookSize(I)I
    invoke-static {v4, v5}, Lcom/android/phone/BluetoothAtPhonebook;->access$500(Lcom/android/phone/BluetoothAtPhonebook;I)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/bluetooth/AtCommandResult;-><init>(Ljava/lang/String;)V

    .line 272
    :goto_0
    return-object v2

    .line 267
    :cond_0
    iget-object v2, p0, Lcom/android/phone/BluetoothAtPhonebook$2;->this$0:Lcom/android/phone/BluetoothAtPhonebook;

    iget-object v3, p0, Lcom/android/phone/BluetoothAtPhonebook$2;->this$0:Lcom/android/phone/BluetoothAtPhonebook;

    #getter for: Lcom/android/phone/BluetoothAtPhonebook;->mCurrentPhonebook:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/phone/BluetoothAtPhonebook;->access$300(Lcom/android/phone/BluetoothAtPhonebook;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    #calls: Lcom/android/phone/BluetoothAtPhonebook;->getPhonebookResult(Ljava/lang/String;Z)Lcom/android/phone/BluetoothAtPhonebook$PhonebookResult;
    invoke-static {v2, v3, v4}, Lcom/android/phone/BluetoothAtPhonebook;->access$600(Lcom/android/phone/BluetoothAtPhonebook;Ljava/lang/String;Z)Lcom/android/phone/BluetoothAtPhonebook$PhonebookResult;

    move-result-object v0

    .line 268
    .local v0, pbr:Lcom/android/phone/BluetoothAtPhonebook$PhonebookResult;
    if-nez v0, :cond_1

    .line 269
    iget-object v2, p0, Lcom/android/phone/BluetoothAtPhonebook$2;->this$0:Lcom/android/phone/BluetoothAtPhonebook;

    #getter for: Lcom/android/phone/BluetoothAtPhonebook;->mHandsfree:Lcom/android/phone/BluetoothHandsfree;
    invoke-static {v2}, Lcom/android/phone/BluetoothAtPhonebook;->access$200(Lcom/android/phone/BluetoothAtPhonebook;)Lcom/android/phone/BluetoothHandsfree;

    move-result-object v2

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Lcom/android/phone/BluetoothHandsfree;->reportCmeError(I)Landroid/bluetooth/AtCommandResult;

    move-result-object v2

    goto :goto_0

    .line 271
    :cond_1
    iget-object v2, v0, Lcom/android/phone/BluetoothAtPhonebook$PhonebookResult;->cursor:Landroid/database/Cursor;

    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v1

    .line 272
    .local v1, size:I
    new-instance v2, Landroid/bluetooth/AtCommandResult;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "+CPBS: \""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/phone/BluetoothAtPhonebook$2;->this$0:Lcom/android/phone/BluetoothAtPhonebook;

    #getter for: Lcom/android/phone/BluetoothAtPhonebook;->mCurrentPhonebook:Ljava/lang/String;
    invoke-static {v4}, Lcom/android/phone/BluetoothAtPhonebook;->access$300(Lcom/android/phone/BluetoothAtPhonebook;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/phone/BluetoothAtPhonebook$2;->this$0:Lcom/android/phone/BluetoothAtPhonebook;

    #calls: Lcom/android/phone/BluetoothAtPhonebook;->getMaxPhoneBookSize(I)I
    invoke-static {v4, v1}, Lcom/android/phone/BluetoothAtPhonebook;->access$500(Lcom/android/phone/BluetoothAtPhonebook;I)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/bluetooth/AtCommandResult;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public handleSetCommand([Ljava/lang/Object;)Landroid/bluetooth/AtCommandResult;
    .locals 5
    .parameter "args"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    const-string v4, "\""

    .line 278
    array-length v1, p1

    if-lt v1, v3, :cond_0

    aget-object v1, p1, v2

    instance-of v1, v1, Ljava/lang/String;

    if-nez v1, :cond_1

    .line 279
    :cond_0
    new-instance v1, Landroid/bluetooth/AtCommandResult;

    invoke-direct {v1, v3}, Landroid/bluetooth/AtCommandResult;-><init>(I)V

    .line 292
    :goto_0
    return-object v1

    .line 281
    :cond_1
    aget-object v1, p1, v2

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 282
    .local v0, pb:Ljava/lang/String;
    :goto_1
    const-string v1, "\""

    invoke-virtual {v0, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v1, v3

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 283
    :cond_2
    :goto_2
    const-string v1, "\""

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 287
    :cond_3
    iget-object v1, p0, Lcom/android/phone/BluetoothAtPhonebook$2;->this$0:Lcom/android/phone/BluetoothAtPhonebook;

    #calls: Lcom/android/phone/BluetoothAtPhonebook;->getPhonebookResult(Ljava/lang/String;Z)Lcom/android/phone/BluetoothAtPhonebook$PhonebookResult;
    invoke-static {v1, v0, v2}, Lcom/android/phone/BluetoothAtPhonebook;->access$600(Lcom/android/phone/BluetoothAtPhonebook;Ljava/lang/String;Z)Lcom/android/phone/BluetoothAtPhonebook$PhonebookResult;

    move-result-object v1

    if-nez v1, :cond_4

    .line 289
    iget-object v1, p0, Lcom/android/phone/BluetoothAtPhonebook$2;->this$0:Lcom/android/phone/BluetoothAtPhonebook;

    #getter for: Lcom/android/phone/BluetoothAtPhonebook;->mHandsfree:Lcom/android/phone/BluetoothHandsfree;
    invoke-static {v1}, Lcom/android/phone/BluetoothAtPhonebook;->access$200(Lcom/android/phone/BluetoothAtPhonebook;)Lcom/android/phone/BluetoothHandsfree;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/android/phone/BluetoothHandsfree;->reportCmeError(I)Landroid/bluetooth/AtCommandResult;

    move-result-object v1

    goto :goto_0

    .line 291
    :cond_4
    iget-object v1, p0, Lcom/android/phone/BluetoothAtPhonebook$2;->this$0:Lcom/android/phone/BluetoothAtPhonebook;

    #setter for: Lcom/android/phone/BluetoothAtPhonebook;->mCurrentPhonebook:Ljava/lang/String;
    invoke-static {v1, v0}, Lcom/android/phone/BluetoothAtPhonebook;->access$302(Lcom/android/phone/BluetoothAtPhonebook;Ljava/lang/String;)Ljava/lang/String;

    .line 292
    new-instance v1, Landroid/bluetooth/AtCommandResult;

    invoke-direct {v1, v2}, Landroid/bluetooth/AtCommandResult;-><init>(I)V

    goto :goto_0
.end method

.method public handleTestCommand()Landroid/bluetooth/AtCommandResult;
    .locals 2

    .prologue
    .line 296
    new-instance v0, Landroid/bluetooth/AtCommandResult;

    const-string v1, "+CPBS: (\"ME\",\"SM\",\"DC\",\"RC\",\"MC\")"

    invoke-direct {v0, v1}, Landroid/bluetooth/AtCommandResult;-><init>(Ljava/lang/String;)V

    return-object v0
.end method
