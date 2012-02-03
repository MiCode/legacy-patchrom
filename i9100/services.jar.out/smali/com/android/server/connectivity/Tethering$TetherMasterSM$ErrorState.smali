.class Lcom/android/server/connectivity/Tethering$TetherMasterSM$ErrorState;
.super Lcom/android/internal/util/HierarchicalState;
.source "Tethering.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/connectivity/Tethering$TetherMasterSM;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ErrorState"
.end annotation


# instance fields
.field mErrorNotification:I

.field final synthetic this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;


# direct methods
.method constructor <init>(Lcom/android/server/connectivity/Tethering$TetherMasterSM;)V
    .locals 0
    .parameter

    .prologue
    .line 1791
    iput-object p1, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$ErrorState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    invoke-direct {p0}, Lcom/android/internal/util/HierarchicalState;-><init>()V

    return-void
.end method


# virtual methods
.method notify(I)V
    .locals 5
    .parameter "msgType"

    .prologue
    .line 1807
    iput p1, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$ErrorState;->mErrorNotification:I

    .line 1808
    iget-object v4, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$ErrorState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    #getter for: Lcom/android/server/connectivity/Tethering$TetherMasterSM;->mNotifyList:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->access$5100(Lcom/android/server/connectivity/Tethering$TetherMasterSM;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 1809
    .local v2, o:Ljava/lang/Object;
    move-object v0, v2

    check-cast v0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    move-object v3, v0

    .line 1810
    .local v3, sm:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;
    invoke-virtual {v3, p1}, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->sendMessage(I)V

    goto :goto_0

    .line 1812
    .end local v2           #o:Ljava/lang/Object;
    .end local v3           #sm:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;
    :cond_0
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 3
    .parameter "message"

    .prologue
    .line 1795
    const/4 v0, 0x1

    .line 1796
    .local v0, retValue:Z
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 1802
    const/4 v0, 0x0

    .line 1804
    :goto_0
    return v0

    .line 1798
    :pswitch_0
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    .line 1799
    .local v1, who:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;
    iget v2, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$ErrorState;->mErrorNotification:I

    invoke-virtual {v1, v2}, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->sendMessage(I)V

    goto :goto_0

    .line 1796
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
