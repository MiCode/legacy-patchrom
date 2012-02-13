.class Lcom/motorola/android/server/TetherEntitlement$StateReceiver;
.super Landroid/content/BroadcastReceiver;
.source "TetherEntitlement.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/android/server/TetherEntitlement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StateReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/motorola/android/server/TetherEntitlement;


# direct methods
.method private constructor <init>(Lcom/motorola/android/server/TetherEntitlement;)V
    .locals 0
    .parameter

    .prologue
    iput-object p1, p0, Lcom/motorola/android/server/TetherEntitlement$StateReceiver;->this$0:Lcom/motorola/android/server/TetherEntitlement;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/motorola/android/server/TetherEntitlement;Lcom/motorola/android/server/TetherEntitlement$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-direct {p0, p1}, Lcom/motorola/android/server/TetherEntitlement$StateReceiver;-><init>(Lcom/motorola/android/server/TetherEntitlement;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 24
    .parameter "content"
    .parameter "intent"

    .prologue
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    .local v2, action:Ljava/lang/String;
    const-string v20, "motorola.intent.ENTITLEMENT_STATE_CHANGE"

    move-object v0, v2

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_d

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v7

    .local v7, extras:Landroid/os/Bundle;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/server/TetherEntitlement$StateReceiver;->this$0:Lcom/motorola/android/server/TetherEntitlement;

    move-object/from16 v20, v0

    const-string v21, "entitlement_state"

    move-object v0, v7

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v21

    #setter for: Lcom/motorola/android/server/TetherEntitlement;->mEntitlementCheckState:I
    invoke-static/range {v20 .. v21}, Lcom/motorola/android/server/TetherEntitlement;->access$102(Lcom/motorola/android/server/TetherEntitlement;I)I

    const-string v20, "TetherEntitlement"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "Recvd ENTITLEMENT_CHECK_STATE_CHANGED, state="

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/server/TetherEntitlement$StateReceiver;->this$0:Lcom/motorola/android/server/TetherEntitlement;

    move-object/from16 v22, v0

    #getter for: Lcom/motorola/android/server/TetherEntitlement;->mEntitlementCheckState:I
    invoke-static/range {v22 .. v22}, Lcom/motorola/android/server/TetherEntitlement;->access$100(Lcom/motorola/android/server/TetherEntitlement;)I

    move-result v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/server/TetherEntitlement$StateReceiver;->this$0:Lcom/motorola/android/server/TetherEntitlement;

    move-object/from16 v20, v0

    #getter for: Lcom/motorola/android/server/TetherEntitlement;->mContext:Landroid/content/Context;
    invoke-static/range {v20 .. v20}, Lcom/motorola/android/server/TetherEntitlement;->access$200(Lcom/motorola/android/server/TetherEntitlement;)Landroid/content/Context;

    move-result-object v20

    const-string v21, "connectivity"

    invoke-virtual/range {v20 .. v21}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/ConnectivityManager;

    .local v5, cm:Landroid/net/ConnectivityManager;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/server/TetherEntitlement$StateReceiver;->this$0:Lcom/motorola/android/server/TetherEntitlement;

    move-object/from16 v20, v0

    #getter for: Lcom/motorola/android/server/TetherEntitlement;->mEntitlementCheckState:I
    invoke-static/range {v20 .. v20}, Lcom/motorola/android/server/TetherEntitlement;->access$100(Lcom/motorola/android/server/TetherEntitlement;)I

    move-result v20

    const/16 v21, 0x4

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/server/TetherEntitlement$StateReceiver;->this$0:Lcom/motorola/android/server/TetherEntitlement;

    move-object/from16 v20, v0

    #getter for: Lcom/motorola/android/server/TetherEntitlement;->mPendingTetherEnable:Z
    invoke-static/range {v20 .. v20}, Lcom/motorola/android/server/TetherEntitlement;->access$300(Lcom/motorola/android/server/TetherEntitlement;)Z

    move-result v20

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/server/TetherEntitlement$StateReceiver;->this$0:Lcom/motorola/android/server/TetherEntitlement;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    #setter for: Lcom/motorola/android/server/TetherEntitlement;->mPendingTetherEnable:Z
    invoke-static/range {v20 .. v21}, Lcom/motorola/android/server/TetherEntitlement;->access$302(Lcom/motorola/android/server/TetherEntitlement;Z)Z

    const-string v20, "TetherEntitlement"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "FAILURE case value of mLastIfaceEnable is "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/server/TetherEntitlement$StateReceiver;->this$0:Lcom/motorola/android/server/TetherEntitlement;

    move-object/from16 v22, v0

    #getter for: Lcom/motorola/android/server/TetherEntitlement;->mLastIfaceEnable:Ljava/lang/String;
    invoke-static/range {v22 .. v22}, Lcom/motorola/android/server/TetherEntitlement;->access$400(Lcom/motorola/android/server/TetherEntitlement;)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/server/TetherEntitlement$StateReceiver;->this$0:Lcom/motorola/android/server/TetherEntitlement;

    move-object/from16 v20, v0

    #getter for: Lcom/motorola/android/server/TetherEntitlement;->mContext:Landroid/content/Context;
    invoke-static/range {v20 .. v20}, Lcom/motorola/android/server/TetherEntitlement;->access$200(Lcom/motorola/android/server/TetherEntitlement;)Landroid/content/Context;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v20

    const-string v21, "TETHER_PENDING"

    const/16 v22, 0x0

    invoke-static/range {v20 .. v22}, Lcom/motorola/android/provider/MotorolaSettings;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/server/TetherEntitlement$StateReceiver;->this$0:Lcom/motorola/android/server/TetherEntitlement;

    move-object/from16 v20, v0

    #getter for: Lcom/motorola/android/server/TetherEntitlement;->mLastIfaceEnable:Ljava/lang/String;
    invoke-static/range {v20 .. v20}, Lcom/motorola/android/server/TetherEntitlement;->access$400(Lcom/motorola/android/server/TetherEntitlement;)Ljava/lang/String;

    move-result-object v20

    move-object v0, v5

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->untether(Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/server/TetherEntitlement$StateReceiver;->this$0:Lcom/motorola/android/server/TetherEntitlement;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    #calls: Lcom/motorola/android/server/TetherEntitlement;->setUsbTetherAuthNotif(Z)V
    invoke-static/range {v20 .. v21}, Lcom/motorola/android/server/TetherEntitlement;->access$500(Lcom/motorola/android/server/TetherEntitlement;Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/server/TetherEntitlement$StateReceiver;->this$0:Lcom/motorola/android/server/TetherEntitlement;

    move-object/from16 v20, v0

    const/16 v21, 0x1

    #calls: Lcom/motorola/android/server/TetherEntitlement;->setUsbTetherAuthErrorNotif(Z)V
    invoke-static/range {v20 .. v21}, Lcom/motorola/android/server/TetherEntitlement;->access$600(Lcom/motorola/android/server/TetherEntitlement;Z)V

    .end local v5           #cm:Landroid/net/ConnectivityManager;
    .end local v7           #extras:Landroid/os/Bundle;
    :cond_0
    :goto_0
    return-void

    .restart local v5       #cm:Landroid/net/ConnectivityManager;
    .restart local v7       #extras:Landroid/os/Bundle;
    :cond_1
    const-string v20, "TetherEntitlement"

    const-string v21, "Check if failure was received for Periodic case"

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v5}, Landroid/net/ConnectivityManager;->getTetheredIfaces()[Ljava/lang/String;

    move-result-object v16

    .local v16, tethered:[Ljava/lang/String;
    invoke-virtual {v5}, Landroid/net/ConnectivityManager;->getTetherableUsbRegexs()[Ljava/lang/String;

    move-result-object v13

    .local v13, mUsbRegexs:[Ljava/lang/String;
    move-object/from16 v3, v16

    .local v3, arr$:[Ljava/lang/String;
    array-length v11, v3

    .local v11, len$:I
    const/4 v8, 0x0

    .local v8, i$:I
    move v9, v8

    .end local v3           #arr$:[Ljava/lang/String;
    .end local v8           #i$:I
    .end local v11           #len$:I
    .local v9, i$:I
    :goto_1
    if-ge v9, v11, :cond_0

    aget-object v10, v3, v9

    .local v10, iface:Ljava/lang/String;
    move-object v4, v13

    .local v4, arr$:[Ljava/lang/String;
    array-length v12, v4

    .local v12, len$:I
    const/4 v8, 0x0

    .end local v9           #i$:I
    .restart local v8       #i$:I
    :goto_2
    if-ge v8, v12, :cond_3

    aget-object v14, v4, v8

    .local v14, regex:Ljava/lang/String;
    invoke-virtual {v10, v14}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_2

    invoke-virtual {v5, v10}, Landroid/net/ConnectivityManager;->untether(Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/server/TetherEntitlement$StateReceiver;->this$0:Lcom/motorola/android/server/TetherEntitlement;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    #calls: Lcom/motorola/android/server/TetherEntitlement;->setUsbTetherAuthNotif(Z)V
    invoke-static/range {v20 .. v21}, Lcom/motorola/android/server/TetherEntitlement;->access$500(Lcom/motorola/android/server/TetherEntitlement;Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/server/TetherEntitlement$StateReceiver;->this$0:Lcom/motorola/android/server/TetherEntitlement;

    move-object/from16 v20, v0

    const/16 v21, 0x1

    #calls: Lcom/motorola/android/server/TetherEntitlement;->setUsbTetherAuthErrorNotif(Z)V
    invoke-static/range {v20 .. v21}, Lcom/motorola/android/server/TetherEntitlement;->access$600(Lcom/motorola/android/server/TetherEntitlement;Z)V

    :cond_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .end local v14           #regex:Ljava/lang/String;
    :cond_3
    add-int/lit8 v8, v9, 0x1

    move v9, v8

    .end local v8           #i$:I
    .restart local v9       #i$:I
    goto :goto_1

    .end local v4           #arr$:[Ljava/lang/String;
    .end local v9           #i$:I
    .end local v10           #iface:Ljava/lang/String;
    .end local v12           #len$:I
    .end local v13           #mUsbRegexs:[Ljava/lang/String;
    .end local v16           #tethered:[Ljava/lang/String;
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/server/TetherEntitlement$StateReceiver;->this$0:Lcom/motorola/android/server/TetherEntitlement;

    move-object/from16 v20, v0

    #getter for: Lcom/motorola/android/server/TetherEntitlement;->mEntitlementCheckState:I
    invoke-static/range {v20 .. v20}, Lcom/motorola/android/server/TetherEntitlement;->access$100(Lcom/motorola/android/server/TetherEntitlement;)I

    move-result v20

    const/16 v21, 0x3

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/server/TetherEntitlement$StateReceiver;->this$0:Lcom/motorola/android/server/TetherEntitlement;

    move-object/from16 v20, v0

    #getter for: Lcom/motorola/android/server/TetherEntitlement;->mPendingTetherEnable:Z
    invoke-static/range {v20 .. v20}, Lcom/motorola/android/server/TetherEntitlement;->access$300(Lcom/motorola/android/server/TetherEntitlement;)Z

    move-result v20

    if-eqz v20, :cond_6

    const-string v20, "TetherEntitlement"

    const-string v21, "State ENTITLEMENT_CHECK_STATE_SUCCESS"

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v20, "TetherEntitlement"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "SUCCESS case value of mLastIfaceEnable is "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/server/TetherEntitlement$StateReceiver;->this$0:Lcom/motorola/android/server/TetherEntitlement;

    move-object/from16 v22, v0

    #getter for: Lcom/motorola/android/server/TetherEntitlement;->mLastIfaceEnable:Ljava/lang/String;
    invoke-static/range {v22 .. v22}, Lcom/motorola/android/server/TetherEntitlement;->access$400(Lcom/motorola/android/server/TetherEntitlement;)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/server/TetherEntitlement$StateReceiver;->this$0:Lcom/motorola/android/server/TetherEntitlement;

    move-object/from16 v20, v0

    #getter for: Lcom/motorola/android/server/TetherEntitlement;->mContext:Landroid/content/Context;
    invoke-static/range {v20 .. v20}, Lcom/motorola/android/server/TetherEntitlement;->access$200(Lcom/motorola/android/server/TetherEntitlement;)Landroid/content/Context;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v20

    const-string v21, "TETHER_PENDING"

    const/16 v22, 0x0

    invoke-static/range {v20 .. v22}, Lcom/motorola/android/provider/MotorolaSettings;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/server/TetherEntitlement$StateReceiver;->this$0:Lcom/motorola/android/server/TetherEntitlement;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    #setter for: Lcom/motorola/android/server/TetherEntitlement;->mPendingTetherEnable:Z
    invoke-static/range {v20 .. v21}, Lcom/motorola/android/server/TetherEntitlement;->access$302(Lcom/motorola/android/server/TetherEntitlement;Z)Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/server/TetherEntitlement$StateReceiver;->this$0:Lcom/motorola/android/server/TetherEntitlement;

    move-object/from16 v20, v0

    #getter for: Lcom/motorola/android/server/TetherEntitlement;->mLastIfaceEnable:Ljava/lang/String;
    invoke-static/range {v20 .. v20}, Lcom/motorola/android/server/TetherEntitlement;->access$400(Lcom/motorola/android/server/TetherEntitlement;)Ljava/lang/String;

    move-result-object v20

    move-object v0, v5

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->tether(Ljava/lang/String;)I

    move-result v20

    if-eqz v20, :cond_5

    const-string v20, "TetherEntitlement"

    const-string v21, "Received error while starting Tethering"

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/server/TetherEntitlement$StateReceiver;->this$0:Lcom/motorola/android/server/TetherEntitlement;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    #calls: Lcom/motorola/android/server/TetherEntitlement;->setUsbTetherAuthNotif(Z)V
    invoke-static/range {v20 .. v21}, Lcom/motorola/android/server/TetherEntitlement;->access$500(Lcom/motorola/android/server/TetherEntitlement;Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/server/TetherEntitlement$StateReceiver;->this$0:Lcom/motorola/android/server/TetherEntitlement;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    #calls: Lcom/motorola/android/server/TetherEntitlement;->setUsbTetherConnectNotif(Z)V
    invoke-static/range {v20 .. v21}, Lcom/motorola/android/server/TetherEntitlement;->access$700(Lcom/motorola/android/server/TetherEntitlement;Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/server/TetherEntitlement$StateReceiver;->this$0:Lcom/motorola/android/server/TetherEntitlement;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    #calls: Lcom/motorola/android/server/TetherEntitlement;->setUsbTetherConnectErrorNotif(Z)V
    invoke-static/range {v20 .. v21}, Lcom/motorola/android/server/TetherEntitlement;->access$800(Lcom/motorola/android/server/TetherEntitlement;Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/server/TetherEntitlement$StateReceiver;->this$0:Lcom/motorola/android/server/TetherEntitlement;

    move-object/from16 v20, v0

    const/16 v21, 0x1

    #calls: Lcom/motorola/android/server/TetherEntitlement;->setUsbTetherConnectErrorNotif(Z)V
    invoke-static/range {v20 .. v21}, Lcom/motorola/android/server/TetherEntitlement;->access$800(Lcom/motorola/android/server/TetherEntitlement;Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/server/TetherEntitlement$StateReceiver;->this$0:Lcom/motorola/android/server/TetherEntitlement;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    #calls: Lcom/motorola/android/server/TetherEntitlement;->setUsbTetherAuthErrorNotif(Z)V
    invoke-static/range {v20 .. v21}, Lcom/motorola/android/server/TetherEntitlement;->access$600(Lcom/motorola/android/server/TetherEntitlement;Z)V

    goto/16 :goto_0

    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/server/TetherEntitlement$StateReceiver;->this$0:Lcom/motorola/android/server/TetherEntitlement;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    #calls: Lcom/motorola/android/server/TetherEntitlement;->setUsbTetherAuthNotif(Z)V
    invoke-static/range {v20 .. v21}, Lcom/motorola/android/server/TetherEntitlement;->access$500(Lcom/motorola/android/server/TetherEntitlement;Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/server/TetherEntitlement$StateReceiver;->this$0:Lcom/motorola/android/server/TetherEntitlement;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    #calls: Lcom/motorola/android/server/TetherEntitlement;->setUsbTetherAuthErrorNotif(Z)V
    invoke-static/range {v20 .. v21}, Lcom/motorola/android/server/TetherEntitlement;->access$600(Lcom/motorola/android/server/TetherEntitlement;Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/server/TetherEntitlement$StateReceiver;->this$0:Lcom/motorola/android/server/TetherEntitlement;

    move-object/from16 v20, v0

    const/16 v21, 0x1

    #calls: Lcom/motorola/android/server/TetherEntitlement;->setUsbTetherConnectNotif(Z)V
    invoke-static/range {v20 .. v21}, Lcom/motorola/android/server/TetherEntitlement;->access$700(Lcom/motorola/android/server/TetherEntitlement;Z)V

    goto/16 :goto_0

    :cond_6
    invoke-virtual {v5}, Landroid/net/ConnectivityManager;->getTetheredIfaces()[Ljava/lang/String;

    move-result-object v16

    .restart local v16       #tethered:[Ljava/lang/String;
    invoke-virtual {v5}, Landroid/net/ConnectivityManager;->getTetherableUsbRegexs()[Ljava/lang/String;

    move-result-object v13

    .restart local v13       #mUsbRegexs:[Ljava/lang/String;
    move-object/from16 v3, v16

    .restart local v3       #arr$:[Ljava/lang/String;
    array-length v11, v3

    .restart local v11       #len$:I
    const/4 v8, 0x0

    .restart local v8       #i$:I
    move v9, v8

    .end local v3           #arr$:[Ljava/lang/String;
    .end local v8           #i$:I
    .end local v11           #len$:I
    .restart local v9       #i$:I
    :goto_3
    if-ge v9, v11, :cond_0

    aget-object v10, v3, v9

    .restart local v10       #iface:Ljava/lang/String;
    move-object v4, v13

    .restart local v4       #arr$:[Ljava/lang/String;
    array-length v12, v4

    .restart local v12       #len$:I
    const/4 v8, 0x0

    .end local v9           #i$:I
    .restart local v8       #i$:I
    :goto_4
    if-ge v8, v12, :cond_8

    aget-object v14, v4, v8

    .restart local v14       #regex:Ljava/lang/String;
    invoke-virtual {v10, v14}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/server/TetherEntitlement$StateReceiver;->this$0:Lcom/motorola/android/server/TetherEntitlement;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    #calls: Lcom/motorola/android/server/TetherEntitlement;->setUsbTetherAuthNotif(Z)V
    invoke-static/range {v20 .. v21}, Lcom/motorola/android/server/TetherEntitlement;->access$500(Lcom/motorola/android/server/TetherEntitlement;Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/server/TetherEntitlement$StateReceiver;->this$0:Lcom/motorola/android/server/TetherEntitlement;

    move-object/from16 v20, v0

    const/16 v21, 0x1

    #calls: Lcom/motorola/android/server/TetherEntitlement;->setUsbTetherReadyNotif(Z)V
    invoke-static/range {v20 .. v21}, Lcom/motorola/android/server/TetherEntitlement;->access$900(Lcom/motorola/android/server/TetherEntitlement;Z)V

    :cond_7
    add-int/lit8 v8, v8, 0x1

    goto :goto_4

    .end local v14           #regex:Ljava/lang/String;
    :cond_8
    add-int/lit8 v8, v9, 0x1

    move v9, v8

    .end local v8           #i$:I
    .restart local v9       #i$:I
    goto :goto_3

    .end local v4           #arr$:[Ljava/lang/String;
    .end local v9           #i$:I
    .end local v10           #iface:Ljava/lang/String;
    .end local v12           #len$:I
    .end local v13           #mUsbRegexs:[Ljava/lang/String;
    .end local v16           #tethered:[Ljava/lang/String;
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/server/TetherEntitlement$StateReceiver;->this$0:Lcom/motorola/android/server/TetherEntitlement;

    move-object/from16 v20, v0

    #getter for: Lcom/motorola/android/server/TetherEntitlement;->mEntitlementCheckState:I
    invoke-static/range {v20 .. v20}, Lcom/motorola/android/server/TetherEntitlement;->access$100(Lcom/motorola/android/server/TetherEntitlement;)I

    move-result v20

    const/16 v21, 0x2

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_0

    const-string v20, "TetherEntitlement"

    const-string v21, "ENTITLEMENT_CHECK_STATE_VERIFYING,received"

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/server/TetherEntitlement$StateReceiver;->this$0:Lcom/motorola/android/server/TetherEntitlement;

    move-object/from16 v20, v0

    #getter for: Lcom/motorola/android/server/TetherEntitlement;->mPendingTetherEnable:Z
    invoke-static/range {v20 .. v20}, Lcom/motorola/android/server/TetherEntitlement;->access$300(Lcom/motorola/android/server/TetherEntitlement;)Z

    move-result v20

    if-eqz v20, :cond_a

    const-string v20, "TetherEntitlement"

    const-string v21, "ENTITLEMENT_CHECK_STATE_VERIFYING, mPendingTetherEnable"

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/server/TetherEntitlement$StateReceiver;->this$0:Lcom/motorola/android/server/TetherEntitlement;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    #calls: Lcom/motorola/android/server/TetherEntitlement;->setUsbTetherAuthErrorNotif(Z)V
    invoke-static/range {v20 .. v21}, Lcom/motorola/android/server/TetherEntitlement;->access$600(Lcom/motorola/android/server/TetherEntitlement;Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/server/TetherEntitlement$StateReceiver;->this$0:Lcom/motorola/android/server/TetherEntitlement;

    move-object/from16 v20, v0

    const/16 v21, 0x1

    #calls: Lcom/motorola/android/server/TetherEntitlement;->setUsbTetherAuthNotif(Z)V
    invoke-static/range {v20 .. v21}, Lcom/motorola/android/server/TetherEntitlement;->access$500(Lcom/motorola/android/server/TetherEntitlement;Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/server/TetherEntitlement$StateReceiver;->this$0:Lcom/motorola/android/server/TetherEntitlement;

    move-object/from16 v20, v0

    #getter for: Lcom/motorola/android/server/TetherEntitlement;->mContext:Landroid/content/Context;
    invoke-static/range {v20 .. v20}, Lcom/motorola/android/server/TetherEntitlement;->access$200(Lcom/motorola/android/server/TetherEntitlement;)Landroid/content/Context;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v20

    const-string v21, "TETHER_PENDING"

    const/16 v22, 0x1

    invoke-static/range {v20 .. v22}, Lcom/motorola/android/provider/MotorolaSettings;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    :cond_a
    const-string v20, "TetherEntitlement"

    const-string v21, "ENTITLEMENT_CHECK_STATE_VERIFYING, not mPendingTetherEnable"

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v5}, Landroid/net/ConnectivityManager;->getTetheredIfaces()[Ljava/lang/String;

    move-result-object v16

    .restart local v16       #tethered:[Ljava/lang/String;
    invoke-virtual {v5}, Landroid/net/ConnectivityManager;->getTetherableUsbRegexs()[Ljava/lang/String;

    move-result-object v13

    .restart local v13       #mUsbRegexs:[Ljava/lang/String;
    move-object/from16 v3, v16

    .restart local v3       #arr$:[Ljava/lang/String;
    array-length v11, v3

    .restart local v11       #len$:I
    const/4 v8, 0x0

    .restart local v8       #i$:I
    move v9, v8

    .end local v3           #arr$:[Ljava/lang/String;
    .end local v8           #i$:I
    .end local v11           #len$:I
    .restart local v9       #i$:I
    :goto_5
    if-ge v9, v11, :cond_0

    aget-object v10, v3, v9

    .restart local v10       #iface:Ljava/lang/String;
    move-object v4, v13

    .restart local v4       #arr$:[Ljava/lang/String;
    array-length v12, v4

    .restart local v12       #len$:I
    const/4 v8, 0x0

    .end local v9           #i$:I
    .restart local v8       #i$:I
    :goto_6
    if-ge v8, v12, :cond_c

    aget-object v14, v4, v8

    .restart local v14       #regex:Ljava/lang/String;
    invoke-virtual {v10, v14}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/server/TetherEntitlement$StateReceiver;->this$0:Lcom/motorola/android/server/TetherEntitlement;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    #calls: Lcom/motorola/android/server/TetherEntitlement;->setUsbTetherReadyNotif(Z)V
    invoke-static/range {v20 .. v21}, Lcom/motorola/android/server/TetherEntitlement;->access$900(Lcom/motorola/android/server/TetherEntitlement;Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/server/TetherEntitlement$StateReceiver;->this$0:Lcom/motorola/android/server/TetherEntitlement;

    move-object/from16 v20, v0

    const/16 v21, 0x1

    #calls: Lcom/motorola/android/server/TetherEntitlement;->setUsbTetherAuthNotif(Z)V
    invoke-static/range {v20 .. v21}, Lcom/motorola/android/server/TetherEntitlement;->access$500(Lcom/motorola/android/server/TetherEntitlement;Z)V

    :cond_b
    add-int/lit8 v8, v8, 0x1

    goto :goto_6

    .end local v14           #regex:Ljava/lang/String;
    :cond_c
    add-int/lit8 v8, v9, 0x1

    move v9, v8

    .end local v8           #i$:I
    .restart local v9       #i$:I
    goto :goto_5

    .end local v4           #arr$:[Ljava/lang/String;
    .end local v5           #cm:Landroid/net/ConnectivityManager;
    .end local v7           #extras:Landroid/os/Bundle;
    .end local v9           #i$:I
    .end local v10           #iface:Ljava/lang/String;
    .end local v12           #len$:I
    .end local v13           #mUsbRegexs:[Ljava/lang/String;
    .end local v16           #tethered:[Ljava/lang/String;
    :cond_d
    const-string v20, "android.net.conn.TETHER_STATE_CHANGED"

    move-object v0, v2

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/server/TetherEntitlement$StateReceiver;->this$0:Lcom/motorola/android/server/TetherEntitlement;

    move-object/from16 v20, v0

    #getter for: Lcom/motorola/android/server/TetherEntitlement;->mContext:Landroid/content/Context;
    invoke-static/range {v20 .. v20}, Lcom/motorola/android/server/TetherEntitlement;->access$200(Lcom/motorola/android/server/TetherEntitlement;)Landroid/content/Context;

    move-result-object v20

    const-string v21, "connectivity"

    invoke-virtual/range {v20 .. v21}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/ConnectivityManager;

    .restart local v5       #cm:Landroid/net/ConnectivityManager;
    const/16 v19, 0x0

    .local v19, usbTethered:Z
    const/16 v18, 0x0

    .local v18, usbErrored:Z
    const-string v20, "activeArray"

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v17

    .local v17, tethered:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v20, "erroredArray"

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v6

    .local v6, errored:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v5}, Landroid/net/ConnectivityManager;->getTetherableUsbRegexs()[Ljava/lang/String;

    move-result-object v13

    .restart local v13       #mUsbRegexs:[Ljava/lang/String;
    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_e
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_10

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    .local v15, s:Ljava/lang/String;
    move-object v3, v13

    .restart local v3       #arr$:[Ljava/lang/String;
    array-length v11, v3

    .restart local v11       #len$:I
    const/4 v9, 0x0

    .restart local v9       #i$:I
    :goto_7
    if-ge v9, v11, :cond_e

    aget-object v14, v3, v9

    .restart local v14       #regex:Ljava/lang/String;
    invoke-virtual {v15, v14}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_f

    const/16 v19, 0x1

    :cond_f
    add-int/lit8 v9, v9, 0x1

    goto :goto_7

    .end local v3           #arr$:[Ljava/lang/String;
    .end local v9           #i$:I
    .end local v11           #len$:I
    .end local v14           #regex:Ljava/lang/String;
    .end local v15           #s:Ljava/lang/String;
    :cond_10
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_11
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_13

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    .restart local v15       #s:Ljava/lang/String;
    move-object v3, v13

    .restart local v3       #arr$:[Ljava/lang/String;
    array-length v11, v3

    .restart local v11       #len$:I
    const/4 v9, 0x0

    .restart local v9       #i$:I
    :goto_8
    if-ge v9, v11, :cond_11

    aget-object v14, v3, v9

    .restart local v14       #regex:Ljava/lang/String;
    invoke-virtual {v15, v14}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_12

    const/16 v18, 0x1

    :cond_12
    add-int/lit8 v9, v9, 0x1

    goto :goto_8

    .end local v3           #arr$:[Ljava/lang/String;
    .end local v9           #i$:I
    .end local v11           #len$:I
    .end local v14           #regex:Ljava/lang/String;
    .end local v15           #s:Ljava/lang/String;
    :cond_13
    const-string v20, "TetherEntitlement"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "usbTethered:"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, ",usbErrored:"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/server/TetherEntitlement$StateReceiver;->this$0:Lcom/motorola/android/server/TetherEntitlement;

    move-object/from16 v20, v0

    #getter for: Lcom/motorola/android/server/TetherEntitlement;->mPendingTetherEnable:Z
    invoke-static/range {v20 .. v20}, Lcom/motorola/android/server/TetherEntitlement;->access$300(Lcom/motorola/android/server/TetherEntitlement;)Z

    move-result v20

    if-eqz v20, :cond_14

    if-nez v19, :cond_14

    if-nez v18, :cond_14

    const-string v20, "TetherEntitlement"

    const-string v21, "Ignoring this since tether is pending"

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_14
    if-eqz v19, :cond_15

    const-string v20, "TetherEntitlement"

    const-string v21, "Tethered..."

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/server/TetherEntitlement$StateReceiver;->this$0:Lcom/motorola/android/server/TetherEntitlement;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    #setter for: Lcom/motorola/android/server/TetherEntitlement;->mPendingTetherEnable:Z
    invoke-static/range {v20 .. v21}, Lcom/motorola/android/server/TetherEntitlement;->access$302(Lcom/motorola/android/server/TetherEntitlement;Z)Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/server/TetherEntitlement$StateReceiver;->this$0:Lcom/motorola/android/server/TetherEntitlement;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    #calls: Lcom/motorola/android/server/TetherEntitlement;->setUsbTetherAuthNotif(Z)V
    invoke-static/range {v20 .. v21}, Lcom/motorola/android/server/TetherEntitlement;->access$500(Lcom/motorola/android/server/TetherEntitlement;Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/server/TetherEntitlement$StateReceiver;->this$0:Lcom/motorola/android/server/TetherEntitlement;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    #calls: Lcom/motorola/android/server/TetherEntitlement;->setUsbTetherConnectNotif(Z)V
    invoke-static/range {v20 .. v21}, Lcom/motorola/android/server/TetherEntitlement;->access$700(Lcom/motorola/android/server/TetherEntitlement;Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/server/TetherEntitlement$StateReceiver;->this$0:Lcom/motorola/android/server/TetherEntitlement;

    move-object/from16 v20, v0

    const/16 v21, 0x1

    #calls: Lcom/motorola/android/server/TetherEntitlement;->setUsbTetherReadyNotif(Z)V
    invoke-static/range {v20 .. v21}, Lcom/motorola/android/server/TetherEntitlement;->access$900(Lcom/motorola/android/server/TetherEntitlement;Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/server/TetherEntitlement$StateReceiver;->this$0:Lcom/motorola/android/server/TetherEntitlement;

    move-object/from16 v20, v0

    const-wide/16 v21, 0x0

    #setter for: Lcom/motorola/android/server/TetherEntitlement;->mLastUncheckTime:J
    invoke-static/range {v20 .. v22}, Lcom/motorola/android/server/TetherEntitlement;->access$1002(Lcom/motorola/android/server/TetherEntitlement;J)J

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/server/TetherEntitlement$StateReceiver;->this$0:Lcom/motorola/android/server/TetherEntitlement;

    move-object/from16 v20, v0

    #getter for: Lcom/motorola/android/server/TetherEntitlement;->mContext:Landroid/content/Context;
    invoke-static/range {v20 .. v20}, Lcom/motorola/android/server/TetherEntitlement;->access$200(Lcom/motorola/android/server/TetherEntitlement;)Landroid/content/Context;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v20

    const-string v21, "LAST_UNCHECK_TIME"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/server/TetherEntitlement$StateReceiver;->this$0:Lcom/motorola/android/server/TetherEntitlement;

    move-object/from16 v22, v0

    #getter for: Lcom/motorola/android/server/TetherEntitlement;->mLastUncheckTime:J
    invoke-static/range {v22 .. v22}, Lcom/motorola/android/server/TetherEntitlement;->access$1000(Lcom/motorola/android/server/TetherEntitlement;)J

    move-result-wide v22

    invoke-static/range {v20 .. v23}, Lcom/motorola/android/provider/MotorolaSettings;->putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z

    goto/16 :goto_0

    :cond_15
    if-nez v18, :cond_16

    const-string v20, "TetherEntitlement"

    const-string v21, "Untethered"

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/server/TetherEntitlement$StateReceiver;->this$0:Lcom/motorola/android/server/TetherEntitlement;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    #calls: Lcom/motorola/android/server/TetherEntitlement;->setUsbTetherReadyNotif(Z)V
    invoke-static/range {v20 .. v21}, Lcom/motorola/android/server/TetherEntitlement;->access$900(Lcom/motorola/android/server/TetherEntitlement;Z)V

    goto/16 :goto_0

    :cond_16
    if-eqz v18, :cond_0

    const-string v20, "TetherEntitlement"

    const-string v21, "usbErrored: "

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/server/TetherEntitlement$StateReceiver;->this$0:Lcom/motorola/android/server/TetherEntitlement;

    move-object/from16 v20, v0

    #getter for: Lcom/motorola/android/server/TetherEntitlement;->mPendingTetherEnable:Z
    invoke-static/range {v20 .. v20}, Lcom/motorola/android/server/TetherEntitlement;->access$300(Lcom/motorola/android/server/TetherEntitlement;)Z

    move-result v20

    if-eqz v20, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/server/TetherEntitlement$StateReceiver;->this$0:Lcom/motorola/android/server/TetherEntitlement;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    #setter for: Lcom/motorola/android/server/TetherEntitlement;->mPendingTetherEnable:Z
    invoke-static/range {v20 .. v21}, Lcom/motorola/android/server/TetherEntitlement;->access$302(Lcom/motorola/android/server/TetherEntitlement;Z)Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/server/TetherEntitlement$StateReceiver;->this$0:Lcom/motorola/android/server/TetherEntitlement;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    #calls: Lcom/motorola/android/server/TetherEntitlement;->setUsbTetherAuthNotif(Z)V
    invoke-static/range {v20 .. v21}, Lcom/motorola/android/server/TetherEntitlement;->access$500(Lcom/motorola/android/server/TetherEntitlement;Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/server/TetherEntitlement$StateReceiver;->this$0:Lcom/motorola/android/server/TetherEntitlement;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    #calls: Lcom/motorola/android/server/TetherEntitlement;->setUsbTetherConnectNotif(Z)V
    invoke-static/range {v20 .. v21}, Lcom/motorola/android/server/TetherEntitlement;->access$700(Lcom/motorola/android/server/TetherEntitlement;Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/server/TetherEntitlement$StateReceiver;->this$0:Lcom/motorola/android/server/TetherEntitlement;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    #calls: Lcom/motorola/android/server/TetherEntitlement;->setUsbTetherConnectErrorNotif(Z)V
    invoke-static/range {v20 .. v21}, Lcom/motorola/android/server/TetherEntitlement;->access$800(Lcom/motorola/android/server/TetherEntitlement;Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/server/TetherEntitlement$StateReceiver;->this$0:Lcom/motorola/android/server/TetherEntitlement;

    move-object/from16 v20, v0

    const/16 v21, 0x1

    #calls: Lcom/motorola/android/server/TetherEntitlement;->setUsbTetherConnectErrorNotif(Z)V
    invoke-static/range {v20 .. v21}, Lcom/motorola/android/server/TetherEntitlement;->access$800(Lcom/motorola/android/server/TetherEntitlement;Z)V

    goto/16 :goto_0
.end method
