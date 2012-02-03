.class public Lcom/android/server/DevicePolicyManagerService;
.super Landroid/app/admin/IDevicePolicyManager$Stub;
.source "DevicePolicyManagerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/DevicePolicyManagerService$MyPackageMonitor;,
        Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    }
.end annotation


# static fields
.field static final TAG:Ljava/lang/String; = "DevicePolicyManagerService"


# instance fields
.field mActivePasswordComplexChars:I

.field mActivePasswordExpires:J

.field mActivePasswordHasSymbol:Z

.field mActivePasswordLength:I

.field mActivePasswordQuality:I

.field mActivePasswordRecoverable:Z

.field final mAdminList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;",
            ">;"
        }
    .end annotation
.end field

.field final mAdminMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/content/ComponentName;",
            "Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;",
            ">;"
        }
    .end annotation
.end field

.field mAttachmentsEnabled:Z

.field final mContext:Landroid/content/Context;

.field mFailedPasswordAttempts:I

.field mIPowerManager:Landroid/os/IPowerManager;

.field mMaxAttachmentSize:I

.field final mMonitor:Lcom/android/server/DevicePolicyManagerService$MyPackageMonitor;

.field mNotifyChanges:Z

.field mPasswordOwner:I

.field final mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 5
    .parameter "context"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 577
    invoke-direct {p0}, Landroid/app/admin/IDevicePolicyManager$Stub;-><init>()V

    .line 94
    iput v3, p0, Lcom/android/server/DevicePolicyManagerService;->mActivePasswordQuality:I

    .line 95
    iput v3, p0, Lcom/android/server/DevicePolicyManagerService;->mActivePasswordLength:I

    .line 96
    iput v3, p0, Lcom/android/server/DevicePolicyManagerService;->mFailedPasswordAttempts:I

    .line 98
    iput-boolean v3, p0, Lcom/android/server/DevicePolicyManagerService;->mActivePasswordRecoverable:Z

    .line 99
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/android/server/DevicePolicyManagerService;->mActivePasswordExpires:J

    .line 101
    iput v3, p0, Lcom/android/server/DevicePolicyManagerService;->mActivePasswordComplexChars:I

    .line 102
    iput-boolean v3, p0, Lcom/android/server/DevicePolicyManagerService;->mActivePasswordHasSymbol:Z

    .line 104
    iput-boolean v4, p0, Lcom/android/server/DevicePolicyManagerService;->mAttachmentsEnabled:Z

    .line 105
    iput v3, p0, Lcom/android/server/DevicePolicyManagerService;->mMaxAttachmentSize:I

    .line 112
    iput-boolean v4, p0, Lcom/android/server/DevicePolicyManagerService;->mNotifyChanges:Z

    .line 115
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/server/DevicePolicyManagerService;->mPasswordOwner:I

    .line 117
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/DevicePolicyManagerService;->mAdminMap:Ljava/util/HashMap;

    .line 119
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/DevicePolicyManagerService;->mAdminList:Ljava/util/ArrayList;

    .line 578
    iput-object p1, p0, Lcom/android/server/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    .line 579
    new-instance v1, Lcom/android/server/DevicePolicyManagerService$MyPackageMonitor;

    invoke-direct {v1, p0}, Lcom/android/server/DevicePolicyManagerService$MyPackageMonitor;-><init>(Lcom/android/server/DevicePolicyManagerService;)V

    iput-object v1, p0, Lcom/android/server/DevicePolicyManagerService;->mMonitor:Lcom/android/server/DevicePolicyManagerService$MyPackageMonitor;

    .line 580
    iget-object v1, p0, Lcom/android/server/DevicePolicyManagerService;->mMonitor:Lcom/android/server/DevicePolicyManagerService$MyPackageMonitor;

    invoke-virtual {v1, p1, v4}, Lcom/android/server/DevicePolicyManagerService$MyPackageMonitor;->register(Landroid/content/Context;Z)V

    .line 581
    const-string v1, "power"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    const-string v2, "DPM"

    invoke-virtual {v1, v4, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/DevicePolicyManagerService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 585
    :try_start_0
    const-string v1, "application_policy"

    new-instance v2, Lcom/android/server/enterprise/ApplicationPolicy;

    iget-object v3, p0, Lcom/android/server/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/android/server/enterprise/ApplicationPolicy;-><init>(Landroid/content/Context;)V

    invoke-static {v1, v2}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 586
    const-string v1, "eas_account_policy"

    new-instance v2, Lcom/android/server/enterprise/ExchangeAccountPolicy;

    iget-object v3, p0, Lcom/android/server/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/android/server/enterprise/ExchangeAccountPolicy;-><init>(Landroid/content/Context;)V

    invoke-static {v1, v2}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 587
    const-string v1, "roaming_policy"

    new-instance v2, Lcom/android/server/enterprise/RoamingPolicy;

    iget-object v3, p0, Lcom/android/server/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/android/server/enterprise/RoamingPolicy;-><init>(Landroid/content/Context;)V

    invoke-static {v1, v2}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 590
    const-string v1, "misc_policy"

    new-instance v2, Lcom/android/server/enterprise/MiscPolicy;

    iget-object v3, p0, Lcom/android/server/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/android/server/enterprise/MiscPolicy;-><init>(Landroid/content/Context;)V

    invoke-static {v1, v2}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 597
    :goto_0
    return-void

    .line 592
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 593
    .local v0, e:Ljava/lang/Throwable;
    const-string v1, "DevicePolicyManagerService"

    const-string v2, "Failure creating Application Policy"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private getIPowerManager()Landroid/os/IPowerManager;
    .locals 2

    .prologue
    .line 600
    iget-object v1, p0, Lcom/android/server/DevicePolicyManagerService;->mIPowerManager:Landroid/os/IPowerManager;

    if-nez v1, :cond_0

    .line 601
    const-string v1, "power"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 602
    .local v0, b:Landroid/os/IBinder;
    invoke-static {v0}, Landroid/os/IPowerManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IPowerManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/DevicePolicyManagerService;->mIPowerManager:Landroid/os/IPowerManager;

    .line 604
    .end local v0           #b:Landroid/os/IBinder;
    :cond_0
    iget-object v1, p0, Lcom/android/server/DevicePolicyManagerService;->mIPowerManager:Landroid/os/IPowerManager;

    return-object v1
.end method

.method private loadSettingsLocked()V
    .locals 21

    .prologue
    .line 796
    invoke-static {}, Lcom/android/server/DevicePolicyManagerService;->makeJournaledFile()Lcom/android/internal/util/JournaledFile;

    move-result-object v7

    .line 797
    .local v7, journal:Lcom/android/internal/util/JournaledFile;
    const/4 v11, 0x0

    .line 798
    .local v11, stream:Ljava/io/FileInputStream;
    invoke-virtual {v7}, Lcom/android/internal/util/JournaledFile;->chooseForRead()Ljava/io/File;

    move-result-object v6

    .line 800
    .local v6, file:Ljava/io/File;
    :try_start_0
    new-instance v12, Ljava/io/FileInputStream;

    invoke-direct {v12, v6}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_f
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_e
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_d
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_c
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_b
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_a

    .line 801
    .end local v11           #stream:Ljava/io/FileInputStream;
    .local v12, stream:Ljava/io/FileInputStream;
    :try_start_1
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v10

    .line 802
    .local v10, parser:Lorg/xmlpull/v1/XmlPullParser;
    const/16 v18, 0x0

    move-object v0, v10

    move-object v1, v12

    move-object/from16 v2, v18

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 806
    :cond_0
    invoke-interface {v10}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v16

    .local v16, type:I
    const/16 v18, 0x1

    move/from16 v0, v16

    move/from16 v1, v18

    if-eq v0, v1, :cond_1

    const/16 v18, 0x2

    move/from16 v0, v16

    move/from16 v1, v18

    if-ne v0, v1, :cond_0

    .line 808
    :cond_1
    invoke-interface {v10}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v13

    .line 809
    .local v13, tag:Ljava/lang/String;
    const-string v18, "policies"

    move-object/from16 v0, v18

    move-object v1, v13

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_6

    move-result v18

    if-nez v18, :cond_6

    .line 811
    if-eqz v12, :cond_2

    .line 812
    :try_start_2
    invoke-virtual {v12}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_8
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_6

    .line 816
    :cond_2
    :goto_0
    :try_start_3
    new-instance v18, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Settings do not start with policies tag: found "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object v1, v13

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-direct/range {v18 .. v19}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v18
    :try_end_3
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_5
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_3 .. :try_end_3} :catch_6

    .line 881
    .end local v10           #parser:Lorg/xmlpull/v1/XmlPullParser;
    .end local v13           #tag:Ljava/lang/String;
    .end local v16           #type:I
    :catch_0
    move-exception v18

    move-object/from16 v5, v18

    move-object v11, v12

    .line 882
    .end local v12           #stream:Ljava/io/FileInputStream;
    .local v5, e:Ljava/lang/NullPointerException;
    .restart local v11       #stream:Ljava/io/FileInputStream;
    :goto_1
    const-string v18, "DevicePolicyManagerService"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "failed parsing "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object v1, v6

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 895
    .end local v5           #e:Ljava/lang/NullPointerException;
    :goto_2
    if-eqz v11, :cond_3

    .line 896
    :try_start_4
    invoke-virtual {v11}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_9

    .line 906
    :cond_3
    :goto_3
    new-instance v17, Lcom/android/internal/widget/LockPatternUtils;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    invoke-direct/range {v17 .. v18}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    .line 907
    .local v17, utils:Lcom/android/internal/widget/LockPatternUtils;
    invoke-virtual/range {v17 .. v17}, Lcom/android/internal/widget/LockPatternUtils;->getActivePasswordQuality()I

    move-result v18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/DevicePolicyManagerService;->mActivePasswordQuality:I

    move/from16 v19, v0

    move/from16 v0, v18

    move/from16 v1, v19

    if-ge v0, v1, :cond_4

    .line 908
    const-string v18, "DevicePolicyManagerService"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Active password quality 0x"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/DevicePolicyManagerService;->mActivePasswordQuality:I

    move/from16 v20, v0

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " does not match actual quality 0x"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v17 .. v17}, Lcom/android/internal/widget/LockPatternUtils;->getActivePasswordQuality()I

    move-result v20

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 912
    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/DevicePolicyManagerService;->mActivePasswordQuality:I

    .line 913
    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/DevicePolicyManagerService;->mActivePasswordLength:I

    .line 914
    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/DevicePolicyManagerService;->mActivePasswordComplexChars:I

    .line 915
    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/DevicePolicyManagerService;->mActivePasswordHasSymbol:Z

    .line 918
    :cond_4
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/DevicePolicyManagerService;->validatePasswordOwnerLocked()V

    .line 920
    const/16 v18, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/server/DevicePolicyManagerService;->getMaximumTimeToLock(Landroid/content/ComponentName;)J

    move-result-wide v14

    .line 921
    .local v14, timeMs:J
    const-wide/16 v18, 0x0

    cmp-long v18, v14, v18

    if-gtz v18, :cond_5

    .line 922
    const-wide/32 v14, 0x7fffffff

    .line 925
    :cond_5
    :try_start_5
    invoke-direct/range {p0 .. p0}, Lcom/android/server/DevicePolicyManagerService;->getIPowerManager()Landroid/os/IPowerManager;

    move-result-object v18

    move-wide v0, v14

    long-to-int v0, v0

    move/from16 v19, v0

    invoke-interface/range {v18 .. v19}, Landroid/os/IPowerManager;->setMaximumScreenOffTimeount(I)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_7

    .line 929
    :goto_4
    return-void

    .line 819
    .end local v11           #stream:Ljava/io/FileInputStream;
    .end local v14           #timeMs:J
    .end local v17           #utils:Lcom/android/internal/widget/LockPatternUtils;
    .restart local v10       #parser:Lorg/xmlpull/v1/XmlPullParser;
    .restart local v12       #stream:Ljava/io/FileInputStream;
    .restart local v13       #tag:Ljava/lang/String;
    .restart local v16       #type:I
    :cond_6
    :try_start_6
    invoke-interface {v10}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v16

    .line 820
    invoke-interface {v10}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v9

    .line 822
    .local v9, outerDepth:I
    :cond_7
    :goto_5
    invoke-interface {v10}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v16

    const/16 v18, 0x1

    move/from16 v0, v16

    move/from16 v1, v18

    if-eq v0, v1, :cond_e

    const/16 v18, 0x3

    move/from16 v0, v16

    move/from16 v1, v18

    if-ne v0, v1, :cond_8

    invoke-interface {v10}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v18

    move/from16 v0, v18

    move v1, v9

    if-le v0, v1, :cond_e

    .line 823
    :cond_8
    const/16 v18, 0x3

    move/from16 v0, v16

    move/from16 v1, v18

    if-eq v0, v1, :cond_7

    const/16 v18, 0x4

    move/from16 v0, v16

    move/from16 v1, v18

    if-eq v0, v1, :cond_7

    .line 826
    invoke-interface {v10}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v13

    .line 827
    const-string v18, "admin"

    move-object/from16 v0, v18

    move-object v1, v13

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_9

    .line 828
    const/16 v18, 0x0

    const-string v19, "name"

    move-object v0, v10

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_6
    .catch Ljava/lang/NullPointerException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_6 .. :try_end_6} :catch_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_6 .. :try_end_6} :catch_3
    .catch Ljava/io/FileNotFoundException; {:try_start_6 .. :try_end_6} :catch_4
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_6 .. :try_end_6} :catch_6

    move-result-object v8

    .line 830
    .local v8, name:Ljava/lang/String;
    :try_start_7
    invoke-static {v8}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/server/DevicePolicyManagerService;->findAdmin(Landroid/content/ComponentName;)Landroid/app/admin/DeviceAdminInfo;

    move-result-object v4

    .line 832
    .local v4, dai:Landroid/app/admin/DeviceAdminInfo;
    if-eqz v4, :cond_7

    .line 833
    new-instance v3, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    invoke-direct {v3, v4}, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;-><init>(Landroid/app/admin/DeviceAdminInfo;)V

    .line 834
    .local v3, ap:Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    invoke-virtual {v3, v10}, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->readFromXml(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 835
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/DevicePolicyManagerService;->mAdminMap:Ljava/util/HashMap;

    move-object/from16 v18, v0

    move-object v0, v3

    iget-object v0, v0, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->info:Landroid/app/admin/DeviceAdminInfo;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/app/admin/DeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move-object v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 836
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/DevicePolicyManagerService;->mAdminList:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object v1, v3

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_7
    .catch Ljava/lang/RuntimeException; {:try_start_7 .. :try_end_7} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_7 .. :try_end_7} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_7 .. :try_end_7} :catch_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_7 .. :try_end_7} :catch_3
    .catch Ljava/io/FileNotFoundException; {:try_start_7 .. :try_end_7} :catch_4
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_7 .. :try_end_7} :catch_6

    goto/16 :goto_5

    .line 838
    .end local v3           #ap:Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    .end local v4           #dai:Landroid/app/admin/DeviceAdminInfo;
    :catch_1
    move-exception v18

    move-object/from16 v5, v18

    .line 839
    .local v5, e:Ljava/lang/RuntimeException;
    :try_start_8
    const-string v18, "DevicePolicyManagerService"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Failed loading admin "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object v1, v8

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move-object v2, v5

    invoke-static {v0, v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_8
    .catch Ljava/lang/NullPointerException; {:try_start_8 .. :try_end_8} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_8 .. :try_end_8} :catch_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_8 .. :try_end_8} :catch_3
    .catch Ljava/io/FileNotFoundException; {:try_start_8 .. :try_end_8} :catch_4
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_5
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_8 .. :try_end_8} :catch_6

    goto/16 :goto_5

    .line 883
    .end local v5           #e:Ljava/lang/RuntimeException;
    .end local v8           #name:Ljava/lang/String;
    .end local v9           #outerDepth:I
    .end local v10           #parser:Lorg/xmlpull/v1/XmlPullParser;
    .end local v13           #tag:Ljava/lang/String;
    .end local v16           #type:I
    :catch_2
    move-exception v18

    move-object/from16 v5, v18

    move-object v11, v12

    .line 884
    .end local v12           #stream:Ljava/io/FileInputStream;
    .local v5, e:Ljava/lang/NumberFormatException;
    .restart local v11       #stream:Ljava/io/FileInputStream;
    :goto_6
    const-string v18, "DevicePolicyManagerService"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "failed parsing "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object v1, v6

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 841
    .end local v5           #e:Ljava/lang/NumberFormatException;
    .end local v11           #stream:Ljava/io/FileInputStream;
    .restart local v9       #outerDepth:I
    .restart local v10       #parser:Lorg/xmlpull/v1/XmlPullParser;
    .restart local v12       #stream:Ljava/io/FileInputStream;
    .restart local v13       #tag:Ljava/lang/String;
    .restart local v16       #type:I
    :cond_9
    :try_start_9
    const-string v18, "failed-password-attempts"

    move-object/from16 v0, v18

    move-object v1, v13

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_a

    .line 842
    const/16 v18, 0x0

    const-string v19, "value"

    move-object v0, v10

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/DevicePolicyManagerService;->mFailedPasswordAttempts:I

    .line 844
    invoke-static {v10}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_9
    .catch Ljava/lang/NullPointerException; {:try_start_9 .. :try_end_9} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_9 .. :try_end_9} :catch_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_9 .. :try_end_9} :catch_3
    .catch Ljava/io/FileNotFoundException; {:try_start_9 .. :try_end_9} :catch_4
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_5
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_9 .. :try_end_9} :catch_6

    goto/16 :goto_5

    .line 885
    .end local v9           #outerDepth:I
    .end local v10           #parser:Lorg/xmlpull/v1/XmlPullParser;
    .end local v13           #tag:Ljava/lang/String;
    .end local v16           #type:I
    :catch_3
    move-exception v18

    move-object/from16 v5, v18

    move-object v11, v12

    .line 886
    .end local v12           #stream:Ljava/io/FileInputStream;
    .local v5, e:Lorg/xmlpull/v1/XmlPullParserException;
    .restart local v11       #stream:Ljava/io/FileInputStream;
    :goto_7
    const-string v18, "DevicePolicyManagerService"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "failed parsing "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object v1, v6

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 845
    .end local v5           #e:Lorg/xmlpull/v1/XmlPullParserException;
    .end local v11           #stream:Ljava/io/FileInputStream;
    .restart local v9       #outerDepth:I
    .restart local v10       #parser:Lorg/xmlpull/v1/XmlPullParser;
    .restart local v12       #stream:Ljava/io/FileInputStream;
    .restart local v13       #tag:Ljava/lang/String;
    .restart local v16       #type:I
    :cond_a
    :try_start_a
    const-string v18, "password-owner"

    move-object/from16 v0, v18

    move-object v1, v13

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_b

    .line 846
    const/16 v18, 0x0

    const-string v19, "value"

    move-object v0, v10

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/DevicePolicyManagerService;->mPasswordOwner:I

    .line 848
    invoke-static {v10}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_5

    .line 887
    .end local v9           #outerDepth:I
    .end local v10           #parser:Lorg/xmlpull/v1/XmlPullParser;
    .end local v13           #tag:Ljava/lang/String;
    .end local v16           #type:I
    :catch_4
    move-exception v18

    move-object v11, v12

    .end local v12           #stream:Ljava/io/FileInputStream;
    .restart local v11       #stream:Ljava/io/FileInputStream;
    goto/16 :goto_2

    .line 849
    .end local v11           #stream:Ljava/io/FileInputStream;
    .restart local v9       #outerDepth:I
    .restart local v10       #parser:Lorg/xmlpull/v1/XmlPullParser;
    .restart local v12       #stream:Ljava/io/FileInputStream;
    .restart local v13       #tag:Ljava/lang/String;
    .restart local v16       #type:I
    :cond_b
    const-string v18, "active-password"

    move-object/from16 v0, v18

    move-object v1, v13

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_c

    .line 850
    const/16 v18, 0x0

    const-string v19, "quality"

    move-object v0, v10

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/DevicePolicyManagerService;->mActivePasswordQuality:I

    .line 852
    const/16 v18, 0x0

    const-string v19, "length"

    move-object v0, v10

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/DevicePolicyManagerService;->mActivePasswordLength:I

    .line 855
    const/16 v18, 0x0

    const-string v19, "recoverable"

    move-object v0, v10

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/DevicePolicyManagerService;->mActivePasswordRecoverable:Z

    .line 857
    const/16 v18, 0x0

    const-string v19, "expires"

    move-object v0, v10

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v18

    move-wide/from16 v0, v18

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/server/DevicePolicyManagerService;->mActivePasswordExpires:J

    .line 860
    const/16 v18, 0x0

    const-string v19, "countComplex"

    move-object v0, v10

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/DevicePolicyManagerService;->mActivePasswordComplexChars:I

    .line 862
    const/16 v18, 0x0

    const-string v19, "hasSymbol"

    move-object v0, v10

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/DevicePolicyManagerService;->mActivePasswordHasSymbol:Z

    .line 866
    invoke-static {v10}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_a
    .catch Ljava/lang/NullPointerException; {:try_start_a .. :try_end_a} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_a .. :try_end_a} :catch_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_a .. :try_end_a} :catch_3
    .catch Ljava/io/FileNotFoundException; {:try_start_a .. :try_end_a} :catch_4
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_5
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_a .. :try_end_a} :catch_6

    goto/16 :goto_5

    .line 889
    .end local v9           #outerDepth:I
    .end local v10           #parser:Lorg/xmlpull/v1/XmlPullParser;
    .end local v13           #tag:Ljava/lang/String;
    .end local v16           #type:I
    :catch_5
    move-exception v18

    move-object/from16 v5, v18

    move-object v11, v12

    .line 890
    .end local v12           #stream:Ljava/io/FileInputStream;
    .local v5, e:Ljava/io/IOException;
    .restart local v11       #stream:Ljava/io/FileInputStream;
    :goto_8
    const-string v18, "DevicePolicyManagerService"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "failed parsing "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object v1, v6

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 869
    .end local v5           #e:Ljava/io/IOException;
    .end local v11           #stream:Ljava/io/FileInputStream;
    .restart local v9       #outerDepth:I
    .restart local v10       #parser:Lorg/xmlpull/v1/XmlPullParser;
    .restart local v12       #stream:Ljava/io/FileInputStream;
    .restart local v13       #tag:Ljava/lang/String;
    .restart local v16       #type:I
    :cond_c
    :try_start_b
    const-string v18, "attachments"

    move-object/from16 v0, v18

    move-object v1, v13

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_d

    .line 870
    const/16 v18, 0x0

    const-string v19, "enabled"

    move-object v0, v10

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/DevicePolicyManagerService;->mAttachmentsEnabled:Z

    .line 872
    const/16 v18, 0x0

    const-string v19, "maxSize"

    move-object v0, v10

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/DevicePolicyManagerService;->mMaxAttachmentSize:I
    :try_end_b
    .catch Ljava/lang/NullPointerException; {:try_start_b .. :try_end_b} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_b .. :try_end_b} :catch_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_b .. :try_end_b} :catch_3
    .catch Ljava/io/FileNotFoundException; {:try_start_b .. :try_end_b} :catch_4
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_5
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_b .. :try_end_b} :catch_6

    goto/16 :goto_5

    .line 891
    .end local v9           #outerDepth:I
    .end local v10           #parser:Lorg/xmlpull/v1/XmlPullParser;
    .end local v13           #tag:Ljava/lang/String;
    .end local v16           #type:I
    :catch_6
    move-exception v18

    move-object/from16 v5, v18

    move-object v11, v12

    .line 892
    .end local v12           #stream:Ljava/io/FileInputStream;
    .local v5, e:Ljava/lang/IndexOutOfBoundsException;
    .restart local v11       #stream:Ljava/io/FileInputStream;
    :goto_9
    const-string v18, "DevicePolicyManagerService"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "failed parsing "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object v1, v6

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 877
    .end local v5           #e:Ljava/lang/IndexOutOfBoundsException;
    .end local v11           #stream:Ljava/io/FileInputStream;
    .restart local v9       #outerDepth:I
    .restart local v10       #parser:Lorg/xmlpull/v1/XmlPullParser;
    .restart local v12       #stream:Ljava/io/FileInputStream;
    .restart local v13       #tag:Ljava/lang/String;
    .restart local v16       #type:I
    :cond_d
    :try_start_c
    const-string v18, "DevicePolicyManagerService"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Unknown tag: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object v1, v13

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 878
    invoke-static {v10}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_c
    .catch Ljava/lang/NullPointerException; {:try_start_c .. :try_end_c} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_c .. :try_end_c} :catch_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_c .. :try_end_c} :catch_3
    .catch Ljava/io/FileNotFoundException; {:try_start_c .. :try_end_c} :catch_4
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_5
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_c .. :try_end_c} :catch_6

    goto/16 :goto_5

    :cond_e
    move-object v11, v12

    .line 893
    .end local v12           #stream:Ljava/io/FileInputStream;
    .restart local v11       #stream:Ljava/io/FileInputStream;
    goto/16 :goto_2

    .line 926
    .end local v9           #outerDepth:I
    .end local v10           #parser:Lorg/xmlpull/v1/XmlPullParser;
    .end local v13           #tag:Ljava/lang/String;
    .end local v16           #type:I
    .restart local v14       #timeMs:J
    .restart local v17       #utils:Lcom/android/internal/widget/LockPatternUtils;
    :catch_7
    move-exception v18

    move-object/from16 v5, v18

    .line 927
    .local v5, e:Landroid/os/RemoteException;
    const-string v18, "DevicePolicyManagerService"

    const-string v19, "Failure talking with power manager"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move-object v2, v5

    invoke-static {v0, v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_4

    .line 814
    .end local v5           #e:Landroid/os/RemoteException;
    .end local v11           #stream:Ljava/io/FileInputStream;
    .end local v14           #timeMs:J
    .end local v17           #utils:Lcom/android/internal/widget/LockPatternUtils;
    .restart local v10       #parser:Lorg/xmlpull/v1/XmlPullParser;
    .restart local v12       #stream:Ljava/io/FileInputStream;
    .restart local v13       #tag:Ljava/lang/String;
    .restart local v16       #type:I
    :catch_8
    move-exception v18

    goto/16 :goto_0

    .line 898
    .end local v10           #parser:Lorg/xmlpull/v1/XmlPullParser;
    .end local v12           #stream:Ljava/io/FileInputStream;
    .end local v13           #tag:Ljava/lang/String;
    .end local v16           #type:I
    .restart local v11       #stream:Ljava/io/FileInputStream;
    :catch_9
    move-exception v18

    goto/16 :goto_3

    .line 891
    :catch_a
    move-exception v18

    move-object/from16 v5, v18

    goto :goto_9

    .line 889
    :catch_b
    move-exception v18

    move-object/from16 v5, v18

    goto/16 :goto_8

    .line 887
    :catch_c
    move-exception v18

    goto/16 :goto_2

    .line 885
    :catch_d
    move-exception v18

    move-object/from16 v5, v18

    goto/16 :goto_7

    .line 883
    :catch_e
    move-exception v18

    move-object/from16 v5, v18

    goto/16 :goto_6

    .line 881
    :catch_f
    move-exception v18

    move-object/from16 v5, v18

    goto/16 :goto_1
.end method

.method private static makeJournaledFile()Lcom/android/internal/util/JournaledFile;
    .locals 5

    .prologue
    .line 700
    const-string v0, "/data/system/device_policies.xml"

    .line 701
    .local v0, base:Ljava/lang/String;
    new-instance v1, Lcom/android/internal/util/JournaledFile;

    new-instance v2, Ljava/io/File;

    const-string v3, "/data/system/device_policies.xml"

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v3, Ljava/io/File;

    const-string v4, "/data/system/device_policies.xml.tmp"

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2, v3}, Lcom/android/internal/util/JournaledFile;-><init>(Ljava/io/File;Ljava/io/File;)V

    return-object v1
