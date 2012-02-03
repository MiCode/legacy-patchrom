.class public Lcom/android/server/enterprise/MiscPolicy;
.super Landroid/app/enterprise/IMiscPolicy$Stub;
.source "MiscPolicy.java"


# static fields
.field private static final BROADCAST_DELAY:I = 0x1388

.field private static final CERT_KEY_STORE_TYPE_BKS:Ljava/lang/String; = "BKS"

.field private static final CERT_STORE_PASS:Ljava/lang/String; = "changeit"

.field public static final CERT_TYPE_CERTIFICATE:Ljava/lang/String; = "CERT"

.field public static final CERT_TYPE_PKCS12:Ljava/lang/String; = "PKCS12"

.field public static final CONTENT_URI:Landroid/net/Uri; = null

.field public static final DISPLAY_NAME:Ljava/lang/String; = "displayName"

.field public static final HIDDEN:Ljava/lang/String; = "hidden"

.field public static final INSTALL_ACTION:Ljava/lang/String; = "android.credentials.INSTALL"

.field private static final INSTALL_SHORTCUT:Ljava/lang/String; = "com.android.launcher.action.INSTALL_SHORTCUT"

.field private static final KEY_CERT_FILE:Ljava/lang/String; = "javax.net.ssl.trustStore"

.field private static final MESSAGE_ID:I = 0x1

.field public static final NAME:Ljava/lang/String; = "name"

.field public static final ORGANIZER_CAN_RESPOND:Ljava/lang/String; = "organizerCanRespond"

.field public static final OWNER_ACCOUNT:Ljava/lang/String; = "ownerAccount"

.field public static final PRIVATE_KEY:Ljava/lang/String; = "PKEY"

.field public static final PUBLIC_KEY:Ljava/lang/String; = "KEY"

.field public static final SELECTED:Ljava/lang/String; = "selected"

.field private static final SRV_KEY_STORE:Ljava/lang/String; = "KeyStore"

.field public static final SYNC_EVENTS:Ljava/lang/String; = "sync_events"

.field private static final TAG:Ljava/lang/String; = "MiscPolicy"

.field public static final TIMEZONE:Ljava/lang/String; = "timezone"

.field public static final URL:Ljava/lang/String; = "url"

.field public static final _SYNC_ACCOUNT:Ljava/lang/String; = "_sync_account"

.field public static final _SYNC_ACCOUNT_TYPE:Ljava/lang/String; = "_sync_account_type"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 172
    const-string v0, "content://com.android.calendar/calendars"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/server/enterprise/MiscPolicy;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "ctx"

    .prologue
    .line 82
    invoke-direct {p0}, Landroid/app/enterprise/IMiscPolicy$Stub;-><init>()V

    .line 733
    new-instance v0, Lcom/android/server/enterprise/MiscPolicy$1;

    invoke-direct {v0, p0}, Lcom/android/server/enterprise/MiscPolicy$1;-><init>(Lcom/android/server/enterprise/MiscPolicy;)V

    iput-object v0, p0, Lcom/android/server/enterprise/MiscPolicy;->mHandler:Landroid/os/Handler;

    .line 83
    iput-object p1, p0, Lcom/android/server/enterprise/MiscPolicy;->mContext:Landroid/content/Context;

    .line 84
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/enterprise/MiscPolicy;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/server/enterprise/MiscPolicy;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private createBookmarkIntent(Landroid/net/Uri;Ljava/lang/String;Landroid/graphics/Bitmap;)Landroid/content/Intent;
    .locals 1
    .parameter "bookmarkUri"
    .parameter "title"
    .parameter "icon"

    .prologue
    .line 120
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 169
    .local v0, i:Landroid/content/Intent;
    return-object v0
.end method

