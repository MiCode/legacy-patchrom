.class Lcom/android/phone/BluetoothAtSms$4;
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
    .line 1652
    iput-object p1, p0, Lcom/android/phone/BluetoothAtSms$4;->this$0:Lcom/android/phone/BluetoothAtSms;

    invoke-direct {p0}, Landroid/bluetooth/AtCommandHandler;-><init>()V

    .line 1653
    const-string v0, "+CPMS"

    iput-object v0, p0, Lcom/android/phone/BluetoothAtSms$4;->cmdName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public handleReadCommand()Landroid/bluetooth/AtCommandResult;
    .locals 13

    .prologue
    const/4 v12, -0x1

    const/4 v11, 0x1

    const-string v10, ","

    .line 1657
    iget-object v8, p0, Lcom/android/phone/BluetoothAtSms$4;->this$0:Lcom/android/phone/BluetoothAtSms;

    #calls: Lcom/android/phone/BluetoothAtSms;->getSmsMessageStorageName(I)Ljava/lang/String;
    invoke-static {v8, v11}, Lcom/android/phone/BluetoothAtSms;->access$900(Lcom/android/phone/BluetoothAtSms;I)Ljava/lang/String;

    move-result-object v4

    .line 1658
    .local v4, mem1:Ljava/lang/String;
    iget-object v8, p0, Lcom/android/phone/BluetoothAtSms$4;->this$0:Lcom/android/phone/BluetoothAtSms;

    const/4 v9, 0x2

    #calls: Lcom/android/phone/BluetoothAtSms;->getSmsMessageStorageName(I)Ljava/lang/String;
    invoke-static {v8, v9}, Lcom/android/phone/BluetoothAtSms;->access$900(Lcom/android/phone/BluetoothAtSms;I)Ljava/lang/String;

    move-result-object v5

    .line 1659
    .local v5, mem2:Ljava/lang/String;
    iget-object v8, p0, Lcom/android/phone/BluetoothAtSms$4;->this$0:Lcom/android/phone/BluetoothAtSms;

    const/4 v9, 0x3

    #calls: Lcom/android/phone/BluetoothAtSms;->getSmsMessageStorageName(I)Ljava/lang/String;
    invoke-static {v8, v9}, Lcom/android/phone/BluetoothAtSms;->access$900(Lcom/android/phone/BluetoothAtSms;I)Ljava/lang/String;

    move-result-object v6

    .line 1660
    .local v6, mem3:Ljava/lang/String;
    if-eqz v4, :cond_0

    if-eqz v5, :cond_0

    if-nez v6, :cond_1

    .line 1661
    :cond_0
    new-instance v8, Landroid/bluetooth/AtCommandResult;

    invoke-direct {v8, v11}, Landroid/bluetooth/AtCommandResult;-><init>(I)V

    .line 1686
    :goto_0
    return-object v8

    .line 1662
    :cond_1
    new-instance v0, Lcom/android/phone/BluetoothAtSms$SmsStorageCapacity;

    invoke-direct {v0, v4}, Lcom/android/phone/BluetoothAtSms$SmsStorageCapacity;-><init>(Ljava/lang/String;)V

    .line 1663
    .local v0, Mem1capacity:Lcom/android/phone/BluetoothAtSms$SmsStorageCapacity;
    new-instance v1, Lcom/android/phone/BluetoothAtSms$SmsStorageCapacity;

    invoke-direct {v1, v5}, Lcom/android/phone/BluetoothAtSms$SmsStorageCapacity;-><init>(Ljava/lang/String;)V

    .line 1664
    .local v1, Mem2capacity:Lcom/android/phone/BluetoothAtSms$SmsStorageCapacity;
    new-instance v2, Lcom/android/phone/BluetoothAtSms$SmsStorageCapacity;

    invoke-direct {v2, v6}, Lcom/android/phone/BluetoothAtSms$SmsStorageCapacity;-><init>(Ljava/lang/String;)V

    .line 1665
    .local v2, Mem3capacity:Lcom/android/phone/BluetoothAtSms$SmsStorageCapacity;
    if-eqz v0, :cond_2

    if-eqz v1, :cond_2

    if-nez v2, :cond_3

    .line 1666
    :cond_2
    iget-object v8, p0, Lcom/android/phone/BluetoothAtSms$4;->cmdName:Ljava/lang/String;

    const-string v9, "alloc memory error"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1667
    new-instance v8, Landroid/bluetooth/AtCommandResult;

    invoke-direct {v8, v11}, Landroid/bluetooth/AtCommandResult;-><init>(I)V

    goto :goto_0

    .line 1669
    :cond_3
    iget-object v8, p0, Lcom/android/phone/BluetoothAtSms$4;->this$0:Lcom/android/phone/BluetoothAtSms;

    iget-object v9, p0, Lcom/android/phone/BluetoothAtSms$4;->this$0:Lcom/android/phone/BluetoothAtSms;

    #getter for: Lcom/android/phone/BluetoothAtSms;->mContext:Landroid/content/Context;
    invoke-static {v9}, Lcom/android/phone/BluetoothAtSms;->access$000(Lcom/android/phone/BluetoothAtSms;)Landroid/content/Context;

    move-result-object v9

    #calls: Lcom/android/phone/BluetoothAtSms;->getSmsMessageStorageCapacity(Landroid/content/Context;Lcom/android/phone/BluetoothAtSms$SmsStorageCapacity;)I
    invoke-static {v8, v9, v0}, Lcom/android/phone/BluetoothAtSms;->access$1000(Lcom/android/phone/BluetoothAtSms;Landroid/content/Context;Lcom/android/phone/BluetoothAtSms$SmsStorageCapacity;)I

    move-result v3

    .line 1670
    .local v3, error:I
    if-eq v12, v3, :cond_4

    .line 1671
    new-instance v8, Landroid/bluetooth/AtCommandResult;

    invoke-direct {v8, v11}, Landroid/bluetooth/AtCommandResult;-><init>(I)V

    goto :goto_0

    .line 1673
    :cond_4
    iget-object v8, p0, Lcom/android/phone/BluetoothAtSms$4;->this$0:Lcom/android/phone/BluetoothAtSms;

    iget-object v9, p0, Lcom/android/phone/BluetoothAtSms$4;->this$0:Lcom/android/phone/BluetoothAtSms;

    #getter for: Lcom/android/phone/BluetoothAtSms;->mContext:Landroid/content/Context;
    invoke-static {v9}, Lcom/android/phone/BluetoothAtSms;->access$000(Lcom/android/phone/BluetoothAtSms;)Landroid/content/Context;

    move-result-object v9

    #calls: Lcom/android/phone/BluetoothAtSms;->getSmsMessageStorageCapacity(Landroid/content/Context;Lcom/android/phone/BluetoothAtSms$SmsStorageCapacity;)I
    invoke-static {v8, v9, v1}, Lcom/android/phone/BluetoothAtSms;->access$1000(Lcom/android/phone/BluetoothAtSms;Landroid/content/Context;Lcom/android/phone/BluetoothAtSms$SmsStorageCapacity;)I

    move-result v3

    .line 1674
    if-eq v12, v3, :cond_5

    .line 1675
    new-instance v8, Landroid/bluetooth/AtCommandResult;

    invoke-direct {v8, v11}, Landroid/bluetooth/AtCommandResult;-><init>(I)V

    goto :goto_0

    .line 1677
    :cond_5
    iget-object v8, p0, Lcom/android/phone/BluetoothAtSms$4;->this$0:Lcom/android/phone/BluetoothAtSms;

    iget-object v9, p0, Lcom/android/phone/BluetoothAtSms$4;->this$0:Lcom/android/phone/BluetoothAtSms;

    #getter for: Lcom/android/phone/BluetoothAtSms;->mContext:Landroid/content/Context;
    invoke-static {v9}, Lcom/android/phone/BluetoothAtSms;->access$000(Lcom/android/phone/BluetoothAtSms;)Landroid/content/Context;

    move-result-object v9

    #calls: Lcom/android/phone/BluetoothAtSms;->getSmsMessageStorageCapacity(Landroid/content/Context;Lcom/android/phone/BluetoothAtSms$SmsStorageCapacity;)I
    invoke-static {v8, v9, v2}, Lcom/android/phone/BluetoothAtSms;->access$1000(Lcom/android/phone/BluetoothAtSms;Landroid/content/Context;Lcom/android/phone/BluetoothAtSms$SmsStorageCapacity;)I

    move-result v3

    .line 1678
    if-eq v12, v3, :cond_6

    .line 1679
    new-instance v8, Landroid/bluetooth/AtCommandResult;

    invoke-direct {v8, v11}, Landroid/bluetooth/AtCommandResult;-><init>(I)V

    goto :goto_0

    .line 1681
    :cond_6
    new-instance v7, Landroid/bluetooth/AtCommandResult;

    const/4 v8, 0x0

    invoke-direct {v7, v8}, Landroid/bluetooth/AtCommandResult;-><init>(I)V

    .line 1682
    .local v7, result:Landroid/bluetooth/AtCommandResult;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, p0, Lcom/android/phone/BluetoothAtSms$4;->cmdName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ": "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v0, Lcom/android/phone/BluetoothAtSms$SmsStorageCapacity;->memName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ","

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, v0, Lcom/android/phone/BluetoothAtSms$SmsStorageCapacity;->used:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ","

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, v0, Lcom/android/phone/BluetoothAtSms$SmsStorageCapacity;->total:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ","

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v1, Lcom/android/phone/BluetoothAtSms$SmsStorageCapacity;->memName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ","

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, v1, Lcom/android/phone/BluetoothAtSms$SmsStorageCapacity;->used:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ","

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, v1, Lcom/android/phone/BluetoothAtSms$SmsStorageCapacity;->total:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ","

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v2, Lcom/android/phone/BluetoothAtSms$SmsStorageCapacity;->memName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ","

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, v2, Lcom/android/phone/BluetoothAtSms$SmsStorageCapacity;->used:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ","

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, v2, Lcom/android/phone/BluetoothAtSms$SmsStorageCapacity;->total:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/bluetooth/AtCommandResult;->addResponse(Ljava/lang/String;)V

    move-object v8, v7

    .line 1686
    goto/16 :goto_0