.end method

.method private saveSettingsLocked()V
    .locals 12

    .prologue
    const-string v8, "failed-password-attempts"

    const-string v8, "attachments"

    const-string v8, "admin"

    const-string v8, "active-password"

    .line 705
    invoke-static {}, Lcom/android/server/DevicePolicyManagerService;->makeJournaledFile()Lcom/android/internal/util/JournaledFile;

    move-result-object v4

    .line 706
    .local v4, journal:Lcom/android/internal/util/JournaledFile;
    const/4 v6, 0x0

    .line 708
    .local v6, stream:Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v7, Ljava/io/FileOutputStream;

    invoke-virtual {v4}, Lcom/android/internal/util/JournaledFile;->chooseForWrite()Ljava/io/File;

    move-result-object v8

    const/4 v9, 0x0

    invoke-direct {v7, v8, v9}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 709
    .end local v6           #stream:Ljava/io/FileOutputStream;
    .local v7, stream:Ljava/io/FileOutputStream;
    :try_start_1
    new-instance v5, Lcom/android/internal/util/FastXmlSerializer;

    invoke-direct {v5}, Lcom/android/internal/util/FastXmlSerializer;-><init>()V

    .line 710
    .local v5, out:Lorg/xmlpull/v1/XmlSerializer;
    const-string v8, "utf-8"

    invoke-interface {v5, v7, v8}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 711
    const/4 v8, 0x0

    const/4 v9, 0x1

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-interface {v5, v8, v9}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 713
    const/4 v8, 0x0

    const-string v9, "policies"

    invoke-interface {v5, v8, v9}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 715
    iget-object v8, p0, Lcom/android/server/DevicePolicyManagerService;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 716
    .local v0, N:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, v0, :cond_1

    .line 717
    iget-object v8, p0, Lcom/android/server/DevicePolicyManagerService;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    .line 718
    .local v1, ap:Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    if-eqz v1, :cond_0

    .line 719
    const/4 v8, 0x0

    const-string v9, "admin"

    invoke-interface {v5, v8, v9}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 720
    const/4 v8, 0x0

    const-string v9, "name"

    iget-object v10, v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->info:Landroid/app/admin/DeviceAdminInfo;

    invoke-virtual {v10}, Landroid/app/admin/DeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v5, v8, v9, v10}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 721
    invoke-virtual {v1, v5}, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->writeToXml(Lorg/xmlpull/v1/XmlSerializer;)V

    .line 722
    const/4 v8, 0x0

    const-string v9, "admin"

    invoke-interface {v5, v8, v9}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 716
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 726
    .end local v1           #ap:Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    :cond_1
    iget v8, p0, Lcom/android/server/DevicePolicyManagerService;->mPasswordOwner:I

    if-ltz v8, :cond_2

    .line 727
    const/4 v8, 0x0

    const-string v9, "password-owner"

    invoke-interface {v5, v8, v9}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 728
    const/4 v8, 0x0

    const-string v9, "value"

    iget v10, p0, Lcom/android/server/DevicePolicyManagerService;->mPasswordOwner:I

    invoke-static {v10}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v5, v8, v9, v10}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 729
    const/4 v8, 0x0

    const-string v9, "password-owner"

    invoke-interface {v5, v8, v9}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 732
    :cond_2
    iget v8, p0, Lcom/android/server/DevicePolicyManagerService;->mFailedPasswordAttempts:I

    if-eqz v8, :cond_3

    .line 733
    const/4 v8, 0x0

    const-string v9, "failed-password-attempts"

    invoke-interface {v5, v8, v9}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 734
    const/4 v8, 0x0

    const-string v9, "value"

    iget v10, p0, Lcom/android/server/DevicePolicyManagerService;->mFailedPasswordAttempts:I

    invoke-static {v10}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v5, v8, v9, v10}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 735
    const/4 v8, 0x0

    const-string v9, "failed-password-attempts"

    invoke-interface {v5, v8, v9}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 738
    :cond_3
    iget v8, p0, Lcom/android/server/DevicePolicyManagerService;->mActivePasswordQuality:I

    if-nez v8, :cond_4

    iget v8, p0, Lcom/android/server/DevicePolicyManagerService;->mActivePasswordLength:I

    if-nez v8, :cond_4

    iget-wide v8, p0, Lcom/android/server/DevicePolicyManagerService;->mActivePasswordExpires:J

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    if-nez v8, :cond_4

    iget-boolean v8, p0, Lcom/android/server/DevicePolicyManagerService;->mActivePasswordRecoverable:Z

    if-nez v8, :cond_4

    iget v8, p0, Lcom/android/server/DevicePolicyManagerService;->mActivePasswordComplexChars:I

    if-nez v8, :cond_4

    iget-boolean v8, p0, Lcom/android/server/DevicePolicyManagerService;->mActivePasswordHasSymbol:Z

    if-eqz v8, :cond_5

    .line 743
    :cond_4
    const/4 v8, 0x0

    const-string v9, "active-password"

    invoke-interface {v5, v8, v9}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 744
    const/4 v8, 0x0

    const-string v9, "quality"

    iget v10, p0, Lcom/android/server/DevicePolicyManagerService;->mActivePasswordQuality:I

    invoke-static {v10}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v5, v8, v9, v10}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 745
    const/4 v8, 0x0

    const-string v9, "length"

    iget v10, p0, Lcom/android/server/DevicePolicyManagerService;->mActivePasswordLength:I

    invoke-static {v10}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v5, v8, v9, v10}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 747
    const/4 v8, 0x0

    const-string v9, "recoverable"

    iget-boolean v10, p0, Lcom/android/server/DevicePolicyManagerService;->mActivePasswordRecoverable:Z

    invoke-static {v10}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v5, v8, v9, v10}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 748
    const/4 v8, 0x0

    const-string v9, "expires"

    iget-wide v10, p0, Lcom/android/server/DevicePolicyManagerService;->mActivePasswordExpires:J

    invoke-static {v10, v11}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v5, v8, v9, v10}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 750
    const/4 v8, 0x0

    const-string v9, "countComplex"

    iget v10, p0, Lcom/android/server/DevicePolicyManagerService;->mActivePasswordComplexChars:I

    invoke-static {v10}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v5, v8, v9, v10}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 751
    const/4 v8, 0x0

    const-string v9, "hasSymbol"

    iget-boolean v10, p0, Lcom/android/server/DevicePolicyManagerService;->mActivePasswordHasSymbol:Z

    invoke-static {v10}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v5, v8, v9, v10}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 754
    const/4 v8, 0x0

    const-string v9, "active-password"

    invoke-interface {v5, v8, v9}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 758
    :cond_5
    iget-boolean v8, p0, Lcom/android/server/DevicePolicyManagerService;->mAttachmentsEnabled:Z

    if-eqz v8, :cond_6

    iget v8, p0, Lcom/android/server/DevicePolicyManagerService;->mMaxAttachmentSize:I

    if-eqz v8, :cond_7

    .line 759
    :cond_6
    const/4 v8, 0x0

    const-string v9, "attachments"

    invoke-interface {v5, v8, v9}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 760
    const/4 v8, 0x0

    const-string v9, "enabled"

    iget-boolean v10, p0, Lcom/android/server/DevicePolicyManagerService;->mAttachmentsEnabled:Z

    invoke-static {v10}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v5, v8, v9, v10}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 761
    const/4 v8, 0x0

    const-string v9, "maxSize"

    iget v10, p0, Lcom/android/server/DevicePolicyManagerService;->mMaxAttachmentSize:I

    invoke-static {v10}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v5, v8, v9, v10}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 762
    const/4 v8, 0x0

    const-string v9, "attachments"

    invoke-interface {v5, v8, v9}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 766
    :cond_7
    const/4 v8, 0x0

    const-string v9, "policies"

    invoke-interface {v5, v8, v9}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 768
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    .line 769
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V

    .line 770
    invoke-virtual {v4}, Lcom/android/internal/util/JournaledFile;->commit()V

    .line 771
    invoke-direct {p0}, Lcom/android/server/DevicePolicyManagerService;->sendChangedNotification()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    move-object v6, v7

    .line 782
    .end local v0           #N:I
    .end local v3           #i:I
    .end local v5           #out:Lorg/xmlpull/v1/XmlSerializer;
    .end local v7           #stream:Ljava/io/FileOutputStream;
    .restart local v6       #stream:Ljava/io/FileOutputStream;
    :goto_1
    return-void

    .line 772
    :catch_0
    move-exception v8

    move-object v2, v8

    .line 774
    .local v2, e:Ljava/io/IOException;
    :goto_2
    if-eqz v6, :cond_8

    .line 775
    :try_start_2
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 780
    :cond_8
    :goto_3
    invoke-virtual {v4}, Lcom/android/internal/util/JournaledFile;->rollback()V

    goto :goto_1

    .line 777
    :catch_1
    move-exception v8

    goto :goto_3

    .line 772
    .end local v2           #e:Ljava/io/IOException;
    .end local v6           #stream:Ljava/io/FileOutputStream;
    .restart local v7       #stream:Ljava/io/FileOutputStream;
    :catch_2
    move-exception v8

    move-object v2, v8

    move-object v6, v7

    .end local v7           #stream:Ljava/io/FileOutputStream;
    .restart local v6       #stream:Ljava/io/FileOutputStream;
    goto :goto_2
.end method

.method private sendChangedNotification()V
    .locals 2

    .prologue
    .line 786
    iget-boolean v1, p0, Lcom/android/server/DevicePolicyManagerService;->mNotifyChanges:Z

    if-nez v1, :cond_0

    .line 793
    :goto_0
    return-void

    .line 790
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.app.action.DEVICE_POLICY_MANAGER_STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 791
    .local v0, intent:Landroid/content/Intent;
    const/high16 v1, 0x4000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 792
    iget-object v1, p0, Lcom/android/server/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method static validateQualityConstant(I)V
    .locals 3
    .parameter "quality"

    .prologue
    .line 932
    sparse-switch p0, :sswitch_data_0

    .line 940
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid quality constant: 0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 938
    :sswitch_0
    return-void

    .line 932
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x10000 -> :sswitch_0
        0x20000 -> :sswitch_0
        0x40000 -> :sswitch_0
        0x50000 -> :sswitch_0
    .end sparse-switch
.end method


# virtual methods
.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 6
    .parameter "fd"
    .parameter "pw"
    .parameter "args"

    .prologue
    .line 2816
    iget-object v4, p0, Lcom/android/server/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    const-string v5, "android.permission.DUMP"

    invoke-virtual {v4, v5}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v4

    if-eqz v4, :cond_0

    .line 2819
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Permission Denial: can\'t dump DevicePolicyManagerService from from pid="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", uid="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2852
    :goto_0
    return-void

    .line 2825
    :cond_0
    new-instance v3, Landroid/util/PrintWriterPrinter;

    invoke-direct {v3, p2}, Landroid/util/PrintWriterPrinter;-><init>(Ljava/io/PrintWriter;)V

    .line 2827
    .local v3, p:Landroid/util/Printer;
    monitor-enter p0

    .line 2828
    :try_start_0
    const-string v4, "Current Device Policy Manager state:"

    invoke-interface {v3, v4}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 2830
    const-string v4, "  Enabled Device Admins:"

    invoke-interface {v3, v4}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 2831
    iget-object v4, p0, Lcom/android/server/DevicePolicyManagerService;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 2832
    .local v0, N:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    if-ge v2, v0, :cond_2

    .line 2833
    iget-object v4, p0, Lcom/android/server/DevicePolicyManagerService;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    .line 2834
    .local v1, ap:Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    if-eqz v1, :cond_1

    .line 2835
    const-string v4, "  "

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v4, v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->info:Landroid/app/admin/DeviceAdminInfo;

    invoke-virtual {v4}, Landroid/app/admin/DeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2836
    const-string v4, ":"

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2837
    const-string v4, "    "

    invoke-virtual {v1, v4, p2}, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 2832
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 2841
    .end local v1           #ap:Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    :cond_2
    const-string v4, " "

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2842
    const-string v4, "  mActivePasswordQuality=0x"

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2843
    iget v4, p0, Lcom/android/server/DevicePolicyManagerService;->mActivePasswordQuality:I

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2844
    const-string v4, "  mActivePasswordLength="

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v4, p0, Lcom/android/server/DevicePolicyManagerService;->mActivePasswordLength:I

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(I)V

    .line 2845
    const-string v4, "  mFailedPasswordAttempts="

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v4, p0, Lcom/android/server/DevicePolicyManagerService;->mFailedPasswordAttempts:I

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(I)V

    .line 2846
    const-string v4, "  mPasswordOwner="

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v4, p0, Lcom/android/server/DevicePolicyManagerService;->mPasswordOwner:I

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(I)V

    .line 2848
    const-string v4, "  mActivePasswordComplexChars="

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v4, p0, Lcom/android/server/DevicePolicyManagerService;->mActivePasswordComplexChars:I

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(I)V

    .line 2849
    const-string v4, "  mActivePasswordHasSymbol="

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v4, p0, Lcom/android/server/DevicePolicyManagerService;->mActivePasswordHasSymbol:Z

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Z)V

    .line 2851
    monitor-exit p0

    goto/16 :goto_0

    .end local v0           #N:I
    .end local v2           #i:I
    :catchall_0
    move-exception v4

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method

