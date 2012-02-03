.class Lcom/android/server/enterprise/ExchangeAccountPolicy$1;
.super Landroid/os/Handler;
.source "ExchangeAccountPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/ExchangeAccountPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/enterprise/ExchangeAccountPolicy;


# direct methods
.method constructor <init>(Lcom/android/server/enterprise/ExchangeAccountPolicy;)V
    .locals 0
    .parameter

    .prologue
    .line 636
    iput-object p1, p0, Lcom/android/server/enterprise/ExchangeAccountPolicy$1;->this$0:Lcom/android/server/enterprise/ExchangeAccountPolicy;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .parameter "msg"

    .prologue
    const/4 v5, 0x0

    .line 640
    const-string v2, "ExchangeAccountPolicy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "message = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p1, Landroid/os/Message;->what:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/enterprise/Utils;->writeToLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 641
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 658
    :goto_0
    return-void

    .line 644
    :pswitch_0
    iget-object v2, p0, Lcom/android/server/enterprise/ExchangeAccountPolicy$1;->this$0:Lcom/android/server/enterprise/ExchangeAccountPolicy;

    #getter for: Lcom/android/server/enterprise/ExchangeAccountPolicy;->mSyncManagerDisabled:Z
    invoke-static {v2}, Lcom/android/server/enterprise/ExchangeAccountPolicy;->access$000(Lcom/android/server/enterprise/ExchangeAccountPolicy;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 645
    iget-object v2, p0, Lcom/android/server/enterprise/ExchangeAccountPolicy$1;->this$0:Lcom/android/server/enterprise/ExchangeAccountPolicy;

    #getter for: Lcom/android/server/enterprise/ExchangeAccountPolicy;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/server/enterprise/ExchangeAccountPolicy;->access$100(Lcom/android/server/enterprise/ExchangeAccountPolicy;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 646
    .local v0, pm:Landroid/content/pm/PackageManager;
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.android.email"

    const-string v3, "com.android.exchange.SyncManager"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 648
    .local v1, syncMgrCn:Landroid/content/ComponentName;
    const-string v2, "Enabling EAS SyncManager"

    invoke-static {v2}, Lcom/android/server/enterprise/Utils;->writeToLog(Ljava/lang/String;)V

    .line 649
    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2, v5}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    .line 651
    iget-object v2, p0, Lcom/android/server/enterprise/ExchangeAccountPolicy$1;->this$0:Lcom/android/server/enterprise/ExchangeAccountPolicy;

    #setter for: Lcom/android/server/enterprise/ExchangeAccountPolicy;->mSyncManagerDisabled:Z
    invoke-static {v2, v5}, Lcom/android/server/enterprise/ExchangeAccountPolicy;->access$002(Lcom/android/server/enterprise/ExchangeAccountPolicy;Z)Z

    .line 655
    .end local v0           #pm:Landroid/content/pm/PackageManager;
    .end local v1           #syncMgrCn:Landroid/content/ComponentName;
    :cond_0
    iget-object v2, p0, Lcom/android/server/enterprise/ExchangeAccountPolicy$1;->this$0:Lcom/android/server/enterprise/ExchangeAccountPolicy;

    #setter for: Lcom/android/server/enterprise/ExchangeAccountPolicy;->mRestartExtendDelay:Z
    invoke-static {v2, v5}, Lcom/android/server/enterprise/ExchangeAccountPolicy;->access$202(Lcom/android/server/enterprise/ExchangeAccountPolicy;Z)Z

    goto :goto_0

    .line 641
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
