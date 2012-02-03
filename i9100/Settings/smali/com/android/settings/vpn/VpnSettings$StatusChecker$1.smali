.class Lcom/android/settings/vpn/VpnSettings$StatusChecker$1;
.super Ljava/lang/Object;
.source "VpnSettings.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/vpn/VpnSettings$StatusChecker;->check(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/settings/vpn/VpnSettings$StatusChecker;

.field final synthetic val$cv:Landroid/os/ConditionVariable;

.field final synthetic val$list:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/android/settings/vpn/VpnSettings$StatusChecker;Landroid/os/ConditionVariable;Ljava/util/List;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1005
    iput-object p1, p0, Lcom/android/settings/vpn/VpnSettings$StatusChecker$1;->this$1:Lcom/android/settings/vpn/VpnSettings$StatusChecker;

    iput-object p2, p0, Lcom/android/settings/vpn/VpnSettings$StatusChecker$1;->val$cv:Landroid/os/ConditionVariable;

    iput-object p3, p0, Lcom/android/settings/vpn/VpnSettings$StatusChecker$1;->val$list:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public declared-synchronized onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 7
    .parameter "className"
    .parameter "binder"

    .prologue
    .line 1007
    monitor-enter p0

    :try_start_0
    iget-object v4, p0, Lcom/android/settings/vpn/VpnSettings$StatusChecker$1;->val$cv:Landroid/os/ConditionVariable;

    invoke-virtual {v4}, Landroid/os/ConditionVariable;->open()V

    .line 1008
    invoke-static {p2}, Landroid/net/vpn/IVpnService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/vpn/IVpnService;

    move-result-object v3

    .line 1009
    .local v3, service:Landroid/net/vpn/IVpnService;
    iget-object v4, p0, Lcom/android/settings/vpn/VpnSettings$StatusChecker$1;->val$list:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/vpn/VpnProfile;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1011
    .local v2, p:Landroid/net/vpn/VpnProfile;
    :try_start_1
    invoke-interface {v3, v2}, Landroid/net/vpn/IVpnService;->checkStatus(Landroid/net/vpn/VpnProfile;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 1012
    :catch_0
    move-exception v0

    .line 1013
    .local v0, e:Ljava/lang/Exception;
    :try_start_2
    invoke-static {}, Lcom/android/settings/vpn/VpnSettings;->access$1500()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " --- checkStatus(): "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Landroid/net/vpn/VpnProfile;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1014
    iget-object v4, p0, Lcom/android/settings/vpn/VpnSettings$StatusChecker$1;->this$1:Lcom/android/settings/vpn/VpnSettings$StatusChecker;

    iget-object v4, v4, Lcom/android/settings/vpn/VpnSettings$StatusChecker;->this$0:Lcom/android/settings/vpn/VpnSettings;

    sget-object v5, Landroid/net/vpn/VpnState;->IDLE:Landroid/net/vpn/VpnState;

    #calls: Lcom/android/settings/vpn/VpnSettings;->changeState(Landroid/net/vpn/VpnProfile;Landroid/net/vpn/VpnState;)V
    invoke-static {v4, v2, v5}, Lcom/android/settings/vpn/VpnSettings;->access$400(Lcom/android/settings/vpn/VpnSettings;Landroid/net/vpn/VpnProfile;Landroid/net/vpn/VpnState;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 1007
    .end local v0           #e:Ljava/lang/Exception;
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #p:Landroid/net/vpn/VpnProfile;
    .end local v3           #service:Landroid/net/vpn/IVpnService;
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4

    .line 1017
    .restart local v1       #i$:Ljava/util/Iterator;
    .restart local v3       #service:Landroid/net/vpn/IVpnService;
    :cond_0
    :try_start_3
    iget-object v4, p0, Lcom/android/settings/vpn/VpnSettings$StatusChecker$1;->this$1:Lcom/android/settings/vpn/VpnSettings$StatusChecker;

    iget-object v4, v4, Lcom/android/settings/vpn/VpnSettings$StatusChecker;->this$0:Lcom/android/settings/vpn/VpnSettings;

    invoke-virtual {v4, p0}, Lcom/android/settings/vpn/VpnSettings;->unbindService(Landroid/content/ServiceConnection;)V

    .line 1018
    iget-object v4, p0, Lcom/android/settings/vpn/VpnSettings$StatusChecker$1;->this$1:Lcom/android/settings/vpn/VpnSettings$StatusChecker;

    #calls: Lcom/android/settings/vpn/VpnSettings$StatusChecker;->showPreferences()V
    invoke-static {v4}, Lcom/android/settings/vpn/VpnSettings$StatusChecker;->access$1800(Lcom/android/settings/vpn/VpnSettings$StatusChecker;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1019
    monitor-exit p0

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .parameter "className"

    .prologue
    .line 1022
    iget-object v0, p0, Lcom/android/settings/vpn/VpnSettings$StatusChecker$1;->val$cv:Landroid/os/ConditionVariable;

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->open()V

    .line 1023
    iget-object v0, p0, Lcom/android/settings/vpn/VpnSettings$StatusChecker$1;->this$1:Lcom/android/settings/vpn/VpnSettings$StatusChecker;

    iget-object v1, p0, Lcom/android/settings/vpn/VpnSettings$StatusChecker$1;->val$list:Ljava/util/List;

    #calls: Lcom/android/settings/vpn/VpnSettings$StatusChecker;->setDefaultState(Ljava/util/List;)V
    invoke-static {v0, v1}, Lcom/android/settings/vpn/VpnSettings$StatusChecker;->access$1900(Lcom/android/settings/vpn/VpnSettings$StatusChecker;Ljava/util/List;)V

    .line 1024
    iget-object v0, p0, Lcom/android/settings/vpn/VpnSettings$StatusChecker$1;->this$1:Lcom/android/settings/vpn/VpnSettings$StatusChecker;

    iget-object v0, v0, Lcom/android/settings/vpn/VpnSettings$StatusChecker;->this$0:Lcom/android/settings/vpn/VpnSettings;

    invoke-virtual {v0, p0}, Lcom/android/settings/vpn/VpnSettings;->unbindService(Landroid/content/ServiceConnection;)V

    .line 1025
    iget-object v0, p0, Lcom/android/settings/vpn/VpnSettings$StatusChecker$1;->this$1:Lcom/android/settings/vpn/VpnSettings$StatusChecker;

    #calls: Lcom/android/settings/vpn/VpnSettings$StatusChecker;->showPreferences()V
    invoke-static {v0}, Lcom/android/settings/vpn/VpnSettings$StatusChecker;->access$1800(Lcom/android/settings/vpn/VpnSettings$StatusChecker;)V

    .line 1026
    return-void
.end method
