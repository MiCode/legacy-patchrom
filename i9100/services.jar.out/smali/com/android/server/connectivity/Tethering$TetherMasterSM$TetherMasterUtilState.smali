.class Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;
.super Lcom/android/internal/util/HierarchicalState;
.source "Tethering.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/connectivity/Tethering$TetherMasterSM;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "TetherMasterUtilState"
.end annotation


# static fields
.field protected static final TRY_TO_SETUP_MOBILE_CONNECTION:Z = true

.field protected static final WAIT_FOR_NETWORK_TO_SETTLE:Z


# instance fields
.field final synthetic this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;


# direct methods
.method constructor <init>(Lcom/android/server/connectivity/Tethering$TetherMasterSM;)V
    .locals 0
    .parameter

    .prologue
    .line 1358
    iput-object p1, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    invoke-direct {p0}, Lcom/android/internal/util/HierarchicalState;-><init>()V

    return-void
.end method


# virtual methods
.method protected chooseUpstreamType(Z)V
    .locals 11
    .parameter "tryCell"

    .prologue
    const/4 v10, 0x5

    const/4 v9, 0x1

    const/4 v6, 0x0

    const-string v8, "Tethering"

    .line 1628
    invoke-virtual {p0}, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->findActiveUpstreamIface()Ljava/lang/String;

    move-result-object v3

    .line 1629
    .local v3, iface:Ljava/lang/String;
    const-string v5, "connectivity"

    invoke-static {v5}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 1630
    .local v0, b:Landroid/os/IBinder;
    invoke-static {v0}, Landroid/net/IConnectivityManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/IConnectivityManager;

    move-result-object v1

    .line 1631
    .local v1, cm:Landroid/net/IConnectivityManager;
    iget-object v5, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    #setter for: Lcom/android/server/connectivity/Tethering$TetherMasterSM;->mConnectionRequested:Z
    invoke-static {v5, v6}, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->access$3702(Lcom/android/server/connectivity/Tethering$TetherMasterSM;Z)Z

    .line 1632
    const-string v5, "Tethering"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "chooseUpstreamType("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "),  dunRequired ="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    iget-object v6, v6, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->this$0:Lcom/android/server/connectivity/Tethering;

    #getter for: Lcom/android/server/connectivity/Tethering;->mDunRequired:Z
    invoke-static {v6}, Lcom/android/server/connectivity/Tethering;->access$3000(Lcom/android/server/connectivity/Tethering;)Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", iface="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v8, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1634
    if-eqz v3, :cond_0

    .line 1636
    :try_start_0
    iget-object v5, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    iget-object v5, v5, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->this$0:Lcom/android/server/connectivity/Tethering;

    #getter for: Lcom/android/server/connectivity/Tethering;->mDunRequired:Z
    invoke-static {v5}, Lcom/android/server/connectivity/Tethering;->access$3000(Lcom/android/server/connectivity/Tethering;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 1638
    const/4 v5, 0x4

    invoke-interface {v1, v5}, Landroid/net/IConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v4

    .line 1640
    .local v4, info:Landroid/net/NetworkInfo;
    invoke-virtual {v4}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1641
    const-string v5, "Tethering"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "setting dun ifacename ="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1647
    iget-object v5, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    const/4 v6, 0x1

    #setter for: Lcom/android/server/connectivity/Tethering$TetherMasterSM;->mConnectionRequested:Z
    invoke-static {v5, v6}, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->access$3702(Lcom/android/server/connectivity/Tethering$TetherMasterSM;Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1677
    .end local v4           #info:Landroid/net/NetworkInfo;
    :cond_0
    :goto_0
    if-nez v3, :cond_2

    .line 1678
    if-ne p1, v9, :cond_1

    .line 1679
    invoke-virtual {p0}, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->turnOnMobileConnection()I

    .line 1682
    :cond_1
    iget-object v5, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    const-wide/16 v6, 0x2710

    invoke-virtual {v5, v10, v6, v7}, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->sendMessageDelayed(IJ)V

    .line 1684
    :cond_2
    invoke-virtual {p0, v3}, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->notifyTetheredOfNewUpstreamIface(Ljava/lang/String;)V

    .line 1685
    return-void

    .line 1655
    .restart local v4       #info:Landroid/net/NetworkInfo;
    :cond_3
    const/4 v5, 0x0

    :try_start_1
    invoke-interface {v1, v5}, Landroid/net/IConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v4

    .line 1656
    invoke-virtual {v4}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1657
    const/4 v3, 0x0

    goto :goto_0

    .line 1661
    .end local v4           #info:Landroid/net/NetworkInfo;
    :cond_4
    const-string v5, "Tethering"

    const-string v6, "checking if hipri brought us this connection"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1662
    const/4 v5, 0x5

    invoke-interface {v1, v5}, Landroid/net/IConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v4

    .line 1664
    .restart local v4       #info:Landroid/net/NetworkInfo;
    invoke-virtual {v4}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1665
    const-string v5, "Tethering"

    const-string v6, "yes - hipri in use"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1668
    invoke-virtual {p0}, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->turnOnMobileConnection()I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 1671
    .end local v4           #info:Landroid/net/NetworkInfo;
    :catch_0
    move-exception v5

    move-object v2, v5

    .line 1672
    .local v2, e:Landroid/os/RemoteException;
    const-string v5, "Tethering"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "RemoteException calling ConnectivityManager "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v8, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1673
    const/4 v3, 0x0

    goto :goto_0
.end method

.method protected findActiveUpstreamIface()Ljava/lang/String;
    .locals 20

    .prologue
    .line 1455
    const-string v17, "network_management"

    invoke-static/range {v17 .. v17}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    .line 1456
    .local v4, b:Landroid/os/IBinder;
    invoke-static {v4}, Landroid/os/INetworkManagementService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/INetworkManagementService;

    move-result-object v15

    .line 1458
    .local v15, service:Landroid/os/INetworkManagementService;
    const-string v17, "connectivity"

    invoke-static/range {v17 .. v17}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v5

    .line 1459
    .local v5, b2:Landroid/os/IBinder;
    invoke-static {v5}, Landroid/net/IConnectivityManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/IConnectivityManager;

    move-result-object v6

    .line 1462
    .local v6, cm:Landroid/net/IConnectivityManager;
    const/16 v17, 0x0

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/String;

    move-object v10, v0

    .line 1464
    .local v10, ifaces:[Ljava/lang/String;
    :try_start_0
    invoke-interface {v15}, Landroid/os/INetworkManagementService;->listInterfaces()[Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v10

    .line 1474
    const/4 v14, 0x0

    .line 1476
    .local v14, regex:Ljava/lang/String;
    const/16 v17, 0x1

    :try_start_1
    move-object v0, v6

    move/from16 v1, v17

    invoke-interface {v0, v1}, Landroid/net/IConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v16

    .line 1477
    .local v16, wifiState:Landroid/net/NetworkInfo;
    invoke-virtual/range {v16 .. v16}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v17

    sget-object v18, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    if-ne v0, v1, :cond_1

    .line 1478
    const/16 v17, 0x1

    const/16 v18, 0x0

    move-object v0, v6

    move/from16 v1, v17

    move-object/from16 v2, v18

    invoke-interface {v0, v1, v2}, Landroid/net/IConnectivityManager;->getInterfaceName(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 1479
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    const/16 v19, 0x0

    move-object v0, v6

    move/from16 v1, v18

    move-object/from16 v2, v19

    invoke-interface {v0, v1, v2}, Landroid/net/IConnectivityManager;->getNameServers(ILjava/lang/String;)[Ljava/lang/String;

    move-result-object v18

    #calls: Lcom/android/server/connectivity/Tethering;->setDnsServers([Ljava/lang/String;)V
    invoke-static/range {v17 .. v18}, Lcom/android/server/connectivity/Tethering;->access$4900(Lcom/android/server/connectivity/Tethering;[Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1525
    :cond_0
    :goto_0
    const-string v17, "Tethering"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "MultiplePDP regex = "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move-object v1, v14

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1526
    if-nez v14, :cond_3

    const/16 v17, 0x0

    .line 1623
    .end local v14           #regex:Ljava/lang/String;
    .end local v16           #wifiState:Landroid/net/NetworkInfo;
    :goto_1
    return-object v17

    .line 1465
    :catch_0
    move-exception v7

    .line 1466
    .local v7, e:Ljava/lang/Exception;
    const-string v17, "Tethering"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Error listing Interfaces :"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move-object v1, v7

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1467
    const/16 v17, 0x0

    goto :goto_1

    .line 1505
    .end local v7           #e:Ljava/lang/Exception;
    .restart local v14       #regex:Ljava/lang/String;
    .restart local v16       #wifiState:Landroid/net/NetworkInfo;
    :cond_1
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v17, v0

    #getter for: Lcom/android/server/connectivity/Tethering;->mDunRequired:Z
    invoke-static/range {v17 .. v17}, Lcom/android/server/connectivity/Tethering;->access$3000(Lcom/android/server/connectivity/Tethering;)Z

    move-result v17

    if-eqz v17, :cond_2

    .line 1506
    const/16 v17, 0x4

    move-object v0, v6

    move/from16 v1, v17

    invoke-interface {v0, v1}, Landroid/net/IConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v13

    .line 1507
    .local v13, mobileState:Landroid/net/NetworkInfo;
    invoke-virtual {v13}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v17

    sget-object v18, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    if-ne v0, v1, :cond_0

    .line 1508
    const/16 v17, 0x0

    const-string v18, "enableDUN"

    move-object v0, v6

    move/from16 v1, v17

    move-object/from16 v2, v18

    invoke-interface {v0, v1, v2}, Landroid/net/IConnectivityManager;->getInterfaceName(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 1509
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    const-string v19, "enableDUN"

    move-object v0, v6

    move/from16 v1, v18

    move-object/from16 v2, v19

    invoke-interface {v0, v1, v2}, Landroid/net/IConnectivityManager;->getNameServers(ILjava/lang/String;)[Ljava/lang/String;

    move-result-object v18

    #calls: Lcom/android/server/connectivity/Tethering;->setDnsServers([Ljava/lang/String;)V
    invoke-static/range {v17 .. v18}, Lcom/android/server/connectivity/Tethering;->access$4900(Lcom/android/server/connectivity/Tethering;[Ljava/lang/String;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_0

    .line 1521
    .end local v13           #mobileState:Landroid/net/NetworkInfo;
    .end local v16           #wifiState:Landroid/net/NetworkInfo;
    :catch_1
    move-exception v17

    move-object/from16 v7, v17

    .line 1522
    .local v7, e:Landroid/os/RemoteException;
    const-string v17, "Tethering"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, ""

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move-object v1, v7

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1523
    const/16 v17, 0x0

    goto/16 :goto_1

    .line 1513
    .end local v7           #e:Landroid/os/RemoteException;
    .restart local v16       #wifiState:Landroid/net/NetworkInfo;
    :cond_2
    const/16 v17, 0x0

    :try_start_3
    move-object v0, v6

    move/from16 v1, v17

    invoke-interface {v0, v1}, Landroid/net/IConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v13

    .line 1514
    .restart local v13       #mobileState:Landroid/net/NetworkInfo;
    invoke-virtual {v13}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v17

    sget-object v18, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    if-ne v0, v1, :cond_0

    .line 1515
    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object v0, v6

    move/from16 v1, v17

    move-object/from16 v2, v18

    invoke-interface {v0, v1, v2}, Landroid/net/IConnectivityManager;->getInterfaceName(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 1516
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object v0, v6

    move/from16 v1, v18

    move-object/from16 v2, v19

    invoke-interface {v0, v1, v2}, Landroid/net/IConnectivityManager;->getNameServers(ILjava/lang/String;)[Ljava/lang/String;

    move-result-object v18

    #calls: Lcom/android/server/connectivity/Tethering;->setDnsServers([Ljava/lang/String;)V
    invoke-static/range {v17 .. v18}, Lcom/android/server/connectivity/Tethering;->access$4900(Lcom/android/server/connectivity/Tethering;[Ljava/lang/String;)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_0

    .line 1527
    .end local v13           #mobileState:Landroid/net/NetworkInfo;
    :cond_3
    move-object v3, v10

    .local v3, arr$:[Ljava/lang/String;
    array-length v12, v3

    .local v12, len$:I
    const/4 v8, 0x0

    .local v8, i$:I
    :goto_2
    if-ge v8, v12, :cond_5

    aget-object v9, v3, v8

    .line 1528
    .local v9, iface:Ljava/lang/String;
    invoke-virtual {v9, v14}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_4

    .line 1530
    const/4 v11, 0x0

    .line 1532
    .local v11, ifcg:Landroid/net/InterfaceConfiguration;
    :try_start_4
    invoke-interface {v15, v9}, Landroid/os/INetworkManagementService;->getInterfaceConfig(Ljava/lang/String;)Landroid/net/InterfaceConfiguration;

    move-result-object v11

    .line 1533
    invoke-virtual {v11}, Landroid/net/InterfaceConfiguration;->isActive()Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    move-result v17

    if-eqz v17, :cond_4

    move-object/from16 v17, v9

    .line 1534
    goto/16 :goto_1

    .line 1536
    :catch_2
    move-exception v17

    move-object/from16 v7, v17

    .line 1537
    .local v7, e:Ljava/lang/Exception;
    const-string v17, "Tethering"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Error getting iface config :"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move-object v1, v7

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1527
    .end local v7           #e:Ljava/lang/Exception;
    .end local v11           #ifcg:Landroid/net/InterfaceConfiguration;
    :cond_4
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 1623
    .end local v9           #iface:Ljava/lang/String;
    :cond_5
    const/16 v17, 0x0

    goto/16 :goto_1
.end method

.method protected notifyTetheredOfNewUpstreamIface(Ljava/lang/String;)V
    .locals 7
    .parameter "ifaceName"

    .prologue
    .line 1687
    const-string v4, "Tethering"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "notifying tethered with iface ="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1688
    iget-object v4, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    #setter for: Lcom/android/server/connectivity/Tethering$TetherMasterSM;->mUpstreamIfaceName:Ljava/lang/String;
    invoke-static {v4, p1}, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->access$5002(Lcom/android/server/connectivity/Tethering$TetherMasterSM;Ljava/lang/String;)Ljava/lang/String;

    .line 1689
    iget-object v4, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    #getter for: Lcom/android/server/connectivity/Tethering$TetherMasterSM;->mNotifyList:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->access$5100(Lcom/android/server/connectivity/Tethering$TetherMasterSM;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 1690
    .local v2, o:Ljava/lang/Object;
    move-object v0, v2

    check-cast v0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    move-object v3, v0

    .line 1691
    .local v3, sm:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;
    const/16 v4, 0xc

    invoke-virtual {v3, v4, p1}, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->sendMessage(ILjava/lang/Object;)V

    goto :goto_0

    .line 1694
    .end local v2           #o:Ljava/lang/Object;
    .end local v3           #sm:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;
    :cond_0
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 1
    .parameter "m"

    .prologue
    .line 1364
    const/4 v0, 0x0

    return v0
.end method

.method protected turnOffMasterTetherSettings()Z
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 1435
    const-string v3, "network_management"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 1436
    .local v0, b:Landroid/os/IBinder;
    invoke-static {v0}, Landroid/os/INetworkManagementService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/INetworkManagementService;

    move-result-object v2

    .line 1439
    .local v2, service:Landroid/os/INetworkManagementService;
    :try_start_0
    invoke-interface {v2}, Landroid/os/INetworkManagementService;->stopTethering()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1445
    const/4 v3, 0x0

    :try_start_1
    invoke-interface {v2, v3}, Landroid/os/INetworkManagementService;->setIpForwardingEnabled(Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 1450
    iget-object v3, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    iget-object v4, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    #getter for: Lcom/android/server/connectivity/Tethering$TetherMasterSM;->mInitialState:Lcom/android/internal/util/HierarchicalState;
    invoke-static {v4}, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->access$4700(Lcom/android/server/connectivity/Tethering$TetherMasterSM;)Lcom/android/internal/util/HierarchicalState;

    move-result-object v4

    #calls: Lcom/android/server/connectivity/Tethering$TetherMasterSM;->transitionTo(Lcom/android/internal/util/HierarchicalState;)V
    invoke-static {v3, v4}, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->access$4800(Lcom/android/server/connectivity/Tethering$TetherMasterSM;Lcom/android/internal/util/HierarchicalState;)V

    .line 1451
    const/4 v3, 0x1

    :goto_0
    return v3

    .line 1440
    :catch_0
    move-exception v1

    .line 1441
    .local v1, e:Ljava/lang/Exception;
    iget-object v3, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    iget-object v4, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    #getter for: Lcom/android/server/connectivity/Tethering$TetherMasterSM;->mStopTetheringErrorState:Lcom/android/internal/util/HierarchicalState;
    invoke-static {v4}, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->access$4300(Lcom/android/server/connectivity/Tethering$TetherMasterSM;)Lcom/android/internal/util/HierarchicalState;

    move-result-object v4

    #calls: Lcom/android/server/connectivity/Tethering$TetherMasterSM;->transitionTo(Lcom/android/internal/util/HierarchicalState;)V
    invoke-static {v3, v4}, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->access$4400(Lcom/android/server/connectivity/Tethering$TetherMasterSM;Lcom/android/internal/util/HierarchicalState;)V

    move v3, v5

    .line 1442
    goto :goto_0

    .line 1446
    .end local v1           #e:Ljava/lang/Exception;
    :catch_1
    move-exception v1

    .line 1447
    .restart local v1       #e:Ljava/lang/Exception;
    iget-object v3, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    iget-object v4, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    #getter for: Lcom/android/server/connectivity/Tethering$TetherMasterSM;->mSetIpForwardingDisabledErrorState:Lcom/android/internal/util/HierarchicalState;
    invoke-static {v4}, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->access$4500(Lcom/android/server/connectivity/Tethering$TetherMasterSM;)Lcom/android/internal/util/HierarchicalState;

    move-result-object v4

    #calls: Lcom/android/server/connectivity/Tethering$TetherMasterSM;->transitionTo(Lcom/android/internal/util/HierarchicalState;)V
    invoke-static {v3, v4}, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->access$4600(Lcom/android/server/connectivity/Tethering$TetherMasterSM;Lcom/android/internal/util/HierarchicalState;)V

    move v3, v5

    .line 1448
    goto :goto_0
.end method

.method protected turnOffMobileConnection()Z
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 1391
    iget-object v3, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    #getter for: Lcom/android/server/connectivity/Tethering$TetherMasterSM;->mConnectionRequested:Z
    invoke-static {v3}, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->access$3700(Lcom/android/server/connectivity/Tethering$TetherMasterSM;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1392
    const-string v3, "connectivity"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 1393
    .local v0, b:Landroid/os/IBinder;
    invoke-static {v0}, Landroid/net/IConnectivityManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/IConnectivityManager;

    move-result-object v2

    .line 1396
    .local v2, service:Landroid/net/IConnectivityManager;
    const/4 v3, 0x0

    :try_start_0
    iget-object v4, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    iget-object v4, v4, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->this$0:Lcom/android/server/connectivity/Tethering;

    #getter for: Lcom/android/server/connectivity/Tethering;->mDunRequired:Z
    invoke-static {v4}, Lcom/android/server/connectivity/Tethering;->access$3000(Lcom/android/server/connectivity/Tethering;)Z

    move-result v4

    if-eqz v4, :cond_1

    const-string v4, "enableDUN"

    :goto_0
    invoke-interface {v2, v3, v4}, Landroid/net/IConnectivityManager;->stopUsingNetworkFeature(ILjava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1402
    iget-object v3, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    #setter for: Lcom/android/server/connectivity/Tethering$TetherMasterSM;->mConnectionRequested:Z
    invoke-static {v3, v5}, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->access$3702(Lcom/android/server/connectivity/Tethering$TetherMasterSM;Z)Z

    .line 1404
    .end local v0           #b:Landroid/os/IBinder;
    .end local v2           #service:Landroid/net/IConnectivityManager;
    :cond_0
    const/4 v3, 0x1

    :goto_1
    return v3

    .line 1396
    .restart local v0       #b:Landroid/os/IBinder;
    .restart local v2       #service:Landroid/net/IConnectivityManager;
    :cond_1
    :try_start_1
    const-string v4, "enableHIPRI"
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 1399
    :catch_0
    move-exception v3

    move-object v1, v3

    .local v1, e:Ljava/lang/Exception;
    move v3, v5

    .line 1400
    goto :goto_1
.end method

.method protected turnOnMasterTetherSettings()Z
    .locals 6

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 1407
    const-string v3, "network_management"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 1408
    .local v0, b:Landroid/os/IBinder;
    invoke-static {v0}, Landroid/os/INetworkManagementService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/INetworkManagementService;

    move-result-object v2

    .line 1411
    .local v2, service:Landroid/os/INetworkManagementService;
    const/4 v3, 0x1

    :try_start_0
    invoke-interface {v2, v3}, Landroid/os/INetworkManagementService;->setIpForwardingEnabled(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1417
    :try_start_1
    iget-object v3, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    iget-object v3, v3, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->this$0:Lcom/android/server/connectivity/Tethering;

    #getter for: Lcom/android/server/connectivity/Tethering;->mDhcpRange:[Ljava/lang/String;
    invoke-static {v3}, Lcom/android/server/connectivity/Tethering;->access$4000(Lcom/android/server/connectivity/Tethering;)[Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Landroid/os/INetworkManagementService;->startTethering([Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move v3, v4

    .line 1432
    :goto_0
    return v3

    .line 1412
    :catch_0
    move-exception v1

    .line 1413
    .local v1, e:Ljava/lang/Exception;
    iget-object v3, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    iget-object v4, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    #getter for: Lcom/android/server/connectivity/Tethering$TetherMasterSM;->mSetIpForwardingEnabledErrorState:Lcom/android/internal/util/HierarchicalState;
    invoke-static {v4}, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->access$3800(Lcom/android/server/connectivity/Tethering$TetherMasterSM;)Lcom/android/internal/util/HierarchicalState;

    move-result-object v4

    #calls: Lcom/android/server/connectivity/Tethering$TetherMasterSM;->transitionTo(Lcom/android/internal/util/HierarchicalState;)V
    invoke-static {v3, v4}, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->access$3900(Lcom/android/server/connectivity/Tethering$TetherMasterSM;Lcom/android/internal/util/HierarchicalState;)V

    move v3, v5

    .line 1414
    goto :goto_0

    .line 1418
    .end local v1           #e:Ljava/lang/Exception;
    :catch_1
    move-exception v3

    move-object v1, v3

    .line 1419
    .restart local v1       #e:Ljava/lang/Exception;
    iget-object v3, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    iget-object v4, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    #getter for: Lcom/android/server/connectivity/Tethering$TetherMasterSM;->mStartTetheringErrorState:Lcom/android/internal/util/HierarchicalState;
    invoke-static {v4}, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->access$4100(Lcom/android/server/connectivity/Tethering$TetherMasterSM;)Lcom/android/internal/util/HierarchicalState;

    move-result-object v4

    #calls: Lcom/android/server/connectivity/Tethering$TetherMasterSM;->transitionTo(Lcom/android/internal/util/HierarchicalState;)V
    invoke-static {v3, v4}, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->access$4200(Lcom/android/server/connectivity/Tethering$TetherMasterSM;Lcom/android/internal/util/HierarchicalState;)V

    move v3, v5

    .line 1420
    goto :goto_0
.end method

.method protected turnOnMobileConnection()I
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 1367
    const-string v3, "connectivity"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 1368
    .local v0, b:Landroid/os/IBinder;
    invoke-static {v0}, Landroid/net/IConnectivityManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/IConnectivityManager;

    move-result-object v2

    .line 1369
    .local v2, service:Landroid/net/IConnectivityManager;
    const/4 v1, 0x3

    .line 1371
    .local v1, retValue:I
    const/4 v3, 0x0

    :try_start_0
    iget-object v4, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    iget-object v4, v4, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->this$0:Lcom/android/server/connectivity/Tethering;

    #getter for: Lcom/android/server/connectivity/Tethering;->mDunRequired:Z
    invoke-static {v4}, Lcom/android/server/connectivity/Tethering;->access$3000(Lcom/android/server/connectivity/Tethering;)Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v4, "enableDUN"

    :goto_0
    new-instance v5, Landroid/os/Binder;

    invoke-direct {v5}, Landroid/os/Binder;-><init>()V

    invoke-interface {v2, v3, v4, v5}, Landroid/net/IConnectivityManager;->startUsingNetworkFeature(ILjava/lang/String;Landroid/os/IBinder;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1376
    :goto_1
    packed-switch v1, :pswitch_data_0

    .line 1384
    iget-object v3, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    #setter for: Lcom/android/server/connectivity/Tethering$TetherMasterSM;->mConnectionRequested:Z
    invoke-static {v3, v6}, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->access$3702(Lcom/android/server/connectivity/Tethering$TetherMasterSM;Z)Z

    .line 1388
    :goto_2
    return v1

    .line 1371
    :cond_0
    :try_start_1
    const-string v4, "enableHIPRI"
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 1379
    :pswitch_0
    iget-object v3, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    const/4 v4, 0x4

    const-wide/32 v5, 0x9c40

    invoke-virtual {v3, v4, v5, v6}, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->sendMessageDelayed(IJ)V

    .line 1380
    iget-object v3, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    const/4 v4, 0x1

    #setter for: Lcom/android/server/connectivity/Tethering$TetherMasterSM;->mConnectionRequested:Z
    invoke-static {v3, v4}, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->access$3702(Lcom/android/server/connectivity/Tethering$TetherMasterSM;Z)Z

    goto :goto_2

    .line 1374
    :catch_0
    move-exception v3

    goto :goto_1

    .line 1376
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
