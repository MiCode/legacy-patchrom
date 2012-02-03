.class public Landroid/app/admin/DevicePolicyManager$NetworkPolicy;
.super Ljava/lang/Object;
.source "DevicePolicyManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/admin/DevicePolicyManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "NetworkPolicy"
.end annotation


# instance fields
.field private final mService:Landroid/app/enterprise/INetworkPolicy;

.field final synthetic this$0:Landroid/app/admin/DevicePolicyManager;


# direct methods
.method private constructor <init>(Landroid/app/admin/DevicePolicyManager;)V
    .locals 1
    .parameter

    .prologue
    .line 3900
    iput-object p1, p0, Landroid/app/admin/DevicePolicyManager$NetworkPolicy;->this$0:Landroid/app/admin/DevicePolicyManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3901
    const-string/jumbo v0, "network_policy"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/enterprise/INetworkPolicy$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/enterprise/INetworkPolicy;

    move-result-object v0

    iput-object v0, p0, Landroid/app/admin/DevicePolicyManager$NetworkPolicy;->mService:Landroid/app/enterprise/INetworkPolicy;

    .line 3902
    return-void
.end method

.method synthetic constructor <init>(Landroid/app/admin/DevicePolicyManager;Landroid/app/admin/DevicePolicyManager$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 3896
    invoke-direct {p0, p1}, Landroid/app/admin/DevicePolicyManager$NetworkPolicy;-><init>(Landroid/app/admin/DevicePolicyManager;)V

    return-void
.end method


# virtual methods
.method public addNewAp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;I)J
    .locals 19
    .parameter "name"
    .parameter "apn"
    .parameter "mcc"
    .parameter "mnc"
    .parameter "user"
    .parameter "server"
    .parameter "password"
    .parameter "proxy"
    .parameter "port"
    .parameter "mmsProxy"
    .parameter "mmsPort"
    .parameter "mmsc"
    .parameter "apType"
    .parameter "authType"

    .prologue
    .line 3917
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/app/admin/DevicePolicyManager$NetworkPolicy;->mService:Landroid/app/enterprise/INetworkPolicy;

    move-object v3, v0

    if-eqz v3, :cond_0

    .line 3919
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/app/admin/DevicePolicyManager$NetworkPolicy;->mService:Landroid/app/enterprise/INetworkPolicy;

    move-object v3, v0

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    move-object/from16 v10, p7

    move-object/from16 v11, p8

    move/from16 v12, p9

    move-object/from16 v13, p10

    move/from16 v14, p11

    move-object/from16 v15, p12

    move-object/from16 v16, p13

    move/from16 v17, p14

    invoke-interface/range {v3 .. v17}, Landroid/app/enterprise/INetworkPolicy;->addNewAp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;I)J
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v3

    .line 3925
    :goto_0
    return-wide v3

    .line 3921
    :catch_0
    move-exception v3

    move-object/from16 v18, v3

    .line 3922
    .local v18, e:Landroid/os/RemoteException;
    invoke-static {}, Landroid/app/admin/DevicePolicyManager;->access$900()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Failed talking with Network Policy"

    move-object v0, v3

    move-object v1, v4

    move-object/from16 v2, v18

    invoke-static {v0, v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3925
    .end local v18           #e:Landroid/os/RemoteException;
    :cond_0
    const-wide/16 v3, -0x1

    goto :goto_0
.end method

.method public deleteAp(J)Z
    .locals 3
    .parameter "apId"

    .prologue
    .line 3976
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$NetworkPolicy;->mService:Landroid/app/enterprise/INetworkPolicy;

    if-eqz v1, :cond_0

    .line 3978
    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$NetworkPolicy;->mService:Landroid/app/enterprise/INetworkPolicy;

    invoke-interface {v1, p1, p2}, Landroid/app/enterprise/INetworkPolicy;->deleteAp(J)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 3983
    :goto_0
    return v1

    .line 3979
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 3980
    .local v0, e:Landroid/os/RemoteException;
    invoke-static {}, Landroid/app/admin/DevicePolicyManager;->access$900()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Failed talking with Network Policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3983
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setApSettings(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;I)J
    .locals 21
    .parameter "apId"
    .parameter "name"
    .parameter "apn"
    .parameter "mcc"
    .parameter "mnc"
    .parameter "user"
    .parameter "server"
    .parameter "password"
    .parameter "proxy"
    .parameter "port"
    .parameter "mmsProxy"
    .parameter "mmsPort"
    .parameter "mmsc"
    .parameter "apType"
    .parameter "authType"

    .prologue
    .line 3941
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/app/admin/DevicePolicyManager$NetworkPolicy;->mService:Landroid/app/enterprise/INetworkPolicy;

    move-object v3, v0

    if-eqz v3, :cond_0

    .line 3943
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/app/admin/DevicePolicyManager$NetworkPolicy;->mService:Landroid/app/enterprise/INetworkPolicy;

    move-object v3, v0

    move-wide/from16 v4, p1

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    move-object/from16 v10, p7

    move-object/from16 v11, p8

    move-object/from16 v12, p9

    move-object/from16 v13, p10

    move/from16 v14, p11

    move-object/from16 v15, p12

    move/from16 v16, p13

    move-object/from16 v17, p14

    move-object/from16 v18, p15

    move/from16 v19, p16

    invoke-interface/range {v3 .. v19}, Landroid/app/enterprise/INetworkPolicy;->setApSettings(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;I)J
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v3

    .line 3949
    :goto_0
    return-wide v3

    .line 3945
    :catch_0
    move-exception v3

    move-object/from16 v20, v3

    .line 3946
    .local v20, e:Landroid/os/RemoteException;
    invoke-static {}, Landroid/app/admin/DevicePolicyManager;->access$900()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Failed talking with Network Policy"

    move-object v0, v3

    move-object v1, v4

    move-object/from16 v2, v20

    invoke-static {v0, v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3949
    .end local v20           #e:Landroid/os/RemoteException;
    :cond_0
    const-wide/16 v3, -0x1

    goto :goto_0
.end method

.method public setpreferredAp(J)Z
    .locals 3
    .parameter "apId"

    .prologue
    .line 3959
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$NetworkPolicy;->mService:Landroid/app/enterprise/INetworkPolicy;

    if-eqz v1, :cond_0

    .line 3961
    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$NetworkPolicy;->mService:Landroid/app/enterprise/INetworkPolicy;

    invoke-interface {v1, p1, p2}, Landroid/app/enterprise/INetworkPolicy;->setpreferredAp(J)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 3966
    :goto_0
    return v1

    .line 3962
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 3963
    .local v0, e:Landroid/os/RemoteException;
    invoke-static {}, Landroid/app/admin/DevicePolicyManager;->access$900()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Failed talking with Network Policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3966
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
