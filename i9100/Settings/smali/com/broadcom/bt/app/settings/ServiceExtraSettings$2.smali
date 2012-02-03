.class Lcom/broadcom/bt/app/settings/ServiceExtraSettings$2;
.super Ljava/lang/Object;
.source "ServiceExtraSettings.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/broadcom/bt/app/settings/ServiceExtraSettings;->onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/broadcom/bt/app/settings/ServiceExtraSettings;


# direct methods
.method constructor <init>(Lcom/broadcom/bt/app/settings/ServiceExtraSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 249
    iput-object p1, p0, Lcom/broadcom/bt/app/settings/ServiceExtraSettings$2;->this$0:Lcom/broadcom/bt/app/settings/ServiceExtraSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 254
    iget-object v0, p0, Lcom/broadcom/bt/app/settings/ServiceExtraSettings$2;->this$0:Lcom/broadcom/bt/app/settings/ServiceExtraSettings;

    iget-object v1, p0, Lcom/broadcom/bt/app/settings/ServiceExtraSettings$2;->this$0:Lcom/broadcom/bt/app/settings/ServiceExtraSettings;

    #getter for: Lcom/broadcom/bt/app/settings/ServiceExtraSettings;->mReceiver:Landroid/content/BroadcastReceiver;
    invoke-static {v1}, Lcom/broadcom/bt/app/settings/ServiceExtraSettings;->access$000(Lcom/broadcom/bt/app/settings/ServiceExtraSettings;)Landroid/content/BroadcastReceiver;

    move-result-object v1

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "broadcom.bt.intent.action.BT_SVC_STATE_CHANGE"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Lcom/broadcom/bt/app/settings/ServiceExtraSettings;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 257
    return-void
.end method
