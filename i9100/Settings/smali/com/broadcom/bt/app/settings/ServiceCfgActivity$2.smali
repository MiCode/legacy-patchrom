.class Lcom/broadcom/bt/app/settings/ServiceCfgActivity$2;
.super Ljava/lang/Object;
.source "ServiceCfgActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/broadcom/bt/app/settings/ServiceCfgActivity;->onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/broadcom/bt/app/settings/ServiceCfgActivity;


# direct methods
.method constructor <init>(Lcom/broadcom/bt/app/settings/ServiceCfgActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 195
    iput-object p1, p0, Lcom/broadcom/bt/app/settings/ServiceCfgActivity$2;->this$0:Lcom/broadcom/bt/app/settings/ServiceCfgActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 200
    iget-object v0, p0, Lcom/broadcom/bt/app/settings/ServiceCfgActivity$2;->this$0:Lcom/broadcom/bt/app/settings/ServiceCfgActivity;

    #calls: Lcom/broadcom/bt/app/settings/ServiceCfgActivity;->initPrefs()V
    invoke-static {v0}, Lcom/broadcom/bt/app/settings/ServiceCfgActivity;->access$100(Lcom/broadcom/bt/app/settings/ServiceCfgActivity;)V

    .line 201
    iget-object v0, p0, Lcom/broadcom/bt/app/settings/ServiceCfgActivity$2;->this$0:Lcom/broadcom/bt/app/settings/ServiceCfgActivity;

    iget-object v1, p0, Lcom/broadcom/bt/app/settings/ServiceCfgActivity$2;->this$0:Lcom/broadcom/bt/app/settings/ServiceCfgActivity;

    #getter for: Lcom/broadcom/bt/app/settings/ServiceCfgActivity;->mReceiver:Landroid/content/BroadcastReceiver;
    invoke-static {v1}, Lcom/broadcom/bt/app/settings/ServiceCfgActivity;->access$200(Lcom/broadcom/bt/app/settings/ServiceCfgActivity;)Landroid/content/BroadcastReceiver;

    move-result-object v1

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "broadcom.bt.intent.action.BT_SVC_STATE_CHANGE"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Lcom/broadcom/bt/app/settings/ServiceCfgActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 204
    return-void
.end method