.method private getProvider(Ljava/lang/String;Ljava/lang/String;)Ljava/security/Provider;
    .locals 5
    .parameter "aAlgorithm"
    .parameter "aService"

    .prologue
    const/4 v3, 0x0

    const-string v4, "MiscPolicy"

    .line 522
    const-string v2, "MiscPolicy"

    const-string v2, "getInstalledCertiFicateList start"

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 525
    const/4 v1, 0x0

    .line 526
    .local v1, lProvs:[Ljava/security/Provider;
    :try_start_0
    const-string v2, "."

    invoke-virtual {p2, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/security/Security;->getProviders(Ljava/lang/String;)[Ljava/security/Provider;

    move-result-object v1

    .line 527
    if-eqz v1, :cond_1

    .line 528
    array-length v2, v1

    if-nez v2, :cond_0

    move-object v2, v3

    .line 536
    :goto_0
    return-object v2

    .line 528
    :cond_0
    const/4 v2, 0x0

    aget-object v2, v1, v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 530
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 531
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 534
    .end local v0           #e:Ljava/lang/Exception;
    :cond_1
    const-string v2, "MiscPolicy"

    const-string v2, "getInstalledCertiFicateList end"

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v2, v3

    .line 536
    goto :goto_0
.end method

.method private getValidStr(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "str"

    .prologue
    const/4 v2, 0x0

    .line 336
    if-nez p1, :cond_0

    move-object v1, v2

    .line 340
    :goto_0
    return-object v1

    .line 336
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-lez v1, :cond_1

    move-object v1, p1

    goto :goto_0

    :cond_1
    move-object v1, v2

    goto :goto_0

    .line 337
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 338
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move-object v1, v2

    .line 340
    goto :goto_0
.end method


# virtual methods
.method public addBookmarkOnHomeScreenBitmap(Landroid/net/Uri;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 0
    .parameter "bookmarkUri"
    .parameter "title"
    .parameter "icon"

    .prologue
    .line 117
    return-void
.end method

.method public addBookmarkOnHomeScreenByteBuffer(Landroid/net/Uri;Ljava/lang/String;[B)V
    .locals 0
    .parameter "bookmarkUri"
    .parameter "title"
    .parameter "iconBuffer"

    .prologue
    .line 106
    return-void
.end method

.method public addBookmarkOnHomeScreenInputStream(Landroid/net/Uri;Ljava/lang/String;Ljava/io/InputStream;)V
    .locals 0
    .parameter "bookmarkUri"
    .parameter "title"
    .parameter "iconIS"

    .prologue
    .line 95
    return-void
.end method

.method public addSubscribedCalendar(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;)Z
    .locals 1
    .parameter "emailId"
    .parameter "accountType"
    .parameter "url"
    .parameter "displayName"

    .prologue
    .line 288
    const/4 v0, 0x0

    return v0
.end method

.method public allowBluetooth(Z)Z
    .locals 8
    .parameter "enable"

    .prologue
    .line 634
    iget-object v5, p0, Lcom/android/server/enterprise/MiscPolicy;->mContext:Landroid/content/Context;

    const-string v6, "android.permission.sec.MDM_BLUETOOTH"

    const-string v7, "Misc Policy"

    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 635
    const/4 v2, 0x0

    .line 636
    .local v2, success:Z
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    .line 638
    .local v3, token:J
    if-nez p1, :cond_0

    .line 639
    :try_start_0
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 640
    .local v0, ba:Landroid/bluetooth/BluetoothAdapter;
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->disable()Z

    .line 642
    .end local v0           #ba:Landroid/bluetooth/BluetoothAdapter;
    :cond_0
    iget-object v5, p0, Lcom/android/server/enterprise/MiscPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "bluetooth_enabled"

    if-eqz p1, :cond_1

    const/4 v7, 0x1

    :goto_0
    invoke-static {v5, v6, v7}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 645
    const/4 v2, 0x1

    .line 651
    :goto_1
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 652
    return v2

    .line 642
    :cond_1
    const/4 v7, 0x0

    goto :goto_0

    .line 647
    :catch_0
    move-exception v5

    move-object v1, v5

    .line 648
    .local v1, e:Ljava/lang/Exception;
    const/4 v2, 0x0

    .line 649
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public allowWiFi(Z)Z
    .locals 8
    .parameter "enable"

    .prologue
    .line 576
    iget-object v5, p0, Lcom/android/server/enterprise/MiscPolicy;->mContext:Landroid/content/Context;

    const-string v6, "android.permission.sec.MDM_WIFI"

    const-string v7, "Misc Policy"

    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 577
    const/4 v1, 0x0

    .line 578
    .local v1, success:Z
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 580
    .local v2, token:J
    if-nez p1, :cond_0

    .line 581
    :try_start_0
    iget-object v5, p0, Lcom/android/server/enterprise/MiscPolicy;->mContext:Landroid/content/Context;

    const-string v6, "wifi"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/wifi/WifiManager;

    .line 582
    .local v4, wm:Landroid/net/wifi/WifiManager;
    invoke-virtual {v4, p1}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    .line 584
    .end local v4           #wm:Landroid/net/wifi/WifiManager;
    :cond_0
    iget-object v5, p0, Lcom/android/server/enterprise/MiscPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "wifi_enabled"

    if-eqz p1, :cond_1

    const/4 v7, 0x1

    :goto_0
    invoke-static {v5, v6, v7}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 587
    const/4 v1, 0x1

    .line 592
    :goto_1
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 593
    return v1

    .line 584
    :cond_1
    const/4 v7, 0x0

    goto :goto_0

    .line 588
    :catch_0
    move-exception v5

    move-object v0, v5

    .line 589
    .local v0, e:Ljava/lang/Exception;
    const/4 v1, 0x0

    .line 590
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public formatInternalStorage(ZZ)Z
    .locals 1
    .parameter "includeSystemDirectory"
    .parameter "includeDataDirectory"

    .prologue
    .line 829
    const/4 v0, 0x0

    return v0
.end method

.method public formatSelective([Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;
    .locals 1
    .parameter "fileList"
    .parameter "filters"

    .prologue
    .line 792
    const/4 v0, 0x0

    return-object v0
.end method

.method public formatStorageCard(Z)Z
    .locals 1
    .parameter "isExternal"

    .prologue
    .line 843
    const/4 v0, 0x0

    return v0
.end method

.method public getInstalledCertiFicateList()Ljava/util/List;
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/app/enterprise/CertificateInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 430
    const-string v12, "MiscPolicy"

    const-string v13, "getInstalledCertiFicateList start"

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 433
    const/4 v5, 0x0

    .line 434
    .local v5, lCertInfoList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/enterprise/CertificateInfo;>;"
    const-string v7, "BKS"

    .line 437
    .local v7, lCertType:Ljava/lang/String;
    const-string v12, "javax.net.ssl.trustStore"

    invoke-static {v12}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 438
    .local v8, lFileName:Ljava/lang/String;
    if-eqz v8, :cond_4

    .line 440
    const-string v12, "MiscPolicy"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "file name:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 443
    :try_start_0
    const-string v12, "KeyStore"

    invoke-direct {p0, v7, v12}, Lcom/android/server/enterprise/MiscPolicy;->getProvider(Ljava/lang/String;Ljava/lang/String;)Ljava/security/Provider;

    move-result-object v11

    .line 444
    .local v11, lProvider:Ljava/security/Provider;
    if-eqz v11, :cond_3

    .line 446
    const-string v12, "MiscPolicy"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, " provider found to handle "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v11}, Ljava/security/Provider;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 448
    invoke-static {v7, v11}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljava/security/KeyStore;

    move-result-object v10

    .line 449
    .local v10, lKeyStore:Ljava/security/KeyStore;
    if-eqz v10, :cond_2

    .line 451
    new-instance v9, Ljava/io/FileInputStream;

    invoke-direct {v9, v8}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 452
    .local v9, lFis:Ljava/io/FileInputStream;
    const-string v12, "changeit"

    invoke-virtual {v12}, Ljava/lang/String;->toCharArray()[C

    move-result-object v12

    invoke-virtual {v10, v9, v12}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V

    .line 454
    invoke-virtual {v10}, Ljava/security/KeyStore;->aliases()Ljava/util/Enumeration;

    move-result-object v2

    .line 457
    .local v2, lAliases:Ljava/util/Enumeration;,"Ljava/util/Enumeration<Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v12

    if-eqz v12, :cond_0

    .line 458
    new-instance v6, Ljava/util/ArrayList;

    const/16 v12, 0x64

    invoke-direct {v6, v12}, Ljava/util/ArrayList;-><init>(I)V
    :try_end_0
    .catch Ljava/security/KeyStoreException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4

    .line 461
    .end local v5           #lCertInfoList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/enterprise/CertificateInfo;>;"
    .local v6, lCertInfoList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/enterprise/CertificateInfo;>;"
    :goto_0
    :try_start_1
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v12

    if-eqz v12, :cond_1

    .line 462
    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 463
    .local v1, lAliasName:Ljava/lang/String;
    invoke-virtual {v10, v1}, Ljava/security/KeyStore;->getCertificate(Ljava/lang/String;)Ljava/security/cert/Certificate;

    move-result-object v3

    .line 464
    .local v3, lCert:Ljava/security/cert/Certificate;
    new-instance v4, Landroid/app/enterprise/CertificateInfo;

    invoke-direct {v4}, Landroid/app/enterprise/CertificateInfo;-><init>()V

    .line 466
    .local v4, lCertInfo:Landroid/app/enterprise/CertificateInfo;
    const-string v12, "MiscPolicy"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "AliasName:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ""

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 468
    invoke-virtual {v4, v3}, Landroid/app/enterprise/CertificateInfo;->setCertificate(Ljava/security/cert/Certificate;)V

    .line 469
    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/security/KeyStoreException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/security/cert/CertificateException; {:try_start_1 .. :try_end_1} :catch_6
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_5

    goto :goto_0

    .line 486
    .end local v1           #lAliasName:Ljava/lang/String;
    .end local v3           #lCert:Ljava/security/cert/Certificate;
    .end local v4           #lCertInfo:Landroid/app/enterprise/CertificateInfo;
    :catch_0
    move-exception v12

    move-object v0, v12

    move-object v5, v6

    .line 487
    .end local v2           #lAliases:Ljava/util/Enumeration;,"Ljava/util/Enumeration<Ljava/lang/String;>;"
    .end local v6           #lCertInfoList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/enterprise/CertificateInfo;>;"
    .end local v9           #lFis:Ljava/io/FileInputStream;
    .end local v10           #lKeyStore:Ljava/security/KeyStore;
    .end local v11           #lProvider:Ljava/security/Provider;
    .local v0, e:Ljava/security/KeyStoreException;
    .restart local v5       #lCertInfoList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/enterprise/CertificateInfo;>;"
    :goto_1
    invoke-virtual {v0}, Ljava/security/KeyStoreException;->printStackTrace()V

    .line 502
    .end local v0           #e:Ljava/security/KeyStoreException;
    :cond_0
    :goto_2
    const-string v12, "MiscPolicy"

    const-string v13, "getInstalledCertiFicateList end"

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 504
    return-object v5

    .line 472
    .end local v5           #lCertInfoList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/enterprise/CertificateInfo;>;"
    .restart local v2       #lAliases:Ljava/util/Enumeration;,"Ljava/util/Enumeration<Ljava/lang/String;>;"
    .restart local v6       #lCertInfoList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/enterprise/CertificateInfo;>;"
    .restart local v9       #lFis:Ljava/io/FileInputStream;
    .restart local v10       #lKeyStore:Ljava/security/KeyStore;
    .restart local v11       #lProvider:Ljava/security/Provider;
    :cond_1
    :try_start_2
    const-string v12, "MiscPolicy"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "number of certificates found : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/security/KeyStoreException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_2 .. :try_end_2} :catch_7
    .catch Ljava/security/cert/CertificateException; {:try_start_2 .. :try_end_2} :catch_6
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_5

    move-object v5, v6

    .end local v6           #lCertInfoList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/enterprise/CertificateInfo;>;"
    .restart local v5       #lCertInfoList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/enterprise/CertificateInfo;>;"
    goto :goto_2

    .line 478
    .end local v2           #lAliases:Ljava/util/Enumeration;,"Ljava/util/Enumeration<Ljava/lang/String;>;"
    .end local v9           #lFis:Ljava/io/FileInputStream;
    :cond_2
    :try_start_3
    const-string v12, "MiscPolicy"

    const-string v13, "keystore instantiation failed"

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 486
    .end local v10           #lKeyStore:Ljava/security/KeyStore;
    .end local v11           #lProvider:Ljava/security/Provider;
    :catch_1
    move-exception v12

    move-object v0, v12

    goto :goto_1

    .line 483
    .restart local v11       #lProvider:Ljava/security/Provider;
    :cond_3
    const-string v12, "MiscPolicy"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "no provider found to handle for type:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/security/KeyStoreException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/security/cert/CertificateException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4

    goto :goto_2

    .line 488
    .end local v11           #lProvider:Ljava/security/Provider;
    :catch_2
    move-exception v12

    move-object v0, v12

    .line 489
    .local v0, e:Ljava/security/NoSuchAlgorithmException;
    :goto_3
    invoke-virtual {v0}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    goto :goto_2

    .line 490
    .end local v0           #e:Ljava/security/NoSuchAlgorithmException;
    :catch_3
    move-exception v12

    move-object v0, v12

    .line 491
    .local v0, e:Ljava/security/cert/CertificateException;
    :goto_4
    invoke-virtual {v0}, Ljava/security/cert/CertificateException;->printStackTrace()V

    goto :goto_2

    .line 492
    .end local v0           #e:Ljava/security/cert/CertificateException;
    :catch_4
    move-exception v12

    move-object v0, v12

    .line 493
    .local v0, e:Ljava/io/IOException;
    :goto_5
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 497
    .end local v0           #e:Ljava/io/IOException;
    :cond_4
    const-string v12, "MiscPolicy"

    const-string v13, "certificate installation file doesn\'t exist"

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 492
    .end local v5           #lCertInfoList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/enterprise/CertificateInfo;>;"
    .restart local v2       #lAliases:Ljava/util/Enumeration;,"Ljava/util/Enumeration<Ljava/lang/String;>;"
    .restart local v6       #lCertInfoList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/enterprise/CertificateInfo;>;"
    .restart local v9       #lFis:Ljava/io/FileInputStream;
    .restart local v10       #lKeyStore:Ljava/security/KeyStore;
    .restart local v11       #lProvider:Ljava/security/Provider;
    :catch_5
    move-exception v12

    move-object v0, v12

    move-object v5, v6

    .end local v6           #lCertInfoList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/enterprise/CertificateInfo;>;"
    .restart local v5       #lCertInfoList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/enterprise/CertificateInfo;>;"
    goto :goto_5

    .line 490
    .end local v5           #lCertInfoList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/enterprise/CertificateInfo;>;"
    .restart local v6       #lCertInfoList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/enterprise/CertificateInfo;>;"
    :catch_6
    move-exception v12

    move-object v0, v12

    move-object v5, v6

    .end local v6           #lCertInfoList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/enterprise/CertificateInfo;>;"
    .restart local v5       #lCertInfoList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/enterprise/CertificateInfo;>;"
    goto :goto_4

    .line 488
    .end local v5           #lCertInfoList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/enterprise/CertificateInfo;>;"
    .restart local v6       #lCertInfoList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/enterprise/CertificateInfo;>;"
    :catch_7
    move-exception v12

    move-object v0, v12

    move-object v5, v6

    .end local v6           #lCertInfoList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/enterprise/CertificateInfo;>;"
    .restart local v5       #lCertInfoList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/enterprise/CertificateInfo;>;"
    goto :goto_3
.end method

.method public installCertificateWithType(Ljava/lang/String;[B)V
    .locals 7
    .parameter "type"
    .parameter "value"

    .prologue
    .line 385
    iget-object v4, p0, Lcom/android/server/enterprise/MiscPolicy;->mContext:Landroid/content/Context;

    const-string v5, "android.permission.sec.MDM_SECURITY"

    const-string v6, "Misc Policy"

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 386
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/MiscPolicy;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 387
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    array-length v4, p2

    if-lez v4, :cond_0

    .line 388
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 390
    .local v2, token:J
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    const-string v4, "android.credentials.INSTALL"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 391
    .local v1, intent:Landroid/content/Intent;
    const/high16 v4, 0x1000

    invoke-virtual {v1, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 392
    invoke-virtual {v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 393
    iget-object v4, p0, Lcom/android/server/enterprise/MiscPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 397
    .end local v1           #intent:Landroid/content/Intent;
    :goto_0
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 400
    .end local v2           #token:J
    :cond_0
    return-void

    .line 394
    .restart local v2       #token:J
    :catch_0
    move-exception v4

    move-object v0, v4

    .line 395
    .local v0, e:Landroid/content/ActivityNotFoundException;
    :try_start_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "MiscPolicy::installCertificateWithType() : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/server/enterprise/Utils;->writeToLog(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 397
    .end local v0           #e:Landroid/content/ActivityNotFoundException;
    :catchall_0
    move-exception v4

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4
.end method

.method public installCertificatesFromSdCard()V
    .locals 0

    .prologue
    .line 416
    return-void
.end method

.method public installKeyPair(Ljava/security/KeyPair;)V
    .locals 0
    .parameter "pair"

    .prologue
    .line 376
    return-void
.end method

.method public isCameraEnabled(Z)Z
    .locals 8
    .parameter "showMsg"

    .prologue
    const/4 v7, 0x1

    .line 688
    const/4 v2, 0x1

    .line 691
    .local v2, ret:Z
    :try_start_0
    iget-object v4, p0, Lcom/android/server/enterprise/MiscPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "camera_enabled"

    const/4 v6, 0x1

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    .line 692
    .local v3, value:I
    if-ne v7, v3, :cond_1

    move v2, v7

    .line 693
    :goto_0
    if-eqz p1, :cond_0

    if-nez v2, :cond_0

    .line 694
    new-instance v1, Landroid/content/Intent;

    const-string v4, "android.intent.action.enterprise.SHOW_UI"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 695
    .local v1, i:Landroid/content/Intent;
    const-string v4, "message"

    iget-object v5, p0, Lcom/android/server/enterprise/MiscPolicy;->mContext:Landroid/content/Context;

    const v6, 0x1040169

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 696
    iget-object v4, p0, Lcom/android/server/enterprise/MiscPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 702
    .end local v1           #i:Landroid/content/Intent;
    .end local v3           #value:I
    :cond_0
    :goto_1
    return v2

    .line 692
    .restart local v3       #value:I
    :cond_1
    const/4 v4, 0x0

    move v2, v4

    goto :goto_0

    .line 699
    .end local v3           #value:I
    :catch_0
    move-exception v4

    move-object v0, v4

    .line 700
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public isExternalStorageEncrypted()Z
    .locals 8

    .prologue
    const-string v5, "MiscPolicy"

    .line 920
    iget-object v5, p0, Lcom/android/server/enterprise/MiscPolicy;->mContext:Landroid/content/Context;

    const-string v6, "android.permission.sec.MDM_SECURITY"

    const-string v7, "Misc Policy"

    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 921
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 924
    .local v2, ident:J
    :try_start_0
    new-instance v0, Landroid/deviceencryption/DeviceEncryptionManager;

    iget-object v5, p0, Lcom/android/server/enterprise/MiscPolicy;->mContext:Landroid/content/Context;

    invoke-direct {v0, v5}, Landroid/deviceencryption/DeviceEncryptionManager;-><init>(Landroid/content/Context;)V

    .line 925
    .local v0, dem:Landroid/deviceencryption/DeviceEncryptionManager;
    invoke-static {}, Landroid/deviceencryption/DeviceEncryptionManager;->getExternalStorageStatus()Z

    move-result v4

    .line 926
    .local v4, status:Z
    const-string v5, "MiscPolicy"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "isExternalStorageEncrypted : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 932
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    move v5, v4

    .line 934
    .end local v0           #dem:Landroid/deviceencryption/DeviceEncryptionManager;
    .end local v4           #status:Z
    :goto_0
    return v5

    .line 928
    :catch_0
    move-exception v5

    move-object v1, v5

    .line 929
    .local v1, e:Ljava/lang/Exception;
    :try_start_1
    const-string v5, "MiscPolicy"

    const-string v6, "Failed requesting data encryption"

    invoke-static {v5, v6, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 932
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 934
    const/4 v5, 0x0

    goto :goto_0

    .line 932
    .end local v1           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v5

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v5
.end method

.method public isInternalStorageEncrypted()Z
    .locals 8

    .prologue
    const-string v5, "MiscPolicy"

    .line 896
    iget-object v5, p0, Lcom/android/server/enterprise/MiscPolicy;->mContext:Landroid/content/Context;

    const-string v6, "android.permission.sec.MDM_SECURITY"

    const-string v7, "Misc Policy"

    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 897
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 900
    .local v2, ident:J
    :try_start_0
    new-instance v0, Landroid/deviceencryption/DeviceEncryptionManager;

    iget-object v5, p0, Lcom/android/server/enterprise/MiscPolicy;->mContext:Landroid/content/Context;

    invoke-direct {v0, v5}, Landroid/deviceencryption/DeviceEncryptionManager;-><init>(Landroid/content/Context;)V

    .line 901
    .local v0, dem:Landroid/deviceencryption/DeviceEncryptionManager;
    invoke-static {}, Landroid/deviceencryption/DeviceEncryptionManager;->getInternalStorageStatus()Z

    move-result v4

    .line 902
    .local v4, status:Z
    const-string v5, "MiscPolicy"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "isInternalStorageEncrypted : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 908
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    move v5, v4

    .line 910
    .end local v0           #dem:Landroid/deviceencryption/DeviceEncryptionManager;
    .end local v4           #status:Z
    :goto_0
    return v5

    .line 904
    :catch_0
    move-exception v5

    move-object v1, v5

    .line 905
    .local v1, e:Ljava/lang/Exception;
    :try_start_1
    const-string v5, "MiscPolicy"

    const-string v6, "Failed requesting data encryption"

    invoke-static {v5, v6, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 908
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 910
    const/4 v5, 0x0

    goto :goto_0

    .line 908
    .end local v1           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v5

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v5
.end method

.method public isMicrophoneEnabled(Z)Z
    .locals 8
    .parameter "showMsg"

    .prologue
    const/4 v7, 0x1

    .line 754
    const/4 v2, 0x1

    .line 757
    .local v2, ret:Z
    :try_start_0
    iget-object v4, p0, Lcom/android/server/enterprise/MiscPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "microphone_enabled"

    const/4 v6, 0x1

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    .line 758
    .local v3, value:I
    if-ne v7, v3, :cond_1

    move v2, v7

    .line 759
    :goto_0
    if-eqz p1, :cond_0

    if-nez v2, :cond_0

    .line 760
    new-instance v1, Landroid/content/Intent;

    const-string v4, "android.intent.action.enterprise.SHOW_UI"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 761
    .local v1, i:Landroid/content/Intent;
    const-string v4, "message"

    iget-object v5, p0, Lcom/android/server/enterprise/MiscPolicy;->mContext:Landroid/content/Context;

    const v6, 0x104016a

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 762
    iget-object v4, p0, Lcom/android/server/enterprise/MiscPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 764
    iget-object v4, p0, Lcom/android/server/enterprise/MiscPolicy;->mHandler:Landroid/os/Handler;

    iget-object v5, p0, Lcom/android/server/enterprise/MiscPolicy;->mHandler:Landroid/os/Handler;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    const-wide/16 v6, 0x1388

    invoke-virtual {v4, v5, v6, v7}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 770
    .end local v1           #i:Landroid/content/Intent;
    .end local v3           #value:I
    :cond_0
    :goto_1
    return v2

    .line 758
    .restart local v3       #value:I
    :cond_1
    const/4 v4, 0x0

    move v2, v4

    goto :goto_0

    .line 767
    .end local v3           #value:I
    :catch_0
    move-exception v4

    move-object v0, v4

    .line 768
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public setBluetooth(Z)Z
    .locals 8
    .parameter "enable"

    .prologue
    .line 604
    iget-object v5, p0, Lcom/android/server/enterprise/MiscPolicy;->mContext:Landroid/content/Context;

    const-string v6, "android.permission.sec.MDM_BLUETOOTH"

    const-string v7, "Misc Policy"

    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 605
    const/4 v2, 0x0

    .line 606
    .local v2, success:Z
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    .line 608
    .local v3, token:J
    :try_start_0
    iget-object v5, p0, Lcom/android/server/enterprise/MiscPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "bluetooth_enabled"

    if-eqz p1, :cond_0

    const/4 v7, 0x1

    :goto_0
    invoke-static {v5, v6, v7}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 611
    const/4 v2, 0x1

    .line 612
    const-string v5, "MiscPolicy"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "setBluetooth : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 613
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 614
    .local v0, ba:Landroid/bluetooth/BluetoothAdapter;
    if-eqz p1, :cond_1

    .line 615
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->enable()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 622
    .end local v0           #ba:Landroid/bluetooth/BluetoothAdapter;
    :goto_1
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 623
    return v2

    .line 608
    :cond_0
    const/4 v7, 0x0

    goto :goto_0

    .line 617
    .restart local v0       #ba:Landroid/bluetooth/BluetoothAdapter;
    :cond_1
    :try_start_1
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->disable()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 618
    .end local v0           #ba:Landroid/bluetooth/BluetoothAdapter;
    :catch_0
    move-exception v5

    move-object v1, v5

    .line 619
    .local v1, e:Ljava/lang/Exception;
    const/4 v2, 0x0

    .line 620
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public setCamera(Z)Z
    .locals 7
    .parameter "enable"

    .prologue
    .line 663
    iget-object v4, p0, Lcom/android/server/enterprise/MiscPolicy;->mContext:Landroid/content/Context;

    const-string v5, "android.permission.sec.MDM_HW_CONTROL"

    const-string v6, "Misc Policy"

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 664
    const/4 v1, 0x0

    .line 665
    .local v1, success:Z
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 667
    .local v2, token:J
    :try_start_0
    iget-object v4, p0, Lcom/android/server/enterprise/MiscPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "camera_enabled"

    if-eqz p1, :cond_0

    const/4 v6, 0x1

    :goto_0
    invoke-static {v4, v5, v6}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 670
    const/4 v1, 0x1

    .line 671
    const-string v4, "MiscPolicy"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setCamera : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 676
    :goto_1
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 677
    return v1

    .line 667
    :cond_0
    const/4 v6, 0x0

    goto :goto_0

    .line 672
    :catch_0
    move-exception v4

    move-object v0, v4

    .line 673
    .local v0, e:Ljava/lang/Exception;
    const/4 v1, 0x0

    .line 674
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public setExternalStorageEncryption(Z)V
    .locals 8
    .parameter "isEncrypt"

    .prologue
    const/4 v7, 0x0

    const-string v4, "MiscPolicy"

    .line 875
    iget-object v4, p0, Lcom/android/server/enterprise/MiscPolicy;->mContext:Landroid/content/Context;

    const-string v5, "android.permission.sec.MDM_SECURITY"

    const-string v6, "Misc Policy"

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 876
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 879
    .local v2, ident:J
    :try_start_0
    new-instance v0, Landroid/deviceencryption/DeviceEncryptionManager;

    iget-object v4, p0, Lcom/android/server/enterprise/MiscPolicy;->mContext:Landroid/content/Context;

    invoke-direct {v0, v4}, Landroid/deviceencryption/DeviceEncryptionManager;-><init>(Landroid/content/Context;)V

    .line 880
    .local v0, dem:Landroid/deviceencryption/DeviceEncryptionManager;
    const-string v4, "MiscPolicy"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setExternalStorageEncryption : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 881
    const/4 v4, 0x0

    if-eqz p1, :cond_0

    const/4 v5, 0x1

    :goto_0
    invoke-virtual {v0, v4, v5}, Landroid/deviceencryption/DeviceEncryptionManager;->setEncryptPolicy(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 886
    .end local v0           #dem:Landroid/deviceencryption/DeviceEncryptionManager;
    :goto_1
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 888
    return-void

    .restart local v0       #dem:Landroid/deviceencryption/DeviceEncryptionManager;
    :cond_0
    move v5, v7

    .line 881
    goto :goto_0

    .line 882
    .end local v0           #dem:Landroid/deviceencryption/DeviceEncryptionManager;
    :catch_0
    move-exception v4

    move-object v1, v4

    .line 883
    .local v1, e:Ljava/lang/Exception;
    :try_start_1
    const-string v4, "MiscPolicy"

    const-string v5, "Failed requesting data encryption"

    invoke-static {v4, v5, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 886
    .end local v1           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v4

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4
.end method

.method public setInternalStorageEncryption(Z)V
    .locals 8
    .parameter "isEncrypt"

    .prologue
    const/4 v7, 0x1

    const-string v4, "MiscPolicy"

    .line 853
    iget-object v4, p0, Lcom/android/server/enterprise/MiscPolicy;->mContext:Landroid/content/Context;

    const-string v5, "android.permission.sec.MDM_SECURITY"

    const-string v6, "Misc Policy"

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 854
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 857
    .local v2, ident:J
    :try_start_0
    new-instance v0, Landroid/deviceencryption/DeviceEncryptionManager;

    iget-object v4, p0, Lcom/android/server/enterprise/MiscPolicy;->mContext:Landroid/content/Context;

    invoke-direct {v0, v4}, Landroid/deviceencryption/DeviceEncryptionManager;-><init>(Landroid/content/Context;)V

    .line 858
    .local v0, dem:Landroid/deviceencryption/DeviceEncryptionManager;
    const-string v4, "MiscPolicy"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setInternalStorageEncryption : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 859
    const/4 v4, 0x1

    if-eqz p1, :cond_0

    move v5, v7

    :goto_0
    invoke-virtual {v0, v4, v5}, Landroid/deviceencryption/DeviceEncryptionManager;->setEncryptPolicy(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 864
    .end local v0           #dem:Landroid/deviceencryption/DeviceEncryptionManager;
    :goto_1
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 866
    return-void

    .line 859
    .restart local v0       #dem:Landroid/deviceencryption/DeviceEncryptionManager;
    :cond_0
    const/4 v5, 0x0

    goto :goto_0

    .line 860
    .end local v0           #dem:Landroid/deviceencryption/DeviceEncryptionManager;
    :catch_0
    move-exception v4

    move-object v1, v4

    .line 861
    .local v1, e:Ljava/lang/Exception;
    :try_start_1
    const-string v4, "MiscPolicy"

    const-string v5, "Failed requesting data encryption"

    invoke-static {v4, v5, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 864
    .end local v1           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v4

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4
.end method

.method public setMicrophoneState(Z)Z
    .locals 7
    .parameter "enable"

    .prologue
    .line 713
    iget-object v4, p0, Lcom/android/server/enterprise/MiscPolicy;->mContext:Landroid/content/Context;

    const-string v5, "android.permission.sec.MDM_HW_CONTROL"

    const-string v6, "Misc Policy"

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 714
    const/4 v1, 0x0

    .line 715
    .local v1, success:Z
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 717
    .local v2, token:J
    :try_start_0
    iget-object v4, p0, Lcom/android/server/enterprise/MiscPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "microphone_enabled"

    if-eqz p1, :cond_0

    const/4 v6, 0x1

    :goto_0
    invoke-static {v4, v5, v6}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 720
    const/4 v1, 0x1

    .line 721
    const-string v4, "MiscPolicy"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setMicrophone: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 726
    :goto_1
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 727
    return v1

    .line 717
    :cond_0
    const/4 v6, 0x0

    goto :goto_0

    .line 722
    :catch_0
    move-exception v4

    move-object v0, v4

    .line 723
    .local v0, e:Ljava/lang/Exception;
    const/4 v1, 0x0

    .line 724
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public setWiFi(Z)Z
    .locals 8
    .parameter "enable"

    .prologue
    .line 549
    iget-object v5, p0, Lcom/android/server/enterprise/MiscPolicy;->mContext:Landroid/content/Context;

    const-string v6, "android.permission.sec.MDM_WIFI"

    const-string v7, "Misc Policy"

    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 550
    const/4 v1, 0x0

    .line 551
    .local v1, success:Z
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 553
    .local v2, token:J
    :try_start_0
    iget-object v5, p0, Lcom/android/server/enterprise/MiscPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "wifi_enabled"

    if-eqz p1, :cond_0

    const/4 v7, 0x1

    :goto_0
    invoke-static {v5, v6, v7}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 556
    const/4 v1, 0x1

    .line 557
    const-string v5, "MiscPolicy"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "setWiFi : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 558
    iget-object v5, p0, Lcom/android/server/enterprise/MiscPolicy;->mContext:Landroid/content/Context;

    const-string v6, "wifi"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/wifi/WifiManager;

    .line 559
    .local v4, wm:Landroid/net/wifi/WifiManager;
    invoke-virtual {v4, p1}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 564
    .end local v4           #wm:Landroid/net/wifi/WifiManager;
    :goto_1
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 565
    return v1

    .line 553
    :cond_0
    const/4 v7, 0x0

    goto :goto_0

    .line 560
    :catch_0
    move-exception v5

    move-object v0, v5

    .line 561
    .local v0, e:Ljava/lang/Exception;
    const/4 v1, 0x0

    .line 562
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method
