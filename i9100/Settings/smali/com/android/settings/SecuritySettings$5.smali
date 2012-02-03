.class Lcom/android/settings/SecuritySettings$5;
.super Ljava/lang/Object;
.source "SecuritySettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/SecuritySettings;->createPreferenceHierarchy()Landroid/preference/PreferenceScreen;
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
    .line 492
    iput-object p1, p0, Lcom/android/settings/SecuritySettings$5;->this$0:Lcom/android/settings/SecuritySettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 7
    .parameter "preference"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    const-string v6, "com.osp.app.signin"

    .line 494
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 495
    .local v1, mIntent:Landroid/content/Intent;
    iget-object v2, p0, Lcom/android/settings/SecuritySettings$5;->this$0:Lcom/android/settings/SecuritySettings;

    invoke-virtual {v2}, Lcom/android/settings/SecuritySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "samsung_signin"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v5, :cond_0

    .line 496
    const-string v2, "com.osp.app.signin"

    const-string v2, "com.osp.app.signin.UserValidateCheck"

    invoke-virtual {v1, v6, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 506
    :goto_0
    const-string v2, "MODE"

    const-string v3, "CHANGE_SIM_ALERT"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 507
    iget-object v2, p0, Lcom/android/settings/SecuritySettings$5;->this$0:Lcom/android/settings/SecuritySettings;

    const/16 v3, 0x3e9

    invoke-virtual {v2, v1, v3}, Lcom/android/settings/SecuritySettings;->startActivityForResult(Landroid/content/Intent;I)V

    .line 508
    return v4

    .line 499
    :cond_0
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 500
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.REGISTRATION_COMPLETED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 501
    iget-object v2, p0, Lcom/android/settings/SecuritySettings$5;->this$0:Lcom/android/settings/SecuritySettings;

    iget-object v3, p0, Lcom/android/settings/SecuritySettings$5;->this$0:Lcom/android/settings/SecuritySettings;

    #getter for: Lcom/android/settings/SecuritySettings;->mSIMChangeReceiver:Landroid/content/BroadcastReceiver;
    invoke-static {v3}, Lcom/android/settings/SecuritySettings;->access$500(Lcom/android/settings/SecuritySettings;)Landroid/content/BroadcastReceiver;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Lcom/android/settings/SecuritySettings;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 503
    iget-object v2, p0, Lcom/android/settings/SecuritySettings$5;->this$0:Lcom/android/settings/SecuritySettings;

    #setter for: Lcom/android/settings/SecuritySettings;->mFirstSignin:Z
    invoke-static {v2, v5}, Lcom/android/settings/SecuritySettings;->access$202(Lcom/android/settings/SecuritySettings;Z)Z

    .line 504
    const-string v2, "com.osp.app.signin"

    const-string v2, "com.osp.app.signin.AccountView"

    invoke-virtual {v1, v6, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0
.end method
