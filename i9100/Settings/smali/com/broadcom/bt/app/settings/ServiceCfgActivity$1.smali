.class Lcom/broadcom/bt/app/settings/ServiceCfgActivity$1;
.super Landroid/content/BroadcastReceiver;
.source "ServiceCfgActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/broadcom/bt/app/settings/ServiceCfgActivity;
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
    .line 107
    iput-object p1, p0, Lcom/broadcom/bt/app/settings/ServiceCfgActivity$1;->this$0:Lcom/broadcom/bt/app/settings/ServiceCfgActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 110
    const-string v3, "ServiceCfgActivity"

    const-string v4, "onReceive"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    const-string v3, "bt_svc_state"

    const/4 v4, -0x1

    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 112
    .local v1, state:I
    const-string v3, "bt_svc_name"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 114
    .local v2, svcName:Ljava/lang/String;
    iget-object v3, p0, Lcom/broadcom/bt/app/settings/ServiceCfgActivity$1;->this$0:Lcom/broadcom/bt/app/settings/ServiceCfgActivity;

    #getter for: Lcom/broadcom/bt/app/settings/ServiceCfgActivity;->mPrefMap:Ljava/util/HashMap;
    invoke-static {v3}, Lcom/broadcom/bt/app/settings/ServiceCfgActivity;->access$000(Lcom/broadcom/bt/app/settings/ServiceCfgActivity;)Ljava/util/HashMap;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    .line 115
    .local v0, pref:Landroid/preference/CheckBoxPreference;
    if-eqz v0, :cond_0

    .line 116
    packed-switch v1, :pswitch_data_0

    .line 125
    :cond_0
    :goto_0
    return-void

    .line 118
    :pswitch_0
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto :goto_0

    .line 121
    :pswitch_1
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto :goto_0

    .line 116
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
