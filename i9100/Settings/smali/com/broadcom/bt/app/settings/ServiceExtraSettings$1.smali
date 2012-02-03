.class Lcom/broadcom/bt/app/settings/ServiceExtraSettings$1;
.super Landroid/content/BroadcastReceiver;
.source "ServiceExtraSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/broadcom/bt/app/settings/ServiceExtraSettings;
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
    .line 85
    iput-object p1, p0, Lcom/broadcom/bt/app/settings/ServiceExtraSettings$1;->this$0:Lcom/broadcom/bt/app/settings/ServiceExtraSettings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 88
    const-string v3, "ServiceExtraSettings"

    const-string v4, "onReceive"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    const-string v3, "bt_svc_state"

    const/4 v4, -0x1

    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 90
    .local v1, state:I
    const-string v3, "bt_svc_name"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 91
    .local v2, svcName:Ljava/lang/String;
    const-string v3, "bluetooth_map"

    invoke-virtual {v2, v3}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_0

    .line 92
    packed-switch v1, :pswitch_data_0

    .line 114
    :cond_0
    return-void

    .line 94
    :pswitch_0
    iget-object v3, p0, Lcom/broadcom/bt/app/settings/ServiceExtraSettings$1;->this$0:Lcom/broadcom/bt/app/settings/ServiceExtraSettings;

    iget-object v3, v3, Lcom/broadcom/bt/app/settings/ServiceExtraSettings;->mSvcpref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v5}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 96
    iget-object v3, p0, Lcom/broadcom/bt/app/settings/ServiceExtraSettings$1;->this$0:Lcom/broadcom/bt/app/settings/ServiceExtraSettings;

    iget-object v3, v3, Lcom/broadcom/bt/app/settings/ServiceExtraSettings;->mPrefs:[Landroid/preference/CheckBoxPreference;

    if-eqz v3, :cond_0

    .line 97
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v3, p0, Lcom/broadcom/bt/app/settings/ServiceExtraSettings$1;->this$0:Lcom/broadcom/bt/app/settings/ServiceExtraSettings;

    iget-object v3, v3, Lcom/broadcom/bt/app/settings/ServiceExtraSettings;->mPrefs:[Landroid/preference/CheckBoxPreference;

    array-length v3, v3

    if-ge v0, v3, :cond_0

    .line 98
    iget-object v3, p0, Lcom/broadcom/bt/app/settings/ServiceExtraSettings$1;->this$0:Lcom/broadcom/bt/app/settings/ServiceExtraSettings;

    iget-object v3, v3, Lcom/broadcom/bt/app/settings/ServiceExtraSettings;->mPrefs:[Landroid/preference/CheckBoxPreference;

    aget-object v3, v3, v0

    invoke-virtual {v3, v5}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 97
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 103
    .end local v0           #i:I
    :pswitch_1
    iget-object v3, p0, Lcom/broadcom/bt/app/settings/ServiceExtraSettings$1;->this$0:Lcom/broadcom/bt/app/settings/ServiceExtraSettings;

    iget-object v3, v3, Lcom/broadcom/bt/app/settings/ServiceExtraSettings;->mSvcpref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v6}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 105
    iget-object v3, p0, Lcom/broadcom/bt/app/settings/ServiceExtraSettings$1;->this$0:Lcom/broadcom/bt/app/settings/ServiceExtraSettings;

    iget-object v3, v3, Lcom/broadcom/bt/app/settings/ServiceExtraSettings;->mPrefs:[Landroid/preference/CheckBoxPreference;

    if-eqz v3, :cond_0

    .line 106
    const/4 v0, 0x0

    .restart local v0       #i:I
    :goto_1
    iget-object v3, p0, Lcom/broadcom/bt/app/settings/ServiceExtraSettings$1;->this$0:Lcom/broadcom/bt/app/settings/ServiceExtraSettings;

    iget-object v3, v3, Lcom/broadcom/bt/app/settings/ServiceExtraSettings;->mPrefs:[Landroid/preference/CheckBoxPreference;

    array-length v3, v3

    if-ge v0, v3, :cond_0

    .line 107
    iget-object v3, p0, Lcom/broadcom/bt/app/settings/ServiceExtraSettings$1;->this$0:Lcom/broadcom/bt/app/settings/ServiceExtraSettings;

    iget-object v3, v3, Lcom/broadcom/bt/app/settings/ServiceExtraSettings;->mPrefs:[Landroid/preference/CheckBoxPreference;

    aget-object v3, v3, v0

    invoke-virtual {v3, v6}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 106
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 92
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