.method public findAdmin(Landroid/content/ComponentName;)Landroid/app/admin/DeviceAdminInfo;
    .locals 9
    .parameter "adminName"

    .prologue
    const/4 v6, 0x0

    const-string v8, "DevicePolicyManagerService"

    const-string v7, "Bad device admin requested: "

    .line 680
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 681
    .local v2, resolveIntent:Landroid/content/Intent;
    invoke-virtual {v2, p1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 682
    iget-object v3, p0, Lcom/android/server/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const/16 v4, 0x80

    invoke-virtual {v3, v2, v4}, Landroid/content/pm/PackageManager;->queryBroadcastReceivers(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    .line 684
    .local v1, infos:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-gtz v3, :cond_1

    .line 685
    :cond_0
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown admin: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 689
    :cond_1
    :try_start_0
    new-instance v3, Landroid/app/admin/DeviceAdminInfo;

    iget-object v4, p0, Lcom/android/server/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    const/4 v5, 0x0

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/content/pm/ResolveInfo;

    invoke-direct {v3, v4, p0}, Landroid/app/admin/DeviceAdminInfo;-><init>(Landroid/content/Context;Landroid/content/pm/ResolveInfo;)V
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 695
    :goto_0
    return-object v3

    .line 690
    :catch_0
    move-exception v3

    move-object v0, v3

    .line 691
    .local v0, e:Lorg/xmlpull/v1/XmlPullParserException;
    const-string v3, "DevicePolicyManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Bad device admin requested: "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v8, v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v3, v6

    .line 692
    goto :goto_0

    .line 693
    .end local v0           #e:Lorg/xmlpull/v1/XmlPullParserException;
    :catch_1
    move-exception v3

    move-object v0, v3

    .line 694
    .local v0, e:Ljava/io/IOException;
    const-string v3, "DevicePolicyManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Bad device admin requested: "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v8, v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v3, v6

    .line 695
    goto :goto_0
.end method

.method public generateRecoveryPassword(Landroid/content/ComponentName;)Ljava/lang/String;
    .locals 7
    .parameter "who"

    .prologue
    .line 2919
    const/4 v4, 0x0

    .line 2921
    .local v4, recoveryPassword:Ljava/lang/String;
    monitor-enter p0

    .line 2922
    if-nez p1, :cond_0

    .line 2923
    :try_start_0
    new-instance v5, Ljava/lang/NullPointerException;

    const-string v6, "ComponentName is null"

    invoke-direct {v5, v6}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 2940
    :catchall_0
    move-exception v5

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5

    .line 2925
    :cond_0
    const/4 v5, 0x5

    :try_start_1
    invoke-virtual {p0, p1, v5}, Lcom/android/server/DevicePolicyManagerService;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v0

    .line 2928
    .local v0, ap:Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide v1

    .line 2930
    .local v1, ident:J
    :try_start_2
    new-instance v3, Lcom/android/internal/widget/LockPatternUtils;

    iget-object v5, p0, Lcom/android/server/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v3, v5}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    .line 2931
    .local v3, lockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;
    invoke-virtual {v3}, Lcom/android/internal/widget/LockPatternUtils;->getRecoveryPassword()Ljava/lang/String;

    move-result-object v4

    .line 2932
    const-string v5, "DevicePolicyManagerService"

    const-string v6, "generateRecoveryPassword"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2934
    if-eqz v4, :cond_1

    .line 2935
    invoke-static {v4}, Landroid/deviceencryption/DeviceEncryptionManager;->saveRecoveryPassword(Ljava/lang/String;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 2938
    :cond_1
    :try_start_3
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2940
    monitor-exit p0

    .line 2942
    return-object v4

    .line 2938
    .end local v3           #lockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;
    :catchall_1
    move-exception v5

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
.end method

.method getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    .locals 8
    .parameter "who"
    .parameter "reqPolicy"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    const-string v7, "Admin "

    .line 619
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    .line 620
    .local v2, callingUid:I
    if-eqz p1, :cond_2

    .line 621
    iget-object v4, p0, Lcom/android/server/DevicePolicyManagerService;->mAdminMap:Ljava/util/HashMap;

    invoke-virtual {v4, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    .line 622
    .local v1, admin:Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    if-nez v1, :cond_0

    .line 623
    new-instance v4, Ljava/lang/SecurityException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "No active admin "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 625
    :cond_0
    invoke-virtual {v1}, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->getUid()I

    move-result v4

    if-eq v4, v2, :cond_1

    .line 626
    new-instance v4, Ljava/lang/SecurityException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Admin "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " is not owned by uid "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 629
    :cond_1
    iget-object v4, v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->info:Landroid/app/admin/DeviceAdminInfo;

    invoke-virtual {v4, p2}, Landroid/app/admin/DeviceAdminInfo;->usesPolicy(I)Z

    move-result v4

    if-nez v4, :cond_3

    .line 630
    new-instance v4, Ljava/lang/SecurityException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Admin "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->info:Landroid/app/admin/DeviceAdminInfo;

    invoke-virtual {v6}, Landroid/app/admin/DeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " did not specify uses-policy for: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->info:Landroid/app/admin/DeviceAdminInfo;

    invoke-virtual {v6, p2}, Landroid/app/admin/DeviceAdminInfo;->getTagForPolicy(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 636
    .end local v1           #admin:Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    :cond_2
    iget-object v4, p0, Lcom/android/server/DevicePolicyManagerService;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 637
    .local v0, N:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, v0, :cond_5

    .line 638
    iget-object v4, p0, Lcom/android/server/DevicePolicyManagerService;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    .line 639
    .restart local v1       #admin:Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    invoke-virtual {v1}, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->getUid()I

    move-result v4

    if-ne v4, v2, :cond_4

    iget-object v4, v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->info:Landroid/app/admin/DeviceAdminInfo;

    invoke-virtual {v4, p2}, Landroid/app/admin/DeviceAdminInfo;->usesPolicy(I)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 640
    .end local v0           #N:I
    .end local v3           #i:I
    :cond_3
    return-object v1

    .line 637
    .restart local v0       #N:I
    .restart local v3       #i:I
    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 643
    .end local v1           #admin:Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    :cond_5
    new-instance v4, Ljava/lang/SecurityException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "No active admin owned by uid "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " for policy #"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method getActiveAdminUncheckedLocked(Landroid/content/ComponentName;)Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    .locals 3
    .parameter "who"

    .prologue
    .line 608
    iget-object v1, p0, Lcom/android/server/DevicePolicyManagerService;->mAdminMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    .line 609
    .local v0, admin:Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, v0, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->info:Landroid/app/admin/DeviceAdminInfo;

    invoke-virtual {v2}, Landroid/app/admin/DeviceAdminInfo;->getActivityInfo()Landroid/content/pm/ActivityInfo;

    move-result-object v2

    iget-object v2, v2, Landroid/content/pm/ComponentInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, v0, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->info:Landroid/app/admin/DeviceAdminInfo;

    invoke-virtual {v2}, Landroid/app/admin/DeviceAdminInfo;->getActivityInfo()Landroid/content/pm/ActivityInfo;

    move-result-object v2

    iget-object v2, v2, Landroid/content/pm/ComponentInfo;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    move-object v1, v0

    .line 614
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getActiveAdmins()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1001
    monitor-enter p0

    .line 1002
    :try_start_0
    iget-object v3, p0, Lcom/android/server/DevicePolicyManagerService;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1003
    .local v0, N:I
    if-gtz v0, :cond_0

    .line 1004
    const/4 v3, 0x0

    monitor-exit p0

    .line 1010
    :goto_0
    return-object v3

    .line 1006
    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 1007
    .local v2, res:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ComponentName;>;"
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, v0, :cond_1

    .line 1008
    iget-object v3, p0, Lcom/android/server/DevicePolicyManagerService;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    iget-object v3, v3, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->info:Landroid/app/admin/DeviceAdminInfo;

    invoke-virtual {v3}, Landroid/app/admin/DeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1007
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1010
    :cond_1
    monitor-exit p0

    move-object v3, v2

    goto :goto_0

    .line 1011
    .end local v0           #N:I
    .end local v1           #i:I
    .end local v2           #res:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ComponentName;>;"
    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method public getAllowBluetoothMode(Landroid/content/ComponentName;)I
    .locals 5
    .parameter "who"

    .prologue
    .line 1970
    monitor-enter p0

    .line 1971
    const/4 v3, 0x2

    .line 1973
    .local v3, value:I
    if-eqz p1, :cond_1

    .line 1974
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/DevicePolicyManagerService;->getActiveAdminUncheckedLocked(Landroid/content/ComponentName;)Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v1

    .line 1975
    .local v1, admin:Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    if-eqz v1, :cond_0

    iget v4, v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->allowBluetoothMode:I

    :goto_0
    monitor-exit p0

    .line 1985
    .end local v1           #admin:Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    :goto_1
    return v4

    .restart local v1       #admin:Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    :cond_0
    move v4, v3

    .line 1975
    goto :goto_0

    .line 1978
    .end local v1           #admin:Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    :cond_1
    iget-object v4, p0, Lcom/android/server/DevicePolicyManagerService;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1979
    .local v0, N:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_2
    if-ge v2, v0, :cond_3

    .line 1980
    iget-object v4, p0, Lcom/android/server/DevicePolicyManagerService;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    .line 1981
    .restart local v1       #admin:Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    const/4 v4, 0x2

    if-ne v3, v4, :cond_2

    .line 1982
    iget v3, v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->allowBluetoothMode:I

    .line 1979
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 1985
    .end local v1           #admin:Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    :cond_3
    monitor-exit p0

    move v4, v3

    goto :goto_1

    .line 1986
    .end local v0           #N:I
    .end local v2           #i:I
    :catchall_0
    move-exception v4

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method

.method public getAllowBrowser(Landroid/content/ComponentName;)Z
    .locals 5
    .parameter "who"

    .prologue
    .line 1850
    monitor-enter p0

    .line 1851
    const/4 v3, 0x1

    .line 1853
    .local v3, value:Z
    if-eqz p1, :cond_1

    .line 1854
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/DevicePolicyManagerService;->getActiveAdminUncheckedLocked(Landroid/content/ComponentName;)Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v1

    .line 1855
    .local v1, admin:Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    if-eqz v1, :cond_0

    iget-boolean v4, v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->allowBrowser:Z

    :goto_0
    monitor-exit p0

    .line 1865
    .end local v1           #admin:Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    :goto_1
    return v4

    .restart local v1       #admin:Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    :cond_0
    move v4, v3

    .line 1855
    goto :goto_0

    .line 1858
    .end local v1           #admin:Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    :cond_1
    iget-object v4, p0, Lcom/android/server/DevicePolicyManagerService;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1859
    .local v0, N:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_2
    if-ge v2, v0, :cond_3

    .line 1860
    iget-object v4, p0, Lcom/android/server/DevicePolicyManagerService;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    .line 1861
    .restart local v1       #admin:Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    const/4 v4, 0x1

    if-ne v3, v4, :cond_2

    .line 1862
    iget-boolean v3, v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->allowBrowser:Z

    .line 1859
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 1865
    .end local v1           #admin:Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    :cond_3
    monitor-exit p0

    move v4, v3

    goto :goto_1

    .line 1866
    .end local v0           #N:I
    .end local v2           #i:I
    :catchall_0
    move-exception v4

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method

.method public getAllowCamera(Landroid/content/ComponentName;)Z
    .locals 5
    .parameter "who"

    .prologue
    .line 1650
    monitor-enter p0

    .line 1651
    const/4 v3, 0x1

    .line 1653
    .local v3, value:Z
    if-eqz p1, :cond_1

    .line 1654
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/DevicePolicyManagerService;->getActiveAdminUncheckedLocked(Landroid/content/ComponentName;)Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v1

    .line 1655
    .local v1, admin:Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    if-eqz v1, :cond_0

    iget-boolean v4, v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->allowCamera:Z

    :goto_0
    monitor-exit p0

    .line 1665
    .end local v1           #admin:Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    :goto_1
    return v4

    .restart local v1       #admin:Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    :cond_0
    move v4, v3

    .line 1655
    goto :goto_0

    .line 1658
    .end local v1           #admin:Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    :cond_1
    iget-object v4, p0, Lcom/android/server/DevicePolicyManagerService;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1659
    .local v0, N:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_2
    if-ge v2, v0, :cond_3

    .line 1660
    iget-object v4, p0, Lcom/android/server/DevicePolicyManagerService;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    .line 1661
    .restart local v1       #admin:Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    const/4 v4, 0x1

    if-ne v3, v4, :cond_2

    .line 1662
    iget-boolean v3, v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->allowCamera:Z

    .line 1659
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 1665
    .end local v1           #admin:Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    :cond_3
    monitor-exit p0

    move v4, v3

    goto :goto_1

    .line 1666
    .end local v0           #N:I
    .end local v2           #i:I
    :catchall_0
    move-exception v4

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method

.method public getAllowDesktopSync(Landroid/content/ComponentName;)Z
    .locals 5
    .parameter "who"

    .prologue
    .line 2450
    monitor-enter p0

    .line 2451
    const/4 v3, 0x1

    .line 2453
    .local v3, value:Z
    if-eqz p1, :cond_1

    .line 2454
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/DevicePolicyManagerService;->getActiveAdminUncheckedLocked(Landroid/content/ComponentName;)Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v1

    .line 2455
    .local v1, admin:Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    if-eqz v1, :cond_0

    iget-boolean v4, v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->allowDesktopSync:Z

    :goto_0
    monitor-exit p0

    .line 2465
    .end local v1           #admin:Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    :goto_1
    return v4

    .restart local v1       #admin:Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    :cond_0
    move v4, v3

    .line 2455
    goto :goto_0

    .line 2458
    .end local v1           #admin:Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    :cond_1
    iget-object v4, p0, Lcom/android/server/DevicePolicyManagerService;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 2459
    .local v0, N:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_2
    if-ge v2, v0, :cond_3

    .line 2460
    iget-object v4, p0, Lcom/android/server/DevicePolicyManagerService;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    .line 2461
    .restart local v1       #admin:Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    const/4 v4, 0x1

    if-ne v3, v4, :cond_2

    .line 2462
    iget-boolean v3, v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->allowDesktopSync:Z

    .line 2459
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 2465
    .end local v1           #admin:Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    :cond_3
    monitor-exit p0

    move v4, v3

    goto :goto_1

    .line 2466
    .end local v0           #N:I
    .end local v2           #i:I
    :catchall_0
    move-exception v4

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method

.method public getAllowHTMLEmail(Landroid/content/ComponentName;)Z
    .locals 5
    .parameter "who"

    .prologue
    .line 1810
    monitor-enter p0

    .line 1811
    const/4 v3, 0x1

    .line 1813
    .local v3, value:Z
    if-eqz p1, :cond_1

    .line 1814
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/DevicePolicyManagerService;->getActiveAdminUncheckedLocked(Landroid/content/ComponentName;)Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v1

    .line 1815
    .local v1, admin:Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    if-eqz v1, :cond_0

    iget-boolean v4, v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->allowHTMLEmail:Z

    :goto_0
    monitor-exit p0

    .line 1825
    .end local v1           #admin:Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    :goto_1
    return v4

    .restart local v1       #admin:Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    :cond_0
    move v4, v3

    .line 1815
    goto :goto_0

    .line 1818
    .end local v1           #admin:Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    :cond_1
    iget-object v4, p0, Lcom/android/server/DevicePolicyManagerService;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1819
    .local v0, N:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_2
    if-ge v2, v0, :cond_3

    .line 1820
    iget-object v4, p0, Lcom/android/server/DevicePolicyManagerService;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    .line 1821
    .restart local v1       #admin:Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    const/4 v4, 0x1

    if-ne v3, v4, :cond_2

    .line 1822
    iget-boolean v3, v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->allowHTMLEmail:Z

    .line 1819
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 1825
    .end local v1           #admin:Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    :cond_3
    monitor-exit p0

    move v4, v3

    goto :goto_1

    .line 1826
    .end local v0           #N:I
    .end local v2           #i:I
    :catchall_0
    move-exception v4

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method

.method public getAllowInternetSharing(Landroid/content/ComponentName;)Z
    .locals 5
    .parameter "who"

    .prologue
    .line 1890
    monitor-enter p0

    .line 1891
    const/4 v3, 0x1

    .line 1893
    .local v3, value:Z
    if-eqz p1, :cond_1

    .line 1894
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/DevicePolicyManagerService;->getActiveAdminUncheckedLocked(Landroid/content/ComponentName;)Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v1

    .line 1895
    .local v1, admin:Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    if-eqz v1, :cond_0

    iget-boolean v4, v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->allowInternetSharing:Z

    :goto_0
    monitor-exit p0

    .line 1905
    .end local v1           #admin:Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    :goto_1
    return v4

    .restart local v1       #admin:Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    :cond_0
    move v4, v3

    .line 1895
    goto :goto_0

    .line 1898
    .end local v1           #admin:Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    :cond_1
    iget-object v4, p0, Lcom/android/server/DevicePolicyManagerService;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1899
    .local v0, N:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_2
    if-ge v2, v0, :cond_3

    .line 1900
    iget-object v4, p0, Lcom/android/server/DevicePolicyManagerService;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    .line 1901
    .restart local v1       #admin:Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    const/4 v4, 0x1

    if-ne v3, v4, :cond_2

    .line 1902
    iget-boolean v3, v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->allowInternetSharing:Z

    .line 1899
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 1905
    .end local v1           #admin:Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    :cond_3
    monitor-exit p0

    move v4, v3

    goto :goto_1

    .line 1906
    .end local v0           #N:I
    .end local v2           #i:I
    :catchall_0
    move-exception v4

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method

.method public getAllowIrDA(Landroid/content/ComponentName;)Z
    .locals 5
    .parameter "who"

    .prologue
    .line 2490
    monitor-enter p0

    .line 2491
    const/4 v3, 0x1

    .line 2493
    .local v3, value:Z
    if-eqz p1, :cond_1

    .line 2494
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/DevicePolicyManagerService;->getActiveAdminUncheckedLocked(Landroid/content/ComponentName;)Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v1

    .line 2495
    .local v1, admin:Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    if-eqz v1, :cond_0

    iget-boolean v4, v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->allowIrDA:Z

    :goto_0
    monitor-exit p0

    .line 2505
    .end local v1           #admin:Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    :goto_1
    return v4

    .restart local v1       #admin:Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    :cond_0
    move v4, v3

    .line 2495
    goto :goto_0

    .line 2498
    .end local v1           #admin:Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    :cond_1
    iget-object v4, p0, Lcom/android/server/DevicePolicyManagerService;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 2499
    .local v0, N:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_2
    if-ge v2, v0, :cond_3

    .line 2500
    iget-object v4, p0, Lcom/android/server/DevicePolicyManagerService;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    .line 2501
    .restart local v1       #admin:Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    const/4 v4, 0x1

    if-ne v3, v4, :cond_2

    .line 2502
    iget-boolean v3, v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->allowIrDA:Z

    .line 2499
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 2505
    .end local v1           #admin:Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    :cond_3
    monitor-exit p0

    move v4, v3

    goto :goto_1

    .line 2506
    .end local v0           #N:I
    .end local v2           #i:I
    :catchall_0
    move-exception v4

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method

.method public getAllowPOPIMAPEmail(Landroid/content/ComponentName;)Z
    .locals 5
    .parameter "who"

    .prologue
    .line 1770
    monitor-enter p0

    .line 1771
    const/4 v3, 0x1

    .line 1773
    .local v3, value:Z
    if-eqz p1, :cond_1

    .line 1774
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/DevicePolicyManagerService;->getActiveAdminUncheckedLocked(Landroid/content/ComponentName;)Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v1

    .line 1775
    .local v1, admin:Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    if-eqz v1, :cond_0

    iget-boolean v4, v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->allowPOPIMAPEmail:Z

    :goto_0
    monitor-exit p0

    .line 1785
    .end local v1           #admin:Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    :goto_1
    return v4

    .restart local v1       #admin:Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    :cond_0
    move v4, v3

    .line 1775
    goto :goto_0

    .line 1778
    .end local v1           #admin:Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    :cond_1
    iget-object v4, p0, Lcom/android/server/DevicePolicyManagerService;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1779
    .local v0, N:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_2
    if-ge v2, v0, :cond_3

    .line 1780
    iget-object v4, p0, Lcom/android/server/DevicePolicyManagerService;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    .line 1781
    .restart local v1       #admin:Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    const/4 v4, 0x1

    if-ne v3, v4, :cond_2

    .line 1782
    iget-boolean v3, v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->allowPOPIMAPEmail:Z

    .line 1779
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 1785
    .end local v1           #admin:Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    :cond_3
    monitor-exit p0

    move v4, v3

    goto :goto_1

    .line 1786
    .end local v0           #N:I
    .end local v2           #i:I
    :catchall_0
    move-exception v4

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method

.method public getAllowSMIMEEncryptionAlgorithmNegotiation(Landroid/content/ComponentName;)Z
    .locals 5
    .parameter "who"

    .prologue
    .line 2370
    monitor-enter p0

    .line 2371
    const/4 v3, 0x1

    .line 2373
    .local v3, value:Z
    if-eqz p1, :cond_1

    .line 2374
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/DevicePolicyManagerService;->getActiveAdminUncheckedLocked(Landroid/content/ComponentName;)Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v1

    .line 2375
    .local v1, admin:Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    if-eqz v1, :cond_0

    iget-boolean v4, v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->allowSMIMEEncryptionAlgorithmNegotiation:Z

    :goto_0
    monitor-exit p0

    .line 2385
    .end local v1           #admin:Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    :goto_1
    return v4

    .restart local v1       #admin:Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    :cond_0
    move v4, v3

    .line 2375
    goto :goto_0

    .line 2378
    .end local v1           #admin:Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    :cond_1
    iget-object v4, p0, Lcom/android/server/DevicePolicyManagerService;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 2379
    .local v0, N:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_2
    if-ge v2, v0, :cond_3

    .line 2380
    iget-object v4, p0, Lcom/android/server/DevicePolicyManagerService;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    .line 2381
    .restart local v1       #admin:Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    const/4 v4, 0x1

    if-ne v3, v4, :cond_2

    .line 2382
    iget-boolean v3, v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->allowSMIMEEncryptionAlgorithmNegotiation:Z

    .line 2379
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 2385
    .end local v1           #admin:Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    :cond_3
    monitor-exit p0

    move v4, v3

    goto :goto_1

    .line 2386
    .end local v0           #N:I
    .end local v2           #i:I
    :catchall_0
    move-exception v4

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method

.method public getAllowSMIMESoftCerts(Landroid/content/ComponentName;)Z
    .locals 5
    .parameter "who"

    .prologue
    .line 2410
    monitor-enter p0

    .line 2411
    const/4 v3, 0x1

    .line 2413
    .local v3, value:Z
    if-eqz p1, :cond_1

    .line 2414
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/DevicePolicyManagerService;->getActiveAdminUncheckedLocked(Landroid/content/ComponentName;)Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v1

    .line 2415
    .local v1, admin:Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    if-eqz v1, :cond_0

    iget-boolean v4, v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->allowSMIMESoftCerts:Z

    :goto_0
    monitor-exit p0

    .line 2425
    .end local v1           #admin:Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    :goto_1
    return v4

    .restart local v1       #admin:Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    :cond_0
    move v4, v3

    .line 2415
    goto :goto_0

    .line 2418
    .end local v1           #admin:Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    :cond_1
    iget-object v4, p0, Lcom/android/server/DevicePolicyManagerService;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 2419
    .local v0, N:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_2
    if-ge v2, v0, :cond_3

    .line 2420
    iget-object v4, p0, Lcom/android/server/DevicePolicyManagerService;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    .line 2421
    .restart local v1       #admin:Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    const/4 v4, 0x1

    if-ne v3, v4, :cond_2

    .line 2422
    iget-boolean v3, v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->allowSMIMESoftCerts:Z

    .line 2419
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 2425
    .end local v1           #admin:Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    :cond_3
    monitor-exit p0

    move v4, v3

    goto :goto_1

    .line 2426
    .end local v0           #N:I
    .end local v2           #i:I
    :catchall_0
    move-exception v4

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method

.method public getAllowStorageCard(Landroid/content/ComponentName;)Z
    .locals 5
    .parameter "who"

    .prologue
    .line 1598
    monitor-enter p0

    .line 1599
    const/4 v3, 0x1

    .line 1601
    .local v3, value:Z
    if-eqz p1, :cond_1

    .line 1602
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/DevicePolicyManagerService;->getActiveAdminUncheckedLocked(Landroid/content/ComponentName;)Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v1

    .line 1603
    .local v1, admin:Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    if-eqz v1, :cond_0

    iget-boolean v4, v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->allowStorageCard:Z

    :goto_0
    monitor-exit p0

    .line 1613
    .end local v1           #admin:Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    :goto_1
    return v4

    .restart local v1       #admin:Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    :cond_0
    move v4, v3

    .line 1603
    goto :goto_0

    .line 1606
    .end local v1           #admin:Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    :cond_1
    iget-object v4, p0, Lcom/android/server/DevicePolicyManagerService;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1607
    .local v0, N:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_2
    if-ge v2, v0, :cond_3

    .line 1608
    iget-object v4, p0, Lcom/android/server/DevicePolicyManagerService;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    .line 1609
    .restart local v1       #admin:Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    const/4 v4, 0x1

    if-ne v3, v4, :cond_2

    .line 1610
    iget-boolean v3, v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->allowStorageCard:Z

    .line 1607
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 1613
    .end local v1           #admin:Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    :cond_3
    monitor-exit p0

    move v4, v3

    goto :goto_1

    .line 1614
    .end local v0           #N:I
    .end local v2           #i:I
    :catchall_0
    move-exception v4

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method

.method public getAllowTextMessaging(Landroid/content/ComponentName;)Z
    .locals 5
    .parameter "who"

    .prologue
    .line 1730
    monitor-enter p0

    .line 1731
    const/4 v3, 0x1

    .line 1733
    .local v3, value:Z
    if-eqz p1, :cond_1

    .line 1734
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/DevicePolicyManagerService;->getActiveAdminUncheckedLocked(Landroid/content/ComponentName;)Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v1

    .line 1735
    .local v1, admin:Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    if-eqz v1, :cond_0

    iget-boolean v4, v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->allowTextMessaging:Z

    :goto_0
    monitor-exit p0

    .line 1745
    .end local v1           #admin:Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    :goto_1
    return v4

    .restart local v1       #admin:Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    :cond_0
    move v4, v3

    .line 1735
    goto :goto_0

    .line 1738
    .end local v1           #admin:Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    :cond_1
    iget-object v4, p0, Lcom/android/server/DevicePolicyManagerService;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1739
    .local v0, N:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_2
    if-ge v2, v0, :cond_3

    .line 1740
    iget-object v4, p0, Lcom/android/server/DevicePolicyManagerService;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    .line 1741
    .restart local v1       #admin:Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    const/4 v4, 0x1

    if-ne v3, v4, :cond_2

    .line 1742
    iget-boolean v3, v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->allowTextMessaging:Z

    .line 1739
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 1745
    .end local v1           #admin:Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    :cond_3
    monitor-exit p0

    move v4, v3

    goto :goto_1

    .line 1746
    .end local v0           #N:I
    .end local v2           #i:I
    :catchall_0
    move-exception v4

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method

.method public getAllowWifi(Landroid/content/ComponentName;)Z
    .locals 5
    .parameter "who"

    .prologue
    .line 1690
    monitor-enter p0

    .line 1691
    const/4 v3, 0x1

    .line 1693
    .local v3, value:Z
    if-eqz p1, :cond_1

    .line 1694
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/DevicePolicyManagerService;->getActiveAdminUncheckedLocked(Landroid/content/ComponentName;)Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v1

    .line 1695
    .local v1, admin:Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    if-eqz v1, :cond_0

    iget-boolean v4, v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->allowWifi:Z

    :goto_0
    monitor-exit p0

    .line 1705
    .end local v1           #admin:Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    :goto_1
    return v4

    .restart local v1       #admin:Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    :cond_0
    move v4, v3

    .line 1695
    goto :goto_0

    .line 1698
    .end local v1           #admin:Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    :cond_1
    iget-object v4, p0, Lcom/android/server/DevicePolicyManagerService;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1699
    .local v0, N:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_2
    if-ge v2, v0, :cond_3

    .line 1700
    iget-object v4, p0, Lcom/android/server/DevicePolicyManagerService;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    .line 1701
    .restart local v1       #admin:Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    const/4 v4, 0x1

    if-ne v3, v4, :cond_2

    .line 1702
    iget-boolean v3, v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->allowWifi:Z

    .line 1699
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 1705
    .end local v1           #admin:Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    :cond_3
    monitor-exit p0

    move v4, v3

    goto :goto_1

    .line 1706
    .end local v0           #N:I
    .end local v2           #i:I
    :catchall_0
    move-exception v4

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method

.method public getAttachmentsEnabled(Landroid/content/ComponentName;)Z
    .locals 5
    .parameter "who"

    .prologue
    .line 1513
    monitor-enter p0

    .line 1514
    const/4 v3, 0x1

    .line 1516
    .local v3, value:Z
    if-eqz p1, :cond_1

    .line 1517
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/DevicePolicyManagerService;->getActiveAdminUncheckedLocked(Landroid/content/ComponentName;)Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v1

    .line 1518
    .local v1, admin:Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    if-eqz v1, :cond_0

    iget-boolean v4, v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->attachmentsEnabled:Z

    :goto_0
    monitor-exit p0

    .line 1528
    .end local v1           #admin:Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    :goto_1
    return v4

    .restart local v1       #admin:Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    :cond_0
    move v4, v3

    .line 1518
    goto :goto_0

    .line 1521
    .end local v1           #admin:Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    :cond_1
    iget-object v4, p0, Lcom/android/server/DevicePolicyManagerService;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1522
    .local v0, N:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_2
    if-ge v2, v0, :cond_3

    .line 1523
    iget-object v4, p0, Lcom/android/server/DevicePolicyManagerService;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    .line 1524
    .restart local v1       #admin:Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    const/4 v4, 0x1

    if-ne v3, v4, :cond_2

    .line 1525
    iget-boolean v3, v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->attachmentsEnabled:Z

    .line 1522
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 1528
    .end local v1           #admin:Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    :cond_3
    monitor-exit p0

    move v4, v3

    goto :goto_1

    .line 1529
    .end local v0           #N:I
    .end local v2           #i:I
    :catchall_0
    move-exception v4

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method

.method public getCurrentFailedPasswordAttempts()I
    .locals 2

    .prologue
    .line 1177
    monitor-enter p0

    .line 1180
    const/4 v0, 0x0

    const/4 v1, 0x1

    :try_start_0
    invoke-virtual {p0, v0, v1}, Lcom/android/server/DevicePolicyManagerService;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    .line 1182
    iget v0, p0, Lcom/android/server/DevicePolicyManagerService;->mFailedPasswordAttempts:I

    monitor-exit p0

    return v0

    .line 1183
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getMaxAttachmentSize(Landroid/content/ComponentName;)I
    .locals 5
    .parameter "who"

    .prologue
    .line 1553
    monitor-enter p0

    .line 1554
    const/4 v3, 0x0

    .line 1556
    .local v3, size:I
    if-eqz p1, :cond_1

    .line 1557
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/DevicePolicyManagerService;->getActiveAdminUncheckedLocked(Landroid/content/ComponentName;)Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v1

    .line 1558
    .local v1, admin:Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    if-eqz v1, :cond_0

    iget v4, v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->maxAttachmentSize:I

    :goto_0
    monitor-exit p0

    .line 1571
    .end local v1           #admin:Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    :goto_1
    return v4

    .restart local v1       #admin:Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    :cond_0
    move v4, v3

    .line 1558
    goto :goto_0

    .line 1561
    .end local v1           #admin:Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    :cond_1
    iget-object v4, p0, Lcom/android/server/DevicePolicyManagerService;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1562
    .local v0, N:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_2
    if-ge v2, v0, :cond_4

    .line 1563
    iget-object v4, p0, Lcom/android/server/DevicePolicyManagerService;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    .line 1564
    .restart local v1       #admin:Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    if-nez v3, :cond_3

    .line 1565
    iget v3, v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->maxAttachmentSize:I

    .line 1562
    :cond_2
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 1566
    :cond_3
    iget v4, v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->maxAttachmentSize:I

    if-eqz v4, :cond_2

    iget v4, v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->maxAttachmentSize:I

    if-le v3, v4, :cond_2

    .line 1568
    iget v3, v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->maxAttachmentSize:I

    goto :goto_3

    .line 1571
    .end local v1           #admin:Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    :cond_4
    monitor-exit p0

    move v4, v3

    goto :goto_1

    .line 1572
    .end local v0           #N:I
    .end local v2           #i:I
    :catchall_0
    move-exception v4

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method

.method public getMaxCalendarAge(Landroid/content/ComponentName;)I
    .locals 5
    .parameter "who"

    .prologue
    .line 2050
    monitor-enter p0

    .line 2051
    const/4 v3, 0x0

    .line 2053
    .local v3, value:I
    if-eqz p1, :cond_1

    .line 2054
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/DevicePolicyManagerService;->getActiveAdminUncheckedLocked(Landroid/content/ComponentName;)Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v1

    .line 2055
    .local v1, admin:Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    if-eqz v1, :cond_0

    iget v4, v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->maxCalendarAgeFilter:I

    :goto_0
    monitor-exit p0

    .line 2065
    .end local v1           #admin:Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    :goto_1
    return v4

    .line 2055
    .restart local v1       #admin:Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    :cond_0
    const/4 v4, 0x0

    goto :goto_0

    .line 2058
    .end local v1           #admin:Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    :cond_1
    iget-object v4, p0, Lcom/android/server/DevicePolicyManagerService;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 2059
    .local v0, N:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_2
    if-ge v2, v0, :cond_3

    .line 2060
    iget-object v4, p0, Lcom/android/server/DevicePolicyManagerService;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    .line 2061
    .restart local v1       #admin:Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    if-nez v3, :cond_2

    .line 2062
    iget v3, v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->maxCalendarAgeFilter:I

    .line 2059
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 2065
    .end local v1           #admin:Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    :cond_3
    monitor-exit p0

    move v4, v3

    goto :goto_1

    .line 2066
    .end local v0           #N:I
    .end local v2           #i:I
    :catchall_0
    move-exception v4

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method

.method public getMaxEmailAge(Landroid/content/ComponentName;)I
    .locals 5
    .parameter "who"

    .prologue
    .line 2090
    monitor-enter p0

    .line 2091
    const/4 v3, 0x0

    .line 2093
    .local v3, value:I
    if-eqz p1, :cond_1

    .line 2094
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/DevicePolicyManagerService;->getActiveAdminUncheckedLocked(Landroid/content/ComponentName;)Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v1

    .line 2095
    .local v1, admin:Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    if-eqz v1, :cond_0

    iget v4, v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->maxEmailAgeFilter:I

    :goto_0
    monitor-exit p0

    .line 2105
    .end local v1           #admin:Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    :goto_1
    return v4

    .line 2095
    .restart local v1       #admin:Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    :cond_0
    const/4 v4, 0x0

    goto :goto_0

    .line 2098
    .end local v1           #admin:Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    :cond_1
    iget-object v4, p0, Lcom/android/server/DevicePolicyManagerService;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 2099
    .local v0, N:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_2
    if-ge v2, v0, :cond_3

    .line 2100
    iget-object v4, p0, Lcom/android/server/DevicePolicyManagerService;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    .line 2101
    .restart local v1       #admin:Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    if-nez v3, :cond_2

    .line 2102
    iget v3, v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->maxEmailAgeFilter:I

    .line 2099
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 2105
    .end local v1           #admin:Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    :cond_3
    monitor-exit p0

    move v4, v3

    goto :goto_1

    .line 2106
    .end local v0           #N:I
    .end local v2           #i:I
    :catchall_0
    move-exception v4

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method

.method public getMaxEmailBodyTruncSize(Landroid/content/ComponentName;)I
    .locals 5
    .parameter "who"

    .prologue
    .line 2130
    monitor-enter p0

    .line 2131
    const/4 v3, 0x0

    .line 2133
    .local v3, value:I
    if-eqz p1, :cond_1

    .line 2134
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/DevicePolicyManagerService;->getActiveAdminUncheckedLocked(Landroid/content/ComponentName;)Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v1

    .line 2135
    .local v1, admin:Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    if-eqz v1, :cond_0

    iget v4, v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->maxEmailBodyTruncationSize:I

    :goto_0
    monitor-exit p0

    .line 2145
    .end local v1           #admin:Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    :goto_1
    return v4

    .line 2135
    .restart local v1       #admin:Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    :cond_0
    const/4 v4, 0x0

    goto :goto_0

    .line 2138
    .end local v1           #admin:Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    :cond_1
    iget-object v4, p0, Lcom/android/server/DevicePolicyManagerService;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 2139
    .local v0, N:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_2
    if-ge v2, v0, :cond_3

    .line 2140
    iget-object v4, p0, Lcom/android/server/DevicePolicyManagerService;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    .line 2141
    .restart local v1       #admin:Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    if-nez v3, :cond_2

    .line 2142
    iget v3, v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->maxEmailBodyTruncationSize:I

    .line 2139
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 2145
    .end local v1           #admin:Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    :cond_3
    monitor-exit p0

    move v4, v3

    goto :goto_1

    .line 2146
    .end local v0           #N:I
    .end local v2           #i:I
    :catchall_0
    move-exception v4

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method

.method public getMaxHtmlEmailBodyTruncSize(Landroid/content/ComponentName;)I
    .locals 5
    .parameter "who"

    .prologue
    .line 2170
    monitor-enter p0

    .line 2171
    const/4 v3, 0x0

    .line 2173
    .local v3, value:I
    if-eqz p1, :cond_1

    .line 2174
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/DevicePolicyManagerService;->getActiveAdminUncheckedLocked(Landroid/content/ComponentName;)Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v1

    .line 2175
    .local v1, admin:Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    if-eqz v1, :cond_0

    iget v4, v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->maxEmailHtmlBodyTruncationSize:I

    :goto_0
    monitor-exit p0

    .line 2185
    .end local v1           #admin:Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    :goto_1
    return v4

    .line 2175
    .restart local v1       #admin:Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    :cond_0
    const/4 v4, 0x0

    goto :goto_0

    .line 2178
    .end local v1           #admin:Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    :cond_1
    iget-object v4, p0, Lcom/android/server/DevicePolicyManagerService;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 2179
    .local v0, N:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_2
    if-ge v2, v0, :cond_3

    .line 2180
    iget-object v4, p0, Lcom/android/server/DevicePolicyManagerService;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    .line 2181
    .restart local v1       #admin:Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    if-nez v3, :cond_2

    .line 2182
    iget v3, v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->maxEmailHtmlBodyTruncationSize:I

    .line 2179
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 2185
    .end local v1           #admin:Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    :cond_3
    monitor-exit p0

    move v4, v3

    goto :goto_1

    .line 2186
    .end local v0           #N:I
    .end local v2           #i:I
    :catchall_0
    move-exception v4

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method

.method public getMaximumFailedPasswordsForWipe(Landroid/content/ComponentName;)I
    .locals 8
    .parameter "who"

    .prologue
    .line 1210
    monitor-enter p0

    .line 1211
    const/4 v2, 0x0

    .line 1214
    .local v2, count:I
    :try_start_0
    const-string v6, "encryption.bootmode"

    const-string v7, "normal"

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1215
    .local v4, mode:Ljava/lang/String;
    const-string v6, "ram"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1217
    const-string v6, "MaxAttempts"

    invoke-static {v6}, Landroid/deviceencryption/DeviceEncryptionManager;->getFileCryptProperty(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v5

    .line 1219
    .local v5, value:Ljava/lang/String;
    if-eqz v5, :cond_0

    .line 1221
    :try_start_1
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v2

    .line 1224
    :cond_0
    :goto_0
    :try_start_2
    monitor-exit p0

    move v6, v2

    .line 1243
    .end local v5           #value:Ljava/lang/String;
    :goto_1
    return v6

    .line 1228
    :cond_1
    if-eqz p1, :cond_3

    .line 1229
    invoke-virtual {p0, p1}, Lcom/android/server/DevicePolicyManagerService;->getActiveAdminUncheckedLocked(Landroid/content/ComponentName;)Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v1

    .line 1230
    .local v1, admin:Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    if-eqz v1, :cond_2

    iget v6, v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->maximumFailedPasswordsForWipe:I

    :goto_2
    monitor-exit p0

    goto :goto_1

    .line 1244
    .end local v1           #admin:Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    .end local v4           #mode:Ljava/lang/String;
    :catchall_0
    move-exception v6

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v6

    .restart local v1       #admin:Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    .restart local v4       #mode:Ljava/lang/String;
    :cond_2
    move v6, v2

    .line 1230
    goto :goto_2

    .line 1233
    .end local v1           #admin:Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    :cond_3
    :try_start_3
    iget-object v6, p0, Lcom/android/server/DevicePolicyManagerService;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1234
    .local v0, N:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_3
    if-ge v3, v0, :cond_6

    .line 1235
    iget-object v6, p0, Lcom/android/server/DevicePolicyManagerService;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    .line 1236
    .restart local v1       #admin:Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    if-nez v2, :cond_5

    .line 1237
    iget v2, v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->maximumFailedPasswordsForWipe:I

    .line 1234
    :cond_4
    :goto_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 1238
    :cond_5
    iget v6, v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->maximumFailedPasswordsForWipe:I

    if-eqz v6, :cond_4

    iget v6, v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->maximumFailedPasswordsForWipe:I

    if-le v2, v6, :cond_4

    .line 1240
    iget v2, v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->maximumFailedPasswordsForWipe:I

    goto :goto_4

    .line 1243
    .end local v1           #admin:Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    :cond_6
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move v6, v2

    goto :goto_1

    .line 1222
    .end local v0           #N:I
    .end local v3           #i:I
    .restart local v5       #value:Ljava/lang/String;
    :catch_0
    move-exception v6

    goto :goto_0
.end method

.method public getMaximumTimeToLock(Landroid/content/ComponentName;)J
    .locals 9
    .parameter "who"

    .prologue
    const-wide/16 v7, 0x0

    .line 1333
    monitor-enter p0

    .line 1334
    const-wide/16 v3, 0x0

    .line 1336
    .local v3, time:J
    if-eqz p1, :cond_1

    .line 1337
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/DevicePolicyManagerService;->getActiveAdminUncheckedLocked(Landroid/content/ComponentName;)Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v1

    .line 1338
    .local v1, admin:Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    if-eqz v1, :cond_0

    iget-wide v5, v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->maximumTimeToUnlock:J

    :goto_0
    monitor-exit p0

    .line 1351
    .end local v1           #admin:Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    :goto_1
    return-wide v5

    .restart local v1       #admin:Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    :cond_0
    move-wide v5, v3

    .line 1338
    goto :goto_0

    .line 1341
    .end local v1           #admin:Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    :cond_1
    iget-object v5, p0, Lcom/android/server/DevicePolicyManagerService;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1342
    .local v0, N:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_2
    if-ge v2, v0, :cond_4

    .line 1343
    iget-object v5, p0, Lcom/android/server/DevicePolicyManagerService;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    .line 1344
    .restart local v1       #admin:Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    cmp-long v5, v3, v7

    if-nez v5, :cond_3

    .line 1345
    iget-wide v3, v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->maximumTimeToUnlock:J

    .line 1342
    :cond_2
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 1346
    :cond_3
    iget-wide v5, v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->maximumTimeToUnlock:J

    cmp-long v5, v5, v7

    if-eqz v5, :cond_2

    iget-wide v5, v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->maximumTimeToUnlock:J

    cmp-long v5, v3, v5

    if-lez v5, :cond_2

    .line 1348
    iget-wide v3, v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->maximumTimeToUnlock:J

    goto :goto_3

    .line 1351
    .end local v1           #admin:Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    :cond_4
    monitor-exit p0

    move-wide v5, v3

    goto :goto_1

    .line 1352
    .end local v0           #N:I
    .end local v2           #i:I
    :catchall_0
    move-exception v5

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5
.end method

.method public getMinPasswordComplexChars(Landroid/content/ComponentName;)I
    .locals 5
    .parameter "who"

    .prologue
    .line 2010
    monitor-enter p0

    .line 2011
    const/4 v3, 0x0

    .line 2013
    .local v3, value:I
    if-eqz p1, :cond_1

    .line 2014
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/DevicePolicyManagerService;->getActiveAdminUncheckedLocked(Landroid/content/ComponentName;)Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v1

    .line 2015
    .local v1, admin:Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    if-eqz v1, :cond_0

    iget v4, v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->minPasswordComplexChars:I

    :goto_0
    monitor-exit p0

    .line 2025
    .end local v1           #admin:Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    :goto_1
    return v4

    .line 2015
    .restart local v1       #admin:Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    :cond_0
    const/4 v4, 0x0

    goto :goto_0

    .line 2018
    .end local v1           #admin:Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    :cond_1
    iget-object v4, p0, Lcom/android/server/DevicePolicyManagerService;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 2019
    .local v0, N:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_2
    if-ge v2, v0, :cond_3

    .line 2020
    iget-object v4, p0, Lcom/android/server/DevicePolicyManagerService;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    .line 2021
    .restart local v1       #admin:Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    if-nez v3, :cond_2

    .line 2022
    iget v3, v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->minPasswordComplexChars:I

    .line 2019
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 2025
    .end local v1           #admin:Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    :cond_3
    monitor-exit p0

    move v4, v3

    goto :goto_1

    .line 2026
    .end local v0           #N:I
    .end local v2           #i:I
    :catchall_0
    move-exception v4

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method

.method public getPassword(Landroid/content/ComponentName;)Ljava/lang/String;
    .locals 5
    .parameter "who"

    .prologue
    const-string v4, "DevicePolicyManagerService"

    .line 2907
    const-string v2, "DevicePolicyManagerService"

    const-string v2, "TODO: get the password , but only the Hash is present "

    invoke-static {v4, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2908
    new-instance v1, Lcom/android/internal/widget/LockPatternUtils;

    iget-object v2, p0, Lcom/android/server/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    .line 2909
    .local v1, utils:Lcom/android/internal/widget/LockPatternUtils;
    invoke-virtual {v1}, Lcom/android/internal/widget/LockPatternUtils;->getPassword()Ljava/lang/String;

    move-result-object v0

    .line 2910
    .local v0, pwd:Ljava/lang/String;
    const-string v2, "DevicePolicyManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "And the password is  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2911
    return-object v0
.end method

.method public getPasswordExpires(Landroid/content/ComponentName;)I
    .locals 5
    .parameter "who"

    .prologue
    .line 1427
    monitor-enter p0

    .line 1428
    const/4 v3, 0x0

    .line 1430
    .local v3, value:I
    if-eqz p1, :cond_1

    .line 1431
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/DevicePolicyManagerService;->getActiveAdminUncheckedLocked(Landroid/content/ComponentName;)Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v1

    .line 1432
    .local v1, admin:Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    if-eqz v1, :cond_0

    iget v4, v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->passwordExpires:I

    :goto_0
    monitor-exit p0

    .line 1445
    .end local v1           #admin:Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    :goto_1
    return v4

    .line 1432
    .restart local v1       #admin:Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    :cond_0
    const/4 v4, 0x0

    goto :goto_0

    .line 1435
    .end local v1           #admin:Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    :cond_1
    iget-object v4, p0, Lcom/android/server/DevicePolicyManagerService;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1436
    .local v0, N:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_2
    if-ge v2, v0, :cond_4

    .line 1437
    iget-object v4, p0, Lcom/android/server/DevicePolicyManagerService;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    .line 1438
    .restart local v1       #admin:Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    if-nez v3, :cond_3

    .line 1439
    iget v3, v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->passwordExpires:I

    .line 1436
    :cond_2
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 1440
    :cond_3
    iget v4, v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->passwordExpires:I

    if-eqz v4, :cond_2

    iget v4, v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->passwordExpires:I

    if-le v3, v4, :cond_2

    .line 1442
    iget v3, v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->passwordExpires:I

    goto :goto_3

    .line 1445
    .end local v1           #admin:Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    :cond_4
    monitor-exit p0

    move v4, v3

    goto :goto_1

    .line 1446
    .end local v0           #N:I
    .end local v2           #i:I
    :catchall_0
    move-exception v4

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method

.method public getPasswordHistory(Landroid/content/ComponentName;)I
    .locals 5
    .parameter "who"

    .prologue
    .line 1470
    monitor-enter p0

    .line 1471
    const/4 v3, 0x0

    .line 1473
    .local v3, value:I
    if-eqz p1, :cond_1

    .line 1474
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/DevicePolicyManagerService;->getActiveAdminUncheckedLocked(Landroid/content/ComponentName;)Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v1

    .line 1475
    .local v1, admin:Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    if-eqz v1, :cond_0

    iget v4, v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->passwordHistory:I

    :goto_0
    monitor-exit p0

    .line 1488
    .end local v1           #admin:Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    :goto_1
    return v4

    .line 1475
    .restart local v1       #admin:Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    :cond_0
    const/4 v4, 0x0

    goto :goto_0

    .line 1478
    .end local v1           #admin:Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    :cond_1
    iget-object v4, p0, Lcom/android/server/DevicePolicyManagerService;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1479
    .local v0, N:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_2
    if-ge v2, v0, :cond_4

    .line 1480
    iget-object v4, p0, Lcom/android/server/DevicePolicyManagerService;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    .line 1481
    .restart local v1       #admin:Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    if-nez v3, :cond_3

    .line 1482
    iget v3, v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->passwordHistory:I

    .line 1479
    :cond_2
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 1483
    :cond_3
    iget v4, v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->passwordHistory:I

    if-eqz v4, :cond_2

    iget v4, v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->passwordHistory:I

    if-le v3, v4, :cond_2

    .line 1485
    iget v3, v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->passwordHistory:I

    goto :goto_3

    .line 1488
    .end local v1           #admin:Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    :cond_4
    monitor-exit p0

    move v4, v3

    goto :goto_1

    .line 1489
    .end local v0           #N:I
    .end local v2           #i:I
    :catchall_0
    move-exception v4

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method

.method public getPasswordMinimumLength(Landroid/content/ComponentName;)I
    .locals 5
    .parameter "who"

    .prologue
    .line 1124
    monitor-enter p0

    .line 1125
    const/4 v3, 0x0

    .line 1127
    .local v3, length:I
    if-eqz p1, :cond_1

    .line 1128
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/DevicePolicyManagerService;->getActiveAdminUncheckedLocked(Landroid/content/ComponentName;)Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v1

    .line 1129
    .local v1, admin:Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    if-eqz v1, :cond_0

    iget v4, v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->minimumPasswordLength:I

    :goto_0
    monitor-exit p0

    .line 1139
    .end local v1           #admin:Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    :goto_1
    return v4

    .restart local v1       #admin:Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    :cond_0
    move v4, v3

    .line 1129
    goto :goto_0

    .line 1132
    .end local v1           #admin:Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    :cond_1
    iget-object v4, p0, Lcom/android/server/DevicePolicyManagerService;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1133
    .local v0, N:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_2
    if-ge v2, v0, :cond_3

    .line 1134
    iget-object v4, p0, Lcom/android/server/DevicePolicyManagerService;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    .line 1135
    .restart local v1       #admin:Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    iget v4, v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->minimumPasswordLength:I

    if-ge v3, v4, :cond_2

    .line 1136
    iget v3, v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->minimumPasswordLength:I

    .line 1133
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 1139
    .end local v1           #admin:Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    :cond_3
    monitor-exit p0

    move v4, v3

    goto :goto_1

    .line 1140
    .end local v0           #N:I
    .end local v2           #i:I
    :catchall_0
    move-exception v4

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method

.method public getPasswordQuality(Landroid/content/ComponentName;)I
    .locals 5
    .parameter "who"

    .prologue
    .line 1090
    monitor-enter p0

    .line 1091
    const/4 v3, 0x0

    .line 1093
    .local v3, mode:I
    if-eqz p1, :cond_1

    .line 1094
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/DevicePolicyManagerService;->getActiveAdminUncheckedLocked(Landroid/content/ComponentName;)Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v1

    .line 1095
    .local v1, admin:Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    if-eqz v1, :cond_0

    iget v4, v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->passwordQuality:I

    :goto_0
    monitor-exit p0

    .line 1105
    .end local v1           #admin:Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    :goto_1
    return v4

    .restart local v1       #admin:Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    :cond_0
    move v4, v3

    .line 1095
    goto :goto_0

    .line 1098
    .end local v1           #admin:Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    :cond_1
    iget-object v4, p0, Lcom/android/server/DevicePolicyManagerService;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1099
    .local v0, N:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_2
    if-ge v2, v0, :cond_3

    .line 1100
    iget-object v4, p0, Lcom/android/server/DevicePolicyManagerService;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    .line 1101
    .restart local v1       #admin:Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    iget v4, v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->passwordQuality:I

    if-ge v3, v4, :cond_2

    .line 1102
    iget v3, v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->passwordQuality:I

    .line 1099
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 1105
    .end local v1           #admin:Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    :cond_3
    monitor-exit p0

    move v4, v3

    goto :goto_1

    .line 1106
    .end local v0           #N:I
    .end local v2           #i:I
    :catchall_0
    move-exception v4

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method

.method public getPasswordRecoverable(Landroid/content/ComponentName;)Z
    .locals 5
    .parameter "who"

    .prologue
    .line 1377
    monitor-enter p0

    .line 1378
    const/4 v3, 0x0

    .line 1380
    .local v3, value:Z
    if-eqz p1, :cond_1

    .line 1381
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/DevicePolicyManagerService;->getActiveAdminUncheckedLocked(Landroid/content/ComponentName;)Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v1

    .line 1382
    .local v1, admin:Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    if-eqz v1, :cond_0

    iget-boolean v4, v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->passwordRecoverable:Z

    :goto_0
    monitor-exit p0

    .line 1392
    .end local v1           #admin:Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    :goto_1
    return v4

    .restart local v1       #admin:Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    :cond_0
    move v4, v3

    .line 1382
    goto :goto_0

    .line 1385
    .end local v1           #admin:Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    :cond_1
    iget-object v4, p0, Lcom/android/server/DevicePolicyManagerService;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1386
    .local v0, N:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_2
    if-ge v2, v0, :cond_3

    .line 1387
    iget-object v4, p0, Lcom/android/server/DevicePolicyManagerService;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    .line 1388
    .restart local v1       #admin:Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    if-nez v3, :cond_2

    .line 1389
    iget-boolean v3, v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->passwordRecoverable:Z

    .line 1386
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 1392
    .end local v1           #admin:Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    :cond_3
    monitor-exit p0

    move v4, v3

    goto :goto_1

    .line 1393
    .end local v0           #N:I
    .end local v2           #i:I
    :catchall_0
    move-exception v4

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method

.method public getRemoveWarning(Landroid/content/ComponentName;Landroid/os/RemoteCallback;)V
    .locals 9
    .parameter "comp"
    .parameter "result"

    .prologue
    const/4 v3, 0x0

    .line 2653
    iget-object v0, p0, Lcom/android/server/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.BIND_DEVICE_ADMIN"

    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2656
    monitor-enter p0

    .line 2657
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/DevicePolicyManagerService;->getActiveAdminUncheckedLocked(Landroid/content/ComponentName;)Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v8

    .line 2658
    .local v8, admin:Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    if-nez v8, :cond_0

    .line 2660
    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {p2, v0}, Landroid/os/RemoteCallback;->sendResult(Landroid/os/Bundle;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 2663
    :goto_0
    :try_start_2
    monitor-exit p0

    .line 2677
    :goto_1
    return-void

    .line 2665
    :cond_0
    new-instance v1, Landroid/content/Intent;

    const-string v0, "android.app.action.DEVICE_ADMIN_DISABLE_REQUESTED"

    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2666
    .local v1, intent:Landroid/content/Intent;
    iget-object v0, v8, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->info:Landroid/app/admin/DeviceAdminInfo;

    invoke-virtual {v0}, Landroid/app/admin/DeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 2667
    iget-object v0, p0, Lcom/android/server/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    new-instance v3, Lcom/android/server/DevicePolicyManagerService$1;

    invoke-direct {v3, p0, p2}, Lcom/android/server/DevicePolicyManagerService$1;-><init>(Lcom/android/server/DevicePolicyManagerService;Landroid/os/RemoteCallback;)V

    const/4 v4, 0x0

    const/4 v5, -0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/content/Context;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    .line 2676
    monitor-exit p0

    goto :goto_1

    .end local v1           #intent:Landroid/content/Intent;
    .end local v8           #admin:Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 2661
    .restart local v8       #admin:Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public getRequireDeviceEncryption(Landroid/content/ComponentName;)Z
    .locals 5
    .parameter "who"

    .prologue
    .line 2530
    monitor-enter p0

    .line 2531
    const/4 v3, 0x0

    .line 2533
    .local v3, value:Z
    if-eqz p1, :cond_1

    .line 2534
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/DevicePolicyManagerService;->getActiveAdminUncheckedLocked(Landroid/content/ComponentName;)Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v1

    .line 2535
    .local v1, admin:Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    if-eqz v1, :cond_0

    iget-boolean v4, v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->requireDeviceEncryption:Z

    :goto_0
    monitor-exit p0

    .line 2545
    .end local v1           #admin:Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    :goto_1
    return v4

    .restart local v1       #admin:Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    :cond_0
    move v4, v3

    .line 2535
    goto :goto_0

    .line 2538
    .end local v1           #admin:Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    :cond_1
    iget-object v4, p0, Lcom/android/server/DevicePolicyManagerService;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 2539
    .local v0, N:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_2
    if-ge v2, v0, :cond_3

    .line 2540
    iget-object v4, p0, Lcom/android/server/DevicePolicyManagerService;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    .line 2541
    .restart local v1       #admin:Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    if-nez v3, :cond_2

    .line 2542
    iget-boolean v3, v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->requireDeviceEncryption:Z

    .line 2539
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 2545
    .end local v1           #admin:Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    :cond_3
    monitor-exit p0

    move v4, v3

    goto :goto_1

    .line 2546
    .end local v0           #N:I
    .end local v2           #i:I
    :catchall_0
    move-exception v4

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method

.method public getRequireEncryptedSMIMEMessages(Landroid/content/ComponentName;)Z
    .locals 5
    .parameter "who"

    .prologue
    .line 2250
    monitor-enter p0

    .line 2251
    const/4 v3, 0x0

    .line 2253
    .local v3, value:Z
    if-eqz p1, :cond_1

    .line 2254
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/DevicePolicyManagerService;->getActiveAdminUncheckedLocked(Landroid/content/ComponentName;)Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v1

    .line 2255
    .local v1, admin:Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    if-eqz v1, :cond_0

    iget-boolean v4, v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->requireEncryptedSMIMEMessages:Z

    :goto_0
    monitor-exit p0

    .line 2265
    .end local v1           #admin:Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    :goto_1
    return v4

    .restart local v1       #admin:Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    :cond_0
    move v4, v3

    .line 2255
    goto :goto_0

    .line 2258
    .end local v1           #admin:Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    :cond_1
    iget-object v4, p0, Lcom/android/server/DevicePolicyManagerService;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 2259
    .local v0, N:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_2
    if-ge v2, v0, :cond_3

    .line 2260
    iget-object v4, p0, Lcom/android/server/DevicePolicyManagerService;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    .line 2261
    .restart local v1       #admin:Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    if-nez v3, :cond_2

    .line 2262
    iget-boolean v3, v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->requireEncryptedSMIMEMessages:Z

    .line 2259
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 2265
    .end local v1           #admin:Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    :cond_3
    monitor-exit p0

    move v4, v3

    goto :goto_1

    .line 2266
    .end local v0           #N:I
    .end local v2           #i:I
    :catchall_0
    move-exception v4

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method

.method public getRequireEncryptionSMIMEAlgorithm(Landroid/content/ComponentName;)Z
    .locals 5
    .parameter "who"

    .prologue
    .line 2330
    monitor-enter p0

    .line 2331
    const/4 v3, 0x0

    .line 2333
    .local v3, value:Z
    if-eqz p1, :cond_1

    .line 2334
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/DevicePolicyManagerService;->getActiveAdminUncheckedLocked(Landroid/content/ComponentName;)Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v1

    .line 2335
    .local v1, admin:Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    if-eqz v1, :cond_0

    iget-boolean v4, v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->requireEncryptionSMIMEAlgorithm:Z

    :goto_0
    monitor-exit p0

    .line 2345
    .end local v1           #admin:Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    :goto_1
    return v4

    .restart local v1       #admin:Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    :cond_0
    move v4, v3

    .line 2335
    goto :goto_0

    .line 2338
    .end local v1           #admin:Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    :cond_1
    iget-object v4, p0, Lcom/android/server/DevicePolicyManagerService;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 2339
    .local v0, N:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_2
    if-ge v2, v0, :cond_3

    .line 2340
    iget-object v4, p0, Lcom/android/server/DevicePolicyManagerService;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    .line 2341
    .restart local v1       #admin:Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    if-nez v3, :cond_2

    .line 2342
    iget-boolean v3, v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->requireEncryptionSMIMEAlgorithm:Z

    .line 2339
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 2345
    .end local v1           #admin:Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    :cond_3
    monitor-exit p0

    move v4, v3

    goto :goto_1

    .line 2346
    .end local v0           #N:I
    .end local v2           #i:I
    :catchall_0
    move-exception v4

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method

.method public getRequireManualSyncRoaming(Landroid/content/ComponentName;)Z
    .locals 5
    .parameter "who"

    .prologue
    .line 1930
    monitor-enter p0

    .line 1931
    const/4 v3, 0x0

    .line 1933
    .local v3, value:Z
    if-eqz p1, :cond_1

    .line 1934
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/DevicePolicyManagerService;->getActiveAdminUncheckedLocked(Landroid/content/ComponentName;)Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v1

    .line 1935
    .local v1, admin:Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    if-eqz v1, :cond_0

    iget-boolean v4, v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->requireManualSyncWhenRoaming:Z

    :goto_0
    monitor-exit p0

    .line 1945
    .end local v1           #admin:Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    :goto_1
    return v4

    .restart local v1       #admin:Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    :cond_0
    move v4, v3

    .line 1935
    goto :goto_0

    .line 1938
    .end local v1           #admin:Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    :cond_1
    iget-object v4, p0, Lcom/android/server/DevicePolicyManagerService;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1939
    .local v0, N:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_2
    if-ge v2, v0, :cond_3

    .line 1940
    iget-object v4, p0, Lcom/android/server/DevicePolicyManagerService;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    .line 1941
    .restart local v1       #admin:Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    if-nez v3, :cond_2

    .line 1942
    iget-boolean v3, v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->requireManualSyncWhenRoaming:Z

    .line 1939
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 1945
    .end local v1           #admin:Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    :cond_3
    monitor-exit p0

    move v4, v3

    goto :goto_1

    .line 1946
    .end local v0           #N:I
    .end local v2           #i:I
    :catchall_0
    move-exception v4

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method

.method public getRequireSignedSMIMEAlgorithm(Landroid/content/ComponentName;)Z
    .locals 5
    .parameter "who"

    .prologue
    .line 2290
    monitor-enter p0

    .line 2291
    const/4 v3, 0x0

    .line 2293
    .local v3, value:Z
    if-eqz p1, :cond_1

    .line 2294
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/DevicePolicyManagerService;->getActiveAdminUncheckedLocked(Landroid/content/ComponentName;)Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v1

    .line 2295
    .local v1, admin:Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    if-eqz v1, :cond_0

    iget-boolean v4, v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->requireSignedSMIMEAlgorithm:Z

    :goto_0
    monitor-exit p0

    .line 2305
    .end local v1           #admin:Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    :goto_1
    return v4

    .restart local v1       #admin:Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    :cond_0
    move v4, v3

    .line 2295
    goto :goto_0

    .line 2298
    .end local v1           #admin:Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    :cond_1
    iget-object v4, p0, Lcom/android/server/DevicePolicyManagerService;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 2299
    .local v0, N:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_2
    if-ge v2, v0, :cond_3

    .line 2300
    iget-object v4, p0, Lcom/android/server/DevicePolicyManagerService;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    .line 2301
    .restart local v1       #admin:Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    if-nez v3, :cond_2

    .line 2302
    iget-boolean v3, v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->requireSignedSMIMEAlgorithm:Z

    .line 2299
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 2305
    .end local v1           #admin:Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    :cond_3
    monitor-exit p0

    move v4, v3

    goto :goto_1

    .line 2306
    .end local v0           #N:I
    .end local v2           #i:I
    :catchall_0
    move-exception v4

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method

.method public getRequireSignedSMIMEMessages(Landroid/content/ComponentName;)Z
    .locals 5
    .parameter "who"

    .prologue
    .line 2210
    monitor-enter p0

    .line 2211
    const/4 v3, 0x0

    .line 2213
    .local v3, value:Z
    if-eqz p1, :cond_1

    .line 2214
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/DevicePolicyManagerService;->getActiveAdminUncheckedLocked(Landroid/content/ComponentName;)Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v1

    .line 2215
    .local v1, admin:Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    if-eqz v1, :cond_0

    iget-boolean v4, v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->requireSignedSMIMEMessages:Z

    :goto_0
    monitor-exit p0

    .line 2225
    .end local v1           #admin:Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    :goto_1
    return v4

    .restart local v1       #admin:Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    :cond_0
    move v4, v3

    .line 2215
    goto :goto_0

    .line 2218
    .end local v1           #admin:Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    :cond_1
    iget-object v4, p0, Lcom/android/server/DevicePolicyManagerService;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 2219
    .local v0, N:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_2
    if-ge v2, v0, :cond_3

    .line 2220
    iget-object v4, p0, Lcom/android/server/DevicePolicyManagerService;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    .line 2221
    .restart local v1       #admin:Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    if-nez v3, :cond_2

    .line 2222
    iget-boolean v3, v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->requireSignedSMIMEMessages:Z

    .line 2219
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 2225
    .end local v1           #admin:Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    :cond_3
    monitor-exit p0

    move v4, v3

    goto :goto_1

    .line 2226
    .end local v0           #N:I
    .end local v2           #i:I
    :catchall_0
    move-exception v4

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method

.method public getRequireStorageCardEncryption(Landroid/content/ComponentName;)Z
    .locals 5
    .parameter "who"

    .prologue
    .line 2570
    monitor-enter p0

    .line 2571
    const/4 v3, 0x0

    .line 2573
    .local v3, value:Z
    if-eqz p1, :cond_1

    .line 2574
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/DevicePolicyManagerService;->getActiveAdminUncheckedLocked(Landroid/content/ComponentName;)Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v1

    .line 2575
    .local v1, admin:Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    if-eqz v1, :cond_0

    iget-boolean v4, v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->requireStorageCardEncryption:Z

    :goto_0
    monitor-exit p0

    .line 2585
    .end local v1           #admin:Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    :goto_1
    return v4

    .restart local v1       #admin:Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    :cond_0
    move v4, v3

    .line 2575
    goto :goto_0

    .line 2578
    .end local v1           #admin:Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    :cond_1
    iget-object v4, p0, Lcom/android/server/DevicePolicyManagerService;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 2579
    .local v0, N:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_2
    if-ge v2, v0, :cond_3

    .line 2580
    iget-object v4, p0, Lcom/android/server/DevicePolicyManagerService;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    .line 2581
    .restart local v1       #admin:Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    if-nez v3, :cond_2

    .line 2582
    iget-boolean v3, v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->requireStorageCardEncryption:Z

    .line 2579
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 2585
    .end local v1           #admin:Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    :cond_3
    monitor-exit p0

    move v4, v3

    goto :goto_1

    .line 2586
    .end local v0           #N:I
    .end local v2           #i:I
    :catchall_0
    move-exception v4

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method

.method public isActivePasswordExpired()Z
    .locals 6

    .prologue
    .line 1167
    monitor-enter p0

    .line 1168
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 1169
    .local v0, currentDate:J
    iget-wide v2, p0, Lcom/android/server/DevicePolicyManagerService;->mActivePasswordExpires:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    iget-wide v2, p0, Lcom/android/server/DevicePolicyManagerService;->mActivePasswordExpires:J

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    .line 1170
    const/4 v2, 0x1

    monitor-exit p0

    .line 1171
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    monitor-exit p0

    goto :goto_0

    .line 1172
    .end local v0           #currentDate:J
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public isActivePasswordSufficient()Z
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 1144
    monitor-enter p0

    .line 1147
    const/4 v3, 0x0

    const/4 v4, 0x0

    :try_start_0
    invoke-virtual {p0, v3, v4}, Lcom/android/server/DevicePolicyManagerService;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    .line 1150
    const/4 v1, 0x0

    .line 1151
    .local v1, isSufficient:Z
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/android/server/DevicePolicyManagerService;->getPasswordQuality(Landroid/content/ComponentName;)I

    move-result v0

    .line 1152
    .local v0, currentMode:I
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/android/server/DevicePolicyManagerService;->getMinPasswordComplexChars(Landroid/content/ComponentName;)I

    move-result v2

    .line 1153
    .local v2, requiredComplexChars:I
    iget v3, p0, Lcom/android/server/DevicePolicyManagerService;->mActivePasswordQuality:I

    if-lt v3, v0, :cond_3

    iget v3, p0, Lcom/android/server/DevicePolicyManagerService;->mActivePasswordLength:I

    const/4 v4, 0x0

    invoke-virtual {p0, v4}, Lcom/android/server/DevicePolicyManagerService;->getPasswordMinimumLength(Landroid/content/ComponentName;)I

    move-result v4

    if-lt v3, v4, :cond_3

    move v1, v6

    .line 1155
    :goto_0
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/android/server/DevicePolicyManagerService;->getPasswordQuality(Landroid/content/ComponentName;)I

    move-result v3

    const/high16 v4, 0x5

    if-lt v3, v4, :cond_2

    .line 1156
    if-le v2, v6, :cond_0

    iget-boolean v3, p0, Lcom/android/server/DevicePolicyManagerService;->mActivePasswordHasSymbol:Z

    if-eqz v3, :cond_1

    :cond_0
    iget v3, p0, Lcom/android/server/DevicePolicyManagerService;->mActivePasswordComplexChars:I

    if-ge v3, v2, :cond_2

    .line 1158
    :cond_1
    const/4 v1, 0x0

    .line 1160
    :cond_2
    monitor-exit p0

    return v1

    :cond_3
    move v1, v5

    .line 1153
    goto :goto_0

    .line 1162
    .end local v0           #currentMode:I
    .end local v1           #isSufficient:Z
    .end local v2           #requiredComplexChars:I
    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method public isAdminActive(Landroid/content/ComponentName;)Z
    .locals 1
    .parameter "adminReceiver"

    .prologue
    .line 995
    monitor-enter p0

    .line 996
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/DevicePolicyManagerService;->getActiveAdminUncheckedLocked(Landroid/content/ComponentName;)Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 997
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public lockNow()V
    .locals 6

    .prologue
    .line 2591
    monitor-enter p0

    .line 2594
    const/4 v2, 0x0

    const/4 v3, 0x3

    :try_start_0
    invoke-virtual {p0, v2, v3}, Lcom/android/server/DevicePolicyManagerService;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    .line 2596
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-wide v0

    .line 2598
    .local v0, ident:J
    :try_start_1
    iget-object v2, p0, Lcom/android/server/DevicePolicyManagerService;->mIPowerManager:Landroid/os/IPowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    const/4 v5, 0x1

    invoke-interface {v2, v3, v4, v5}, Landroid/os/IPowerManager;->goToSleepWithReason(JI)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 2602
    :try_start_2
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2604
    :goto_0
    monitor-exit p0

    .line 2605
    return-void

    .line 2602
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2

    .line 2604
    .end local v0           #ident:J
    :catchall_1
    move-exception v2

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v2

    .line 2600
    .restart local v0       #ident:J
    :catch_0
    move-exception v2

    .line 2602
    :try_start_3
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0
.end method

.method public notifyChanges(Landroid/content/ComponentName;Z)V
    .locals 4
    .parameter "comp"
    .parameter "notifyChanges"

    .prologue
    .line 2865
    const/4 v1, 0x0

    .line 2867
    .local v1, enforceNotification:Z
    if-nez p1, :cond_1

    .line 2888
    :cond_0
    :goto_0
    return-void

    .line 2871
    :cond_1
    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "com.android.email.SecurityPolicy$PolicyAdmin"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 2872
    const-string v2, "DevicePolicyManagerService"

    const-string v3, "notifyChanges(): Not Email Admin not proceeding."

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2876
    :cond_2
    invoke-virtual {p0, p1}, Lcom/android/server/DevicePolicyManagerService;->getActiveAdminUncheckedLocked(Landroid/content/ComponentName;)Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v0

    .line 2877
    .local v0, admin:Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    if-eqz v0, :cond_0

    .line 2881
    if-eqz p2, :cond_3

    iget-boolean v2, p0, Lcom/android/server/DevicePolicyManagerService;->mNotifyChanges:Z

    if-nez v2, :cond_3

    .line 2882
    const/4 v1, 0x1

    .line 2884
    :cond_3
    iput-boolean p2, p0, Lcom/android/server/DevicePolicyManagerService;->mNotifyChanges:Z

    .line 2885
    if-eqz v1, :cond_0

    .line 2886
    invoke-direct {p0}, Lcom/android/server/DevicePolicyManagerService;->sendChangedNotification()V

    goto :goto_0
.end method

.method public packageHasActiveAdmins(Ljava/lang/String;)Z
    .locals 3
    .parameter "packageName"

    .prologue
    .line 1015
    monitor-enter p0

    .line 1016
    :try_start_0
    iget-object v2, p0, Lcom/android/server/DevicePolicyManagerService;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1017
    .local v0, N:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 1018
    iget-object v2, p0, Lcom/android/server/DevicePolicyManagerService;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    iget-object v2, v2, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->info:Landroid/app/admin/DeviceAdminInfo;

    invoke-virtual {v2}, Landroid/app/admin/DeviceAdminInfo;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1019
    const/4 v2, 0x1

    monitor-exit p0

    .line 1022
    :goto_1
    return v2

    .line 1017
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1022
    :cond_1
    const/4 v2, 0x0

    monitor-exit p0

    goto :goto_1

    .line 1023
    .end local v0           #N:I
    .end local v1           #i:I
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public reboot(Ljava/lang/String;)V
    .locals 5
    .parameter "reason"

    .prologue
    .line 2895
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 2897
    .local v1, ident:J
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/DevicePolicyManagerService;->getIPowerManager()Landroid/os/IPowerManager;

    move-result-object v3

    invoke-interface {v3, p1}, Landroid/os/IPowerManager;->reboot(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2901
    :goto_0
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2904
    return-void

    .line 2898
    :catch_0
    move-exception v3

    move-object v0, v3

    .line 2899
    .local v0, e:Landroid/os/RemoteException;
    :try_start_1
    const-string v3, "DevicePolicyManagerService"

    const-string v4, "Failure talking with power manager"

    invoke-static {v3, v4, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 2901
    .end local v0           #e:Landroid/os/RemoteException;
    :catchall_0
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
.end method

.method public recoverPassword()V
    .locals 5

    .prologue
    .line 2767
    iget-object v2, p0, Lcom/android/server/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.BIND_DEVICE_ADMIN"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2770
    monitor-enter p0

    .line 2771
    :try_start_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-wide v0

    .line 2773
    .local v0, ident:J
    :try_start_1
    const-string v2, "android.app.action.ACTION_RECOVERY_PASSWORD_REQUESTED"

    const/4 v3, 0x5

    invoke-virtual {p0, v2, v3}, Lcom/android/server/DevicePolicyManagerService;->sendAdminCommandLocked(Ljava/lang/String;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2777
    :try_start_2
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2779
    monitor-exit p0

    .line 2780
    return-void

    .line 2777
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2

    .line 2779
    .end local v0           #ident:J
    :catchall_1
    move-exception v2

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v2
.end method

.method public removeActiveAdmin(Landroid/content/ComponentName;)V
    .locals 6
    .parameter "adminReceiver"

    .prologue
    .line 1027
    monitor-enter p0

    .line 1028
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/DevicePolicyManagerService;->getActiveAdminUncheckedLocked(Landroid/content/ComponentName;)Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v0

    .line 1029
    .local v0, admin:Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    if-nez v0, :cond_0

    .line 1030
    monitor-exit p0

    .line 1043
    :goto_0
    return-void

    .line 1032
    :cond_0
    invoke-virtual {v0}, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->getUid()I

    move-result v3

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    if-eq v3, v4, :cond_1

    .line 1033
    iget-object v3, p0, Lcom/android/server/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    const-string v4, "android.permission.BIND_DEVICE_ADMIN"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1036
    :cond_1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v1

    .line 1038
    .local v1, ident:J
    :try_start_1
    invoke-virtual {p0, p1}, Lcom/android/server/DevicePolicyManagerService;->removeActiveAdminLocked(Landroid/content/ComponentName;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1040
    :try_start_2
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1042
    monitor-exit p0

    goto :goto_0

    .end local v0           #admin:Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    .end local v1           #ident:J
    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3

    .line 1040
    .restart local v0       #admin:Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    .restart local v1       #ident:J
    :catchall_1
    move-exception v3

    :try_start_3
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
.end method

.method removeActiveAdminLocked(Landroid/content/ComponentName;)V
    .locals 2
    .parameter "adminReceiver"

    .prologue
    .line 667
    invoke-virtual {p0, p1}, Lcom/android/server/DevicePolicyManagerService;->getActiveAdminUncheckedLocked(Landroid/content/ComponentName;)Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v0

    .line 668
    .local v0, admin:Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    if-eqz v0, :cond_0

    .line 669
    const-string v1, "android.app.action.DEVICE_ADMIN_DISABLED"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/DevicePolicyManagerService;->sendAdminCommandLocked(Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;Ljava/lang/String;)V

    .line 672
    iget-object v1, p0, Lcom/android/server/DevicePolicyManagerService;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 673
    iget-object v1, p0, Lcom/android/server/DevicePolicyManagerService;->mAdminMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 674
    invoke-virtual {p0}, Lcom/android/server/DevicePolicyManagerService;->validatePasswordOwnerLocked()V

    .line 675
    invoke-direct {p0}, Lcom/android/server/DevicePolicyManagerService;->saveSettingsLocked()V

    .line 677
    :cond_0
    return-void
.end method

.method public reportFailedPasswordAttempt()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 2725
    iget-object v3, p0, Lcom/android/server/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    const-string v4, "android.permission.BIND_DEVICE_ADMIN"

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2728
    monitor-enter p0

    .line 2729
    :try_start_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-wide v0

    .line 2731
    .local v0, ident:J
    :try_start_1
    iget v3, p0, Lcom/android/server/DevicePolicyManagerService;->mFailedPasswordAttempts:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/android/server/DevicePolicyManagerService;->mFailedPasswordAttempts:I

    .line 2732
    invoke-direct {p0}, Lcom/android/server/DevicePolicyManagerService;->saveSettingsLocked()V

    .line 2733
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/android/server/DevicePolicyManagerService;->getMaximumFailedPasswordsForWipe(Landroid/content/ComponentName;)I

    move-result v2

    .line 2734
    .local v2, max:I
    if-lez v2, :cond_0

    iget v3, p0, Lcom/android/server/DevicePolicyManagerService;->mFailedPasswordAttempts:I

    if-lt v3, v2, :cond_0

    .line 2737
    :cond_0
    const-string v3, "android.app.action.ACTION_PASSWORD_FAILED"

    const/4 v4, 0x1

    invoke-virtual {p0, v3, v4}, Lcom/android/server/DevicePolicyManagerService;->sendAdminCommandLocked(Ljava/lang/String;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2740
    :try_start_2
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2742
    monitor-exit p0

    .line 2743
    return-void

    .line 2740
    .end local v2           #max:I
    :catchall_0
    move-exception v3

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3

    .line 2742
    .end local v0           #ident:J
    :catchall_1
    move-exception v3

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v3
.end method

.method public reportSuccessfulPasswordAttempt()V
    .locals 5

    .prologue
    .line 2746
    iget-object v2, p0, Lcom/android/server/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.BIND_DEVICE_ADMIN"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2749
    monitor-enter p0

    .line 2750
    :try_start_0
    iget v2, p0, Lcom/android/server/DevicePolicyManagerService;->mFailedPasswordAttempts:I

    if-nez v2, :cond_0

    iget v2, p0, Lcom/android/server/DevicePolicyManagerService;->mPasswordOwner:I

    if-ltz v2, :cond_1

    .line 2751
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-wide v0

    .line 2753
    .local v0, ident:J
    const/4 v2, 0x0

    :try_start_1
    iput v2, p0, Lcom/android/server/DevicePolicyManagerService;->mFailedPasswordAttempts:I

    .line 2754
    const/4 v2, -0x1

    iput v2, p0, Lcom/android/server/DevicePolicyManagerService;->mPasswordOwner:I

    .line 2755
    invoke-direct {p0}, Lcom/android/server/DevicePolicyManagerService;->saveSettingsLocked()V

    .line 2756
    const-string v2, "android.app.action.ACTION_PASSWORD_SUCCEEDED"

    const/4 v3, 0x1

    invoke-virtual {p0, v2, v3}, Lcom/android/server/DevicePolicyManagerService;->sendAdminCommandLocked(Ljava/lang/String;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2759
    :try_start_2
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2762
    .end local v0           #ident:J
    :cond_1
    monitor-exit p0

    .line 2763
    return-void

    .line 2759
    .restart local v0       #ident:J
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2

    .line 2762
    .end local v0           #ident:J
    :catchall_1
    move-exception v2

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v2
.end method

.method public resetPassword(Ljava/lang/String;I)Z
    .locals 12
    .parameter "password"
    .parameter "flags"

    .prologue
    const/4 v11, 0x0

    const-string v10, "DevicePolicyManagerService"

    .line 1249
    monitor-enter p0

    .line 1252
    const/4 v8, 0x0

    const/4 v9, 0x2

    :try_start_0
    invoke-virtual {p0, v8, v9}, Lcom/android/server/DevicePolicyManagerService;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    .line 1254
    const/4 v8, 0x0

    invoke-virtual {p0, v8}, Lcom/android/server/DevicePolicyManagerService;->getPasswordQuality(Landroid/content/ComponentName;)I

    move-result v5

    .line 1255
    .local v5, quality:I
    if-eqz v5, :cond_1

    .line 1256
    invoke-static {p1}, Lcom/android/internal/widget/LockPatternUtils;->computePasswordQuality(Ljava/lang/String;)I

    move-result v6

    .line 1257
    .local v6, realQuality:I
    if-ge v6, v5, :cond_0

    .line 1258
    const-string v8, "DevicePolicyManagerService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "resetPassword: password quality 0x"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " does not meet required quality 0x"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1262
    monitor-exit p0

    move v8, v11

    .line 1298
    .end local v6           #realQuality:I
    :goto_0
    return v8

    .line 1264
    .restart local v6       #realQuality:I
    :cond_0
    move v5, v6

    .line 1266
    .end local v6           #realQuality:I
    :cond_1
    const/4 v8, 0x0

    invoke-virtual {p0, v8}, Lcom/android/server/DevicePolicyManagerService;->getPasswordMinimumLength(Landroid/content/ComponentName;)I

    move-result v3

    .line 1267
    .local v3, length:I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v8

    if-ge v8, v3, :cond_2

    .line 1268
    const-string v8, "DevicePolicyManagerService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "resetPassword: password length "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " does not meet required length "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1270
    monitor-exit p0

    move v8, v11

    goto :goto_0

    .line 1272
    :cond_2
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1274
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 1275
    .local v0, callingUid:I
    iget v8, p0, Lcom/android/server/DevicePolicyManagerService;->mPasswordOwner:I

    if-ltz v8, :cond_3

    iget v8, p0, Lcom/android/server/DevicePolicyManagerService;->mPasswordOwner:I

    if-eq v8, v0, :cond_3

    .line 1276
    const-string v8, "DevicePolicyManagerService"

    const-string v8, "resetPassword: already set by another uid and not entered by user"

    invoke-static {v10, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v8, v11

    .line 1277
    goto :goto_0

    .line 1272
    .end local v0           #callingUid:I
    .end local v3           #length:I
    .end local v5           #quality:I
    :catchall_0
    move-exception v8

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v8

    .line 1282
    .restart local v0       #callingUid:I
    .restart local v3       #length:I
    .restart local v5       #quality:I
    :cond_3
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 1284
    .local v1, ident:J
    :try_start_2
    new-instance v7, Lcom/android/internal/widget/LockPatternUtils;

    iget-object v8, p0, Lcom/android/server/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v7, v8}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    .line 1285
    .local v7, utils:Lcom/android/internal/widget/LockPatternUtils;
    invoke-virtual {v7, p1, v5}, Lcom/android/internal/widget/LockPatternUtils;->saveLockPassword(Ljava/lang/String;I)V

    .line 1286
    monitor-enter p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 1287
    and-int/lit8 v8, p2, 0x1

    if-eqz v8, :cond_5

    move v4, v0

    .line 1289
    .local v4, newOwner:I
    :goto_1
    :try_start_3
    iget v8, p0, Lcom/android/server/DevicePolicyManagerService;->mPasswordOwner:I

    if-eq v8, v4, :cond_4

    .line 1290
    iput v4, p0, Lcom/android/server/DevicePolicyManagerService;->mPasswordOwner:I

    .line 1291
    invoke-direct {p0}, Lcom/android/server/DevicePolicyManagerService;->saveSettingsLocked()V

    .line 1293
    :cond_4
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1295
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1298
    const/4 v8, 0x1

    goto :goto_0

    .line 1287
    .end local v4           #newOwner:I
    :cond_5
    const/4 v8, -0x1

    move v4, v8

    goto :goto_1

    .line 1293
    .restart local v4       #newOwner:I
    :catchall_1
    move-exception v8

    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    throw v8
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 1295
    .end local v4           #newOwner:I
    .end local v7           #utils:Lcom/android/internal/widget/LockPatternUtils;
    :catchall_2
    move-exception v8

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v8
.end method

.method sendAdminCommandLocked(Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;Ljava/lang/String;)V
    .locals 2
    .parameter "admin"
    .parameter "action"

    .prologue
    .line 649
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 650
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->info:Landroid/app/admin/DeviceAdminInfo;

    invoke-virtual {v1}, Landroid/app/admin/DeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 651
    iget-object v1, p0, Lcom/android/server/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 652
    return-void
.end method

.method sendAdminCommandLocked(Ljava/lang/String;I)V
    .locals 4
    .parameter "action"
    .parameter "reqPolicy"

    .prologue
    .line 655
    iget-object v3, p0, Lcom/android/server/DevicePolicyManagerService;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 656
    .local v0, N:I
    if-lez v0, :cond_1

    .line 657
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 658
    iget-object v3, p0, Lcom/android/server/DevicePolicyManagerService;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    .line 659
    .local v1, admin:Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    iget-object v3, v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->info:Landroid/app/admin/DeviceAdminInfo;

    invoke-virtual {v3, p2}, Landroid/app/admin/DeviceAdminInfo;->usesPolicy(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 660
    invoke-virtual {p0, v1, p1}, Lcom/android/server/DevicePolicyManagerService;->sendAdminCommandLocked(Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;Ljava/lang/String;)V

    .line 657
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 664
    .end local v1           #admin:Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    .end local v2           #i:I
    :cond_1
    return-void
.end method

.method public setActiveAdmin(Landroid/content/ComponentName;)V
    .locals 7
    .parameter "adminReceiver"

    .prologue
    .line 969
    iget-object v4, p0, Lcom/android/server/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    const-string v5, "android.permission.BIND_DEVICE_ADMIN"

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 972
    invoke-virtual {p0, p1}, Lcom/android/server/DevicePolicyManagerService;->findAdmin(Landroid/content/ComponentName;)Landroid/app/admin/DeviceAdminInfo;

    move-result-object v3

    .line 973
    .local v3, info:Landroid/app/admin/DeviceAdminInfo;
    if-nez v3, :cond_0

    .line 974
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Bad admin: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 976
    :cond_0
    monitor-enter p0

    .line 977
    :try_start_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-wide v1

    .line 979
    .local v1, ident:J
    :try_start_1
    invoke-virtual {p0, p1}, Lcom/android/server/DevicePolicyManagerService;->getActiveAdminUncheckedLocked(Landroid/content/ComponentName;)Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 980
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "Admin is already added"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 989
    :catchall_0
    move-exception v4

    :try_start_2
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4

    .line 991
    .end local v1           #ident:J
    :catchall_1
    move-exception v4

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v4

    .line 982
    .restart local v1       #ident:J
    :cond_1
    :try_start_3
    new-instance v0, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    invoke-direct {v0, v3}, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;-><init>(Landroid/app/admin/DeviceAdminInfo;)V

    .line 983
    .local v0, admin:Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    iget-object v4, p0, Lcom/android/server/DevicePolicyManagerService;->mAdminMap:Ljava/util/HashMap;

    invoke-virtual {v4, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 984
    iget-object v4, p0, Lcom/android/server/DevicePolicyManagerService;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 985
    invoke-direct {p0}, Lcom/android/server/DevicePolicyManagerService;->saveSettingsLocked()V

    .line 986
    const-string v4, "android.app.action.DEVICE_ADMIN_ENABLED"

    invoke-virtual {p0, v0, v4}, Lcom/android/server/DevicePolicyManagerService;->sendAdminCommandLocked(Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 989
    :try_start_4
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 991
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 992
    return-void
.end method

.method public setActivePasswordState(IIIZZ)V
    .locals 9
    .parameter "quality"
    .parameter "length"
    .parameter "countComplex"
    .parameter "hasSymbol"
    .parameter "notifyChanges"

    .prologue
    const-wide/16 v7, 0x3c

    const/4 v6, 0x0

    .line 2682
    iget-object v4, p0, Lcom/android/server/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    const-string v5, "android.permission.BIND_DEVICE_ADMIN"

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2685
    invoke-static {p1}, Lcom/android/server/DevicePolicyManagerService;->validateQualityConstant(I)V

    .line 2687
    monitor-enter p0

    .line 2688
    :try_start_0
    iget v4, p0, Lcom/android/server/DevicePolicyManagerService;->mActivePasswordQuality:I

    if-ne v4, p1, :cond_0

    iget v4, p0, Lcom/android/server/DevicePolicyManagerService;->mActivePasswordLength:I

    if-ne v4, p2, :cond_0

    iget v4, p0, Lcom/android/server/DevicePolicyManagerService;->mFailedPasswordAttempts:I

    if-nez v4, :cond_0

    iget v4, p0, Lcom/android/server/DevicePolicyManagerService;->mActivePasswordComplexChars:I

    if-ne v4, p3, :cond_0

    iget-boolean v4, p0, Lcom/android/server/DevicePolicyManagerService;->mActivePasswordHasSymbol:Z

    if-eq v4, p4, :cond_3

    .line 2693
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-wide v2

    .line 2695
    .local v2, ident:J
    :try_start_1
    iput p1, p0, Lcom/android/server/DevicePolicyManagerService;->mActivePasswordQuality:I

    .line 2696
    iput p2, p0, Lcom/android/server/DevicePolicyManagerService;->mActivePasswordLength:I

    .line 2697
    const/4 v4, 0x0

    iput v4, p0, Lcom/android/server/DevicePolicyManagerService;->mFailedPasswordAttempts:I

    .line 2699
    iput p3, p0, Lcom/android/server/DevicePolicyManagerService;->mActivePasswordComplexChars:I

    .line 2700
    iput-boolean p4, p0, Lcom/android/server/DevicePolicyManagerService;->mActivePasswordHasSymbol:Z

    .line 2701
    const-wide/16 v0, 0x0

    .line 2702
    .local v0, expires:J
    iget v4, p0, Lcom/android/server/DevicePolicyManagerService;->mActivePasswordQuality:I

    if-lez v4, :cond_1

    iget v4, p0, Lcom/android/server/DevicePolicyManagerService;->mActivePasswordLength:I

    if-lez v4, :cond_1

    const/4 v4, 0x0

    invoke-virtual {p0, v4}, Lcom/android/server/DevicePolicyManagerService;->getPasswordExpires(Landroid/content/ComponentName;)I

    move-result v4

    int-to-long v0, v4

    const-wide/16 v4, 0x0

    cmp-long v4, v0, v4

    if-lez v4, :cond_1

    .line 2706
    const-wide/16 v4, 0x18

    mul-long/2addr v4, v0

    mul-long/2addr v4, v7

    mul-long/2addr v4, v7

    const-wide/16 v6, 0x3e8

    mul-long v0, v4, v6

    .line 2707
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    add-long/2addr v0, v4

    .line 2709
    :cond_1
    iput-wide v0, p0, Lcom/android/server/DevicePolicyManagerService;->mActivePasswordExpires:J

    .line 2711
    invoke-direct {p0}, Lcom/android/server/DevicePolicyManagerService;->saveSettingsLocked()V

    .line 2713
    if-eqz p5, :cond_2

    .line 2714
    const-string v4, "android.app.action.ACTION_PASSWORD_CHANGED"

    const/4 v5, 0x0

    invoke-virtual {p0, v4, v5}, Lcom/android/server/DevicePolicyManagerService;->sendAdminCommandLocked(Ljava/lang/String;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2718
    :cond_2
    :try_start_2
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2721
    .end local v0           #expires:J
    .end local v2           #ident:J
    :cond_3
    monitor-exit p0

    .line 2722
    return-void

    .line 2718
    .restart local v2       #ident:J
    :catchall_0
    move-exception v4

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4

    .line 2721
    .end local v2           #ident:J
    :catchall_1
    move-exception v4

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v4
.end method

.method public setAdminPermissions(Landroid/content/ComponentName;)V
    .locals 7
    .parameter "adminReceiver"

    .prologue
    .line 1050
    invoke-virtual {p0, p1}, Lcom/android/server/DevicePolicyManagerService;->getActiveAdminUncheckedLocked(Landroid/content/ComponentName;)Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v0

    .line 1051
    .local v0, admin:Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    if-nez v0, :cond_0

    .line 1070
    :goto_0
    return-void

    .line 1056
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/DevicePolicyManagerService;->findAdmin(Landroid/content/ComponentName;)Landroid/app/admin/DeviceAdminInfo;

    move-result-object v3

    .line 1057
    .local v3, info:Landroid/app/admin/DeviceAdminInfo;
    if-nez v3, :cond_1

    .line 1058
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Bad admin: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1061
    :cond_1
    monitor-enter p0

    .line 1062
    :try_start_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v1

    .line 1064
    .local v1, ident:J
    :try_start_1
    iget-object v4, v0, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->info:Landroid/app/admin/DeviceAdminInfo;

    invoke-virtual {v3}, Landroid/app/admin/DeviceAdminInfo;->getPermissions()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Landroid/app/admin/DeviceAdminInfo;->setPermissions(J)V

    .line 1065
    invoke-direct {p0}, Lcom/android/server/DevicePolicyManagerService;->saveSettingsLocked()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1067
    :try_start_2
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1069
    monitor-exit p0

    goto :goto_0

    .end local v1           #ident:J
    :catchall_0
    move-exception v4

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v4

    .line 1067
    .restart local v1       #ident:J
    :catchall_1
    move-exception v4

    :try_start_3
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
.end method

.method public setAllowBluetoothMode(Landroid/content/ComponentName;I)V
    .locals 5
    .parameter "who"
    .parameter "value"

    .prologue
    .line 1950
    monitor-enter p0

    .line 1951
    if-nez p1, :cond_0

    .line 1952
    :try_start_0
    new-instance v3, Ljava/lang/NullPointerException;

    const-string v4, "ComponentName is null"

    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1966
    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 1954
    :cond_0
    const/16 v3, 0x13

    :try_start_1
    invoke-virtual {p0, p1, v3}, Lcom/android/server/DevicePolicyManagerService;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v0

    .line 1956
    .local v0, ap:Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    iget v3, v0, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->allowBluetoothMode:I

    if-eq v3, p2, :cond_1

    .line 1957
    iput p2, v0, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->allowBluetoothMode:I

    .line 1959
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide v1

    .line 1961
    .local v1, ident:J
    :try_start_2
    invoke-direct {p0}, Lcom/android/server/DevicePolicyManagerService;->saveSettingsLocked()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1963
    :try_start_3
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1966
    .end local v1           #ident:J
    :cond_1
    monitor-exit p0

    .line 1967
    return-void

    .line 1963
    .restart local v1       #ident:J
    :catchall_1
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
.end method

.method public setAllowBrowser(Landroid/content/ComponentName;Z)V
    .locals 5
    .parameter "who"
    .parameter "value"

    .prologue
    .line 1830
    monitor-enter p0

    .line 1831
    if-nez p1, :cond_0

    .line 1832
    :try_start_0
    new-instance v3, Ljava/lang/NullPointerException;

    const-string v4, "ComponentName is null"

    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1846
    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 1834
    :cond_0
    const/16 v3, 0x10

    :try_start_1
    invoke-virtual {p0, p1, v3}, Lcom/android/server/DevicePolicyManagerService;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v0

    .line 1836
    .local v0, ap:Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    iget-boolean v3, v0, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->allowBrowser:Z

    if-eq v3, p2, :cond_1

    .line 1837
    iput-boolean p2, v0, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->allowBrowser:Z

    .line 1839
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide v1

    .line 1841
    .local v1, ident:J
    :try_start_2
    invoke-direct {p0}, Lcom/android/server/DevicePolicyManagerService;->saveSettingsLocked()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1843
    :try_start_3
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1846
    .end local v1           #ident:J
    :cond_1
    monitor-exit p0

    .line 1847
    return-void

    .line 1843
    .restart local v1       #ident:J
    :catchall_1
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
.end method

.method public setAllowCamera(Landroid/content/ComponentName;Z)V
    .locals 7
    .parameter "who"
    .parameter "value"

    .prologue
    .line 1618
    monitor-enter p0

    .line 1619
    :try_start_0
    const-string v4, "dpm.allowcamera"

    if-eqz p2, :cond_0

    const-string v5, "1"

    :goto_0
    invoke-static {v4, v5}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1621
    if-nez p1, :cond_1

    .line 1622
    new-instance v4, Ljava/lang/NullPointerException;

    const-string v5, "ComponentName is null"

    invoke-direct {v4, v5}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1646
    :catchall_0
    move-exception v4

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 1619
    :cond_0
    :try_start_1
    const-string v5, "0"

    goto :goto_0

    .line 1626
    :cond_1
    iget-object v4, p0, Lcom/android/server/DevicePolicyManagerService;->mAdminMap:Ljava/util/HashMap;

    invoke-virtual {v4, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    .line 1627
    .local v0, admin:Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    if-nez v0, :cond_2

    .line 1629
    const-string v4, "DevicePolicyManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setAllowCamera() : admin is null. set systemproperties.dpm.allowcamera : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1630
    monitor-exit p0

    .line 1647
    :goto_1
    return-void

    .line 1633
    :cond_2
    const/16 v4, 0xb

    invoke-virtual {p0, p1, v4}, Lcom/android/server/DevicePolicyManagerService;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v1

    .line 1635
    .local v1, ap:Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    iget-boolean v4, v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->allowCamera:Z

    if-eq v4, p2, :cond_3

    .line 1636
    iput-boolean p2, v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->allowCamera:Z

    .line 1638
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide v2

    .line 1641
    .local v2, ident:J
    :try_start_2
    invoke-direct {p0}, Lcom/android/server/DevicePolicyManagerService;->saveSettingsLocked()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1643
    :try_start_3
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1646
    .end local v2           #ident:J
    :cond_3
    monitor-exit p0

    goto :goto_1

    .line 1643
    .restart local v2       #ident:J
    :catchall_1
    move-exception v4

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
.end method

.method public setAllowDesktopSync(Landroid/content/ComponentName;Z)V
    .locals 5
    .parameter "who"
    .parameter "value"

    .prologue
    .line 2430
    monitor-enter p0

    .line 2431
    if-nez p1, :cond_0

    .line 2432
    :try_start_0
    new-instance v3, Ljava/lang/NullPointerException;

    const-string v4, "ComponentName is null"

    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 2446
    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 2434
    :cond_0
    const/16 v3, 0x1f

    :try_start_1
    invoke-virtual {p0, p1, v3}, Lcom/android/server/DevicePolicyManagerService;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v0

    .line 2436
    .local v0, ap:Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    iget-boolean v3, v0, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->allowDesktopSync:Z

    if-eq v3, p2, :cond_1

    .line 2437
    iput-boolean p2, v0, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->allowDesktopSync:Z

    .line 2439
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide v1

    .line 2441
    .local v1, ident:J
    :try_start_2
    invoke-direct {p0}, Lcom/android/server/DevicePolicyManagerService;->saveSettingsLocked()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 2443
    :try_start_3
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2446
    .end local v1           #ident:J
    :cond_1
    monitor-exit p0

    .line 2447
    return-void

    .line 2443
    .restart local v1       #ident:J
    :catchall_1
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
.end method

.method public setAllowHTMLEmail(Landroid/content/ComponentName;Z)V
    .locals 5
    .parameter "who"
    .parameter "value"

    .prologue
    .line 1790
    monitor-enter p0

    .line 1791
    if-nez p1, :cond_0

    .line 1792
    :try_start_0
    new-instance v3, Ljava/lang/NullPointerException;

    const-string v4, "ComponentName is null"

    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1806
    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 1794
    :cond_0
    const/16 v3, 0xf

    :try_start_1
    invoke-virtual {p0, p1, v3}, Lcom/android/server/DevicePolicyManagerService;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v0

    .line 1796
    .local v0, ap:Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    iget-boolean v3, v0, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->allowHTMLEmail:Z

    if-eq v3, p2, :cond_1

    .line 1797
    iput-boolean p2, v0, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->allowHTMLEmail:Z

    .line 1799
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide v1

    .line 1801
    .local v1, ident:J
    :try_start_2
    invoke-direct {p0}, Lcom/android/server/DevicePolicyManagerService;->saveSettingsLocked()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1803
    :try_start_3
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1806
    .end local v1           #ident:J
    :cond_1
    monitor-exit p0

    .line 1807
    return-void

    .line 1803
    .restart local v1       #ident:J
    :catchall_1
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
.end method

.method public setAllowInternetSharing(Landroid/content/ComponentName;Z)V
    .locals 5
    .parameter "who"
    .parameter "value"

    .prologue
    .line 1870
    monitor-enter p0

    .line 1871
    if-nez p1, :cond_0

    .line 1872
    :try_start_0
    new-instance v3, Ljava/lang/NullPointerException;

    const-string v4, "ComponentName is null"

    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1886
    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 1874
    :cond_0
    const/16 v3, 0x11

    :try_start_1
    invoke-virtual {p0, p1, v3}, Lcom/android/server/DevicePolicyManagerService;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v0

    .line 1876
    .local v0, ap:Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    iget-boolean v3, v0, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->allowInternetSharing:Z

    if-eq v3, p2, :cond_1

    .line 1877
    iput-boolean p2, v0, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->allowInternetSharing:Z

    .line 1879
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide v1

    .line 1881
    .local v1, ident:J
    :try_start_2
    invoke-direct {p0}, Lcom/android/server/DevicePolicyManagerService;->saveSettingsLocked()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1883
    :try_start_3
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1886
    .end local v1           #ident:J
    :cond_1
    monitor-exit p0

    .line 1887
    return-void

    .line 1883
    .restart local v1       #ident:J
    :catchall_1
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
.end method

.method public setAllowIrDA(Landroid/content/ComponentName;Z)V
    .locals 5
    .parameter "who"
    .parameter "value"

    .prologue
    .line 2470
    monitor-enter p0

    .line 2471
    if-nez p1, :cond_0

    .line 2472
    :try_start_0
    new-instance v3, Ljava/lang/NullPointerException;

    const-string v4, "ComponentName is null"

    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 2486
    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 2474
    :cond_0
    const/16 v3, 0x20

    :try_start_1
    invoke-virtual {p0, p1, v3}, Lcom/android/server/DevicePolicyManagerService;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v0

    .line 2476
    .local v0, ap:Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    iget-boolean v3, v0, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->allowIrDA:Z

    if-eq v3, p2, :cond_1

    .line 2477
    iput-boolean p2, v0, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->allowIrDA:Z

    .line 2479
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide v1

    .line 2481
    .local v1, ident:J
    :try_start_2
    invoke-direct {p0}, Lcom/android/server/DevicePolicyManagerService;->saveSettingsLocked()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 2483
    :try_start_3
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2486
    .end local v1           #ident:J
    :cond_1
    monitor-exit p0

    .line 2487
    return-void

    .line 2483
    .restart local v1       #ident:J
    :catchall_1
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
.end method

.method public setAllowPOPIMAPEmail(Landroid/content/ComponentName;Z)V
    .locals 5
    .parameter "who"
    .parameter "value"

    .prologue
    .line 1750
    monitor-enter p0

    .line 1751
    if-nez p1, :cond_0

    .line 1752
    :try_start_0
    new-instance v3, Ljava/lang/NullPointerException;

    const-string v4, "ComponentName is null"

    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1766
    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 1754
    :cond_0
    const/16 v3, 0xe

    :try_start_1
    invoke-virtual {p0, p1, v3}, Lcom/android/server/DevicePolicyManagerService;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v0

    .line 1756
    .local v0, ap:Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    iget-boolean v3, v0, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->allowPOPIMAPEmail:Z

    if-eq v3, p2, :cond_1

    .line 1757
    iput-boolean p2, v0, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->allowPOPIMAPEmail:Z

    .line 1759
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide v1

    .line 1761
    .local v1, ident:J
    :try_start_2
    invoke-direct {p0}, Lcom/android/server/DevicePolicyManagerService;->saveSettingsLocked()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1763
    :try_start_3
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1766
    .end local v1           #ident:J
    :cond_1
    monitor-exit p0

    .line 1767
    return-void

    .line 1763
    .restart local v1       #ident:J
    :catchall_1
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
.end method

.method public setAllowSMIMEEncryptionAlgorithmNegotiation(Landroid/content/ComponentName;Z)V
    .locals 5
    .parameter "who"
    .parameter "value"

    .prologue
    .line 2350
    monitor-enter p0

    .line 2351
    if-nez p1, :cond_0

    .line 2352
    :try_start_0
    new-instance v3, Ljava/lang/NullPointerException;

    const-string v4, "ComponentName is null"

    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 2366
    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 2354
    :cond_0
    const/16 v3, 0x1d

    :try_start_1
    invoke-virtual {p0, p1, v3}, Lcom/android/server/DevicePolicyManagerService;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v0

    .line 2356
    .local v0, ap:Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    iget-boolean v3, v0, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->allowSMIMEEncryptionAlgorithmNegotiation:Z

    if-eq v3, p2, :cond_1

    .line 2357
    iput-boolean p2, v0, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->allowSMIMEEncryptionAlgorithmNegotiation:Z

    .line 2359
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide v1

    .line 2361
    .local v1, ident:J
    :try_start_2
    invoke-direct {p0}, Lcom/android/server/DevicePolicyManagerService;->saveSettingsLocked()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 2363
    :try_start_3
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2366
    .end local v1           #ident:J
    :cond_1
    monitor-exit p0

    .line 2367
    return-void

    .line 2363
    .restart local v1       #ident:J
    :catchall_1
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
.end method

.method public setAllowSMIMESoftCerts(Landroid/content/ComponentName;Z)V
    .locals 5
    .parameter "who"
    .parameter "value"

    .prologue
    .line 2390
    monitor-enter p0

    .line 2391
    if-nez p1, :cond_0

    .line 2392
    :try_start_0
    new-instance v3, Ljava/lang/NullPointerException;

    const-string v4, "ComponentName is null"

    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 2406
    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 2394
    :cond_0
    const/16 v3, 0x1e

    :try_start_1
    invoke-virtual {p0, p1, v3}, Lcom/android/server/DevicePolicyManagerService;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v0

    .line 2396
    .local v0, ap:Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    iget-boolean v3, v0, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->allowSMIMESoftCerts:Z

    if-eq v3, p2, :cond_1

    .line 2397
    iput-boolean p2, v0, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->allowSMIMESoftCerts:Z

    .line 2399
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide v1

    .line 2401
    .local v1, ident:J
    :try_start_2
    invoke-direct {p0}, Lcom/android/server/DevicePolicyManagerService;->saveSettingsLocked()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 2403
    :try_start_3
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2406
    .end local v1           #ident:J
    :cond_1
    monitor-exit p0

    .line 2407
    return-void

    .line 2403
    .restart local v1       #ident:J
    :catchall_1
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
.end method

.method public setAllowStorageCard(Landroid/content/ComponentName;Z)V
    .locals 5
    .parameter "who"
    .parameter "value"

    .prologue
    .line 1578
    monitor-enter p0

    .line 1579
    if-nez p1, :cond_0

    .line 1580
    :try_start_0
    new-instance v3, Ljava/lang/NullPointerException;

    const-string v4, "ComponentName is null"

    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1594
    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 1582
    :cond_0
    const/16 v3, 0xa

    :try_start_1
    invoke-virtual {p0, p1, v3}, Lcom/android/server/DevicePolicyManagerService;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v0

    .line 1584
    .local v0, ap:Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    iget-boolean v3, v0, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->allowStorageCard:Z

    if-eq v3, p2, :cond_1

    .line 1585
    iput-boolean p2, v0, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->allowStorageCard:Z

    .line 1587
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide v1

    .line 1589
    .local v1, ident:J
    :try_start_2
    invoke-direct {p0}, Lcom/android/server/DevicePolicyManagerService;->saveSettingsLocked()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1591
    :try_start_3
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1594
    .end local v1           #ident:J
    :cond_1
    monitor-exit p0

    .line 1595
    return-void

    .line 1591
    .restart local v1       #ident:J
    :catchall_1
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
.end method

.method public setAllowTextMessaging(Landroid/content/ComponentName;Z)V
    .locals 5
    .parameter "who"
    .parameter "value"

    .prologue
    .line 1710
    monitor-enter p0

    .line 1711
    if-nez p1, :cond_0

    .line 1712
    :try_start_0
    new-instance v3, Ljava/lang/NullPointerException;

    const-string v4, "ComponentName is null"

    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1726
    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 1714
    :cond_0
    const/16 v3, 0xd

    :try_start_1
    invoke-virtual {p0, p1, v3}, Lcom/android/server/DevicePolicyManagerService;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v0

    .line 1716
    .local v0, ap:Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    iget-boolean v3, v0, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->allowTextMessaging:Z

    if-eq v3, p2, :cond_1

    .line 1717
    iput-boolean p2, v0, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->allowTextMessaging:Z

    .line 1719
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide v1

    .line 1721
    .local v1, ident:J
    :try_start_2
    invoke-direct {p0}, Lcom/android/server/DevicePolicyManagerService;->saveSettingsLocked()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1723
    :try_start_3
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1726
    .end local v1           #ident:J
    :cond_1
    monitor-exit p0

    .line 1727
    return-void

    .line 1723
    .restart local v1       #ident:J
    :catchall_1
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
.end method

.method public setAllowWifi(Landroid/content/ComponentName;Z)V
    .locals 5
    .parameter "who"
    .parameter "value"

    .prologue
    .line 1670
    monitor-enter p0

    .line 1671
    if-nez p1, :cond_0

    .line 1672
    :try_start_0
    new-instance v3, Ljava/lang/NullPointerException;

    const-string v4, "ComponentName is null"

    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1686
    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 1674
    :cond_0
    const/16 v3, 0xc

    :try_start_1
    invoke-virtual {p0, p1, v3}, Lcom/android/server/DevicePolicyManagerService;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v0

    .line 1676
    .local v0, ap:Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    iget-boolean v3, v0, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->allowWifi:Z

    if-eq v3, p2, :cond_1

    .line 1677
    iput-boolean p2, v0, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->allowWifi:Z

    .line 1679
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide v1

    .line 1681
    .local v1, ident:J
    :try_start_2
    invoke-direct {p0}, Lcom/android/server/DevicePolicyManagerService;->saveSettingsLocked()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1683
    :try_start_3
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1686
    .end local v1           #ident:J
    :cond_1
    monitor-exit p0

    .line 1687
    return-void

    .line 1683
    .restart local v1       #ident:J
    :catchall_1
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
.end method

.method public setAttachmentsEnabled(Landroid/content/ComponentName;Z)V
    .locals 5
    .parameter "who"
    .parameter "value"

    .prologue
    .line 1493
    monitor-enter p0

    .line 1494
    if-nez p1, :cond_0

    .line 1495
    :try_start_0
    new-instance v3, Ljava/lang/NullPointerException;

    const-string v4, "ComponentName is null"

    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1509
    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 1497
    :cond_0
    const/16 v3, 0x8

    :try_start_1
    invoke-virtual {p0, p1, v3}, Lcom/android/server/DevicePolicyManagerService;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v0

    .line 1499
    .local v0, ap:Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    iget-boolean v3, v0, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->attachmentsEnabled:Z

    if-eq v3, p2, :cond_1

    .line 1500
    iput-boolean p2, v0, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->attachmentsEnabled:Z

    .line 1502
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide v1

    .line 1504
    .local v1, ident:J
    :try_start_2
    invoke-direct {p0}, Lcom/android/server/DevicePolicyManagerService;->saveSettingsLocked()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1506
    :try_start_3
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1509
    .end local v1           #ident:J
    :cond_1
    monitor-exit p0

    .line 1510
    return-void

    .line 1506
    .restart local v1       #ident:J
    :catchall_1
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
.end method

.method public setEncryptionPolicyWithEncryptApp(Landroid/content/Intent;)Z
    .locals 8
    .parameter "intent"

    .prologue
    .line 2947
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    .line 2949
    .local v2, callingUid:I
    iget-object v6, p0, Lcom/android/server/DevicePolicyManagerService;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 2951
    .local v0, N:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, v0, :cond_2

    .line 2952
    iget-object v6, p0, Lcom/android/server/DevicePolicyManagerService;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    .line 2954
    .local v1, admin:Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    invoke-virtual {v1}, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->getUid()I

    move-result v6

    if-ne v6, v2, :cond_1

    iget-object v6, v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->info:Landroid/app/admin/DeviceAdminInfo;

    const/16 v7, 0x21

    invoke-virtual {v6, v7}, Landroid/app/admin/DeviceAdminInfo;->usesPolicy(I)Z

    move-result v6

    if-nez v6, :cond_0

    iget-object v6, v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->info:Landroid/app/admin/DeviceAdminInfo;

    const/16 v7, 0x22

    invoke-virtual {v6, v7}, Landroid/app/admin/DeviceAdminInfo;->usesPolicy(I)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 2957
    :cond_0
    const-string v6, "DevicePolicyManagerService"

    const-string v7, "Send device encryption intent"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2960
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 2961
    .local v4, ident:J
    iget-object v6, p0, Lcom/android/server/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v6, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 2962
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2963
    const/4 v6, 0x1

    .line 2967
    .end local v1           #admin:Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    .end local v4           #ident:J
    :goto_1
    return v6

    .line 2951
    .restart local v1       #admin:Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 2967
    .end local v1           #admin:Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    :cond_2
    const/4 v6, 0x0

    goto :goto_1
.end method

.method public setMaxAttachmentSize(Landroid/content/ComponentName;I)V
    .locals 5
    .parameter "who"
    .parameter "size"

    .prologue
    .line 1533
    monitor-enter p0

    .line 1534
    if-nez p1, :cond_0

    .line 1535
    :try_start_0
    new-instance v3, Ljava/lang/NullPointerException;

    const-string v4, "ComponentName is null"

    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1549
    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 1537
    :cond_0
    const/16 v3, 0x9

    :try_start_1
    invoke-virtual {p0, p1, v3}, Lcom/android/server/DevicePolicyManagerService;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v0

    .line 1539
    .local v0, ap:Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    iget v3, v0, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->maxAttachmentSize:I

    if-eq v3, p2, :cond_1

    .line 1540
    iput p2, v0, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->maxAttachmentSize:I

    .line 1542
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide v1

    .line 1544
    .local v1, ident:J
    :try_start_2
    invoke-direct {p0}, Lcom/android/server/DevicePolicyManagerService;->saveSettingsLocked()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1546
    :try_start_3
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1549
    .end local v1           #ident:J
    :cond_1
    monitor-exit p0

    .line 1550
    return-void

    .line 1546
    .restart local v1       #ident:J
    :catchall_1
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
.end method

.method public setMaxCalendarAge(Landroid/content/ComponentName;I)V
    .locals 5
    .parameter "who"
    .parameter "value"

    .prologue
    .line 2030
    monitor-enter p0

    .line 2031
    if-nez p1, :cond_0

    .line 2032
    :try_start_0
    new-instance v3, Ljava/lang/NullPointerException;

    const-string v4, "ComponentName is null"

    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 2046
    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 2034
    :cond_0
    const/16 v3, 0x15

    :try_start_1
    invoke-virtual {p0, p1, v3}, Lcom/android/server/DevicePolicyManagerService;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v0

    .line 2036
    .local v0, ap:Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    iget v3, v0, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->maxCalendarAgeFilter:I

    if-eq v3, p2, :cond_1

    .line 2037
    iput p2, v0, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->maxCalendarAgeFilter:I

    .line 2039
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide v1

    .line 2041
    .local v1, ident:J
    :try_start_2
    invoke-direct {p0}, Lcom/android/server/DevicePolicyManagerService;->saveSettingsLocked()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 2043
    :try_start_3
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2046
    .end local v1           #ident:J
    :cond_1
    monitor-exit p0

    .line 2047
    return-void

    .line 2043
    .restart local v1       #ident:J
    :catchall_1
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
.end method

.method public setMaxEmailAge(Landroid/content/ComponentName;I)V
    .locals 5
    .parameter "who"
    .parameter "value"

    .prologue
    .line 2070
    monitor-enter p0

    .line 2071
    if-nez p1, :cond_0

    .line 2072
    :try_start_0
    new-instance v3, Ljava/lang/NullPointerException;

    const-string v4, "ComponentName is null"

    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 2086
    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 2074
    :cond_0
    const/16 v3, 0x16

    :try_start_1
    invoke-virtual {p0, p1, v3}, Lcom/android/server/DevicePolicyManagerService;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v0

    .line 2076
    .local v0, ap:Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    iget v3, v0, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->maxEmailAgeFilter:I

    if-eq v3, p2, :cond_1

    .line 2077
    iput p2, v0, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->maxEmailAgeFilter:I

    .line 2079
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide v1

    .line 2081
    .local v1, ident:J
    :try_start_2
    invoke-direct {p0}, Lcom/android/server/DevicePolicyManagerService;->saveSettingsLocked()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 2083
    :try_start_3
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2086
    .end local v1           #ident:J
    :cond_1
    monitor-exit p0

    .line 2087
    return-void

    .line 2083
    .restart local v1       #ident:J
    :catchall_1
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
.end method

.method public setMaxEmailBodyTruncSize(Landroid/content/ComponentName;I)V
    .locals 5
    .parameter "who"
    .parameter "value"

    .prologue
    .line 2110
    monitor-enter p0

    .line 2111
    if-nez p1, :cond_0

    .line 2112
    :try_start_0
    new-instance v3, Ljava/lang/NullPointerException;

    const-string v4, "ComponentName is null"

    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 2126
    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 2114
    :cond_0
    const/16 v3, 0x17

    :try_start_1
    invoke-virtual {p0, p1, v3}, Lcom/android/server/DevicePolicyManagerService;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v0

    .line 2116
    .local v0, ap:Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    iget v3, v0, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->maxEmailBodyTruncationSize:I

    if-eq v3, p2, :cond_1

    .line 2117
    iput p2, v0, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->maxEmailBodyTruncationSize:I

    .line 2119
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide v1

    .line 2121
    .local v1, ident:J
    :try_start_2
    invoke-direct {p0}, Lcom/android/server/DevicePolicyManagerService;->saveSettingsLocked()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 2123
    :try_start_3
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2126
    .end local v1           #ident:J
    :cond_1
    monitor-exit p0

    .line 2127
    return-void

    .line 2123
    .restart local v1       #ident:J
    :catchall_1
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
.end method

.method public setMaxHtmlEmailBodyTruncSize(Landroid/content/ComponentName;I)V
    .locals 5
    .parameter "who"
    .parameter "value"

    .prologue
    .line 2150
    monitor-enter p0

    .line 2151
    if-nez p1, :cond_0

    .line 2152
    :try_start_0
    new-instance v3, Ljava/lang/NullPointerException;

    const-string v4, "ComponentName is null"

    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 2166
    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 2154
    :cond_0
    const/16 v3, 0x18

    :try_start_1
    invoke-virtual {p0, p1, v3}, Lcom/android/server/DevicePolicyManagerService;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v0

    .line 2156
    .local v0, ap:Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    iget v3, v0, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->maxEmailHtmlBodyTruncationSize:I

    if-eq v3, p2, :cond_1

    .line 2157
    iput p2, v0, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->maxEmailHtmlBodyTruncationSize:I

    .line 2159
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide v1

    .line 2161
    .local v1, ident:J
    :try_start_2
    invoke-direct {p0}, Lcom/android/server/DevicePolicyManagerService;->saveSettingsLocked()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 2163
    :try_start_3
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2166
    .end local v1           #ident:J
    :cond_1
    monitor-exit p0

    .line 2167
    return-void

    .line 2163
    .restart local v1       #ident:J
    :catchall_1
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
.end method

.method public setMaximumFailedPasswordsForWipe(Landroid/content/ComponentName;I)V
    .locals 4
    .parameter "who"
    .parameter "num"

    .prologue
    .line 1187
    monitor-enter p0

    .line 1190
    const/4 v2, 0x4

    :try_start_0
    invoke-virtual {p0, p1, v2}, Lcom/android/server/DevicePolicyManagerService;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    .line 1192
    const/4 v2, 0x1

    invoke-virtual {p0, p1, v2}, Lcom/android/server/DevicePolicyManagerService;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v0

    .line 1194
    .local v0, ap:Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    iget v2, v0, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->maximumFailedPasswordsForWipe:I

    if-eq v2, p2, :cond_0

    .line 1195
    iput p2, v0, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->maximumFailedPasswordsForWipe:I

    .line 1196
    invoke-direct {p0}, Lcom/android/server/DevicePolicyManagerService;->saveSettingsLocked()V

    .line 1198
    sget-object v2, Landroid/deviceencryption/DeviceEncryptionManager;->enabled:Ljava/lang/String;

    const-string v3, "true"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1201
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    .line 1202
    .local v1, value:Ljava/lang/String;
    const-string v2, "MaxAttempts"

    invoke-static {v2, v1}, Landroid/deviceencryption/DeviceEncryptionManager;->setFileCryptProperty(Ljava/lang/String;Ljava/lang/String;)I

    .line 1206
    .end local v1           #value:Ljava/lang/String;
    :cond_0
    monitor-exit p0

    .line 1207
    return-void

    .line 1206
    .end local v0           #ap:Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public setMaximumTimeToLock(Landroid/content/ComponentName;J)V
    .locals 6
    .parameter "who"
    .parameter "timeMs"

    .prologue
    .line 1302
    monitor-enter p0

    .line 1303
    if-nez p1, :cond_0

    .line 1304
    :try_start_0
    new-instance v4, Ljava/lang/NullPointerException;

    const-string v5, "ComponentName is null"

    invoke-direct {v4, v5}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1329
    :catchall_0
    move-exception v4

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 1306
    :cond_0
    const/4 v4, 0x3

    :try_start_1
    invoke-virtual {p0, p1, v4}, Lcom/android/server/DevicePolicyManagerService;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v0

    .line 1308
    .local v0, ap:Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    iget-wide v4, v0, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->maximumTimeToUnlock:J

    cmp-long v4, v4, p2

    if-eqz v4, :cond_2

    .line 1309
    iput-wide p2, v0, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->maximumTimeToUnlock:J

    .line 1311
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide v2

    .line 1313
    .local v2, ident:J
    :try_start_2
    invoke-direct {p0}, Lcom/android/server/DevicePolicyManagerService;->saveSettingsLocked()V

    .line 1315
    const/4 v4, 0x0

    invoke-virtual {p0, v4}, Lcom/android/server/DevicePolicyManagerService;->getMaximumTimeToLock(Landroid/content/ComponentName;)J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result-wide p2

    .line 1316
    const-wide/16 v4, 0x0

    cmp-long v4, p2, v4

    if-gtz v4, :cond_1

    .line 1317
    const-wide/32 p2, 0x7fffffff

    .line 1321
    :cond_1
    :try_start_3
    invoke-direct {p0}, Lcom/android/server/DevicePolicyManagerService;->getIPowerManager()Landroid/os/IPowerManager;

    move-result-object v4

    long-to-int v5, p2

    invoke-interface {v4, v5}, Landroid/os/IPowerManager;->setMaximumScreenOffTimeount(I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0

    .line 1326
    :goto_0
    :try_start_4
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1329
    .end local v2           #ident:J
    :cond_2
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1330
    return-void

    .line 1322
    .restart local v2       #ident:J
    :catch_0
    move-exception v4

    move-object v1, v4

    .line 1323
    .local v1, e:Landroid/os/RemoteException;
    :try_start_5
    const-string v4, "DevicePolicyManagerService"

    const-string v5, "Failure talking with power manager"

    invoke-static {v4, v5, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_0

    .line 1326
    .end local v1           #e:Landroid/os/RemoteException;
    :catchall_1
    move-exception v4

    :try_start_6
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
.end method

.method public setMinPasswordComplexChars(Landroid/content/ComponentName;I)V
    .locals 5
    .parameter "who"
    .parameter "value"

    .prologue
    .line 1990
    monitor-enter p0

    .line 1991
    if-nez p1, :cond_0

    .line 1992
    :try_start_0
    new-instance v3, Ljava/lang/NullPointerException;

    const-string v4, "ComponentName is null"

    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 2006
    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 1994
    :cond_0
    const/16 v3, 0x14

    :try_start_1
    invoke-virtual {p0, p1, v3}, Lcom/android/server/DevicePolicyManagerService;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v0

    .line 1996
    .local v0, ap:Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    iget v3, v0, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->minPasswordComplexChars:I

    if-eq v3, p2, :cond_1

    .line 1997
    iput p2, v0, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->minPasswordComplexChars:I

    .line 1999
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide v1

    .line 2001
    .local v1, ident:J
    :try_start_2
    invoke-direct {p0}, Lcom/android/server/DevicePolicyManagerService;->saveSettingsLocked()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 2003
    :try_start_3
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2006
    .end local v1           #ident:J
    :cond_1
    monitor-exit p0

    .line 2007
    return-void

    .line 2003
    .restart local v1       #ident:J
    :catchall_1
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
.end method

.method public setPasswordExpires(Landroid/content/ComponentName;I)V
    .locals 9
    .parameter "who"
    .parameter "value"

    .prologue
    const-wide/16 v7, 0x3c

    .line 1397
    monitor-enter p0

    .line 1398
    if-nez p1, :cond_0

    .line 1399
    :try_start_0
    new-instance v5, Ljava/lang/NullPointerException;

    const-string v6, "ComponentName is null"

    invoke-direct {v5, v6}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 1423
    :catchall_0
    move-exception v5

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5

    .line 1401
    :cond_0
    const/4 v5, 0x6

    :try_start_1
    invoke-virtual {p0, p1, v5}, Lcom/android/server/DevicePolicyManagerService;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v0

    .line 1403
    .local v0, ap:Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    iget v5, v0, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->passwordExpires:I

    if-eq v5, p2, :cond_2

    .line 1404
    iput p2, v0, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->passwordExpires:I

    .line 1406
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide v3

    .line 1409
    .local v3, ident:J
    const-wide/16 v1, 0x0

    .line 1410
    .local v1, expires:J
    :try_start_2
    iget v5, p0, Lcom/android/server/DevicePolicyManagerService;->mActivePasswordQuality:I

    if-lez v5, :cond_1

    iget v5, p0, Lcom/android/server/DevicePolicyManagerService;->mActivePasswordLength:I

    if-lez v5, :cond_1

    const/4 v5, 0x0

    invoke-virtual {p0, v5}, Lcom/android/server/DevicePolicyManagerService;->getPasswordExpires(Landroid/content/ComponentName;)I

    move-result v5

    int-to-long v1, v5

    const-wide/16 v5, 0x0

    cmp-long v5, v1, v5

    if-lez v5, :cond_1

    .line 1414
    const-wide/16 v5, 0x18

    mul-long/2addr v5, v1

    mul-long/2addr v5, v7

    mul-long/2addr v5, v7

    const-wide/16 v7, 0x3e8

    mul-long v1, v5, v7

    .line 1415
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    add-long/2addr v1, v5

    .line 1417
    :cond_1
    iput-wide v1, p0, Lcom/android/server/DevicePolicyManagerService;->mActivePasswordExpires:J

    .line 1418
    invoke-direct {p0}, Lcom/android/server/DevicePolicyManagerService;->saveSettingsLocked()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1420
    :try_start_3
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1423
    .end local v1           #expires:J
    .end local v3           #ident:J
    :cond_2
    monitor-exit p0

    .line 1424
    return-void

    .line 1420
    .restart local v1       #expires:J
    .restart local v3       #ident:J
    :catchall_1
    move-exception v5

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
.end method

.method public setPasswordHistory(Landroid/content/ComponentName;I)V
    .locals 5
    .parameter "who"
    .parameter "value"

    .prologue
    .line 1450
    monitor-enter p0

    .line 1451
    if-nez p1, :cond_0

    .line 1452
    :try_start_0
    new-instance v3, Ljava/lang/NullPointerException;

    const-string v4, "ComponentName is null"

    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1466
    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 1454
    :cond_0
    const/4 v3, 0x7

    :try_start_1
    invoke-virtual {p0, p1, v3}, Lcom/android/server/DevicePolicyManagerService;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v0

    .line 1456
    .local v0, ap:Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    iget v3, v0, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->passwordHistory:I

    if-eq v3, p2, :cond_1

    .line 1457
    iput p2, v0, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->passwordHistory:I

    .line 1459
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide v1

    .line 1461
    .local v1, ident:J
    :try_start_2
    invoke-direct {p0}, Lcom/android/server/DevicePolicyManagerService;->saveSettingsLocked()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1463
    :try_start_3
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1466
    .end local v1           #ident:J
    :cond_1
    monitor-exit p0

    .line 1467
    return-void

    .line 1463
    .restart local v1       #ident:J
    :catchall_1
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
.end method

.method public setPasswordMinimumLength(Landroid/content/ComponentName;I)V
    .locals 3
    .parameter "who"
    .parameter "length"

    .prologue
    .line 1110
    monitor-enter p0

    .line 1111
    if-nez p1, :cond_0

    .line 1112
    :try_start_0
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "ComponentName is null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1120
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 1114
    :cond_0
    const/4 v1, 0x0

    :try_start_1
    invoke-virtual {p0, p1, v1}, Lcom/android/server/DevicePolicyManagerService;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v0

    .line 1116
    .local v0, ap:Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    iget v1, v0, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->minimumPasswordLength:I

    if-eq v1, p2, :cond_1

    .line 1117
    iput p2, v0, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->minimumPasswordLength:I

    .line 1118
    invoke-direct {p0}, Lcom/android/server/DevicePolicyManagerService;->saveSettingsLocked()V

    .line 1120
    :cond_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1121
    return-void
.end method

.method public setPasswordQuality(Landroid/content/ComponentName;I)V
    .locals 3
    .parameter "who"
    .parameter "quality"

    .prologue
    .line 1074
    invoke-static {p2}, Lcom/android/server/DevicePolicyManagerService;->validateQualityConstant(I)V

    .line 1076
    monitor-enter p0

    .line 1077
    if-nez p1, :cond_0

    .line 1078
    :try_start_0
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "ComponentName is null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1086
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 1080
    :cond_0
    const/4 v1, 0x0

    :try_start_1
    invoke-virtual {p0, p1, v1}, Lcom/android/server/DevicePolicyManagerService;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v0

    .line 1082
    .local v0, ap:Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    iget v1, v0, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->passwordQuality:I

    if-eq v1, p2, :cond_1

    .line 1083
    iput p2, v0, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->passwordQuality:I

    .line 1084
    invoke-direct {p0}, Lcom/android/server/DevicePolicyManagerService;->saveSettingsLocked()V

    .line 1086
    :cond_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1087
    return-void
.end method

.method public setPasswordRecoverable(Landroid/content/ComponentName;Z)V
    .locals 5
    .parameter "who"
    .parameter "value"

    .prologue
    .line 1357
    monitor-enter p0

    .line 1358
    if-nez p1, :cond_0

    .line 1359
    :try_start_0
    new-instance v3, Ljava/lang/NullPointerException;

    const-string v4, "ComponentName is null"

    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1373
    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 1361
    :cond_0
    const/4 v3, 0x5

    :try_start_1
    invoke-virtual {p0, p1, v3}, Lcom/android/server/DevicePolicyManagerService;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v0

    .line 1363
    .local v0, ap:Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    iget-boolean v3, v0, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->passwordRecoverable:Z

    if-eq v3, p2, :cond_1

    .line 1364
    iput-boolean p2, v0, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->passwordRecoverable:Z

    .line 1366
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide v1

    .line 1368
    .local v1, ident:J
    :try_start_2
    invoke-direct {p0}, Lcom/android/server/DevicePolicyManagerService;->saveSettingsLocked()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1370
    :try_start_3
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1373
    .end local v1           #ident:J
    :cond_1
    monitor-exit p0

    .line 1374
    return-void

    .line 1370
    .restart local v1       #ident:J
    :catchall_1
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
.end method

.method public setRecoveryPasswordState(Landroid/content/ComponentName;Z)V
    .locals 7
    .parameter "who"
    .parameter "value"

    .prologue
    .line 2788
    monitor-enter p0

    .line 2789
    if-nez p1, :cond_0

    .line 2790
    :try_start_0
    new-instance v5, Ljava/lang/NullPointerException;

    const-string v6, "ComponentName is null"

    invoke-direct {v5, v6}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 2808
    :catchall_0
    move-exception v5

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5

    .line 2792
    :cond_0
    const/4 v5, 0x5

    :try_start_1
    invoke-virtual {p0, p1, v5}, Lcom/android/server/DevicePolicyManagerService;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v0

    .line 2795
    .local v0, ap:Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    const/4 v5, 0x1

    if-ne p2, v5, :cond_1

    .line 2796
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide v1

    .line 2798
    .local v1, ident:J
    :try_start_2
    new-instance v3, Lcom/android/internal/widget/LockPatternUtils;

    iget-object v5, p0, Lcom/android/server/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v3, v5}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    .line 2799
    .local v3, lockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;
    invoke-virtual {v3}, Lcom/android/internal/widget/LockPatternUtils;->getRecoveryPassword()Ljava/lang/String;

    move-result-object v4

    .line 2801
    .local v4, mRecoveryPassword:Ljava/lang/String;
    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Lcom/android/internal/widget/LockPatternUtils;->saveLockPassword(Ljava/lang/String;I)V

    .line 2803
    invoke-virtual {v3}, Lcom/android/internal/widget/LockPatternUtils;->removeRecoveryPasswords()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 2805
    :try_start_3
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2808
    .end local v1           #ident:J
    .end local v3           #lockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;
    .end local v4           #mRecoveryPassword:Ljava/lang/String;
    :cond_1
    monitor-exit p0

    .line 2811
    return-void

    .line 2805
    .restart local v1       #ident:J
    :catchall_1
    move-exception v5

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
.end method

.method public setRequireDeviceEncryption(Landroid/content/ComponentName;Z)V
    .locals 5
    .parameter "who"
    .parameter "value"

    .prologue
    .line 2510
    monitor-enter p0

    .line 2511
    if-nez p1, :cond_0

    .line 2512
    :try_start_0
    new-instance v3, Ljava/lang/NullPointerException;

    const-string v4, "ComponentName is null"

    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 2526
    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 2514
    :cond_0
    const/16 v3, 0x21

    :try_start_1
    invoke-virtual {p0, p1, v3}, Lcom/android/server/DevicePolicyManagerService;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v0

    .line 2516
    .local v0, ap:Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    iget-boolean v3, v0, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->requireDeviceEncryption:Z

    if-eq v3, p2, :cond_1

    .line 2517
    iput-boolean p2, v0, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->requireDeviceEncryption:Z

    .line 2519
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide v1

    .line 2521
    .local v1, ident:J
    :try_start_2
    invoke-direct {p0}, Lcom/android/server/DevicePolicyManagerService;->saveSettingsLocked()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 2523
    :try_start_3
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2526
    .end local v1           #ident:J
    :cond_1
    monitor-exit p0

    .line 2527
    return-void

    .line 2523
    .restart local v1       #ident:J
    :catchall_1
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
.end method

.method public setRequireEncryptedSMIMEMessages(Landroid/content/ComponentName;Z)V
    .locals 5
    .parameter "who"
    .parameter "value"

    .prologue
    .line 2230
    monitor-enter p0

    .line 2231
    if-nez p1, :cond_0

    .line 2232
    :try_start_0
    new-instance v3, Ljava/lang/NullPointerException;

    const-string v4, "ComponentName is null"

    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 2246
    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 2234
    :cond_0
    const/16 v3, 0x1a

    :try_start_1
    invoke-virtual {p0, p1, v3}, Lcom/android/server/DevicePolicyManagerService;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v0

    .line 2236
    .local v0, ap:Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    iget-boolean v3, v0, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->requireEncryptedSMIMEMessages:Z

    if-eq v3, p2, :cond_1

    .line 2237
    iput-boolean p2, v0, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->requireEncryptedSMIMEMessages:Z

    .line 2239
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide v1

    .line 2241
    .local v1, ident:J
    :try_start_2
    invoke-direct {p0}, Lcom/android/server/DevicePolicyManagerService;->saveSettingsLocked()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 2243
    :try_start_3
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2246
    .end local v1           #ident:J
    :cond_1
    monitor-exit p0

    .line 2247
    return-void

    .line 2243
    .restart local v1       #ident:J
    :catchall_1
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
.end method

.method public setRequireEncryptionSMIMEAlgorithm(Landroid/content/ComponentName;Z)V
    .locals 5
    .parameter "who"
    .parameter "value"

    .prologue
    .line 2310
    monitor-enter p0

    .line 2311
    if-nez p1, :cond_0

    .line 2312
    :try_start_0
    new-instance v3, Ljava/lang/NullPointerException;

    const-string v4, "ComponentName is null"

    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 2326
    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 2314
    :cond_0
    const/16 v3, 0x1c

    :try_start_1
    invoke-virtual {p0, p1, v3}, Lcom/android/server/DevicePolicyManagerService;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v0

    .line 2316
    .local v0, ap:Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    iget-boolean v3, v0, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->requireEncryptionSMIMEAlgorithm:Z

    if-eq v3, p2, :cond_1

    .line 2317
    iput-boolean p2, v0, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->requireEncryptionSMIMEAlgorithm:Z

    .line 2319
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide v1

    .line 2321
    .local v1, ident:J
    :try_start_2
    invoke-direct {p0}, Lcom/android/server/DevicePolicyManagerService;->saveSettingsLocked()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 2323
    :try_start_3
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2326
    .end local v1           #ident:J
    :cond_1
    monitor-exit p0

    .line 2327
    return-void

    .line 2323
    .restart local v1       #ident:J
    :catchall_1
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
.end method

.method public setRequireManualSyncRoaming(Landroid/content/ComponentName;Z)V
    .locals 5
    .parameter "who"
    .parameter "value"

    .prologue
    .line 1910
    monitor-enter p0

    .line 1911
    if-nez p1, :cond_0

    .line 1912
    :try_start_0
    new-instance v3, Ljava/lang/NullPointerException;

    const-string v4, "ComponentName is null"

    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1926
    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 1914
    :cond_0
    const/16 v3, 0x12

    :try_start_1
    invoke-virtual {p0, p1, v3}, Lcom/android/server/DevicePolicyManagerService;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v0

    .line 1916
    .local v0, ap:Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    iget-boolean v3, v0, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->requireManualSyncWhenRoaming:Z

    if-eq v3, p2, :cond_1

    .line 1917
    iput-boolean p2, v0, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->requireManualSyncWhenRoaming:Z

    .line 1919
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide v1

    .line 1921
    .local v1, ident:J
    :try_start_2
    invoke-direct {p0}, Lcom/android/server/DevicePolicyManagerService;->saveSettingsLocked()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1923
    :try_start_3
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1926
    .end local v1           #ident:J
    :cond_1
    monitor-exit p0

    .line 1927
    return-void

    .line 1923
    .restart local v1       #ident:J
    :catchall_1
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
.end method

.method public setRequireSignedSMIMEAlgorithm(Landroid/content/ComponentName;Z)V
    .locals 5
    .parameter "who"
    .parameter "value"

    .prologue
    .line 2270
    monitor-enter p0

    .line 2271
    if-nez p1, :cond_0

    .line 2272
    :try_start_0
    new-instance v3, Ljava/lang/NullPointerException;

    const-string v4, "ComponentName is null"

    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 2286
    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 2274
    :cond_0
    const/16 v3, 0x1b

    :try_start_1
    invoke-virtual {p0, p1, v3}, Lcom/android/server/DevicePolicyManagerService;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v0

    .line 2276
    .local v0, ap:Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    iget-boolean v3, v0, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->requireSignedSMIMEAlgorithm:Z

    if-eq v3, p2, :cond_1

    .line 2277
    iput-boolean p2, v0, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->requireSignedSMIMEAlgorithm:Z

    .line 2279
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide v1

    .line 2281
    .local v1, ident:J
    :try_start_2
    invoke-direct {p0}, Lcom/android/server/DevicePolicyManagerService;->saveSettingsLocked()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 2283
    :try_start_3
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2286
    .end local v1           #ident:J
    :cond_1
    monitor-exit p0

    .line 2287
    return-void

    .line 2283
    .restart local v1       #ident:J
    :catchall_1
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
.end method

.method public setRequireSignedSMIMEMessages(Landroid/content/ComponentName;Z)V
    .locals 5
    .parameter "who"
    .parameter "value"

    .prologue
    .line 2190
    monitor-enter p0

    .line 2191
    if-nez p1, :cond_0

    .line 2192
    :try_start_0
    new-instance v3, Ljava/lang/NullPointerException;

    const-string v4, "ComponentName is null"

    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 2206
    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 2194
    :cond_0
    const/16 v3, 0x19

    :try_start_1
    invoke-virtual {p0, p1, v3}, Lcom/android/server/DevicePolicyManagerService;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v0

    .line 2196
    .local v0, ap:Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    iget-boolean v3, v0, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->requireSignedSMIMEMessages:Z

    if-eq v3, p2, :cond_1

    .line 2197
    iput-boolean p2, v0, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->requireSignedSMIMEMessages:Z

    .line 2199
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide v1

    .line 2201
    .local v1, ident:J
    :try_start_2
    invoke-direct {p0}, Lcom/android/server/DevicePolicyManagerService;->saveSettingsLocked()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 2203
    :try_start_3
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2206
    .end local v1           #ident:J
    :cond_1
    monitor-exit p0

    .line 2207
    return-void

    .line 2203
    .restart local v1       #ident:J
    :catchall_1
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
.end method

.method public setRequireStorageCardEncryption(Landroid/content/ComponentName;Z)V
    .locals 5
    .parameter "who"
    .parameter "value"

    .prologue
    .line 2550
    monitor-enter p0

    .line 2551
    if-nez p1, :cond_0

    .line 2552
    :try_start_0
    new-instance v3, Ljava/lang/NullPointerException;

    const-string v4, "ComponentName is null"

    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 2566
    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 2554
    :cond_0
    const/16 v3, 0x22

    :try_start_1
    invoke-virtual {p0, p1, v3}, Lcom/android/server/DevicePolicyManagerService;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v0

    .line 2556
    .local v0, ap:Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    iget-boolean v3, v0, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->requireStorageCardEncryption:Z

    if-eq v3, p2, :cond_1

    .line 2557
    iput-boolean p2, v0, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->requireStorageCardEncryption:Z

    .line 2559
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide v1

    .line 2561
    .local v1, ident:J
    :try_start_2
    invoke-direct {p0}, Lcom/android/server/DevicePolicyManagerService;->saveSettingsLocked()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 2563
    :try_start_3
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2566
    .end local v1           #ident:J
    :cond_1
    monitor-exit p0

    .line 2567
    return-void

    .line 2563
    .restart local v1       #ident:J
    :catchall_1
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
.end method

.method public systemReady()V
    .locals 2

    .prologue
    .line 962
    monitor-enter p0

    .line 963
    :try_start_0
    const-string v0, "DevicePolicyManagerService"

    const-string v1, "systemReady"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 964
    invoke-direct {p0}, Lcom/android/server/DevicePolicyManagerService;->loadSettingsLocked()V

    .line 965
    monitor-exit p0

    .line 966
    return-void

    .line 965
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method validatePasswordOwnerLocked()V
    .locals 5

    .prologue
    .line 945
    iget v2, p0, Lcom/android/server/DevicePolicyManagerService;->mPasswordOwner:I

    if-ltz v2, :cond_1

    .line 946
    const/4 v0, 0x0

    .line 947
    .local v0, haveOwner:Z
    iget-object v2, p0, Lcom/android/server/DevicePolicyManagerService;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x1

    sub-int v1, v2, v3

    .local v1, i:I
    :goto_0
    if-ltz v1, :cond_0

    .line 948
    iget-object v2, p0, Lcom/android/server/DevicePolicyManagerService;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    invoke-virtual {v2}, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->getUid()I

    move-result v2

    iget v3, p0, Lcom/android/server/DevicePolicyManagerService;->mPasswordOwner:I

    if-ne v2, v3, :cond_2

    .line 949
    const/4 v0, 0x1

    .line 953
    :cond_0
    if-nez v0, :cond_1

    .line 954
    const-string v2, "DevicePolicyManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Previous password owner "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/server/DevicePolicyManagerService;->mPasswordOwner:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " no longer active; disabling"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 956
    const/4 v2, -0x1

    iput v2, p0, Lcom/android/server/DevicePolicyManagerService;->mPasswordOwner:I

    .line 959
    .end local v0           #haveOwner:Z
    .end local v1           #i:I
    :cond_1
    return-void

    .line 947
    .restart local v0       #haveOwner:Z
    .restart local v1       #i:I
    :cond_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_0
.end method

.method public wipeData(I)V
    .locals 4
    .parameter "flags"

    .prologue
    .line 2638
    monitor-enter p0

    .line 2641
    const/4 v2, 0x0

    const/4 v3, 0x4

    :try_start_0
    invoke-virtual {p0, v2, v3}, Lcom/android/server/DevicePolicyManagerService;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    .line 2643
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-wide v0

    .line 2645
    .local v0, ident:J
    :try_start_1
    invoke-virtual {p0, p1}, Lcom/android/server/DevicePolicyManagerService;->wipeDataLocked(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2647
    :try_start_2
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2649
    monitor-exit p0

    .line 2650
    return-void

    .line 2647
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2

    .line 2649
    .end local v0           #ident:J
    :catchall_1
    move-exception v2

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v2
.end method

.method wipeDataLocked(I)V
    .locals 5
    .parameter "flags"

    .prologue
    const-string v2, "true"

    const-string v4, "DevicePolicyManagerService"

    .line 2612
    :try_start_0
    sget-object v2, Landroid/deviceencryption/DeviceEncryptionManager;->enabled:Ljava/lang/String;

    const-string v3, "true"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2613
    const-string v2, "DevicePolicyManagerService"

    const-string v3, "DEVENC: check point DevicePolicyManagerService"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2614
    const-string v2, "DevicePolicyManagerService"

    const-string v3, "DEVENC:Request to delete edk_p"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2615
    const-string v2, "securewipedata"

    const-string v3, "true"

    invoke-static {v2, v3}, Landroid/deviceencryption/DeviceEncryptionManager;->setFileCryptProperty(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2623
    :cond_0
    :goto_0
    and-int/lit8 v2, p1, 0x1

    if-eqz v2, :cond_1

    .line 2624
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.android.internal.os.storage.FORMAT_AND_FACTORY_RESET"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2625
    .local v1, intent:Landroid/content/Intent;
    sget-object v2, Lcom/android/internal/os/storage/ExternalStorageFormatter;->COMPONENT_NAME:Landroid/content/ComponentName;

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 2626
    iget-object v2, p0, Lcom/android/server/DevicePolicyManagerService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    const-wide/16 v3, 0x2710

    invoke-virtual {v2, v3, v4}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 2627
    iget-object v2, p0, Lcom/android/server/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 2635
    .end local v1           #intent:Landroid/content/Intent;
    :goto_1
    return-void

    .line 2617
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 2619
    .local v0, e:Ljava/lang/Exception;
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v3, "exception in securewipedata"

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 2630
    .end local v0           #e:Ljava/lang/Exception;
    :cond_1
    :try_start_1
    iget-object v2, p0, Lcom/android/server/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/os/RecoverySystem;->rebootWipeUserData(Landroid/content/Context;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 2631
    :catch_1
    move-exception v2

    move-object v0, v2

    .line 2632
    .local v0, e:Ljava/io/IOException;
    const-string v2, "DevicePolicyManagerService"

    const-string v2, "Failed requesting data wipe"

    invoke-static {v4, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method
