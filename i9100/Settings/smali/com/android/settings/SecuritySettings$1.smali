.class Lcom/android/settings/SecuritySettings$1;
.super Landroid/content/BroadcastReceiver;
.source "SecuritySettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/SecuritySettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/SecuritySettings;


# direct methods
.method constructor <init>(Lcom/android/settings/SecuritySettings;)V
    .locals 0
    .parameter

    .prologue
    .line 269
    iput-object p1, p0, Lcom/android/settings/SecuritySettings$1;->this$0:Lcom/android/settings/SecuritySettings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v2, 0x1

    .line 271
    iget-object v0, p0, Lcom/android/settings/SecuritySettings$1;->this$0:Lcom/android/settings/SecuritySettings;

    #getter for: Lcom/android/settings/SecuritySettings;->mFirstSignin:Z
    invoke-static {v0}, Lcom/android/settings/SecuritySettings;->access$200(Lcom/android/settings/SecuritySettings;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 272
    iget-object v0, p0, Lcom/android/settings/SecuritySettings$1;->this$0:Lcom/android/settings/SecuritySettings;

    #getter for: Lcom/android/settings/SecuritySettings;->ChangingSIMAlert:Landroid/preference/CheckBoxPreference;
    invoke-static {v0}, Lcom/android/settings/SecuritySettings;->access$300(Lcom/android/settings/SecuritySettings;)Landroid/preference/CheckBoxPreference;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 273
    iget-object v0, p0, Lcom/android/settings/SecuritySettings$1;->this$0:Lcom/android/settings/SecuritySettings;

    invoke-virtual {v0}, Lcom/android/settings/SecuritySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "change_alert"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 274
    iget-object v0, p0, Lcom/android/settings/SecuritySettings$1;->this$0:Lcom/android/settings/SecuritySettings;

    #getter for: Lcom/android/settings/SecuritySettings;->RemoteControls:Landroid/preference/CheckBoxPreference;
    invoke-static {v0}, Lcom/android/settings/SecuritySettings;->access$400(Lcom/android/settings/SecuritySettings;)Landroid/preference/CheckBoxPreference;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 275
    iget-object v0, p0, Lcom/android/settings/SecuritySettings$1;->this$0:Lcom/android/settings/SecuritySettings;

    invoke-virtual {v0}, Lcom/android/settings/SecuritySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "remote_control"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 276
    iget-object v0, p0, Lcom/android/settings/SecuritySettings$1;->this$0:Lcom/android/settings/SecuritySettings;

    const/4 v1, 0x0

    #setter for: Lcom/android/settings/SecuritySettings;->mFirstSignin:Z
    invoke-static {v0, v1}, Lcom/android/settings/SecuritySettings;->access$202(Lcom/android/settings/SecuritySettings;Z)Z

    .line 279
    :cond_0
    iget-object v0, p0, Lcom/android/settings/SecuritySettings$1;->this$0:Lcom/android/settings/SecuritySettings;

    iget-object v1, p0, Lcom/android/settings/SecuritySettings$1;->this$0:Lcom/android/settings/SecuritySettings;

    #getter for: Lcom/android/settings/SecuritySettings;->mSIMChangeReceiver:Landroid/content/BroadcastReceiver;
    invoke-static {v1}, Lcom/android/settings/SecuritySettings;->access$500(Lcom/android/settings/SecuritySettings;)Landroid/content/BroadcastReceiver;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/SecuritySettings;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 280
    return-void
.end method