.end method

.method public handleSetCommand([Ljava/lang/Object;)Landroid/bluetooth/AtCommandResult;
    .locals 12
    .parameter "args"

    .prologue
    const/4 v10, 0x0

    const/4 v9, -0x1

    const/4 v8, 0x1

    const-string v11, "+CPMS: "

    const-string v7, ","

    .line 1692
    iget-object v5, p0, Lcom/android/phone/BluetoothAtSms$4;->this$0:Lcom/android/phone/BluetoothAtSms;

    iget-object v6, p0, Lcom/android/phone/BluetoothAtSms$4;->this$0:Lcom/android/phone/BluetoothAtSms;

    #getter for: Lcom/android/phone/BluetoothAtSms;->mCpmsConfig:Lcom/android/phone/BluetoothAtSms$CPMS;
    invoke-static {v6}, Lcom/android/phone/BluetoothAtSms;->access$1100(Lcom/android/phone/BluetoothAtSms;)Lcom/android/phone/BluetoothAtSms$CPMS;

    move-result-object v6

    #calls: Lcom/android/phone/BluetoothAtSms;->parseAtCpms([Ljava/lang/Object;Lcom/android/phone/BluetoothAtSms$CPMS;)Z
    invoke-static {v5, p1, v6}, Lcom/android/phone/BluetoothAtSms;->access$1200(Lcom/android/phone/BluetoothAtSms;[Ljava/lang/Object;Lcom/android/phone/BluetoothAtSms$CPMS;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 1693
    new-instance v5, Landroid/bluetooth/AtCommandResult;

    invoke-direct {v5, v8}, Landroid/bluetooth/AtCommandResult;-><init>(I)V

    .line 1754
    :goto_0
    return-object v5

    .line 1696
    :cond_0
    array-length v5, p1

    packed-switch v5, :pswitch_data_0

    .line 1754
    new-instance v5, Landroid/bluetooth/AtCommandResult;

    invoke-direct {v5, v8}, Landroid/bluetooth/AtCommandResult;-><init>(I)V

    goto :goto_0

    .line 1698
    :pswitch_0
    new-instance v0, Lcom/android/phone/BluetoothAtSms$SmsStorageCapacity;

    iget-object v5, p0, Lcom/android/phone/BluetoothAtSms$4;->this$0:Lcom/android/phone/BluetoothAtSms;

    #getter for: Lcom/android/phone/BluetoothAtSms;->mCpmsConfig:Lcom/android/phone/BluetoothAtSms$CPMS;
    invoke-static {v5}, Lcom/android/phone/BluetoothAtSms;->access$1100(Lcom/android/phone/BluetoothAtSms;)Lcom/android/phone/BluetoothAtSms$CPMS;

    move-result-object v5

    iget-object v5, v5, Lcom/android/phone/BluetoothAtSms$CPMS;->mem1:Ljava/lang/String;

    invoke-direct {v0, v5}, Lcom/android/phone/BluetoothAtSms$SmsStorageCapacity;-><init>(Ljava/lang/String;)V

    .line 1701
    .local v0, Mem1capacity:Lcom/android/phone/BluetoothAtSms$SmsStorageCapacity;
    iget-object v5, p0, Lcom/android/phone/BluetoothAtSms$4;->this$0:Lcom/android/phone/BluetoothAtSms;

    iget-object v6, p0, Lcom/android/phone/BluetoothAtSms$4;->this$0:Lcom/android/phone/BluetoothAtSms;

    #getter for: Lcom/android/phone/BluetoothAtSms;->mContext:Landroid/content/Context;
    invoke-static {v6}, Lcom/android/phone/BluetoothAtSms;->access$000(Lcom/android/phone/BluetoothAtSms;)Landroid/content/Context;

    move-result-object v6

    #calls: Lcom/android/phone/BluetoothAtSms;->getSmsMessageStorageCapacity(Landroid/content/Context;Lcom/android/phone/BluetoothAtSms$SmsStorageCapacity;)I
    invoke-static {v5, v6, v0}, Lcom/android/phone/BluetoothAtSms;->access$1000(Lcom/android/phone/BluetoothAtSms;Landroid/content/Context;Lcom/android/phone/BluetoothAtSms$SmsStorageCapacity;)I

    move-result v3

    .line 1702
    .local v3, error:I
    if-eq v9, v3, :cond_1

    .line 1703
    new-instance v5, Landroid/bluetooth/AtCommandResult;

    invoke-direct {v5, v8}, Landroid/bluetooth/AtCommandResult;-><init>(I)V

    goto :goto_0

    .line 1705
    :cond_1
    new-instance v4, Landroid/bluetooth/AtCommandResult;

    invoke-direct {v4, v10}, Landroid/bluetooth/AtCommandResult;-><init>(I)V

    .line 1706
    .local v4, result:Landroid/bluetooth/AtCommandResult;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "+CPMS: "

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v0, Lcom/android/phone/BluetoothAtSms$SmsStorageCapacity;->used:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v0, Lcom/android/phone/BluetoothAtSms$SmsStorageCapacity;->total:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/bluetooth/AtCommandResult;->addResponse(Ljava/lang/String;)V

    move-object v5, v4

    .line 1707
    goto :goto_0

    .line 1710
    .end local v0           #Mem1capacity:Lcom/android/phone/BluetoothAtSms$SmsStorageCapacity;
    .end local v3           #error:I
    .end local v4           #result:Landroid/bluetooth/AtCommandResult;
    :pswitch_1
    new-instance v0, Lcom/android/phone/BluetoothAtSms$SmsStorageCapacity;

    iget-object v5, p0, Lcom/android/phone/BluetoothAtSms$4;->this$0:Lcom/android/phone/BluetoothAtSms;

    #getter for: Lcom/android/phone/BluetoothAtSms;->mCpmsConfig:Lcom/android/phone/BluetoothAtSms$CPMS;
    invoke-static {v5}, Lcom/android/phone/BluetoothAtSms;->access$1100(Lcom/android/phone/BluetoothAtSms;)Lcom/android/phone/BluetoothAtSms$CPMS;

    move-result-object v5

    iget-object v5, v5, Lcom/android/phone/BluetoothAtSms$CPMS;->mem1:Ljava/lang/String;

    invoke-direct {v0, v5}, Lcom/android/phone/BluetoothAtSms$SmsStorageCapacity;-><init>(Ljava/lang/String;)V

    .line 1712
    .restart local v0       #Mem1capacity:Lcom/android/phone/BluetoothAtSms$SmsStorageCapacity;
    new-instance v1, Lcom/android/phone/BluetoothAtSms$SmsStorageCapacity;

    iget-object v5, p0, Lcom/android/phone/BluetoothAtSms$4;->this$0:Lcom/android/phone/BluetoothAtSms;

    #getter for: Lcom/android/phone/BluetoothAtSms;->mCpmsConfig:Lcom/android/phone/BluetoothAtSms$CPMS;
    invoke-static {v5}, Lcom/android/phone/BluetoothAtSms;->access$1100(Lcom/android/phone/BluetoothAtSms;)Lcom/android/phone/BluetoothAtSms$CPMS;

    move-result-object v5

    iget-object v5, v5, Lcom/android/phone/BluetoothAtSms$CPMS;->mem2:Ljava/lang/String;

    invoke-direct {v1, v5}, Lcom/android/phone/BluetoothAtSms$SmsStorageCapacity;-><init>(Ljava/lang/String;)V

    .line 1714
    .local v1, Mem2capacity:Lcom/android/phone/BluetoothAtSms$SmsStorageCapacity;
    iget-object v5, p0, Lcom/android/phone/BluetoothAtSms$4;->this$0:Lcom/android/phone/BluetoothAtSms;

    iget-object v6, p0, Lcom/android/phone/BluetoothAtSms$4;->this$0:Lcom/android/phone/BluetoothAtSms;

    #getter for: Lcom/android/phone/BluetoothAtSms;->mContext:Landroid/content/Context;
    invoke-static {v6}, Lcom/android/phone/BluetoothAtSms;->access$000(Lcom/android/phone/BluetoothAtSms;)Landroid/content/Context;

    move-result-object v6

    #calls: Lcom/android/phone/BluetoothAtSms;->getSmsMessageStorageCapacity(Landroid/content/Context;Lcom/android/phone/BluetoothAtSms$SmsStorageCapacity;)I
    invoke-static {v5, v6, v0}, Lcom/android/phone/BluetoothAtSms;->access$1000(Lcom/android/phone/BluetoothAtSms;Landroid/content/Context;Lcom/android/phone/BluetoothAtSms$SmsStorageCapacity;)I

    move-result v3

    .line 1715
    .restart local v3       #error:I
    if-eq v9, v3, :cond_2

    .line 1716
    new-instance v5, Landroid/bluetooth/AtCommandResult;

    invoke-direct {v5, v8}, Landroid/bluetooth/AtCommandResult;-><init>(I)V

    goto/16 :goto_0

    .line 1718
    :cond_2
    iget-object v5, p0, Lcom/android/phone/BluetoothAtSms$4;->this$0:Lcom/android/phone/BluetoothAtSms;

    iget-object v6, p0, Lcom/android/phone/BluetoothAtSms$4;->this$0:Lcom/android/phone/BluetoothAtSms;

    #getter for: Lcom/android/phone/BluetoothAtSms;->mContext:Landroid/content/Context;
    invoke-static {v6}, Lcom/android/phone/BluetoothAtSms;->access$000(Lcom/android/phone/BluetoothAtSms;)Landroid/content/Context;

    move-result-object v6

    #calls: Lcom/android/phone/BluetoothAtSms;->getSmsMessageStorageCapacity(Landroid/content/Context;Lcom/android/phone/BluetoothAtSms$SmsStorageCapacity;)I
    invoke-static {v5, v6, v1}, Lcom/android/phone/BluetoothAtSms;->access$1000(Lcom/android/phone/BluetoothAtSms;Landroid/content/Context;Lcom/android/phone/BluetoothAtSms$SmsStorageCapacity;)I

    move-result v3

    .line 1719
    if-eq v9, v3, :cond_3

    .line 1720
    new-instance v5, Landroid/bluetooth/AtCommandResult;

    invoke-direct {v5, v8}, Landroid/bluetooth/AtCommandResult;-><init>(I)V

    goto/16 :goto_0

    .line 1722
    :cond_3
    new-instance v4, Landroid/bluetooth/AtCommandResult;

    invoke-direct {v4, v10}, Landroid/bluetooth/AtCommandResult;-><init>(I)V

    .line 1723
    .restart local v4       #result:Landroid/bluetooth/AtCommandResult;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "+CPMS: "

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v0, Lcom/android/phone/BluetoothAtSms$SmsStorageCapacity;->used:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v0, Lcom/android/phone/BluetoothAtSms$SmsStorageCapacity;->total:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v1, Lcom/android/phone/BluetoothAtSms$SmsStorageCapacity;->used:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v1, Lcom/android/phone/BluetoothAtSms$SmsStorageCapacity;->total:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/bluetooth/AtCommandResult;->addResponse(Ljava/lang/String;)V

    move-object v5, v4

    .line 1725
    goto/16 :goto_0

    .line 1728
    .end local v0           #Mem1capacity:Lcom/android/phone/BluetoothAtSms$SmsStorageCapacity;
    .end local v1           #Mem2capacity:Lcom/android/phone/BluetoothAtSms$SmsStorageCapacity;
    .end local v3           #error:I
    .end local v4           #result:Landroid/bluetooth/AtCommandResult;
    :pswitch_2
    new-instance v0, Lcom/android/phone/BluetoothAtSms$SmsStorageCapacity;

    iget-object v5, p0, Lcom/android/phone/BluetoothAtSms$4;->this$0:Lcom/android/phone/BluetoothAtSms;

    #getter for: Lcom/android/phone/BluetoothAtSms;->mCpmsConfig:Lcom/android/phone/BluetoothAtSms$CPMS;
    invoke-static {v5}, Lcom/android/phone/BluetoothAtSms;->access$1100(Lcom/android/phone/BluetoothAtSms;)Lcom/android/phone/BluetoothAtSms$CPMS;

    move-result-object v5

    iget-object v5, v5, Lcom/android/phone/BluetoothAtSms$CPMS;->mem1:Ljava/lang/String;

    invoke-direct {v0, v5}, Lcom/android/phone/BluetoothAtSms$SmsStorageCapacity;-><init>(Ljava/lang/String;)V

    .line 1730
    .restart local v0       #Mem1capacity:Lcom/android/phone/BluetoothAtSms$SmsStorageCapacity;
    new-instance v1, Lcom/android/phone/BluetoothAtSms$SmsStorageCapacity;

    iget-object v5, p0, Lcom/android/phone/BluetoothAtSms$4;->this$0:Lcom/android/phone/BluetoothAtSms;

    #getter for: Lcom/android/phone/BluetoothAtSms;->mCpmsConfig:Lcom/android/phone/BluetoothAtSms$CPMS;
    invoke-static {v5}, Lcom/android/phone/BluetoothAtSms;->access$1100(Lcom/android/phone/BluetoothAtSms;)Lcom/android/phone/BluetoothAtSms$CPMS;

    move-result-object v5

    iget-object v5, v5, Lcom/android/phone/BluetoothAtSms$CPMS;->mem2:Ljava/lang/String;

    invoke-direct {v1, v5}, Lcom/android/phone/BluetoothAtSms$SmsStorageCapacity;-><init>(Ljava/lang/String;)V

    .line 1732
    .restart local v1       #Mem2capacity:Lcom/android/phone/BluetoothAtSms$SmsStorageCapacity;
    new-instance v2, Lcom/android/phone/BluetoothAtSms$SmsStorageCapacity;

    iget-object v5, p0, Lcom/android/phone/BluetoothAtSms$4;->this$0:Lcom/android/phone/BluetoothAtSms;

    #getter for: Lcom/android/phone/BluetoothAtSms;->mCpmsConfig:Lcom/android/phone/BluetoothAtSms$CPMS;
    invoke-static {v5}, Lcom/android/phone/BluetoothAtSms;->access$1100(Lcom/android/phone/BluetoothAtSms;)Lcom/android/phone/BluetoothAtSms$CPMS;

    move-result-object v5

    iget-object v5, v5, Lcom/android/phone/BluetoothAtSms$CPMS;->mem3:Ljava/lang/String;

    invoke-direct {v2, v5}, Lcom/android/phone/BluetoothAtSms$SmsStorageCapacity;-><init>(Ljava/lang/String;)V

    .line 1735
    .local v2, Mem3capacity:Lcom/android/phone/BluetoothAtSms$SmsStorageCapacity;
    iget-object v5, p0, Lcom/android/phone/BluetoothAtSms$4;->this$0:Lcom/android/phone/BluetoothAtSms;

    iget-object v6, p0, Lcom/android/phone/BluetoothAtSms$4;->this$0:Lcom/android/phone/BluetoothAtSms;

    #getter for: Lcom/android/phone/BluetoothAtSms;->mContext:Landroid/content/Context;
    invoke-static {v6}, Lcom/android/phone/BluetoothAtSms;->access$000(Lcom/android/phone/BluetoothAtSms;)Landroid/content/Context;

    move-result-object v6

    #calls: Lcom/android/phone/BluetoothAtSms;->getSmsMessageStorageCapacity(Landroid/content/Context;Lcom/android/phone/BluetoothAtSms$SmsStorageCapacity;)I
    invoke-static {v5, v6, v0}, Lcom/android/phone/BluetoothAtSms;->access$1000(Lcom/android/phone/BluetoothAtSms;Landroid/content/Context;Lcom/android/phone/BluetoothAtSms$SmsStorageCapacity;)I

    move-result v3

    .line 1736
    .restart local v3       #error:I
    if-eq v9, v3, :cond_4

    .line 1737
    new-instance v5, Landroid/bluetooth/AtCommandResult;

    invoke-direct {v5, v8}, Landroid/bluetooth/AtCommandResult;-><init>(I)V

    goto/16 :goto_0

    .line 1739
    :cond_4
    iget-object v5, p0, Lcom/android/phone/BluetoothAtSms$4;->this$0:Lcom/android/phone/BluetoothAtSms;

    iget-object v6, p0, Lcom/android/phone/BluetoothAtSms$4;->this$0:Lcom/android/phone/BluetoothAtSms;

    #getter for: Lcom/android/phone/BluetoothAtSms;->mContext:Landroid/content/Context;
    invoke-static {v6}, Lcom/android/phone/BluetoothAtSms;->access$000(Lcom/android/phone/BluetoothAtSms;)Landroid/content/Context;

    move-result-object v6

    #calls: Lcom/android/phone/BluetoothAtSms;->getSmsMessageStorageCapacity(Landroid/content/Context;Lcom/android/phone/BluetoothAtSms$SmsStorageCapacity;)I
    invoke-static {v5, v6, v1}, Lcom/android/phone/BluetoothAtSms;->access$1000(Lcom/android/phone/BluetoothAtSms;Landroid/content/Context;Lcom/android/phone/BluetoothAtSms$SmsStorageCapacity;)I

    move-result v3

    .line 1740
    if-eq v9, v3, :cond_5

    .line 1741
    new-instance v5, Landroid/bluetooth/AtCommandResult;

    invoke-direct {v5, v8}, Landroid/bluetooth/AtCommandResult;-><init>(I)V

    goto/16 :goto_0

    .line 1743
    :cond_5
    iget-object v5, p0, Lcom/android/phone/BluetoothAtSms$4;->this$0:Lcom/android/phone/BluetoothAtSms;

    iget-object v6, p0, Lcom/android/phone/BluetoothAtSms$4;->this$0:Lcom/android/phone/BluetoothAtSms;

    #getter for: Lcom/android/phone/BluetoothAtSms;->mContext:Landroid/content/Context;
    invoke-static {v6}, Lcom/android/phone/BluetoothAtSms;->access$000(Lcom/android/phone/BluetoothAtSms;)Landroid/content/Context;

    move-result-object v6

    #calls: Lcom/android/phone/BluetoothAtSms;->getSmsMessageStorageCapacity(Landroid/content/Context;Lcom/android/phone/BluetoothAtSms$SmsStorageCapacity;)I
    invoke-static {v5, v6, v2}, Lcom/android/phone/BluetoothAtSms;->access$1000(Lcom/android/phone/BluetoothAtSms;Landroid/content/Context;Lcom/android/phone/BluetoothAtSms$SmsStorageCapacity;)I

    move-result v3

    .line 1744
    if-eq v9, v3, :cond_6

    .line 1745
    new-instance v5, Landroid/bluetooth/AtCommandResult;

    invoke-direct {v5, v8}, Landroid/bluetooth/AtCommandResult;-><init>(I)V

    goto/16 :goto_0

    .line 1747
    :cond_6
    new-instance v4, Landroid/bluetooth/AtCommandResult;

    invoke-direct {v4, v10}, Landroid/bluetooth/AtCommandResult;-><init>(I)V

    .line 1748
    .restart local v4       #result:Landroid/bluetooth/AtCommandResult;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/android/phone/BluetoothAtSms$4;->cmdName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ": "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v0, Lcom/android/phone/BluetoothAtSms$SmsStorageCapacity;->used:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v0, Lcom/android/phone/BluetoothAtSms$SmsStorageCapacity;->total:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v1, Lcom/android/phone/BluetoothAtSms$SmsStorageCapacity;->used:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v1, Lcom/android/phone/BluetoothAtSms$SmsStorageCapacity;->total:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v2, Lcom/android/phone/BluetoothAtSms$SmsStorageCapacity;->used:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v2, Lcom/android/phone/BluetoothAtSms$SmsStorageCapacity;->total:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/bluetooth/AtCommandResult;->addResponse(Ljava/lang/String;)V

    move-object v5, v4

    .line 1751
    goto/16 :goto_0

    .line 1696
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public handleTestCommand()Landroid/bluetooth/AtCommandResult;
    .locals 3

    .prologue
    .line 1758
    new-instance v0, Landroid/bluetooth/AtCommandResult;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/bluetooth/AtCommandResult;-><init>(I)V

    .line 1759
    .local v0, result:Landroid/bluetooth/AtCommandResult;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/phone/BluetoothAtSms$4;->cmdName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": (\"ME\"),(\"ME\"),(\"ME\")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/bluetooth/AtCommandResult;->addResponse(Ljava/lang/String;)V

    .line 1760
    return-object v0
.end method
