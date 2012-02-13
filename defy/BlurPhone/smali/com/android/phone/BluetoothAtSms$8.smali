.class Lcom/android/phone/BluetoothAtSms$8;
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

.field final synthetic this$0:Lcom/android/phone/BluetoothAtSms;


# direct methods
.method constructor <init>(Lcom/android/phone/BluetoothAtSms;)V
    .locals 1
    .parameter

    .prologue
    .line 1911
    iput-object p1, p0, Lcom/android/phone/BluetoothAtSms$8;->this$0:Lcom/android/phone/BluetoothAtSms;

    invoke-direct {p0}, Landroid/bluetooth/AtCommandHandler;-><init>()V

    .line 1912
    const-string v0, "+CNMI"

    iput-object v0, p0, Lcom/android/phone/BluetoothAtSms$8;->cmdName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public handleReadCommand()Landroid/bluetooth/AtCommandResult;
    .locals 4

    .prologue
    const-string v3, ","

    .line 1921
    new-instance v0, Landroid/bluetooth/AtCommandResult;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/bluetooth/AtCommandResult;-><init>(I)V

    .line 1922
    .local v0, result:Landroid/bluetooth/AtCommandResult;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/phone/BluetoothAtSms$8;->cmdName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/BluetoothAtSms$8;->this$0:Lcom/android/phone/BluetoothAtSms;

    #getter for: Lcom/android/phone/BluetoothAtSms;->mCnmiConfig:Lcom/android/phone/BluetoothAtSms$CNMI;
    invoke-static {v2}, Lcom/android/phone/BluetoothAtSms;->access$200(Lcom/android/phone/BluetoothAtSms;)Lcom/android/phone/BluetoothAtSms$CNMI;

    move-result-object v2

    iget v2, v2, Lcom/android/phone/BluetoothAtSms$CNMI;->mode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/BluetoothAtSms$8;->this$0:Lcom/android/phone/BluetoothAtSms;

    #getter for: Lcom/android/phone/BluetoothAtSms;->mCnmiConfig:Lcom/android/phone/BluetoothAtSms$CNMI;
    invoke-static {v2}, Lcom/android/phone/BluetoothAtSms;->access$200(Lcom/android/phone/BluetoothAtSms;)Lcom/android/phone/BluetoothAtSms$CNMI;

    move-result-object v2

    iget v2, v2, Lcom/android/phone/BluetoothAtSms$CNMI;->mt:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/BluetoothAtSms$8;->this$0:Lcom/android/phone/BluetoothAtSms;

    #getter for: Lcom/android/phone/BluetoothAtSms;->mCnmiConfig:Lcom/android/phone/BluetoothAtSms$CNMI;
    invoke-static {v2}, Lcom/android/phone/BluetoothAtSms;->access$200(Lcom/android/phone/BluetoothAtSms;)Lcom/android/phone/BluetoothAtSms$CNMI;

    move-result-object v2

    iget v2, v2, Lcom/android/phone/BluetoothAtSms$CNMI;->bm:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/BluetoothAtSms$8;->this$0:Lcom/android/phone/BluetoothAtSms;

    #getter for: Lcom/android/phone/BluetoothAtSms;->mCnmiConfig:Lcom/android/phone/BluetoothAtSms$CNMI;
    invoke-static {v2}, Lcom/android/phone/BluetoothAtSms;->access$200(Lcom/android/phone/BluetoothAtSms;)Lcom/android/phone/BluetoothAtSms$CNMI;

    move-result-object v2

    iget v2, v2, Lcom/android/phone/BluetoothAtSms$CNMI;->ds:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/BluetoothAtSms$8;->this$0:Lcom/android/phone/BluetoothAtSms;

    #getter for: Lcom/android/phone/BluetoothAtSms;->mCnmiConfig:Lcom/android/phone/BluetoothAtSms$CNMI;
    invoke-static {v2}, Lcom/android/phone/BluetoothAtSms;->access$200(Lcom/android/phone/BluetoothAtSms;)Lcom/android/phone/BluetoothAtSms$CNMI;

    move-result-object v2

    iget v2, v2, Lcom/android/phone/BluetoothAtSms$CNMI;->bfr:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/bluetooth/AtCommandResult;->addResponse(Ljava/lang/String;)V

    .line 1924
    return-object v0
.end method

.method public handleSetCommand([Ljava/lang/Object;)Landroid/bluetooth/AtCommandResult;
    .locals 3
    .parameter "args"

    .prologue
    .line 1915
    const/4 v0, -0x1

    iget-object v1, p0, Lcom/android/phone/BluetoothAtSms$8;->this$0:Lcom/android/phone/BluetoothAtSms;

    iget-object v2, p0, Lcom/android/phone/BluetoothAtSms$8;->this$0:Lcom/android/phone/BluetoothAtSms;

    #getter for: Lcom/android/phone/BluetoothAtSms;->mCnmiConfig:Lcom/android/phone/BluetoothAtSms$CNMI;
    invoke-static {v2}, Lcom/android/phone/BluetoothAtSms;->access$200(Lcom/android/phone/BluetoothAtSms;)Lcom/android/phone/BluetoothAtSms$CNMI;

    move-result-object v2

    #calls: Lcom/android/phone/BluetoothAtSms;->parseAtCnmi([Ljava/lang/Object;Lcom/android/phone/BluetoothAtSms$CNMI;)I
    invoke-static {v1, p1, v2}, Lcom/android/phone/BluetoothAtSms;->access$2100(Lcom/android/phone/BluetoothAtSms;[Ljava/lang/Object;Lcom/android/phone/BluetoothAtSms$CNMI;)I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 1916
    new-instance v0, Landroid/bluetooth/AtCommandResult;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/bluetooth/AtCommandResult;-><init>(I)V

    .line 1917
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Landroid/bluetooth/AtCommandResult;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/bluetooth/AtCommandResult;-><init>(I)V

    goto :goto_0
.end method

.method public handleTestCommand()Landroid/bluetooth/AtCommandResult;
    .locals 3

    .prologue
    .line 1928
    new-instance v0, Landroid/bluetooth/AtCommandResult;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/bluetooth/AtCommandResult;-><init>(I)V

    .line 1929
    .local v0, result:Landroid/bluetooth/AtCommandResult;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/phone/BluetoothAtSms$8;->cmdName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": (0,3),(0-2),(0),(0),(0)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/bluetooth/AtCommandResult;->addResponse(Ljava/lang/String;)V

    .line 1930
    return-object v0
.end method
