.class Lcom/android/settings/vpn/AuthenticationActor$1;
.super Ljava/lang/Object;
.source "AuthenticationActor.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/vpn/AuthenticationActor;->connect(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/vpn/AuthenticationActor;

.field final synthetic val$password:Ljava/lang/String;

.field final synthetic val$username:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/settings/vpn/AuthenticationActor;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 122
    iput-object p1, p0, Lcom/android/settings/vpn/AuthenticationActor$1;->this$0:Lcom/android/settings/vpn/AuthenticationActor;

    iput-object p2, p0, Lcom/android/settings/vpn/AuthenticationActor$1;->val$username:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/settings/vpn/AuthenticationActor$1;->val$password:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 6
    .parameter "className"
    .parameter "service"

    .prologue
    .line 126
    :try_start_0
    invoke-static {p2}, Landroid/net/vpn/IVpnService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/vpn/IVpnService;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/vpn/AuthenticationActor$1;->this$0:Lcom/android/settings/vpn/AuthenticationActor;

    #getter for: Lcom/android/settings/vpn/AuthenticationActor;->mProfile:Landroid/net/vpn/VpnProfile;
    invoke-static {v3}, Lcom/android/settings/vpn/AuthenticationActor;->access$000(Lcom/android/settings/vpn/AuthenticationActor;)Landroid/net/vpn/VpnProfile;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/vpn/AuthenticationActor$1;->val$username:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/settings/vpn/AuthenticationActor$1;->val$password:Ljava/lang/String;

    invoke-interface {v2, v3, v4, v5}, Landroid/net/vpn/IVpnService;->connect(Landroid/net/vpn/VpnProfile;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    .line 128
    .local v1, success:Z
    if-nez v1, :cond_0

    .line 129
    invoke-static {}, Lcom/android/settings/vpn/AuthenticationActor;->access$100()Ljava/lang/String;

    move-result-object v2

    const-string v3, "~~~~~~ connect() failed!"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 138
    :goto_0
    iget-object v2, p0, Lcom/android/settings/vpn/AuthenticationActor$1;->this$0:Lcom/android/settings/vpn/AuthenticationActor;

    #getter for: Lcom/android/settings/vpn/AuthenticationActor;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/settings/vpn/AuthenticationActor;->access$300(Lcom/android/settings/vpn/AuthenticationActor;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 140
    .end local v1           #success:Z
    :goto_1
    return-void

    .line 131
    .restart local v1       #success:Z
    :cond_0
    :try_start_1
    invoke-static {}, Lcom/android/settings/vpn/AuthenticationActor;->access$100()Ljava/lang/String;

    move-result-object v2

    const-string v3, "~~~~~~ connect() succeeded!"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 133
    .end local v1           #success:Z
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 134
    .local v0, e:Ljava/lang/Exception;
    :try_start_2
    invoke-static {}, Lcom/android/settings/vpn/AuthenticationActor;->access$100()Ljava/lang/String;

    move-result-object v2

    const-string v3, "connect()"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 135
    iget-object v2, p0, Lcom/android/settings/vpn/AuthenticationActor$1;->this$0:Lcom/android/settings/vpn/AuthenticationActor;

    sget-object v3, Landroid/net/vpn/VpnState;->IDLE:Landroid/net/vpn/VpnState;

    const/16 v4, 0x65

    #calls: Lcom/android/settings/vpn/AuthenticationActor;->broadcastConnectivity(Landroid/net/vpn/VpnState;I)V
    invoke-static {v2, v3, v4}, Lcom/android/settings/vpn/AuthenticationActor;->access$200(Lcom/android/settings/vpn/AuthenticationActor;Landroid/net/vpn/VpnState;I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 138
    iget-object v2, p0, Lcom/android/settings/vpn/AuthenticationActor$1;->this$0:Lcom/android/settings/vpn/AuthenticationActor;

    #getter for: Lcom/android/settings/vpn/AuthenticationActor;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/settings/vpn/AuthenticationActor;->access$300(Lcom/android/settings/vpn/AuthenticationActor;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    goto :goto_1

    .end local v0           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    iget-object v3, p0, Lcom/android/settings/vpn/AuthenticationActor$1;->this$0:Lcom/android/settings/vpn/AuthenticationActor;

    #getter for: Lcom/android/settings/vpn/AuthenticationActor;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/settings/vpn/AuthenticationActor;->access$300(Lcom/android/settings/vpn/AuthenticationActor;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    throw v2
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1
    .parameter "className"

    .prologue
    .line 143
    iget-object v0, p0, Lcom/android/settings/vpn/AuthenticationActor$1;->this$0:Lcom/android/settings/vpn/AuthenticationActor;

    invoke-virtual {v0}, Lcom/android/settings/vpn/AuthenticationActor;->checkStatus()V

    .line 144
    return-void
.end method
