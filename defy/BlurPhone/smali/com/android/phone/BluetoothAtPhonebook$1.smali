.class Lcom/android/phone/BluetoothAtPhonebook$1;
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
    .line 123
    iput-object p1, p0, Lcom/android/phone/BluetoothAtPhonebook$1;->this$0:Lcom/android/phone/BluetoothAtPhonebook;

    invoke-direct {p0}, Landroid/bluetooth/AtCommandHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleReadCommand()Landroid/bluetooth/AtCommandResult;
    .locals 3

    .prologue
    .line 126
    iget-object v0, p0, Lcom/android/phone/BluetoothAtPhonebook$1;->this$0:Lcom/android/phone/BluetoothAtPhonebook;

    #getter for: Lcom/android/phone/BluetoothAtPhonebook;->mCscs:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/phone/BluetoothAtPhonebook;->access$100(Lcom/android/phone/BluetoothAtPhonebook;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "UTF8"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 127
    new-instance v0, Landroid/bluetooth/AtCommandResult;

    const-string v1, "+CSCS: \"UTF-8\""

    invoke-direct {v0, v1}, Landroid/bluetooth/AtCommandResult;-><init>(Ljava/lang/String;)V

    .line 129
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Landroid/bluetooth/AtCommandResult;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "+CSCS: \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/BluetoothAtPhonebook$1;->this$0:Lcom/android/phone/BluetoothAtPhonebook;

    #getter for: Lcom/android/phone/BluetoothAtPhonebook;->mCscs:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/phone/BluetoothAtPhonebook;->access$100(Lcom/android/phone/BluetoothAtPhonebook;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/bluetooth/AtCommandResult;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public handleSetCommand([Ljava/lang/Object;)Landroid/bluetooth/AtCommandResult;
    .locals 5
    .parameter "args"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 134
    array-length v1, p1

    if-ge v1, v4, :cond_0

    .line 135
    new-instance v1, Landroid/bluetooth/AtCommandResult;

    invoke-direct {v1, v4}, Landroid/bluetooth/AtCommandResult;-><init>(I)V

    .line 150
    :goto_0
    return-object v1

    .line 137
    :cond_0
    aget-object v1, p1, v3

    check-cast v1, Ljava/lang/String;

    const-string v2, "\"GSM\""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    aget-object v1, p1, v3

    check-cast v1, Ljava/lang/String;

    const-string v2, "\"UCS2\""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    aget-object v1, p1, v3

    check-cast v1, Ljava/lang/String;

    const-string v2, "\"UTF-8\""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    aget-object v1, p1, v3

    check-cast v1, Ljava/lang/String;

    const-string v2, "\"UTF8\""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 141
    :cond_1
    iget-object v2, p0, Lcom/android/phone/BluetoothAtPhonebook$1;->this$0:Lcom/android/phone/BluetoothAtPhonebook;

    aget-object v1, p1, v3

    check-cast v1, Ljava/lang/String;

    #setter for: Lcom/android/phone/BluetoothAtPhonebook;->mCscs:Ljava/lang/String;
    invoke-static {v2, v1}, Lcom/android/phone/BluetoothAtPhonebook;->access$102(Lcom/android/phone/BluetoothAtPhonebook;Ljava/lang/String;)Ljava/lang/String;

    .line 143
    iget-object v1, p0, Lcom/android/phone/BluetoothAtPhonebook$1;->this$0:Lcom/android/phone/BluetoothAtPhonebook;

    #getter for: Lcom/android/phone/BluetoothAtPhonebook;->mCscs:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/phone/BluetoothAtPhonebook;->access$100(Lcom/android/phone/BluetoothAtPhonebook;)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x22

    invoke-virtual {v1, v2, v4}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    .line 144
    .local v0, j:I
    iget-object v1, p0, Lcom/android/phone/BluetoothAtPhonebook$1;->this$0:Lcom/android/phone/BluetoothAtPhonebook;

    iget-object v2, p0, Lcom/android/phone/BluetoothAtPhonebook$1;->this$0:Lcom/android/phone/BluetoothAtPhonebook;

    #getter for: Lcom/android/phone/BluetoothAtPhonebook;->mCscs:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/phone/BluetoothAtPhonebook;->access$100(Lcom/android/phone/BluetoothAtPhonebook;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    #setter for: Lcom/android/phone/BluetoothAtPhonebook;->mCscs:Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/android/phone/BluetoothAtPhonebook;->access$102(Lcom/android/phone/BluetoothAtPhonebook;Ljava/lang/String;)Ljava/lang/String;

    .line 145
    iget-object v1, p0, Lcom/android/phone/BluetoothAtPhonebook$1;->this$0:Lcom/android/phone/BluetoothAtPhonebook;

    #getter for: Lcom/android/phone/BluetoothAtPhonebook;->mCscs:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/phone/BluetoothAtPhonebook;->access$100(Lcom/android/phone/BluetoothAtPhonebook;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "UTF-8"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 146
    iget-object v1, p0, Lcom/android/phone/BluetoothAtPhonebook$1;->this$0:Lcom/android/phone/BluetoothAtPhonebook;

    const-string v2, "UTF8"

    #setter for: Lcom/android/phone/BluetoothAtPhonebook;->mCscs:Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/android/phone/BluetoothAtPhonebook;->access$102(Lcom/android/phone/BluetoothAtPhonebook;Ljava/lang/String;)Ljava/lang/String;

    .line 148
    :cond_2
    new-instance v1, Landroid/bluetooth/AtCommandResult;

    invoke-direct {v1, v3}, Landroid/bluetooth/AtCommandResult;-><init>(I)V

    goto :goto_0

    .line 150
    .end local v0           #j:I
    :cond_3
    iget-object v1, p0, Lcom/android/phone/BluetoothAtPhonebook$1;->this$0:Lcom/android/phone/BluetoothAtPhonebook;

    #getter for: Lcom/android/phone/BluetoothAtPhonebook;->mHandsfree:Lcom/android/phone/BluetoothHandsfree;
    invoke-static {v1}, Lcom/android/phone/BluetoothAtPhonebook;->access$200(Lcom/android/phone/BluetoothAtPhonebook;)Lcom/android/phone/BluetoothHandsfree;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/android/phone/BluetoothHandsfree;->reportCmeError(I)Landroid/bluetooth/AtCommandResult;

    move-result-object v1

    goto :goto_0
.end method

.method public handleTestCommand()Landroid/bluetooth/AtCommandResult;
    .locals 2

    .prologue
    .line 155
    new-instance v0, Landroid/bluetooth/AtCommandResult;

    const-string v1, "+CSCS: (\"GSM\",\"UCS2\",\"UTF-8\")"

    invoke-direct {v0, v1}, Landroid/bluetooth/AtCommandResult;-><init>(Ljava/lang/String;)V

    return-object v0
.end method
