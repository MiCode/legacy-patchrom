.class Lcom/android/settings/vpn/VpnSettings$StatusChecker;
.super Ljava/lang/Object;
.source "VpnSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/vpn/VpnSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StatusChecker"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/vpn/VpnSettings;


# direct methods
.method private constructor <init>(Lcom/android/settings/vpn/VpnSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 998
    iput-object p1, p0, Lcom/android/settings/vpn/VpnSettings$StatusChecker;->this$0:Lcom/android/settings/vpn/VpnSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/vpn/VpnSettings;Lcom/android/settings/vpn/VpnSettings$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 998
    invoke-direct {p0, p1}, Lcom/android/settings/vpn/VpnSettings$StatusChecker;-><init>(Lcom/android/settings/vpn/VpnSettings;)V

    return-void
.end method

.method static synthetic access$1800(Lcom/android/settings/vpn/VpnSettings$StatusChecker;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 998
    invoke-direct {p0}, Lcom/android/settings/vpn/VpnSettings$StatusChecker;->showPreferences()V

    return-void
.end method

.method static synthetic access$1900(Lcom/android/settings/vpn/VpnSettings$StatusChecker;Ljava/util/List;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 998
    invoke-direct {p0, p1}, Lcom/android/settings/vpn/VpnSettings$StatusChecker;->setDefaultState(Ljava/util/List;)V

    return-void
.end method

.method private setDefaultState(Ljava/util/List;)V
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/net/vpn/VpnProfile;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1046
    .local p1, list:Ljava/util/List;,"Ljava/util/List<Landroid/net/vpn/VpnProfile;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/vpn/VpnProfile;

    .line 1047
    .local v1, p:Landroid/net/vpn/VpnProfile;
    iget-object v2, p0, Lcom/android/settings/vpn/VpnSettings$StatusChecker;->this$0:Lcom/android/settings/vpn/VpnSettings;

    sget-object v3, Landroid/net/vpn/VpnState;->IDLE:Landroid/net/vpn/VpnState;

    #calls: Lcom/android/settings/vpn/VpnSettings;->changeState(Landroid/net/vpn/VpnProfile;Landroid/net/vpn/VpnState;)V
    invoke-static {v2, v1, v3}, Lcom/android/settings/vpn/VpnSettings;->access$400(Lcom/android/settings/vpn/VpnSettings;Landroid/net/vpn/VpnProfile;Landroid/net/vpn/VpnState;)V

    goto :goto_0

    .line 1048
    .end local v1           #p:Landroid/net/vpn/VpnProfile;
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/vpn/VpnSettings$StatusChecker;->showPreferences()V

    .line 1049
    return-void
.end method

.method private showPreferences()V
    .locals 5

    .prologue
    .line 1039
    iget-object v3, p0, Lcom/android/settings/vpn/VpnSettings$StatusChecker;->this$0:Lcom/android/settings/vpn/VpnSettings;

    #getter for: Lcom/android/settings/vpn/VpnSettings;->mVpnProfileList:Ljava/util/List;
    invoke-static {v3}, Lcom/android/settings/vpn/VpnSettings;->access$800(Lcom/android/settings/vpn/VpnSettings;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/vpn/VpnProfile;

    .line 1040
    .local v1, p:Landroid/net/vpn/VpnProfile;
    iget-object v3, p0, Lcom/android/settings/vpn/VpnSettings$StatusChecker;->this$0:Lcom/android/settings/vpn/VpnSettings;

    #getter for: Lcom/android/settings/vpn/VpnSettings;->mVpnPreferenceMap:Ljava/util/Map;
    invoke-static {v3}, Lcom/android/settings/vpn/VpnSettings;->access$900(Lcom/android/settings/vpn/VpnSettings;)Ljava/util/Map;

    move-result-object v3

    invoke-virtual {v1}, Landroid/net/vpn/VpnProfile;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings/vpn/VpnSettings$VpnPreference;

    .line 1041
    .local v2, pref:Lcom/android/settings/vpn/VpnSettings$VpnPreference;
    iget-object v3, p0, Lcom/android/settings/vpn/VpnSettings$StatusChecker;->this$0:Lcom/android/settings/vpn/VpnSettings;

    #getter for: Lcom/android/settings/vpn/VpnSettings;->mVpnListContainer:Landroid/preference/PreferenceCategory;
    invoke-static {v3}, Lcom/android/settings/vpn/VpnSettings;->access$1000(Lcom/android/settings/vpn/VpnSettings;)Landroid/preference/PreferenceCategory;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    goto :goto_0

    .line 1043
    .end local v1           #p:Landroid/net/vpn/VpnProfile;
    .end local v2           #pref:Lcom/android/settings/vpn/VpnSettings$VpnPreference;
    :cond_0
    return-void
.end method


# virtual methods
.method declared-synchronized check(Ljava/util/List;)V
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/net/vpn/VpnProfile;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1002
    .local p1, list:Ljava/util/List;,"Ljava/util/List<Landroid/net/vpn/VpnProfile;>;"
    monitor-enter p0

    :try_start_0
    new-instance v1, Landroid/os/ConditionVariable;

    invoke-direct {v1}, Landroid/os/ConditionVariable;-><init>()V

    .line 1003
    .local v1, cv:Landroid/os/ConditionVariable;
    invoke-virtual {v1}, Landroid/os/ConditionVariable;->close()V

    .line 1004
    iget-object v2, p0, Lcom/android/settings/vpn/VpnSettings$StatusChecker;->this$0:Lcom/android/settings/vpn/VpnSettings;

    #getter for: Lcom/android/settings/vpn/VpnSettings;->mVpnManager:Landroid/net/vpn/VpnManager;
    invoke-static {v2}, Lcom/android/settings/vpn/VpnSettings;->access$1700(Lcom/android/settings/vpn/VpnSettings;)Landroid/net/vpn/VpnManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/vpn/VpnManager;->startVpnService()V

    .line 1005
    new-instance v0, Lcom/android/settings/vpn/VpnSettings$StatusChecker$1;

    invoke-direct {v0, p0, v1, p1}, Lcom/android/settings/vpn/VpnSettings$StatusChecker$1;-><init>(Lcom/android/settings/vpn/VpnSettings$StatusChecker;Landroid/os/ConditionVariable;Ljava/util/List;)V

    .line 1028
    .local v0, c:Landroid/content/ServiceConnection;
    iget-object v2, p0, Lcom/android/settings/vpn/VpnSettings$StatusChecker;->this$0:Lcom/android/settings/vpn/VpnSettings;

    #getter for: Lcom/android/settings/vpn/VpnSettings;->mVpnManager:Landroid/net/vpn/VpnManager;
    invoke-static {v2}, Lcom/android/settings/vpn/VpnSettings;->access$1700(Lcom/android/settings/vpn/VpnSettings;)Landroid/net/vpn/VpnManager;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/net/vpn/VpnManager;->bindVpnService(Landroid/content/ServiceConnection;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1029
    const-wide/16 v2, 0x3e8

    invoke-virtual {v1, v2, v3}, Landroid/os/ConditionVariable;->block(J)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1030
    invoke-static {}, Lcom/android/settings/vpn/VpnSettings;->access$1500()Ljava/lang/String;

    move-result-object v2

    const-string v3, "checkStatus() bindService failed"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1031
    invoke-direct {p0, p1}, Lcom/android/settings/vpn/VpnSettings$StatusChecker;->setDefaultState(Ljava/util/List;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1036
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 1034
    :cond_1
    :try_start_1
    invoke-direct {p0, p1}, Lcom/android/settings/vpn/VpnSettings$StatusChecker;->setDefaultState(Ljava/util/List;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1002
    .end local v0           #c:Landroid/content/ServiceConnection;
    .end local v1           #cv:Landroid/os/ConditionVariable;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method
