.class Lcom/motorola/blur/setup/LocaleSelect$3;
.super Landroid/content/BroadcastReceiver;
.source "LocaleSelect.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/blur/setup/LocaleSelect;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/motorola/blur/setup/LocaleSelect;


# direct methods
.method constructor <init>(Lcom/motorola/blur/setup/LocaleSelect;)V
    .locals 0
    .parameter

    .prologue
    .line 352
    iput-object p1, p0, Lcom/motorola/blur/setup/LocaleSelect$3;->this$0:Lcom/motorola/blur/setup/LocaleSelect;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 355
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 356
    .local v0, action:Ljava/lang/String;
    const-string v3, "android.intent.action.NETWORK_SET_TIME"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "android.intent.action.NETWORK_SET_TIMEZONE"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 362
    :cond_0
    monitor-enter p0

    .line 363
    :try_start_0
    iget-object v3, p0, Lcom/motorola/blur/setup/LocaleSelect$3;->this$0:Lcom/motorola/blur/setup/LocaleSelect;

    #getter for: Lcom/motorola/blur/setup/LocaleSelect;->mNetworkTimePreference:Z
    invoke-static {v3}, Lcom/motorola/blur/setup/LocaleSelect;->access$100(Lcom/motorola/blur/setup/LocaleSelect;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 364
    iget-object v3, p0, Lcom/motorola/blur/setup/LocaleSelect$3;->this$0:Lcom/motorola/blur/setup/LocaleSelect;

    const/4 v4, 0x1

    #setter for: Lcom/motorola/blur/setup/LocaleSelect;->mNetworkTimePreference:Z
    invoke-static {v3, v4}, Lcom/motorola/blur/setup/LocaleSelect;->access$102(Lcom/motorola/blur/setup/LocaleSelect;Z)Z

    .line 365
    iget-object v3, p0, Lcom/motorola/blur/setup/LocaleSelect$3;->this$0:Lcom/motorola/blur/setup/LocaleSelect;

    const-string v4, "DeviceSetup"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Lcom/motorola/blur/setup/LocaleSelect;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 366
    .local v2, sharedPreferences:Landroid/content/SharedPreferences;
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 367
    .local v1, editor:Landroid/content/SharedPreferences$Editor;
    const-string v3, "NetworkTimeSet"

    const/4 v4, 0x1

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 368
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 370
    .end local v1           #editor:Landroid/content/SharedPreferences$Editor;
    .end local v2           #sharedPreferences:Landroid/content/SharedPreferences;
    :cond_1
    monitor-exit p0

    .line 372
    :cond_2
    return-void

    .line 370
    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method
