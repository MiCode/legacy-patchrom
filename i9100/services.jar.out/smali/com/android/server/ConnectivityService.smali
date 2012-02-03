.class public Lcom/android/server/ConnectivityService;
.super Landroid/net/IConnectivityManager$Stub;
.source "ConnectivityService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/ConnectivityService$1;,
        Lcom/android/server/ConnectivityService$MyHandler;,
        Lcom/android/server/ConnectivityService$FeatureUser;,
        Lcom/android/server/ConnectivityService$ConnectivityThread;,
        Lcom/android/server/ConnectivityService$RadioAttributes;,
        Lcom/android/server/ConnectivityService$NetworkAttributes;
    }
.end annotation


# static fields
.field private static final DBG:Z = true

.field private static final DISABLED:I = 0x0

.field private static final ENABLED:I = 0x1

.field private static final EVENT_CHANGE_MOBILE_DATA_ENABLED:I = 0x66

.field private static final EVENT_INET_CONDITION_CHANGE:I = 0x68

.field private static final EVENT_INET_CONDITION_HOLD_END:I = 0x69

.field private static final EVENT_RESTORE_DEFAULT_NETWORK:I = 0x65

.field private static final EVENT_SET_BACKGROUND_DATA:I = 0x6a

.field private static final EVENT_SET_MOBILE_DATA:I = 0x6b

.field private static final EVENT_SET_NETWORK_PREFERENCE:I = 0x67

.field private static final INET_CONDITION_LOG_MAX_SIZE:I = 0xf

.field private static final MAX_NETWORK_STATE_TRACKER_EVENT:I = 0x64

.field private static final MIN_NETWORK_STATE_TRACKER_EVENT:I = 0x1

.field private static final NETWORK_RESTORE_DELAY_PROP_NAME:Ljava/lang/String; = "android.telephony.apn-restore"

.field private static final RESTORE_DEFAULT_NETWORK_DELAY:I = 0x2bf20

.field private static final TAG:Ljava/lang/String; = "ConnectivityService"

.field private static sServiceInstance:Lcom/android/server/ConnectivityService;


# instance fields
.field private mActiveDefaultNetwork:I

.field private mContext:Landroid/content/Context;

.field private mDefaultConnectionSequence:I

.field private mDefaultInetCondition:I

.field private mDefaultInetConditionPublished:I

.field private mFeatureUsers:Ljava/util/List;

.field private mHandler:Landroid/os/Handler;

.field private mInetConditionChangeInFlight:Z

.field private mInetLog:Ljava/util/ArrayList;

.field private mInitialBroadcast:Landroid/content/Intent;

.field mNetAttributes:[Lcom/android/server/ConnectivityService$NetworkAttributes;

.field private mNetRequestersPids:[Ljava/util/List;

.field private mNetTrackers:[Landroid/net/NetworkStateTracker;

.field private mNetworkPreference:I

.field mNetworksDefined:I

.field private mNumDnsEntries:I

.field private mPriorityList:[I

.field mRadioAttributes:[Lcom/android/server/ConnectivityService$RadioAttributes;

.field private mSystemReady:Z

.field private mTestMode:Z

.field private mTethering:Lcom/android/server/connectivity/Tethering;

.field private mTetheringConfigValid:Z


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 31
    .parameter "context"

    .prologue
    .line 271
    invoke-direct/range {p0 .. p0}, Landroid/net/IConnectivityManager$Stub;-><init>()V

    .line 89
    const/16 v27, 0x0

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/ConnectivityService;->mTetheringConfigValid:Z

    .line 111
    const/16 v27, -0x1

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/ConnectivityService;->mActiveDefaultNetwork:I

    .line 113
    const/16 v27, 0x0

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/ConnectivityService;->mDefaultInetCondition:I

    .line 114
    const/16 v27, 0x0

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/ConnectivityService;->mDefaultInetConditionPublished:I

    .line 115
    const/16 v27, 0x0

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/ConnectivityService;->mInetConditionChangeInFlight:Z

    .line 116
    const/16 v27, 0x0

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/ConnectivityService;->mDefaultConnectionSequence:I

    .line 272
    const-string v27, "ConnectivityService"

    const-string v28, "ConnectivityService starting up"

    invoke-static/range {v27 .. v28}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 275
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v27

    const-string v28, "android_id"

    invoke-static/range {v27 .. v28}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 277
    .local v9, id:Ljava/lang/String;
    if-eqz v9, :cond_0

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v27

    if-lez v27, :cond_0

    .line 278
    new-instance v27, Ljava/lang/String;

    const-string v28, "android_"

    invoke-direct/range {v27 .. v28}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v27

    move-object v1, v9

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 279
    .local v17, name:Ljava/lang/String;
    const-string v27, "net.hostname"

    move-object/from16 v0, v27

    move-object/from16 v1, v17

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 282
    .end local v17           #name:Ljava/lang/String;
    :cond_0
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    .line 283
    const/16 v27, 0xb

    move/from16 v0, v27

    new-array v0, v0, [Landroid/net/NetworkStateTracker;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    .line 285
    new-instance v27, Lcom/android/server/ConnectivityService$MyHandler;

    const/16 v28, 0x0

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    move-object/from16 v2, v28

    invoke-direct {v0, v1, v2}, Lcom/android/server/ConnectivityService$MyHandler;-><init>(Lcom/android/server/ConnectivityService;Lcom/android/server/ConnectivityService$1;)V

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/ConnectivityService;->mHandler:Landroid/os/Handler;

    .line 287
    invoke-direct/range {p0 .. p0}, Lcom/android/server/ConnectivityService;->getPersistedNetworkPreference()I

    move-result v27

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/ConnectivityService;->mNetworkPreference:I

    .line 289
    const/16 v27, 0xa

    move/from16 v0, v27

    new-array v0, v0, [Lcom/android/server/ConnectivityService$RadioAttributes;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/ConnectivityService;->mRadioAttributes:[Lcom/android/server/ConnectivityService$RadioAttributes;

    .line 290
    const/16 v27, 0xb

    move/from16 v0, v27

    new-array v0, v0, [Lcom/android/server/ConnectivityService$NetworkAttributes;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/ConnectivityService;->mNetAttributes:[Lcom/android/server/ConnectivityService$NetworkAttributes;

    .line 293
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v27

    const v28, 0x107000e

    invoke-virtual/range {v27 .. v28}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v24

    .line 295
    .local v24, raStrings:[Ljava/lang/String;
    move-object/from16 v5, v24

    .local v5, arr$:[Ljava/lang/String;
    array-length v12, v5

    .local v12, len$:I
    const/4 v8, 0x0

    .local v8, i$:I
    :goto_0
    if-ge v8, v12, :cond_3

    aget-object v23, v5, v8

    .line 296
    .local v23, raString:Ljava/lang/String;
    new-instance v22, Lcom/android/server/ConnectivityService$RadioAttributes;

    invoke-direct/range {v22 .. v23}, Lcom/android/server/ConnectivityService$RadioAttributes;-><init>(Ljava/lang/String;)V

    .line 297
    .local v22, r:Lcom/android/server/ConnectivityService$RadioAttributes;
    move-object/from16 v0, v22

    iget v0, v0, Lcom/android/server/ConnectivityService$RadioAttributes;->mType:I

    move/from16 v27, v0

    const/16 v28, 0x9

    move/from16 v0, v27

    move/from16 v1, v28

    if-le v0, v1, :cond_1

    .line 298
    const-string v27, "ConnectivityService"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "Error in radioAttributes - ignoring attempt to define type "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v22

    iget v0, v0, Lcom/android/server/ConnectivityService$RadioAttributes;->mType:I

    move/from16 v29, v0

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 295
    :goto_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 301
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService;->mRadioAttributes:[Lcom/android/server/ConnectivityService$RadioAttributes;

    move-object/from16 v27, v0

    move-object/from16 v0, v22

    iget v0, v0, Lcom/android/server/ConnectivityService$RadioAttributes;->mType:I

    move/from16 v28, v0

    aget-object v27, v27, v28

    if-eqz v27, :cond_2

    .line 302
    const-string v27, "ConnectivityService"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "Error in radioAttributes - ignoring attempt to redefine type "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v22

    iget v0, v0, Lcom/android/server/ConnectivityService$RadioAttributes;->mType:I

    move/from16 v29, v0

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 306
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService;->mRadioAttributes:[Lcom/android/server/ConnectivityService$RadioAttributes;

    move-object/from16 v27, v0

    move-object/from16 v0, v22

    iget v0, v0, Lcom/android/server/ConnectivityService$RadioAttributes;->mType:I

    move/from16 v28, v0

    aput-object v22, v27, v28

    goto :goto_1

    .line 309
    .end local v22           #r:Lcom/android/server/ConnectivityService$RadioAttributes;
    .end local v23           #raString:Ljava/lang/String;
    :cond_3
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v27

    const v28, 0x107000d

    invoke-virtual/range {v27 .. v28}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v16

    .line 311
    .local v16, naStrings:[Ljava/lang/String;
    move-object/from16 v5, v16

    array-length v12, v5

    const/4 v8, 0x0

    :goto_2
    if-ge v8, v12, :cond_7

    aget-object v15, v5, v8

    .line 313
    .local v15, naString:Ljava/lang/String;
    :try_start_0
    new-instance v13, Lcom/android/server/ConnectivityService$NetworkAttributes;

    invoke-direct {v13, v15}, Lcom/android/server/ConnectivityService$NetworkAttributes;-><init>(Ljava/lang/String;)V

    .line 314
    .local v13, n:Lcom/android/server/ConnectivityService$NetworkAttributes;
    move-object v0, v13

    iget v0, v0, Lcom/android/server/ConnectivityService$NetworkAttributes;->mType:I

    move/from16 v27, v0

    const/16 v28, 0xa

    move/from16 v0, v27

    move/from16 v1, v28

    if-le v0, v1, :cond_4

    .line 315
    const-string v27, "ConnectivityService"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "Error in networkAttributes - ignoring attempt to define type "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object v0, v13

    iget v0, v0, Lcom/android/server/ConnectivityService$NetworkAttributes;->mType:I

    move/from16 v29, v0

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 311
    .end local v13           #n:Lcom/android/server/ConnectivityService$NetworkAttributes;
    :goto_3
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 319
    .restart local v13       #n:Lcom/android/server/ConnectivityService$NetworkAttributes;
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService;->mNetAttributes:[Lcom/android/server/ConnectivityService$NetworkAttributes;

    move-object/from16 v27, v0

    move-object v0, v13

    iget v0, v0, Lcom/android/server/ConnectivityService$NetworkAttributes;->mType:I

    move/from16 v28, v0

    aget-object v27, v27, v28

    if-eqz v27, :cond_5

    .line 320
    const-string v27, "ConnectivityService"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "Error in networkAttributes - ignoring attempt to redefine type "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object v0, v13

    iget v0, v0, Lcom/android/server/ConnectivityService$NetworkAttributes;->mType:I

    move/from16 v29, v0

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 331
    .end local v13           #n:Lcom/android/server/ConnectivityService$NetworkAttributes;
    :catch_0
    move-exception v27

    goto :goto_3

    .line 324
    .restart local v13       #n:Lcom/android/server/ConnectivityService$NetworkAttributes;
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService;->mRadioAttributes:[Lcom/android/server/ConnectivityService$RadioAttributes;

    move-object/from16 v27, v0

    move-object v0, v13

    iget v0, v0, Lcom/android/server/ConnectivityService$NetworkAttributes;->mRadio:I

    move/from16 v28, v0

    aget-object v27, v27, v28

    if-nez v27, :cond_6

    .line 325
    const-string v27, "ConnectivityService"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "Error in networkAttributes - ignoring attempt to use undefined radio "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object v0, v13

    iget v0, v0, Lcom/android/server/ConnectivityService$NetworkAttributes;->mRadio:I

    move/from16 v29, v0

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, " in network type "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object v0, v13

    iget v0, v0, Lcom/android/server/ConnectivityService$NetworkAttributes;->mType:I

    move/from16 v29, v0

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 329
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService;->mNetAttributes:[Lcom/android/server/ConnectivityService$NetworkAttributes;

    move-object/from16 v27, v0

    move-object v0, v13

    iget v0, v0, Lcom/android/server/ConnectivityService$NetworkAttributes;->mType:I

    move/from16 v28, v0

    aput-object v13, v27, v28

    .line 330
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/ConnectivityService;->mNetworksDefined:I

    move/from16 v27, v0

    add-int/lit8 v27, v27, 0x1

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/ConnectivityService;->mNetworksDefined:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_3

    .line 337
    .end local v13           #n:Lcom/android/server/ConnectivityService$NetworkAttributes;
    .end local v15           #naString:Ljava/lang/String;
    :cond_7
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/ConnectivityService;->mNetworksDefined:I

    move/from16 v27, v0

    move/from16 v0, v27

    new-array v0, v0, [I

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/ConnectivityService;->mPriorityList:[I

    .line 339
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/ConnectivityService;->mNetworksDefined:I

    move/from16 v27, v0

    const/16 v28, 0x1

    sub-int v10, v27, v28

    .line 340
    .local v10, insertionPoint:I
    const/4 v6, 0x0

    .line 341
    .local v6, currentLowest:I
    const/16 v19, 0x0

    .line 342
    .end local v5           #arr$:[Ljava/lang/String;
    .local v19, nextLowest:I
    :goto_4
    const/16 v27, -0x1

    move v0, v10

    move/from16 v1, v27

    if-le v0, v1, :cond_d

    .line 343
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService;->mNetAttributes:[Lcom/android/server/ConnectivityService$NetworkAttributes;

    move-object v5, v0

    .local v5, arr$:[Lcom/android/server/ConnectivityService$NetworkAttributes;
    array-length v12, v5

    const/4 v8, 0x0

    move v11, v10

    .end local v10           #insertionPoint:I
    .local v11, insertionPoint:I
    :goto_5
    if-ge v8, v12, :cond_c

    aget-object v14, v5, v8

    .line 344
    .local v14, na:Lcom/android/server/ConnectivityService$NetworkAttributes;
    if-nez v14, :cond_8

    move v10, v11

    .line 343
    .end local v11           #insertionPoint:I
    .restart local v10       #insertionPoint:I
    :goto_6
    add-int/lit8 v8, v8, 0x1

    move v11, v10

    .end local v10           #insertionPoint:I
    .restart local v11       #insertionPoint:I
    goto :goto_5

    .line 345
    :cond_8
    move-object v0, v14

    iget v0, v0, Lcom/android/server/ConnectivityService$NetworkAttributes;->mPriority:I

    move/from16 v27, v0

    move/from16 v0, v27

    move v1, v6

    if-ge v0, v1, :cond_9

    move v10, v11

    .end local v11           #insertionPoint:I
    .restart local v10       #insertionPoint:I
    goto :goto_6

    .line 346
    .end local v10           #insertionPoint:I
    .restart local v11       #insertionPoint:I
    :cond_9
    move-object v0, v14

    iget v0, v0, Lcom/android/server/ConnectivityService$NetworkAttributes;->mPriority:I

    move/from16 v27, v0

    move/from16 v0, v27

    move v1, v6

    if-le v0, v1, :cond_b

    .line 347
    move-object v0, v14

    iget v0, v0, Lcom/android/server/ConnectivityService$NetworkAttributes;->mPriority:I

    move/from16 v27, v0

    move/from16 v0, v27

    move/from16 v1, v19

    if-lt v0, v1, :cond_a

    if-nez v19, :cond_17

    .line 348
    :cond_a
    move-object v0, v14

    iget v0, v0, Lcom/android/server/ConnectivityService$NetworkAttributes;->mPriority:I

    move/from16 v19, v0

    move v10, v11

    .end local v11           #insertionPoint:I
    .restart local v10       #insertionPoint:I
    goto :goto_6

    .line 352
    .end local v10           #insertionPoint:I
    .restart local v11       #insertionPoint:I
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService;->mPriorityList:[I

    move-object/from16 v27, v0

    add-int/lit8 v10, v11, -0x1

    .end local v11           #insertionPoint:I
    .restart local v10       #insertionPoint:I
    move-object v0, v14

    iget v0, v0, Lcom/android/server/ConnectivityService$NetworkAttributes;->mType:I

    move/from16 v28, v0

    aput v28, v27, v11

    goto :goto_6

    .line 354
    .end local v10           #insertionPoint:I
    .end local v14           #na:Lcom/android/server/ConnectivityService$NetworkAttributes;
    .restart local v11       #insertionPoint:I
    :cond_c
    move/from16 v6, v19

    .line 355
    const/16 v19, 0x0

    move v10, v11

    .end local v11           #insertionPoint:I
    .restart local v10       #insertionPoint:I
    goto :goto_4

    .line 359
    .end local v5           #arr$:[Lcom/android/server/ConnectivityService$NetworkAttributes;
    :cond_d
    const/16 v27, 0xb

    move/from16 v0, v27

    new-array v0, v0, [Ljava/util/ArrayList;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/ConnectivityService;->mNetRequestersPids:[Ljava/util/List;

    .line 360
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService;->mPriorityList:[I

    move-object v5, v0

    .local v5, arr$:[I
    array-length v12, v5

    const/4 v8, 0x0

    :goto_7
    if-ge v8, v12, :cond_e

    aget v7, v5, v8

    .line 361
    .local v7, i:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService;->mNetRequestersPids:[Ljava/util/List;

    move-object/from16 v27, v0

    new-instance v28, Ljava/util/ArrayList;

    invoke-direct/range {v28 .. v28}, Ljava/util/ArrayList;-><init>()V

    aput-object v28, v27, v7

    .line 360
    add-int/lit8 v8, v8, 0x1

    goto :goto_7

    .line 364
    .end local v7           #i:I
    :cond_e
    new-instance v27, Ljava/util/ArrayList;

    invoke-direct/range {v27 .. v27}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/ConnectivityService;->mFeatureUsers:Ljava/util/List;

    .line 366
    const/16 v27, 0x0

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/ConnectivityService;->mNumDnsEntries:I

    .line 368
    const-string v27, "cm.test.mode"

    invoke-static/range {v27 .. v27}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    const-string v28, "true"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_10

    const-string v27, "ro.build.type"

    invoke-static/range {v27 .. v27}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    const-string v28, "eng"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_10

    const/16 v27, 0x1

    :goto_8
    move/from16 v0, v27

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/ConnectivityService;->mTestMode:Z

    .line 377
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/ConnectivityService;->getMobileDataEnabled()Z

    move-result v27

    if-nez v27, :cond_11

    const/16 v27, 0x1

    move/from16 v20, v27

    .line 378
    .local v20, noMobileData:Z
    :goto_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService;->mPriorityList:[I

    move-object v5, v0

    array-length v12, v5

    const/4 v8, 0x0

    :goto_a
    if-ge v8, v12, :cond_13

    aget v18, v5, v8

    .line 379
    .local v18, netType:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService;->mNetAttributes:[Lcom/android/server/ConnectivityService$NetworkAttributes;

    move-object/from16 v27, v0

    aget-object v27, v27, v18

    move-object/from16 v0, v27

    iget v0, v0, Lcom/android/server/ConnectivityService$NetworkAttributes;->mRadio:I

    move/from16 v27, v0

    sparse-switch v27, :sswitch_data_0

    .line 416
    const-string v27, "ConnectivityService"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "Trying to create a DataStateTracker for an unknown radio type "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService;->mNetAttributes:[Lcom/android/server/ConnectivityService$NetworkAttributes;

    move-object/from16 v29, v0

    aget-object v29, v29, v18

    move-object/from16 v0, v29

    iget v0, v0, Lcom/android/server/ConnectivityService$NetworkAttributes;->mRadio:I

    move/from16 v29, v0

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 378
    :cond_f
    :goto_b
    add-int/lit8 v8, v8, 0x1

    goto :goto_a

    .line 368
    .end local v18           #netType:I
    .end local v20           #noMobileData:Z
    :cond_10
    const/16 v27, 0x0

    goto :goto_8

    .line 377
    :cond_11
    const/16 v27, 0x0

    move/from16 v20, v27

    goto :goto_9

    .line 381
    .restart local v18       #netType:I
    .restart local v20       #noMobileData:Z
    :sswitch_0
    const-string v27, "ConnectivityService"

    const-string v28, "Starting Wifi Service."

    invoke-static/range {v27 .. v28}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 382
    new-instance v26, Landroid/net/wifi/WifiStateTracker;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService;->mHandler:Landroid/os/Handler;

    move-object/from16 v27, v0

    move-object/from16 v0, v26

    move-object/from16 v1, p1

    move-object/from16 v2, v27

    invoke-direct {v0, v1, v2}, Landroid/net/wifi/WifiStateTracker;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    .line 383
    .local v26, wst:Landroid/net/wifi/WifiStateTracker;
    new-instance v25, Lcom/android/server/WifiService;

    move-object/from16 v0, v25

    move-object/from16 v1, p1

    move-object/from16 v2, v26

    invoke-direct {v0, v1, v2}, Lcom/android/server/WifiService;-><init>(Landroid/content/Context;Landroid/net/wifi/WifiStateTracker;)V

    .line 384
    .local v25, wifiService:Lcom/android/server/WifiService;
    const-string v27, "wifi"

    move-object/from16 v0, v27

    move-object/from16 v1, v25

    invoke-static {v0, v1}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 386
    invoke-virtual/range {v25 .. v25}, Lcom/android/server/WifiService;->startWifi()V

    .line 388
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    move-object/from16 v27, v0

    const/16 v28, 0x1

    aput-object v26, v27, v28

    .line 389
    invoke-virtual/range {v26 .. v26}, Landroid/net/wifi/WifiStateTracker;->startMonitoring()V

    goto :goto_b

    .line 393
    .end local v25           #wifiService:Lcom/android/server/WifiService;
    .end local v26           #wst:Landroid/net/wifi/WifiStateTracker;
    :sswitch_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    move-object/from16 v27, v0

    new-instance v28, Landroid/net/MobileDataStateTracker;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService;->mHandler:Landroid/os/Handler;

    move-object/from16 v29, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService;->mNetAttributes:[Lcom/android/server/ConnectivityService$NetworkAttributes;

    move-object/from16 v30, v0

    aget-object v30, v30, v18

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/android/server/ConnectivityService$NetworkAttributes;->mName:Ljava/lang/String;

    move-object/from16 v30, v0

    move-object/from16 v0, v28

    move-object/from16 v1, p1

    move-object/from16 v2, v29

    move/from16 v3, v18

    move-object/from16 v4, v30

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/net/MobileDataStateTracker;-><init>(Landroid/content/Context;Landroid/os/Handler;ILjava/lang/String;)V

    aput-object v28, v27, v18

    .line 395
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    move-object/from16 v27, v0

    aget-object v27, v27, v18

    invoke-virtual/range {v27 .. v27}, Landroid/net/NetworkStateTracker;->startMonitoring()V

    .line 397
    const-string v27, "ConnectivityService"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "Create NetworkStateTracker : "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService;->mNetAttributes:[Lcom/android/server/ConnectivityService$NetworkAttributes;

    move-object/from16 v29, v0

    aget-object v29, v29, v18

    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/android/server/ConnectivityService$NetworkAttributes;->mName:Ljava/lang/String;

    move-object/from16 v29, v0

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 399
    if-eqz v20, :cond_f

    .line 400
    const-string v27, "ConnectivityService"

    const-string v28, "tearing down Mobile networks due to setting"

    invoke-static/range {v27 .. v28}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 401
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    move-object/from16 v27, v0

    aget-object v27, v27, v18

    invoke-virtual/range {v27 .. v27}, Landroid/net/NetworkStateTracker;->teardown()Z

    goto/16 :goto_b

    .line 405
    :sswitch_2
    invoke-direct/range {p0 .. p0}, Lcom/android/server/ConnectivityService;->makeWimaxStateTracker()Landroid/net/NetworkStateTracker;

    move-result-object v21

    .line 406
    .local v21, nst:Landroid/net/NetworkStateTracker;
    if-eqz v21, :cond_12

    .line 407
    invoke-virtual/range {v21 .. v21}, Landroid/net/NetworkStateTracker;->startMonitoring()V

    .line 409
    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    move-object/from16 v27, v0

    aput-object v21, v27, v18

    .line 410
    if-eqz v20, :cond_f

    .line 411
    const-string v27, "ConnectivityService"

    const-string v28, "tearing down WiMAX networks due to setting"

    invoke-static/range {v27 .. v28}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 412
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    move-object/from16 v27, v0

    aget-object v27, v27, v18

    invoke-virtual/range {v27 .. v27}, Landroid/net/NetworkStateTracker;->teardown()Z

    goto/16 :goto_b

    .line 422
    .end local v18           #netType:I
    .end local v21           #nst:Landroid/net/NetworkStateTracker;
    :cond_13
    new-instance v27, Lcom/android/server/connectivity/Tethering;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService;->mHandler:Landroid/os/Handler;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v29

    invoke-direct/range {v27 .. v29}, Lcom/android/server/connectivity/Tethering;-><init>(Landroid/content/Context;Landroid/os/Looper;)V

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/ConnectivityService;->mTethering:Lcom/android/server/connectivity/Tethering;

    .line 423
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    move-object/from16 v27, v0

    const/16 v28, 0x4

    aget-object v27, v27, v28

    if-nez v27, :cond_14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService;->mTethering:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lcom/android/server/connectivity/Tethering;->isDunRequired()Z

    move-result v27

    if-nez v27, :cond_16

    :cond_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService;->mTethering:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lcom/android/server/connectivity/Tethering;->getTetherableUsbRegexs()[Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v27

    array-length v0, v0

    move/from16 v27, v0

    if-nez v27, :cond_15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService;->mTethering:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lcom/android/server/connectivity/Tethering;->getTetherableWifiRegexs()[Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v27

    array-length v0, v0

    move/from16 v27, v0

    if-eqz v27, :cond_16

    :cond_15
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService;->mTethering:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lcom/android/server/connectivity/Tethering;->getUpstreamIfaceRegexs()[Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v27

    array-length v0, v0

    move/from16 v27, v0

    if-eqz v27, :cond_16

    const/16 v27, 0x1

    :goto_c
    move/from16 v0, v27

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/ConnectivityService;->mTetheringConfigValid:Z

    .line 430
    new-instance v27, Ljava/util/ArrayList;

    invoke-direct/range {v27 .. v27}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/ConnectivityService;->mInetLog:Ljava/util/ArrayList;

    .line 432
    return-void

    .line 423
    :cond_16
    const/16 v27, 0x0

    goto :goto_c

    .end local v10           #insertionPoint:I
    .end local v20           #noMobileData:Z
    .local v5, arr$:[Lcom/android/server/ConnectivityService$NetworkAttributes;
    .restart local v11       #insertionPoint:I
    .restart local v14       #na:Lcom/android/server/ConnectivityService$NetworkAttributes;
    :cond_17
    move v10, v11

    .end local v11           #insertionPoint:I
    .restart local v10       #insertionPoint:I
    goto/16 :goto_6

    .line 379
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_1
        0x1 -> :sswitch_0
        0x6 -> :sswitch_2
    .end sparse-switch
.end method

.method synthetic constructor <init>(Landroid/content/Context;Lcom/android/server/ConnectivityService$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 73
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$000()Lcom/android/server/ConnectivityService;
    .locals 1

    .prologue
    .line 73
    sget-object v0, Lcom/android/server/ConnectivityService;->sServiceInstance:Lcom/android/server/ConnectivityService;

    return-object v0
.end method

.method static synthetic access$002(Lcom/android/server/ConnectivityService;)Lcom/android/server/ConnectivityService;
    .locals 0
    .parameter "x0"

    .prologue
    .line 73
    sput-object p0, Lcom/android/server/ConnectivityService;->sServiceInstance:Lcom/android/server/ConnectivityService;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/android/server/ConnectivityService;II)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 73
    invoke-direct {p0, p1, p2}, Lcom/android/server/ConnectivityService;->handleInetConditionChange(II)V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/server/ConnectivityService;II)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 73
    invoke-direct {p0, p1, p2}, Lcom/android/server/ConnectivityService;->handleInetConditionHoldEnd(II)V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/server/ConnectivityService;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 73
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->handleSetNetworkPreference(I)V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/server/ConnectivityService;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 73
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->handleSetBackgroundData(Z)V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/server/ConnectivityService;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 73
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->handleSetMobileData(Z)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/server/ConnectivityService;Lcom/android/server/ConnectivityService$FeatureUser;Z)I
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 73
    invoke-direct {p0, p1, p2}, Lcom/android/server/ConnectivityService;->stopUsingNetworkFeature(Lcom/android/server/ConnectivityService$FeatureUser;Z)I

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcom/android/server/ConnectivityService;Landroid/net/NetworkInfo;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 73
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->handleConnectionFailure(Landroid/net/NetworkInfo;)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/server/ConnectivityService;Landroid/net/NetworkInfo;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 73
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->handleDisconnect(Landroid/net/NetworkInfo;)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/server/ConnectivityService;Landroid/net/NetworkInfo;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 73
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->handleConnect(Landroid/net/NetworkInfo;)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/server/ConnectivityService;Landroid/net/NetworkInfo;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 73
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->handleScanResultsAvailable(Landroid/net/NetworkInfo;)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/server/ConnectivityService;ZILandroid/app/Notification;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 73
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/ConnectivityService;->handleNotificationChange(ZILandroid/app/Notification;)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/server/ConnectivityService;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 73
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->handleDnsConfigurationChange(I)V

    return-void
.end method

.method private addDefaultRouteForMMSOnly(I)V
    .locals 2
    .parameter "netType"

    .prologue
    .line 1989
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->getSktDataNetworkDisable()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    .line 1993
    :cond_0
    :goto_0
    return-void

    .line 1991
    :cond_1
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroid/net/NetworkStateTracker;->getNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1992
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Landroid/net/NetworkStateTracker;->addForceDefaultRouteForPDP0()V

    goto :goto_0
.end method

.method private bumpDns()V
    .locals 5

    .prologue
    const-string v4, "net.dnschange"

    .line 1507
    const-string v2, "net.dnschange"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1508
    .local v1, propVal:Ljava/lang/String;
    const/4 v0, 0x0

    .line 1509
    .local v0, n:I
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_0

    .line 1511
    :try_start_0
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 1514
    :cond_0
    :goto_0
    const-string v2, "net.dnschange"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    add-int/lit8 v3, v0, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1515
    return-void

    .line 1512
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method private enforceAccessPermission()V
    .locals 3

    .prologue
    .line 1102
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.ACCESS_NETWORK_STATE"

    const-string v2, "ConnectivityService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1105
    return-void
.end method

.method private enforceChangePermission()V
    .locals 3

    .prologue
    .line 1108
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.CHANGE_NETWORK_STATE"

    const-string v2, "ConnectivityService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1111
    return-void
.end method

.method private enforcePreference()V
    .locals 4

    .prologue
    .line 577
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    iget v2, p0, Lcom/android/server/ConnectivityService;->mNetworkPreference:I

    aget-object v1, v1, v2

    invoke-virtual {v1}, Landroid/net/NetworkStateTracker;->getNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 594
    :cond_0
    return-void

    .line 580
    :cond_1
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    iget v2, p0, Lcom/android/server/ConnectivityService;->mNetworkPreference:I

    aget-object v1, v1, v2

    invoke-virtual {v1}, Landroid/net/NetworkStateTracker;->isAvailable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 583
    const/4 v0, 0x0

    .local v0, t:I
    :goto_0
    const/16 v1, 0x9

    if-gt v0, v1, :cond_0

    .line 584
    iget v1, p0, Lcom/android/server/ConnectivityService;->mNetworkPreference:I

    if-eq v0, v1, :cond_2

    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    aget-object v1, v1, v0

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Landroid/net/NetworkStateTracker;->getNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 587
    const-string v1, "ConnectivityService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "tearing down "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    aget-object v3, v3, v0

    invoke-virtual {v3}, Landroid/net/NetworkStateTracker;->getNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " in enforcePreference"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 591
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    aget-object v1, v1, v0

    invoke-direct {p0, v1}, Lcom/android/server/ConnectivityService;->teardown(Landroid/net/NetworkStateTracker;)Z

    .line 583
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private enforceTetherAccessPermission()V
    .locals 3

    .prologue
    .line 1121
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.ACCESS_NETWORK_STATE"

    const-string v2, "ConnectivityService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1124
    return-void
.end method

.method private enforceTetherChangePermission()V
    .locals 3

    .prologue
    .line 1115
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.CHANGE_NETWORK_STATE"

    const-string v2, "ConnectivityService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1118
    return-void
.end method

.method private getDataOnRoamingEnabled()Z
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 1964
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "data_roaming"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v2, :cond_0

    move v0, v2

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/android/server/ConnectivityService;
    .locals 1
    .parameter "context"

    .prologue
    .line 268
    invoke-static {p0}, Lcom/android/server/ConnectivityService$ConnectivityThread;->getServiceInstance(Landroid/content/Context;)Lcom/android/server/ConnectivityService;

    move-result-object v0

    return-object v0
.end method

.method private getNumConnectedNetworks()I
    .locals 6

    .prologue
    .line 1090
    const/4 v4, 0x0

    .line 1092
    .local v4, numConnectedNets:I
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    .local v0, arr$:[Landroid/net/NetworkStateTracker;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 1093
    .local v3, nt:Landroid/net/NetworkStateTracker;
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Landroid/net/NetworkStateTracker;->getNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v3}, Landroid/net/NetworkStateTracker;->isTeardownRequested()Z

    move-result v5

    if-nez v5, :cond_0

    .line 1095
    add-int/lit8 v4, v4, 0x1

    .line 1092
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1098
    .end local v3           #nt:Landroid/net/NetworkStateTracker;
    :cond_1
    return v4
.end method

.method private getPersistedNetworkPreference()I
    .locals 4

    .prologue
    const/4 v3, -0x1

    .line 558
    iget-object v2, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 560
    .local v0, cr:Landroid/content/ContentResolver;
    const-string v2, "network_preference"

    invoke-static {v0, v2, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 562
    .local v1, networkPrefSetting:I
    if-eq v1, v3, :cond_0

    move v2, v1

    .line 566
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x1

    goto :goto_0
.end method

.method private getRestoreDefaultNetworkDelay()I
    .locals 2

    .prologue
    .line 1551
    const-string v1, "android.telephony.apn-restore"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1553
    .local v0, restoreDefaultNetworkDelayStr:Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_0

    .line 1556
    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1560
    :goto_0
    return v1

    .line 1557
    :catch_0
    move-exception v1

    .line 1560
    :cond_0
    const v1, 0x2bf20

    goto :goto_0
.end method

.method private getSktDataNetworkDisable()Z
    .locals 10

    .prologue
    const/4 v3, 0x0

    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 1970
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1971
    .local v0, cr:Landroid/content/ContentResolver;
    const/4 v1, 0x3

    new-array v2, v1, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v2, v9

    const-string v1, "enable"

    aput-object v1, v2, v8

    const/4 v1, 0x2

    const-string v4, "onoff"

    aput-object v4, v2, v1

    .line 1973
    .local v2, projection:[Ljava/lang/String;
    const-string v1, "content://com.samsung.sec.android.settings/WirelessSetting"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 1977
    .local v7, cursor:Landroid/database/Cursor;
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1978
    invoke-interface {v7, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 1979
    .local v6, DataNetworkEnable:Ljava/lang/String;
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 1981
    const-string v1, "ConnectivityService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getSktDataNetworkDisable DataNetworkEnable = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " oversea = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->getDataOnRoamingEnabled()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1982
    const-string v1, "oversea"

    const-string v3, "ril.currentplmn"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1983
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->getDataOnRoamingEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v9

    .line 1985
    :goto_0
    return v1

    :cond_0
    move v1, v8

    .line 1983
    goto :goto_0

    .line 1985
    :cond_1
    const-string v1, "disable"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    move v1, v8

    goto :goto_0

    :cond_2
    move v1, v9

    goto :goto_0
.end method

.method private handleConnect(Landroid/net/NetworkInfo;)V
    .locals 8
    .parameter "info"

    .prologue
    const/4 v6, 0x0

    const-string v7, "ConnectivityService"

    .line 1334
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getType()I

    move-result v3

    .line 1337
    .local v3, type:I
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->isFailover()Z

    move-result v0

    .line 1338
    .local v0, isFailover:Z
    iget-object v4, p0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    aget-object v2, v4, v3

    .line 1342
    .local v2, thisNet:Landroid/net/NetworkStateTracker;
    iget-object v4, p0, Lcom/android/server/ConnectivityService;->mNetAttributes:[Lcom/android/server/ConnectivityService$NetworkAttributes;

    aget-object v4, v4, v3

    invoke-virtual {v4}, Lcom/android/server/ConnectivityService$NetworkAttributes;->isDefault()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 1343
    iget v4, p0, Lcom/android/server/ConnectivityService;->mActiveDefaultNetwork:I

    const/4 v5, -0x1

    if-eq v4, v5, :cond_4

    iget v4, p0, Lcom/android/server/ConnectivityService;->mActiveDefaultNetwork:I

    if-eq v4, v3, :cond_4

    .line 1344
    iget v4, p0, Lcom/android/server/ConnectivityService;->mNetworkPreference:I

    if-eq v3, v4, :cond_0

    iget-object v4, p0, Lcom/android/server/ConnectivityService;->mNetAttributes:[Lcom/android/server/ConnectivityService$NetworkAttributes;

    iget v5, p0, Lcom/android/server/ConnectivityService;->mActiveDefaultNetwork:I

    aget-object v4, v4, v5

    iget v4, v4, Lcom/android/server/ConnectivityService$NetworkAttributes;->mPriority:I

    iget-object v5, p0, Lcom/android/server/ConnectivityService;->mNetAttributes:[Lcom/android/server/ConnectivityService$NetworkAttributes;

    aget-object v5, v5, v3

    iget v5, v5, Lcom/android/server/ConnectivityService$NetworkAttributes;->mPriority:I

    if-gt v4, v5, :cond_1

    :cond_0
    iget v4, p0, Lcom/android/server/ConnectivityService;->mNetworkPreference:I

    iget v5, p0, Lcom/android/server/ConnectivityService;->mActiveDefaultNetwork:I

    if-ne v4, v5, :cond_2

    .line 1349
    :cond_1
    const-string v4, "ConnectivityService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Not broadcasting CONNECT_ACTION to torn down network "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v7, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1351
    invoke-direct {p0, v2}, Lcom/android/server/ConnectivityService;->teardown(Landroid/net/NetworkStateTracker;)Z

    .line 1384
    :goto_0
    return-void

    .line 1355
    :cond_2
    iget-object v4, p0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    iget v5, p0, Lcom/android/server/ConnectivityService;->mActiveDefaultNetwork:I

    aget-object v1, v4, v5

    .line 1357
    .local v1, otherNet:Landroid/net/NetworkStateTracker;
    const-string v4, "ConnectivityService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Policy requires "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Landroid/net/NetworkStateTracker;->getNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " teardown"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v7, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1360
    invoke-direct {p0, v1}, Lcom/android/server/ConnectivityService;->teardown(Landroid/net/NetworkStateTracker;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 1361
    const-string v4, "ConnectivityService"

    const-string v4, "Network declined teardown request"

    invoke-static {v7, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1362
    invoke-direct {p0, v2}, Lcom/android/server/ConnectivityService;->teardown(Landroid/net/NetworkStateTracker;)Z

    goto :goto_0

    .line 1365
    :cond_3
    if-eqz v0, :cond_4

    .line 1366
    invoke-virtual {v1}, Landroid/net/NetworkStateTracker;->releaseWakeLock()V

    .line 1370
    .end local v1           #otherNet:Landroid/net/NetworkStateTracker;
    :cond_4
    iput v3, p0, Lcom/android/server/ConnectivityService;->mActiveDefaultNetwork:I

    .line 1374
    iput v6, p0, Lcom/android/server/ConnectivityService;->mDefaultInetConditionPublished:I

    .line 1375
    iget v4, p0, Lcom/android/server/ConnectivityService;->mDefaultConnectionSequence:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/android/server/ConnectivityService;->mDefaultConnectionSequence:I

    .line 1376
    iput-boolean v6, p0, Lcom/android/server/ConnectivityService;->mInetConditionChangeInFlight:Z

    .line 1380
    :cond_5
    invoke-virtual {v2, v6}, Landroid/net/NetworkStateTracker;->setTeardownRequested(Z)V

    .line 1381
    invoke-virtual {v2}, Landroid/net/NetworkStateTracker;->updateNetworkSettings()V

    .line 1382
    invoke-direct {p0, v3}, Lcom/android/server/ConnectivityService;->handleConnectivityChange(I)V

    .line 1383
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->sendConnectedBroadcast(Landroid/net/NetworkInfo;)V

    goto :goto_0
.end method

.method private handleConnectionFailure(Landroid/net/NetworkInfo;)V
    .locals 12
    .parameter "info"

    .prologue
    const/4 v10, -0x1

    const/4 v9, 0x1

    const/4 v8, 0x0

    const-string v11, "noConnectivity"

    .line 1262
    iget-object v5, p0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getType()I

    move-result v6

    aget-object v5, v5, v6

    invoke-virtual {v5, v8}, Landroid/net/NetworkStateTracker;->setTeardownRequested(Z)V

    .line 1264
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getReason()Ljava/lang/String;

    move-result-object v2

    .line 1265
    .local v2, reason:Ljava/lang/String;
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    move-result-object v0

    .line 1268
    .local v0, extraInfo:Ljava/lang/String;
    if-nez v2, :cond_6

    .line 1269
    const-string v3, "."

    .line 1273
    .local v3, reasonText:Ljava/lang/String;
    :goto_0
    const-string v5, "ConnectivityService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Attempt to connect to "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " failed"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1275
    new-instance v1, Landroid/content/Intent;

    const-string v5, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v1, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1276
    .local v1, intent:Landroid/content/Intent;
    const-string v5, "networkInfo"

    invoke-virtual {v1, v5, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1277
    invoke-virtual {p0}, Lcom/android/server/ConnectivityService;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v5

    if-nez v5, :cond_0

    .line 1278
    const-string v5, "noConnectivity"

    invoke-virtual {v1, v11, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1280
    :cond_0
    if-eqz v2, :cond_1

    .line 1281
    const-string v5, "reason"

    invoke-virtual {v1, v5, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1283
    :cond_1
    if-eqz v0, :cond_2

    .line 1284
    const-string v5, "extraInfo"

    invoke-virtual {v1, v5, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1286
    :cond_2
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->isFailover()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1287
    const-string v5, "isFailover"

    invoke-virtual {v1, v5, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1288
    invoke-virtual {p1, v8}, Landroid/net/NetworkInfo;->setFailover(Z)V

    .line 1291
    :cond_3
    iget-object v5, p0, Lcom/android/server/ConnectivityService;->mNetAttributes:[Lcom/android/server/ConnectivityService$NetworkAttributes;

    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getType()I

    move-result v6

    aget-object v5, v5, v6

    invoke-virtual {v5}, Lcom/android/server/ConnectivityService$NetworkAttributes;->isDefault()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 1292
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getType()I

    move-result v5

    invoke-direct {p0, v5}, Lcom/android/server/ConnectivityService;->tryFailover(I)V

    .line 1293
    iget v5, p0, Lcom/android/server/ConnectivityService;->mActiveDefaultNetwork:I

    if-eq v5, v10, :cond_7

    .line 1294
    iget-object v5, p0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    iget v6, p0, Lcom/android/server/ConnectivityService;->mActiveDefaultNetwork:I

    aget-object v5, v5, v6

    invoke-virtual {v5}, Landroid/net/NetworkStateTracker;->getNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v4

    .line 1295
    .local v4, switchTo:Landroid/net/NetworkInfo;
    const-string v5, "otherNetwork"

    invoke-virtual {v1, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1302
    .end local v4           #switchTo:Landroid/net/NetworkInfo;
    :cond_4
    :goto_1
    const-string v5, "inetCondition"

    iget v6, p0, Lcom/android/server/ConnectivityService;->mDefaultInetConditionPublished:I

    invoke-virtual {v1, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1303
    invoke-direct {p0, v1}, Lcom/android/server/ConnectivityService;->sendStickyBroadcast(Landroid/content/Intent;)V

    .line 1308
    iget v5, p0, Lcom/android/server/ConnectivityService;->mActiveDefaultNetwork:I

    if-eq v5, v10, :cond_5

    .line 1309
    iget-object v5, p0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    iget v6, p0, Lcom/android/server/ConnectivityService;->mActiveDefaultNetwork:I

    aget-object v5, v5, v6

    invoke-virtual {v5}, Landroid/net/NetworkStateTracker;->getNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/server/ConnectivityService;->sendConnectedBroadcast(Landroid/net/NetworkInfo;)V

    .line 1311
    :cond_5
    return-void

    .line 1271
    .end local v1           #intent:Landroid/content/Intent;
    .end local v3           #reasonText:Ljava/lang/String;
    :cond_6
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .restart local v3       #reasonText:Ljava/lang/String;
    goto/16 :goto_0

    .line 1297
    .restart local v1       #intent:Landroid/content/Intent;
    :cond_7
    iput v8, p0, Lcom/android/server/ConnectivityService;->mDefaultInetConditionPublished:I

    .line 1298
    const-string v5, "noConnectivity"

    invoke-virtual {v1, v11, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto :goto_1
.end method

.method private handleConnectivityChange(I)V
    .locals 3
    .parameter "netType"

    .prologue
    .line 1419
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->handleDnsConfigurationChange(I)V

    .line 1421
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    aget-object v1, v1, p1

    invoke-virtual {v1}, Landroid/net/NetworkStateTracker;->getNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1422
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mNetAttributes:[Lcom/android/server/ConnectivityService$NetworkAttributes;

    aget-object v1, v1, p1

    invoke-virtual {v1}, Lcom/android/server/ConnectivityService$NetworkAttributes;->isDefault()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1423
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    aget-object v1, v1, p1

    invoke-virtual {v1}, Landroid/net/NetworkStateTracker;->addDefaultRoute()V

    .line 1449
    :goto_0
    return-void

    .line 1427
    :cond_0
    iget v1, p0, Lcom/android/server/ConnectivityService;->mActiveDefaultNetwork:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    .line 1428
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    iget v2, p0, Lcom/android/server/ConnectivityService;->mActiveDefaultNetwork:I

    aget-object v1, v1, v2

    invoke-virtual {v1}, Landroid/net/NetworkStateTracker;->getInterfaceName()Ljava/lang/String;

    move-result-object v0

    .line 1429
    .local v0, defaultIface:Ljava/lang/String;
    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    aget-object v1, v1, p1

    invoke-virtual {v1}, Landroid/net/NetworkStateTracker;->getInterfaceName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1431
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    aget-object v1, v1, p1

    invoke-virtual {v1}, Landroid/net/NetworkStateTracker;->removeDefaultRoute()V

    .line 1434
    .end local v0           #defaultIface:Ljava/lang/String;
    :cond_1
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    aget-object v1, v1, p1

    invoke-virtual {v1}, Landroid/net/NetworkStateTracker;->addPrivateDnsRoutes()V

    goto :goto_0

    .line 1440
    :cond_2
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mNetAttributes:[Lcom/android/server/ConnectivityService$NetworkAttributes;

    aget-object v1, v1, p1

    invoke-virtual {v1}, Lcom/android/server/ConnectivityService$NetworkAttributes;->isDefault()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1441
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    aget-object v1, v1, p1

    invoke-virtual {v1}, Landroid/net/NetworkStateTracker;->removeDefaultRoute()V

    goto :goto_0

    .line 1443
    :cond_3
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    aget-object v1, v1, p1

    invoke-virtual {v1}, Landroid/net/NetworkStateTracker;->removePrivateDnsRoutes()V

    goto :goto_0
.end method

.method private handleDisconnect(Landroid/net/NetworkInfo;)V
    .locals 11
    .parameter "info"

    .prologue
    const/4 v10, 0x1

    const/4 v9, -0x1

    const/4 v8, 0x0

    .line 1135
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getType()I

    move-result v4

    .line 1137
    .local v4, prevNetType:I
    iget-object v6, p0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    aget-object v6, v6, v4

    invoke-virtual {v6, v8}, Landroid/net/NetworkStateTracker;->setTeardownRequested(Z)V

    .line 1144
    iget-object v6, p0, Lcom/android/server/ConnectivityService;->mNetAttributes:[Lcom/android/server/ConnectivityService$NetworkAttributes;

    aget-object v6, v6, v4

    invoke-virtual {v6}, Lcom/android/server/ConnectivityService$NetworkAttributes;->isDefault()Z

    move-result v6

    if-nez v6, :cond_0

    .line 1145
    iget-object v6, p0, Lcom/android/server/ConnectivityService;->mNetRequestersPids:[Ljava/util/List;

    aget-object v3, v6, v4

    .line 1146
    .local v3, pids:Ljava/util/List;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    if-ge v0, v6, :cond_0

    .line 1147
    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 1151
    .local v2, pid:Ljava/lang/Integer;
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-direct {p0, v6, v8}, Lcom/android/server/ConnectivityService;->reassessPidDns(IZ)V

    .line 1146
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1155
    .end local v0           #i:I
    .end local v2           #pid:Ljava/lang/Integer;
    .end local v3           #pids:Ljava/util/List;
    :cond_0
    new-instance v1, Landroid/content/Intent;

    const-string v6, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v1, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1156
    .local v1, intent:Landroid/content/Intent;
    const-string v6, "networkInfo"

    invoke-virtual {v1, v6, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1157
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->isFailover()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1158
    const-string v6, "isFailover"

    invoke-virtual {v1, v6, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1159
    invoke-virtual {p1, v8}, Landroid/net/NetworkInfo;->setFailover(Z)V

    .line 1161
    :cond_1
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getReason()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_2

    .line 1162
    const-string v6, "reason"

    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getReason()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1164
    :cond_2
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_3

    .line 1165
    const-string v6, "extraInfo"

    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1169
    :cond_3
    iget-object v6, p0, Lcom/android/server/ConnectivityService;->mNetAttributes:[Lcom/android/server/ConnectivityService$NetworkAttributes;

    aget-object v6, v6, v4

    invoke-virtual {v6}, Lcom/android/server/ConnectivityService$NetworkAttributes;->isDefault()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 1170
    invoke-direct {p0, v4}, Lcom/android/server/ConnectivityService;->tryFailover(I)V

    .line 1171
    iget v6, p0, Lcom/android/server/ConnectivityService;->mActiveDefaultNetwork:I

    if-eq v6, v9, :cond_6

    .line 1172
    iget-object v6, p0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    iget v7, p0, Lcom/android/server/ConnectivityService;->mActiveDefaultNetwork:I

    aget-object v6, v6, v7

    invoke-virtual {v6}, Landroid/net/NetworkStateTracker;->getNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v5

    .line 1173
    .local v5, switchTo:Landroid/net/NetworkInfo;
    const-string v6, "otherNetwork"

    invoke-virtual {v1, v6, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1179
    .end local v5           #switchTo:Landroid/net/NetworkInfo;
    :cond_4
    :goto_1
    const-string v6, "inetCondition"

    iget v7, p0, Lcom/android/server/ConnectivityService;->mDefaultInetConditionPublished:I

    invoke-virtual {v1, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1181
    invoke-direct {p0, v4}, Lcom/android/server/ConnectivityService;->handleConnectivityChange(I)V

    .line 1183
    invoke-direct {p0, v1}, Lcom/android/server/ConnectivityService;->sendStickyBroadcast(Landroid/content/Intent;)V

    .line 1188
    iget v6, p0, Lcom/android/server/ConnectivityService;->mActiveDefaultNetwork:I

    if-eq v6, v9, :cond_5

    .line 1189
    iget-object v6, p0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    iget v7, p0, Lcom/android/server/ConnectivityService;->mActiveDefaultNetwork:I

    aget-object v6, v6, v7

    invoke-virtual {v6}, Landroid/net/NetworkStateTracker;->getNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/server/ConnectivityService;->sendConnectedBroadcast(Landroid/net/NetworkInfo;)V

    .line 1191
    :cond_5
    return-void

    .line 1175
    :cond_6
    iput v8, p0, Lcom/android/server/ConnectivityService;->mDefaultInetConditionPublished:I

    .line 1176
    const-string v6, "noConnectivity"

    invoke-virtual {v1, v6, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto :goto_1
.end method

.method private handleDnsConfigurationChange(I)V
    .locals 15
    .parameter "netType"

    .prologue
    .line 1519
    iget-object v12, p0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    aget-object v8, v12, p1

    .line 1520
    .local v8, nt:Landroid/net/NetworkStateTracker;
    if-eqz v8, :cond_2

    invoke-virtual {v8}, Landroid/net/NetworkStateTracker;->getNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v12

    invoke-virtual {v12}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v12

    if-eqz v12, :cond_2

    invoke-virtual {v8}, Landroid/net/NetworkStateTracker;->isTeardownRequested()Z

    move-result v12

    if-nez v12, :cond_2

    .line 1521
    invoke-virtual {v8}, Landroid/net/NetworkStateTracker;->getNameServers()[Ljava/lang/String;

    move-result-object v2

    .line 1522
    .local v2, dnsList:[Ljava/lang/String;
    iget-object v12, p0, Lcom/android/server/ConnectivityService;->mNetAttributes:[Lcom/android/server/ConnectivityService$NetworkAttributes;

    aget-object v12, v12, p1

    invoke-virtual {v12}, Lcom/android/server/ConnectivityService$NetworkAttributes;->isDefault()Z

    move-result v12

    if-eqz v12, :cond_3

    .line 1523
    const/4 v4, 0x1

    .line 1524
    .local v4, j:I
    move-object v0, v2

    .local v0, arr$:[Ljava/lang/String;
    array-length v7, v0

    .local v7, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    move v5, v4

    .end local v4           #j:I
    .local v5, j:I
    :goto_0
    if-ge v3, v7, :cond_0

    aget-object v1, v0, v3

    .line 1525
    .local v1, dns:Ljava/lang/String;
    if-eqz v1, :cond_4

    const-string v12, "0.0.0.0"

    invoke-static {v1, v12}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_4

    .line 1527
    const-string v12, "ConnectivityService"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "adding dns "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " for "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v8}, Landroid/net/NetworkStateTracker;->getNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v14

    invoke-virtual {v14}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1530
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "net.dns"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    add-int/lit8 v4, v5, 0x1

    .end local v5           #j:I
    .restart local v4       #j:I
    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1524
    :goto_1
    add-int/lit8 v3, v3, 0x1

    move v5, v4

    .end local v4           #j:I
    .restart local v5       #j:I
    goto :goto_0

    .line 1533
    .end local v1           #dns:Ljava/lang/String;
    :cond_0
    move v6, v5

    .local v6, k:I
    :goto_2
    iget v12, p0, Lcom/android/server/ConnectivityService;->mNumDnsEntries:I

    if-ge v6, v12, :cond_1

    .line 1534
    const-string v12, "ConnectivityService"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "erasing net.dns"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1535
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "net.dns"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    const-string v13, ""

    invoke-static {v12, v13}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1533
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 1537
    :cond_1
    iput v5, p0, Lcom/android/server/ConnectivityService;->mNumDnsEntries:I

    .line 1547
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v2           #dnsList:[Ljava/lang/String;
    .end local v3           #i$:I
    .end local v5           #j:I
    .end local v6           #k:I
    .end local v7           #len$:I
    :cond_2
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->bumpDns()V

    .line 1548
    return-void

    .line 1540
    .restart local v2       #dnsList:[Ljava/lang/String;
    :cond_3
    iget-object v12, p0, Lcom/android/server/ConnectivityService;->mNetRequestersPids:[Ljava/util/List;

    aget-object v10, v12, p1

    .line 1541
    .local v10, pids:Ljava/util/List;
    const/4 v11, 0x0

    .local v11, y:I
    :goto_3
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v12

    if-ge v11, v12, :cond_2

    .line 1542
    invoke-interface {v10, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    .line 1543
    .local v9, pid:Ljava/lang/Integer;
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v12

    invoke-direct {p0, v2, v12}, Lcom/android/server/ConnectivityService;->writePidDns([Ljava/lang/String;I)V

    .line 1541
    add-int/lit8 v11, v11, 0x1

    goto :goto_3

    .end local v9           #pid:Ljava/lang/Integer;
    .end local v10           #pids:Ljava/util/List;
    .end local v11           #y:I
    .restart local v0       #arr$:[Ljava/lang/String;
    .restart local v1       #dns:Ljava/lang/String;
    .restart local v3       #i$:I
    .restart local v5       #j:I
    .restart local v7       #len$:I
    :cond_4
    move v4, v5

    .end local v5           #j:I
    .restart local v4       #j:I
    goto :goto_1
.end method

.method private handleInetConditionChange(II)V
    .locals 6
    .parameter "netType"
    .parameter "condition"

    .prologue
    const-string v3, "ConnectivityService"

    .line 1844
    const-string v1, "ConnectivityService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Inet connectivity change, net="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", condition="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",mActiveDefaultNetwork="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/ConnectivityService;->mActiveDefaultNetwork:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1848
    iget v1, p0, Lcom/android/server/ConnectivityService;->mActiveDefaultNetwork:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 1849
    const-string v1, "ConnectivityService"

    const-string v1, "no active default network - aborting"

    invoke-static {v3, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1876
    :goto_0
    return-void

    .line 1852
    :cond_0
    iget v1, p0, Lcom/android/server/ConnectivityService;->mActiveDefaultNetwork:I

    if-eq v1, p1, :cond_1

    .line 1853
    const-string v1, "ConnectivityService"

    const-string v1, "given net not default - aborting"

    invoke-static {v3, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1856
    :cond_1
    iput p2, p0, Lcom/android/server/ConnectivityService;->mDefaultInetCondition:I

    .line 1858
    iget-boolean v1, p0, Lcom/android/server/ConnectivityService;->mInetConditionChangeInFlight:Z

    if-nez v1, :cond_3

    .line 1859
    const-string v1, "ConnectivityService"

    const-string v1, "starting a change hold"

    invoke-static {v3, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1861
    iget v1, p0, Lcom/android/server/ConnectivityService;->mDefaultInetCondition:I

    const/16 v2, 0x32

    if-le v1, v2, :cond_2

    .line 1862
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "inet_condition_debounce_up_delay"

    const/16 v3, 0x1f4

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 1868
    .local v0, delay:I
    :goto_1
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/ConnectivityService;->mInetConditionChangeInFlight:Z

    .line 1869
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/server/ConnectivityService;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x69

    iget v4, p0, Lcom/android/server/ConnectivityService;->mActiveDefaultNetwork:I

    iget v5, p0, Lcom/android/server/ConnectivityService;->mDefaultConnectionSequence:I

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v2

    int-to-long v3, v0

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 1865
    .end local v0           #delay:I
    :cond_2
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "inet_condition_debounce_down_delay"

    const/16 v3, 0xbb8

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .restart local v0       #delay:I
    goto :goto_1

    .line 1874
    .end local v0           #delay:I
    :cond_3
    const-string v1, "ConnectivityService"

    const-string v1, "currently in hold - not setting new end evt"

    invoke-static {v3, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private handleInetConditionHoldEnd(II)V
    .locals 4
    .parameter "netType"
    .parameter "sequence"

    .prologue
    const-string v3, "ConnectivityService"

    .line 1880
    const-string v1, "ConnectivityService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Inet hold end, net="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", condition ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/ConnectivityService;->mDefaultInetCondition:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", published condition ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/ConnectivityService;->mDefaultInetConditionPublished:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1884
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/ConnectivityService;->mInetConditionChangeInFlight:Z

    .line 1886
    iget v1, p0, Lcom/android/server/ConnectivityService;->mActiveDefaultNetwork:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 1887
    const-string v1, "ConnectivityService"

    const-string v1, "no active default network - aborting"

    invoke-static {v3, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1905
    :goto_0
    return-void

    .line 1890
    :cond_0
    iget v1, p0, Lcom/android/server/ConnectivityService;->mDefaultConnectionSequence:I

    if-eq v1, p2, :cond_1

    .line 1891
    const-string v1, "ConnectivityService"

    const-string v1, "event hold for obsolete network - aborting"

    invoke-static {v3, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1894
    :cond_1
    iget v1, p0, Lcom/android/server/ConnectivityService;->mDefaultInetConditionPublished:I

    iget v2, p0, Lcom/android/server/ConnectivityService;->mDefaultInetCondition:I

    if-ne v1, v2, :cond_2

    .line 1895
    const-string v1, "ConnectivityService"

    const-string v1, "no change in condition - aborting"

    invoke-static {v3, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1898
    :cond_2
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    iget v2, p0, Lcom/android/server/ConnectivityService;->mActiveDefaultNetwork:I

    aget-object v1, v1, v2

    invoke-virtual {v1}, Landroid/net/NetworkStateTracker;->getNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 1899
    .local v0, networkInfo:Landroid/net/NetworkInfo;
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v1

    if-nez v1, :cond_3

    .line 1900
    const-string v1, "ConnectivityService"

    const-string v1, "default network not connected - aborting"

    invoke-static {v3, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1903
    :cond_3
    iget v1, p0, Lcom/android/server/ConnectivityService;->mDefaultInetCondition:I

    iput v1, p0, Lcom/android/server/ConnectivityService;->mDefaultInetConditionPublished:I

    .line 1904
    invoke-direct {p0, v0}, Lcom/android/server/ConnectivityService;->sendInetConditionBroadcast(Landroid/net/NetworkInfo;)V

    goto :goto_0
.end method

.method private handleNotificationChange(ZILandroid/app/Notification;)V
    .locals 3
    .parameter "visible"
    .parameter "id"
    .parameter "notification"

    .prologue
    .line 1398
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    const-string v2, "notification"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 1401
    .local v0, notificationManager:Landroid/app/NotificationManager;
    if-eqz p1, :cond_0

    .line 1402
    invoke-virtual {v0, p2, p3}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 1406
    :goto_0
    return-void

    .line 1404
    :cond_0
    invoke-virtual {v0, p2}, Landroid/app/NotificationManager;->cancel(I)V

    goto :goto_0
.end method

.method private handleScanResultsAvailable(Landroid/net/NetworkInfo;)V
    .locals 4
    .parameter "info"

    .prologue
    .line 1387
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getType()I

    move-result v0

    .line 1388
    .local v0, networkType:I
    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 1389
    const-string v1, "ConnectivityService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Got ScanResultsAvailable for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " network. Don\'t know how to handle."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1393
    :cond_0
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Landroid/net/NetworkStateTracker;->interpretScanResultsAvailable()V

    .line 1394
    return-void
.end method

.method private handleSetBackgroundData(Z)V
    .locals 4
    .parameter "enabled"

    .prologue
    .line 1019
    invoke-virtual {p0}, Lcom/android/server/ConnectivityService;->getBackgroundDataSetting()Z

    move-result v1

    if-eq p1, v1, :cond_0

    .line 1020
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "background_data"

    if-eqz p1, :cond_1

    const/4 v3, 0x1

    :goto_0
    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1022
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.net.conn.BACKGROUND_DATA_SETTING_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1024
    .local v0, broadcast:Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1026
    .end local v0           #broadcast:Landroid/content/Intent;
    :cond_0
    return-void

    .line 1020
    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private handleSetMobileData(Z)V
    .locals 13
    .parameter "enabled"

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x6

    const-string v12, "starting up "

    const-string v11, "ConnectivityService"

    .line 1051
    invoke-virtual {p0}, Lcom/android/server/ConnectivityService;->getMobileDataEnabled()Z

    move-result v6

    if-ne v6, p1, :cond_0

    .line 1087
    :goto_0
    return-void

    .line 1053
    :cond_0
    iget-object v6, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "mobile_data"

    if-eqz p1, :cond_3

    const/4 v8, 0x1

    :goto_1
    invoke-static {v6, v7, v8}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1056
    if-eqz p1, :cond_4

    .line 1057
    iget-object v6, p0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    aget-object v6, v6, v10

    if-eqz v6, :cond_1

    .line 1059
    const-string v6, "ConnectivityService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "starting up "

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    aget-object v7, v7, v10

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v11, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1061
    iget-object v6, p0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    aget-object v6, v6, v10

    invoke-virtual {v6}, Landroid/net/NetworkStateTracker;->reconnect()Z

    .line 1063
    :cond_1
    iget-object v6, p0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    aget-object v6, v6, v9

    if-eqz v6, :cond_2

    .line 1065
    const-string v6, "ConnectivityService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "starting up "

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    aget-object v7, v7, v9

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v11, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1067
    iget-object v6, p0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    aget-object v6, v6, v9

    invoke-virtual {v6}, Landroid/net/NetworkStateTracker;->reconnect()Z

    .line 1084
    :cond_2
    :goto_2
    new-instance v2, Landroid/content/Intent;

    const-string v6, "android.net.conn.MOBILE_DATA_CHANGE"

    invoke-direct {v2, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1085
    .local v2, intent:Landroid/content/Intent;
    iget-object v6, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    invoke-virtual {v6, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    .end local v2           #intent:Landroid/content/Intent;
    :cond_3
    move v8, v10

    .line 1053
    goto :goto_1

    .line 1070
    :cond_4
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    .local v0, arr$:[Landroid/net/NetworkStateTracker;
    array-length v3, v0

    .local v3, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_3
    if-ge v1, v3, :cond_7

    aget-object v5, v0, v1

    .line 1071
    .local v5, nt:Landroid/net/NetworkStateTracker;
    if-nez v5, :cond_6

    .line 1070
    :cond_5
    :goto_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 1072
    :cond_6
    invoke-virtual {v5}, Landroid/net/NetworkStateTracker;->getNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v6

    invoke-virtual {v6}, Landroid/net/NetworkInfo;->getType()I

    move-result v4

    .line 1073
    .local v4, netType:I
    iget-object v6, p0, Lcom/android/server/ConnectivityService;->mNetAttributes:[Lcom/android/server/ConnectivityService$NetworkAttributes;

    aget-object v6, v6, v4

    iget v6, v6, Lcom/android/server/ConnectivityService$NetworkAttributes;->mRadio:I

    if-nez v6, :cond_5

    .line 1074
    const-string v6, "ConnectivityService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "tearing down "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v11, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1075
    invoke-virtual {v5}, Landroid/net/NetworkStateTracker;->teardown()Z

    goto :goto_4

    .line 1078
    .end local v4           #netType:I
    .end local v5           #nt:Landroid/net/NetworkStateTracker;
    :cond_7
    iget-object v6, p0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    aget-object v6, v6, v9

    if-eqz v6, :cond_2

    .line 1079
    iget-object v6, p0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    aget-object v6, v6, v9

    invoke-virtual {v6}, Landroid/net/NetworkStateTracker;->teardown()Z

    goto :goto_2
.end method

.method private handleSetNetworkPreference(I)V
    .locals 2
    .parameter "preference"

    .prologue
    .line 543
    invoke-static {p1}, Landroid/net/ConnectivityManager;->isNetworkTypeValid(I)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mNetAttributes:[Lcom/android/server/ConnectivityService$NetworkAttributes;

    aget-object v1, v1, p1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mNetAttributes:[Lcom/android/server/ConnectivityService$NetworkAttributes;

    aget-object v1, v1, p1

    invoke-virtual {v1}, Lcom/android/server/ConnectivityService$NetworkAttributes;->isDefault()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 546
    iget v1, p0, Lcom/android/server/ConnectivityService;->mNetworkPreference:I

    if-eq v1, p1, :cond_0

    .line 547
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 548
    .local v0, cr:Landroid/content/ContentResolver;
    const-string v1, "network_preference"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 549
    monitor-enter p0

    .line 550
    :try_start_0
    iput p1, p0, Lcom/android/server/ConnectivityService;->mNetworkPreference:I

    .line 551
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 552
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforcePreference()V

    .line 555
    .end local v0           #cr:Landroid/content/ContentResolver;
    :cond_0
    return-void

    .line 551
    .restart local v0       #cr:Landroid/content/ContentResolver;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private makeWimaxStateTracker()Landroid/net/NetworkStateTracker;
    .locals 23

    .prologue
    .line 437
    const/16 v16, 0x0

    .line 438
    .local v16, wimaxStateTrackerClass:Ljava/lang/Class;
    const/4 v13, 0x0

    .line 446
    .local v13, wimaxServiceClass:Ljava/lang/Class;
    const/4 v15, 0x0

    .line 448
    .local v15, wimaxStateTracker:Landroid/net/NetworkStateTracker;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    const v21, 0x10d0024

    invoke-virtual/range {v20 .. v21}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v6

    .line 451
    .local v6, isWimaxEnabled:Z
    if-eqz v6, :cond_0

    .line 453
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    const v21, 0x104001e

    invoke-virtual/range {v20 .. v21}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 455
    .local v9, wimaxJarLocation:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    const v21, 0x104001f

    invoke-virtual/range {v20 .. v21}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 457
    .local v10, wimaxLibLocation:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    const v21, 0x1040020

    invoke-virtual/range {v20 .. v21}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 459
    .local v12, wimaxManagerClassName:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    const v21, 0x1040021

    invoke-virtual/range {v20 .. v21}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 461
    .local v14, wimaxServiceClassName:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    const v21, 0x1040022

    invoke-virtual/range {v20 .. v21}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v17

    .line 464
    .local v17, wimaxStateTrackerClassName:Ljava/lang/String;
    new-instance v8, Ldalvik/system/DexClassLoader;

    new-instance v20, Landroid/content/ContextWrapper;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    invoke-direct/range {v20 .. v21}, Landroid/content/ContextWrapper;-><init>(Landroid/content/Context;)V

    invoke-virtual/range {v20 .. v20}, Landroid/content/ContextWrapper;->getCacheDir()Ljava/io/File;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v20

    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v21

    move-object v0, v8

    move-object v1, v9

    move-object/from16 v2, v20

    move-object v3, v10

    move-object/from16 v4, v21

    invoke-direct {v0, v1, v2, v3, v4}, Ldalvik/system/DexClassLoader;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)V
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    .line 469
    .local v8, wimaxClassLoader:Ldalvik/system/DexClassLoader;
    :try_start_1
    invoke-virtual {v8, v12}, Ldalvik/system/DexClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v11

    .line 470
    .local v11, wimaxManagerClass:Ljava/lang/Class;
    move-object v0, v8

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ldalvik/system/DexClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v16

    .line 471
    invoke-virtual {v8, v14}, Ldalvik/system/DexClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v13

    .line 482
    :try_start_2
    const-string v20, "ConnectivityService"

    const-string v21, "Starting Wimax Service... "

    invoke-static/range {v20 .. v21}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 484
    const/16 v20, 0x2

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Class;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    const-class v22, Landroid/content/Context;

    aput-object v22, v20, v21

    const/16 v21, 0x1

    const-class v22, Landroid/os/Handler;

    aput-object v22, v20, v21

    move-object/from16 v0, v16

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v19

    .line 486
    .local v19, wmxStTrkrConst:Ljava/lang/reflect/Constructor;
    const/16 v20, 0x2

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    move-object/from16 v22, v0

    aput-object v22, v20, v21

    const/16 v21, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService;->mHandler:Landroid/os/Handler;

    move-object/from16 v22, v0

    aput-object v22, v20, v21

    invoke-virtual/range {v19 .. v20}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    .end local v17           #wimaxStateTrackerClassName:Ljava/lang/String;
    move-object/from16 v0, v17

    check-cast v0, Landroid/net/NetworkStateTracker;

    move-object v15, v0

    .line 488
    const/16 v20, 0x2

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Class;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    const-class v22, Landroid/content/Context;

    aput-object v22, v20, v21

    const/16 v21, 0x1

    aput-object v16, v20, v21

    move-object v0, v13

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v18

    .line 490
    .local v18, wmxSrvConst:Ljava/lang/reflect/Constructor;
    const/16 v20, 0x1

    move-object/from16 v0, v18

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    .line 491
    const/16 v20, 0x2

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    move-object/from16 v22, v0

    aput-object v22, v20, v21

    const/16 v21, 0x1

    aput-object v15, v20, v21

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/os/IBinder;

    .line 492
    .local v7, svcInvoker:Landroid/os/IBinder;
    const/16 v20, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    .line 494
    const-string v20, "WiMax"

    move-object/from16 v0, v20

    move-object v1, v7

    invoke-static {v0, v1}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_2
    .catch Ljava/lang/ClassCastException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/InstantiationException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_2 .. :try_end_2} :catch_6
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_7

    move-object/from16 v20, v15

    .line 520
    .end local v7           #svcInvoker:Landroid/os/IBinder;
    .end local v8           #wimaxClassLoader:Ldalvik/system/DexClassLoader;
    .end local v9           #wimaxJarLocation:Ljava/lang/String;
    .end local v10           #wimaxLibLocation:Ljava/lang/String;
    .end local v11           #wimaxManagerClass:Ljava/lang/Class;
    .end local v12           #wimaxManagerClassName:Ljava/lang/String;
    .end local v14           #wimaxServiceClassName:Ljava/lang/String;
    .end local v18           #wmxSrvConst:Ljava/lang/reflect/Constructor;
    .end local v19           #wmxStTrkrConst:Ljava/lang/reflect/Constructor;
    :goto_0
    return-object v20

    .line 472
    .restart local v8       #wimaxClassLoader:Ldalvik/system/DexClassLoader;
    .restart local v9       #wimaxJarLocation:Ljava/lang/String;
    .restart local v10       #wimaxLibLocation:Ljava/lang/String;
    .restart local v12       #wimaxManagerClassName:Ljava/lang/String;
    .restart local v14       #wimaxServiceClassName:Ljava/lang/String;
    .restart local v17       #wimaxStateTrackerClassName:Ljava/lang/String;
    :catch_0
    move-exception v20

    move-object/from16 v5, v20

    .line 473
    .local v5, ex:Ljava/lang/ClassNotFoundException;
    :try_start_3
    invoke-virtual {v5}, Ljava/lang/ClassNotFoundException;->printStackTrace()V
    :try_end_3
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_3 .. :try_end_3} :catch_1

    .line 474
    const/16 v20, 0x0

    goto :goto_0

    .line 476
    .end local v5           #ex:Ljava/lang/ClassNotFoundException;
    .end local v8           #wimaxClassLoader:Ldalvik/system/DexClassLoader;
    .end local v9           #wimaxJarLocation:Ljava/lang/String;
    .end local v10           #wimaxLibLocation:Ljava/lang/String;
    .end local v12           #wimaxManagerClassName:Ljava/lang/String;
    .end local v14           #wimaxServiceClassName:Ljava/lang/String;
    .end local v17           #wimaxStateTrackerClassName:Ljava/lang/String;
    :catch_1
    move-exception v20

    move-object/from16 v5, v20

    .line 477
    .local v5, ex:Landroid/content/res/Resources$NotFoundException;
    const-string v20, "ConnectivityService"

    const-string v21, "Wimax Resources does not exist!!! "

    invoke-static/range {v20 .. v21}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 478
    const/16 v20, 0x0

    goto :goto_0

    .line 496
    .end local v5           #ex:Landroid/content/res/Resources$NotFoundException;
    .restart local v8       #wimaxClassLoader:Ldalvik/system/DexClassLoader;
    .restart local v9       #wimaxJarLocation:Ljava/lang/String;
    .restart local v10       #wimaxLibLocation:Ljava/lang/String;
    .restart local v11       #wimaxManagerClass:Ljava/lang/Class;
    .restart local v12       #wimaxManagerClassName:Ljava/lang/String;
    .restart local v14       #wimaxServiceClassName:Ljava/lang/String;
    :catch_2
    move-exception v20

    move-object/from16 v5, v20

    .line 497
    .local v5, ex:Ljava/lang/ClassCastException;
    invoke-virtual {v5}, Ljava/lang/ClassCastException;->printStackTrace()V

    .line 498
    const/16 v20, 0x0

    goto :goto_0

    .line 499
    .end local v5           #ex:Ljava/lang/ClassCastException;
    :catch_3
    move-exception v20

    move-object/from16 v5, v20

    .line 500
    .local v5, ex:Ljava/lang/NoSuchMethodException;
    invoke-virtual {v5}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    .line 501
    const/16 v20, 0x0

    goto :goto_0

    .line 502
    .end local v5           #ex:Ljava/lang/NoSuchMethodException;
    :catch_4
    move-exception v20

    move-object/from16 v5, v20

    .line 503
    .local v5, ex:Ljava/lang/InstantiationException;
    invoke-virtual {v5}, Ljava/lang/InstantiationException;->printStackTrace()V

    .line 504
    const/16 v20, 0x0

    goto :goto_0

    .line 505
    .end local v5           #ex:Ljava/lang/InstantiationException;
    :catch_5
    move-exception v20

    move-object/from16 v5, v20

    .line 506
    .local v5, ex:Ljava/lang/IllegalAccessException;
    invoke-virtual {v5}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    .line 507
    const/16 v20, 0x0

    goto :goto_0

    .line 508
    .end local v5           #ex:Ljava/lang/IllegalAccessException;
    :catch_6
    move-exception v20

    move-object/from16 v5, v20

    .line 509
    .local v5, ex:Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v5}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    .line 510
    const/16 v20, 0x0

    goto :goto_0

    .line 511
    .end local v5           #ex:Ljava/lang/reflect/InvocationTargetException;
    :catch_7
    move-exception v20

    move-object/from16 v5, v20

    .line 512
    .local v5, ex:Ljava/lang/Exception;
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    .line 513
    const/16 v20, 0x0

    goto :goto_0

    .line 516
    .end local v5           #ex:Ljava/lang/Exception;
    .end local v8           #wimaxClassLoader:Ldalvik/system/DexClassLoader;
    .end local v9           #wimaxJarLocation:Ljava/lang/String;
    .end local v10           #wimaxLibLocation:Ljava/lang/String;
    .end local v11           #wimaxManagerClass:Ljava/lang/Class;
    .end local v12           #wimaxManagerClassName:Ljava/lang/String;
    .end local v14           #wimaxServiceClassName:Ljava/lang/String;
    :cond_0
    const-string v20, "ConnectivityService"

    const-string v21, "Wimax is not enabled or not added to the network attributes!!! "

    invoke-static/range {v20 .. v21}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 517
    const/16 v20, 0x0

    goto :goto_0
.end method

.method private reassessPidDns(IZ)V
    .locals 13
    .parameter "myPid"
    .parameter "doBump"

    .prologue
    .line 1458
    const-string v10, "ConnectivityService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "reassessPidDns for pid "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1459
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mPriorityList:[I

    .local v0, arr$:[I
    array-length v5, v0

    .local v5, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_0
    if-ge v3, v5, :cond_4

    aget v2, v0, v3

    .line 1460
    .local v2, i:I
    iget-object v10, p0, Lcom/android/server/ConnectivityService;->mNetAttributes:[Lcom/android/server/ConnectivityService$NetworkAttributes;

    aget-object v10, v10, v2

    invoke-virtual {v10}, Lcom/android/server/ConnectivityService$NetworkAttributes;->isDefault()Z

    move-result v10

    if-eqz v10, :cond_1

    .line 1459
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1463
    :cond_1
    iget-object v10, p0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    aget-object v6, v10, v2

    .line 1464
    .local v6, nt:Landroid/net/NetworkStateTracker;
    invoke-virtual {v6}, Landroid/net/NetworkStateTracker;->getNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v10

    invoke-virtual {v10}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v10

    if-eqz v10, :cond_0

    invoke-virtual {v6}, Landroid/net/NetworkStateTracker;->isTeardownRequested()Z

    move-result v10

    if-nez v10, :cond_0

    .line 1466
    iget-object v10, p0, Lcom/android/server/ConnectivityService;->mNetRequestersPids:[Ljava/util/List;

    aget-object v8, v10, v2

    .line 1467
    .local v8, pids:Ljava/util/List;
    const/4 v4, 0x0

    .local v4, j:I
    :goto_1
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v10

    if-ge v4, v10, :cond_0

    .line 1468
    invoke-interface {v8, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    .line 1469
    .local v7, pid:Ljava/lang/Integer;
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v10

    if-ne v10, p1, :cond_3

    .line 1470
    invoke-virtual {v6}, Landroid/net/NetworkStateTracker;->getNameServers()[Ljava/lang/String;

    move-result-object v1

    .line 1471
    .local v1, dnsList:[Ljava/lang/String;
    invoke-direct {p0, v1, p1}, Lcom/android/server/ConnectivityService;->writePidDns([Ljava/lang/String;I)V

    .line 1472
    if-eqz p2, :cond_2

    .line 1473
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->bumpDns()V

    .line 1487
    .end local v1           #dnsList:[Ljava/lang/String;
    .end local v4           #j:I
    .end local v6           #nt:Landroid/net/NetworkStateTracker;
    .end local v7           #pid:Ljava/lang/Integer;
    .end local v8           #pids:Ljava/util/List;
    :cond_2
    :goto_2
    return-void

    .line 1467
    .restart local v4       #j:I
    .restart local v6       #nt:Landroid/net/NetworkStateTracker;
    .restart local v7       #pid:Ljava/lang/Integer;
    .restart local v8       #pids:Ljava/util/List;
    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 1481
    .end local v2           #i:I
    .end local v4           #j:I
    .end local v6           #nt:Landroid/net/NetworkStateTracker;
    .end local v7           #pid:Ljava/lang/Integer;
    .end local v8           #pids:Ljava/util/List;
    :cond_4
    const/4 v2, 0x1

    .line 1482
    .restart local v2       #i:I
    :goto_3
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "net.dns"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "."

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 1483
    .local v9, prop:Ljava/lang/String;
    invoke-static {v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    if-nez v10, :cond_5

    .line 1484
    if-eqz p2, :cond_2

    .line 1485
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->bumpDns()V

    goto :goto_2

    .line 1489
    :cond_5
    const-string v10, ""

    invoke-static {v9, v10}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1481
    add-int/lit8 v2, v2, 0x1

    goto :goto_3
.end method

.method private removeDefaultRouteForMMSOnly(I)V
    .locals 1
    .parameter "netType"

    .prologue
    .line 1996
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->getSktDataNetworkDisable()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    .line 1999
    :cond_0
    :goto_0
    return-void

    .line 1998
    :cond_1
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Landroid/net/NetworkStateTracker;->removeForceDefaultRoute()V

    goto :goto_0
.end method

.method private sendConnectedBroadcast(Landroid/net/NetworkInfo;)V
    .locals 1
    .parameter "info"

    .prologue
    .line 1232
    const-string v0, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {p0, p1, v0}, Lcom/android/server/ConnectivityService;->sendGeneralBroadcast(Landroid/net/NetworkInfo;Ljava/lang/String;)V

    .line 1233
    return-void
.end method

.method private sendGeneralBroadcast(Landroid/net/NetworkInfo;Ljava/lang/String;)V
    .locals 3
    .parameter "info"
    .parameter "bcastType"

    .prologue
    .line 1240
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1241
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "networkInfo"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1242
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->isFailover()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1243
    const-string v1, "isFailover"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1244
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/net/NetworkInfo;->setFailover(Z)V

    .line 1246
    :cond_0
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getReason()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 1247
    const-string v1, "reason"

    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getReason()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1249
    :cond_1
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 1250
    const-string v1, "extraInfo"

    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1253
    :cond_2
    const-string v1, "inetCondition"

    iget v2, p0, Lcom/android/server/ConnectivityService;->mDefaultInetConditionPublished:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1254
    invoke-direct {p0, v0}, Lcom/android/server/ConnectivityService;->sendStickyBroadcast(Landroid/content/Intent;)V

    .line 1255
    return-void
.end method

.method private sendInetConditionBroadcast(Landroid/net/NetworkInfo;)V
    .locals 1
    .parameter "info"

    .prologue
    .line 1236
    const-string v0, "android.net.conn.INET_CONDITION_ACTION"

    invoke-direct {p0, p1, v0}, Lcom/android/server/ConnectivityService;->sendGeneralBroadcast(Landroid/net/NetworkInfo;Ljava/lang/String;)V

    .line 1237
    return-void
.end method

.method private sendStickyBroadcast(Landroid/content/Intent;)V
    .locals 1
    .parameter "intent"

    .prologue
    .line 1314
    monitor-enter p0

    .line 1315
    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/ConnectivityService;->mSystemReady:Z

    if-nez v0, :cond_0

    .line 1316
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    iput-object v0, p0, Lcom/android/server/ConnectivityService;->mInitialBroadcast:Landroid/content/Intent;

    .line 1318
    :cond_0
    const/high16 v0, 0x1000

    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1319
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    .line 1320
    monitor-exit p0

    .line 1321
    return-void

    .line 1320
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private stopUsingNetworkFeature(Lcom/android/server/ConnectivityService$FeatureUser;Z)I
    .locals 13
    .parameter "u"
    .parameter "ignoreDups"

    .prologue
    .line 875
    iget v4, p1, Lcom/android/server/ConnectivityService$FeatureUser;->mNetworkType:I

    .line 876
    .local v4, networkType:I
    iget-object v2, p1, Lcom/android/server/ConnectivityService$FeatureUser;->mFeature:Ljava/lang/String;

    .line 877
    .local v2, feature:Ljava/lang/String;
    iget v5, p1, Lcom/android/server/ConnectivityService$FeatureUser;->mPid:I

    .line 878
    .local v5, pid:I
    iget v7, p1, Lcom/android/server/ConnectivityService$FeatureUser;->mUid:I

    .line 880
    .local v7, uid:I
    const/4 v6, 0x0

    .line 881
    .local v6, tracker:Landroid/net/NetworkStateTracker;
    const/4 v0, 0x0

    .line 884
    .local v0, callTeardown:Z
    const-string v10, "ConnectivityService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "stopUsingNetworkFeature for net "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ": "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 888
    invoke-static {v4}, Landroid/net/ConnectivityManager;->isNetworkTypeValid(I)Z

    move-result v10

    if-nez v10, :cond_0

    .line 889
    const/4 v10, -0x1

    .line 962
    :goto_0
    return v10

    .line 894
    :cond_0
    monitor-enter p0

    .line 896
    :try_start_0
    iget-object v10, p0, Lcom/android/server/ConnectivityService;->mFeatureUsers:Ljava/util/List;

    invoke-interface {v10, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_1

    .line 897
    const-string v10, "ConnectivityService"

    const-string v11, "ignoring - this process has no outstanding requests"

    invoke-static {v10, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 898
    const/4 v10, 0x1

    monitor-exit p0

    goto :goto_0

    .line 955
    :catchall_0
    move-exception v10

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v10

    .line 900
    :cond_1
    :try_start_1
    invoke-virtual {p1}, Lcom/android/server/ConnectivityService$FeatureUser;->unlinkDeathRecipient()V

    .line 901
    iget-object v10, p0, Lcom/android/server/ConnectivityService;->mFeatureUsers:Ljava/util/List;

    iget-object v11, p0, Lcom/android/server/ConnectivityService;->mFeatureUsers:Ljava/util/List;

    invoke-interface {v11, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v11

    invoke-interface {v10, v11}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 909
    if-nez p2, :cond_3

    .line 910
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    iget-object v10, p0, Lcom/android/server/ConnectivityService;->mFeatureUsers:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    if-ge v3, v10, :cond_3

    .line 911
    iget-object v10, p0, Lcom/android/server/ConnectivityService;->mFeatureUsers:Ljava/util/List;

    invoke-interface {v10, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/ConnectivityService$FeatureUser;

    .line 912
    .local v9, x:Lcom/android/server/ConnectivityService$FeatureUser;
    iget v10, v9, Lcom/android/server/ConnectivityService$FeatureUser;->mUid:I

    iget v11, p1, Lcom/android/server/ConnectivityService$FeatureUser;->mUid:I

    if-ne v10, v11, :cond_2

    iget v10, v9, Lcom/android/server/ConnectivityService$FeatureUser;->mPid:I

    iget v11, p1, Lcom/android/server/ConnectivityService$FeatureUser;->mPid:I

    if-ne v10, v11, :cond_2

    iget v10, v9, Lcom/android/server/ConnectivityService$FeatureUser;->mNetworkType:I

    iget v11, p1, Lcom/android/server/ConnectivityService$FeatureUser;->mNetworkType:I

    if-ne v10, v11, :cond_2

    iget-object v10, v9, Lcom/android/server/ConnectivityService$FeatureUser;->mFeature:Ljava/lang/String;

    iget-object v11, p1, Lcom/android/server/ConnectivityService$FeatureUser;->mFeature:Ljava/lang/String;

    invoke-static {v10, v11}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 915
    const-string v10, "ConnectivityService"

    const-string v11, "ignoring stopUsingNetworkFeature as dup is found"

    invoke-static {v10, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 916
    const/4 v10, 0x1

    monitor-exit p0

    goto :goto_0

    .line 910
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 925
    .end local v3           #i:I
    .end local v9           #x:Lcom/android/server/ConnectivityService$FeatureUser;
    :cond_3
    move v8, v4

    .line 926
    .local v8, usedNetworkType:I
    if-nez v4, :cond_4

    .line 927
    const-string v10, "enableMMS"

    invoke-static {v2, v10}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 928
    const/4 v8, 0x2

    .line 939
    :cond_4
    :goto_2
    iget-object v10, p0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    aget-object v6, v10, v8

    .line 940
    if-nez v6, :cond_9

    .line 941
    const-string v10, "ConnectivityService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "ignoring - no known tracker for net type "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 942
    const/4 v10, -0x1

    monitor-exit p0

    goto/16 :goto_0

    .line 929
    :cond_5
    const-string v10, "enableSUPL"

    invoke-static {v2, v10}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_6

    .line 930
    const/4 v8, 0x3

    goto :goto_2

    .line 931
    :cond_6
    const-string v10, "enableDUN"

    invoke-static {v2, v10}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_7

    .line 932
    const/4 v8, 0x4

    goto :goto_2

    .line 933
    :cond_7
    const-string v10, "enableBIP"

    invoke-static {v2, v10}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_8

    .line 934
    const/16 v8, 0xa

    goto :goto_2

    .line 935
    :cond_8
    const-string v10, "enableHIPRI"

    invoke-static {v2, v10}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 936
    const/4 v8, 0x5

    goto :goto_2

    .line 944
    :cond_9
    if-eq v8, v4, :cond_b

    .line 945
    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, v5}, Ljava/lang/Integer;-><init>(I)V

    .line 946
    .local v1, currentPid:Ljava/lang/Integer;
    iget-object v10, p0, Lcom/android/server/ConnectivityService;->mNetRequestersPids:[Ljava/util/List;

    aget-object v10, v10, v8

    invoke-interface {v10, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 947
    const/4 v10, 0x1

    invoke-direct {p0, v5, v10}, Lcom/android/server/ConnectivityService;->reassessPidDns(IZ)V

    .line 948
    iget-object v10, p0, Lcom/android/server/ConnectivityService;->mNetRequestersPids:[Ljava/util/List;

    aget-object v10, v10, v8

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    if-eqz v10, :cond_a

    .line 949
    const-string v10, "ConnectivityService"

    const-string v11, "not tearing down special network - others still using it"

    invoke-static {v10, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 951
    const/4 v10, 0x1

    monitor-exit p0

    goto/16 :goto_0

    .line 953
    :cond_a
    const/4 v0, 0x1

    .line 955
    .end local v1           #currentPid:Ljava/lang/Integer;
    :cond_b
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 956
    const-string v10, "ConnectivityService"

    const-string v11, "Doing network teardown"

    invoke-static {v10, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 957
    if-eqz v0, :cond_c

    .line 958
    invoke-virtual {v6}, Landroid/net/NetworkStateTracker;->teardown()Z

    .line 959
    const/4 v10, 0x1

    goto/16 :goto_0

    .line 962
    :cond_c
    invoke-virtual {v6, v2, v5, v7}, Landroid/net/NetworkStateTracker;->stopUsingNetworkFeature(Ljava/lang/String;II)I

    move-result v10

    goto/16 :goto_0
.end method

.method private teardown(Landroid/net/NetworkStateTracker;)Z
    .locals 2
    .parameter "netTracker"

    .prologue
    const/4 v1, 0x1

    .line 597
    invoke-virtual {p1}, Landroid/net/NetworkStateTracker;->teardown()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 598
    invoke-virtual {p1, v1}, Landroid/net/NetworkStateTracker;->setTeardownRequested(Z)V

    move v0, v1

    .line 601
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private tryFailover(I)V
    .locals 10
    .parameter "prevNetType"

    .prologue
    const/4 v7, 0x1

    const-string v9, "not failing over to mobile type "

    const-string v8, " because Mobile Data Disabled"

    const-string v6, "ConnectivityService"

    .line 1198
    iget-object v4, p0, Lcom/android/server/ConnectivityService;->mNetAttributes:[Lcom/android/server/ConnectivityService$NetworkAttributes;

    aget-object v4, v4, p1

    invoke-virtual {v4}, Lcom/android/server/ConnectivityService$NetworkAttributes;->isDefault()Z

    move-result v4

    if-eqz v4, :cond_8

    .line 1199
    iget v4, p0, Lcom/android/server/ConnectivityService;->mActiveDefaultNetwork:I

    if-ne v4, p1, :cond_0

    .line 1200
    const/4 v4, -0x1

    iput v4, p0, Lcom/android/server/ConnectivityService;->mActiveDefaultNetwork:I

    .line 1203
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/ConnectivityService;->getMobileDataEnabled()Z

    move-result v4

    if-nez v4, :cond_2

    move v3, v7

    .line 1204
    .local v3, noMobileData:Z
    :goto_0
    const/4 v2, 0x0

    .local v2, checkType:I
    :goto_1
    const/16 v4, 0xa

    if-gt v2, v4, :cond_8

    .line 1205
    if-ne v2, p1, :cond_3

    .line 1204
    :cond_1
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1203
    .end local v2           #checkType:I
    .end local v3           #noMobileData:Z
    :cond_2
    const/4 v4, 0x0

    move v3, v4

    goto :goto_0

    .line 1206
    .restart local v2       #checkType:I
    .restart local v3       #noMobileData:Z
    :cond_3
    iget-object v4, p0, Lcom/android/server/ConnectivityService;->mNetAttributes:[Lcom/android/server/ConnectivityService$NetworkAttributes;

    aget-object v4, v4, v2

    if-eqz v4, :cond_1

    .line 1207
    iget-object v4, p0, Lcom/android/server/ConnectivityService;->mNetAttributes:[Lcom/android/server/ConnectivityService$NetworkAttributes;

    aget-object v4, v4, v2

    invoke-virtual {v4}, Lcom/android/server/ConnectivityService$NetworkAttributes;->isDefault()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1208
    iget-object v4, p0, Lcom/android/server/ConnectivityService;->mNetAttributes:[Lcom/android/server/ConnectivityService$NetworkAttributes;

    aget-object v4, v4, v2

    iget v4, v4, Lcom/android/server/ConnectivityService$NetworkAttributes;->mRadio:I

    if-nez v4, :cond_4

    if-eqz v3, :cond_4

    .line 1210
    const-string v4, "ConnectivityService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "not failing over to mobile type "

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " because Mobile Data Disabled"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 1214
    :cond_4
    iget-object v4, p0, Lcom/android/server/ConnectivityService;->mNetAttributes:[Lcom/android/server/ConnectivityService$NetworkAttributes;

    aget-object v4, v4, v2

    iget v4, v4, Lcom/android/server/ConnectivityService$NetworkAttributes;->mRadio:I

    const/4 v5, 0x6

    if-ne v4, v5, :cond_5

    if-eqz v3, :cond_5

    .line 1216
    const-string v4, "ConnectivityService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "not failing over to mobile type "

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " because Mobile Data Disabled"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 1220
    :cond_5
    iget-object v4, p0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    aget-object v1, v4, v2

    .line 1221
    .local v1, checkTracker:Landroid/net/NetworkStateTracker;
    invoke-virtual {v1}, Landroid/net/NetworkStateTracker;->getNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 1222
    .local v0, checkInfo:Landroid/net/NetworkInfo;
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-virtual {v1}, Landroid/net/NetworkStateTracker;->isTeardownRequested()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 1223
    :cond_6
    invoke-virtual {v0, v7}, Landroid/net/NetworkInfo;->setFailover(Z)V

    .line 1224
    invoke-virtual {v1}, Landroid/net/NetworkStateTracker;->reconnect()Z

    .line 1226
    :cond_7
    const-string v4, "ConnectivityService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Attempting to switch to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 1229
    .end local v0           #checkInfo:Landroid/net/NetworkInfo;
    .end local v1           #checkTracker:Landroid/net/NetworkStateTracker;
    .end local v2           #checkType:I
    .end local v3           #noMobileData:Z
    :cond_8
    return-void
.end method

.method private writePidDns([Ljava/lang/String;I)V
    .locals 8
    .parameter "dnsList"
    .parameter "pid"

    .prologue
    .line 1494
    const/4 v3, 0x1

    .line 1495
    .local v3, j:I
    move-object v0, p1

    .local v0, arr$:[Ljava/lang/String;
    array-length v5, v0

    .local v5, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    move v4, v3

    .end local v3           #j:I
    .local v4, j:I
    :goto_0
    if-ge v2, v5, :cond_0

    aget-object v1, v0, v2

    .line 1496
    .local v1, dns:Ljava/lang/String;
    if-eqz v1, :cond_1

    const-string v6, "0.0.0.0"

    invoke-static {v1, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 1497
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "net.dns"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    add-int/lit8 v3, v4, 0x1

    .end local v4           #j:I
    .restart local v3       #j:I
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1495
    :goto_1
    add-int/lit8 v2, v2, 0x1

    move v4, v3

    .end local v3           #j:I
    .restart local v4       #j:I
    goto :goto_0

    .line 1500
    .end local v1           #dns:Ljava/lang/String;
    :cond_0
    return-void

    .restart local v1       #dns:Ljava/lang/String;
    :cond_1
    move v3, v4

    .end local v4           #j:I
    .restart local v3       #j:I
    goto :goto_1
.end method


# virtual methods
.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 12
    .parameter "fd"
    .parameter "pw"
    .parameter "args"

    .prologue
    .line 1565
    iget-object v10, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    const-string v11, "android.permission.DUMP"

    invoke-virtual {v10, v11}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v10

    if-eqz v10, :cond_1

    .line 1568
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Permission Denial: can\'t dump ConnectivityService from from pid="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", uid="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1611
    :cond_0
    return-void

    .line 1573
    :cond_1
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 1574
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    .local v0, arr$:[Landroid/net/NetworkStateTracker;
    array-length v4, v0

    .local v4, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v4, :cond_4

    aget-object v6, v0, v2

    .line 1575
    .local v6, nst:Landroid/net/NetworkStateTracker;
    if-eqz v6, :cond_3

    .line 1576
    invoke-virtual {v6}, Landroid/net/NetworkStateTracker;->getNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v10

    invoke-virtual {v10}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v10

    if-eqz v10, :cond_2

    .line 1577
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Active network: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v6}, Landroid/net/NetworkStateTracker;->getNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v11

    invoke-virtual {v11}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1580
    :cond_2
    invoke-virtual {v6}, Landroid/net/NetworkStateTracker;->getNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v10

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1581
    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1582
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 1574
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1586
    .end local v6           #nst:Landroid/net/NetworkStateTracker;
    :cond_4
    const-string v10, "Network Requester Pids:"

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1587
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mPriorityList:[I

    .local v0, arr$:[I
    array-length v4, v0

    const/4 v2, 0x0

    move v3, v2

    .end local v2           #i$:I
    .local v3, i$:I
    :goto_1
    if-ge v3, v4, :cond_6

    aget v5, v0, v3

    .line 1588
    .local v5, net:I
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ": "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 1589
    .local v8, pidString:Ljava/lang/String;
    iget-object v10, p0, Lcom/android/server/ConnectivityService;->mNetRequestersPids:[Ljava/util/List;

    aget-object v10, v10, v5

    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .end local v3           #i$:I
    .local v2, i$:Ljava/util/Iterator;
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    .line 1590
    .local v7, pid:Ljava/lang/Object;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    goto :goto_2

    .line 1592
    .end local v7           #pid:Ljava/lang/Object;
    :cond_5
    invoke-virtual {p2, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1587
    add-int/lit8 v2, v3, 0x1

    .local v2, i$:I
    move v3, v2

    .end local v2           #i$:I
    .restart local v3       #i$:I
    goto :goto_1

    .line 1594
    .end local v5           #net:I
    .end local v8           #pidString:Ljava/lang/String;
    :cond_6
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 1596
    const-string v10, "FeatureUsers:"

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1597
    iget-object v10, p0, Lcom/android/server/ConnectivityService;->mFeatureUsers:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .end local v3           #i$:I
    .local v2, i$:Ljava/util/Iterator;
    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    .line 1598
    .local v9, requester:Ljava/lang/Object;
    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_3

    .line 1600
    .end local v9           #requester:Ljava/lang/Object;
    :cond_7
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 1602
    iget-object v10, p0, Lcom/android/server/ConnectivityService;->mTethering:Lcom/android/server/connectivity/Tethering;

    invoke-virtual {v10, p1, p2, p3}, Lcom/android/server/connectivity/Tethering;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 1604
    iget-object v10, p0, Lcom/android/server/ConnectivityService;->mInetLog:Ljava/util/ArrayList;

    if-eqz v10, :cond_0

    .line 1605
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 1606
    const-string v10, "Inet condition reports:"

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1607
    const/4 v1, 0x0

    .local v1, i:I
    :goto_4
    iget-object v10, p0, Lcom/android/server/ConnectivityService;->mInetLog:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-ge v1, v10, :cond_0

    .line 1608
    iget-object v10, p0, Lcom/android/server/ConnectivityService;->mInetLog:Ljava/util/ArrayList;

    invoke-virtual {v10, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1607
    add-int/lit8 v1, v1, 0x1

    goto :goto_4
.end method

.method public getActiveNetworkInfo()Landroid/net/NetworkInfo;
    .locals 2

    .prologue
    .line 613
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceAccessPermission()V

    .line 614
    iget v0, p0, Lcom/android/server/ConnectivityService;->mActiveDefaultNetwork:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 615
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    iget v1, p0, Lcom/android/server/ConnectivityService;->mActiveDefaultNetwork:I

    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroid/net/NetworkStateTracker;->getNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 617
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getAllNetworkInfo()[Landroid/net/NetworkInfo;
    .locals 8

    .prologue
    .line 631
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceAccessPermission()V

    .line 632
    iget v7, p0, Lcom/android/server/ConnectivityService;->mNetworksDefined:I

    new-array v5, v7, [Landroid/net/NetworkInfo;

    .line 633
    .local v5, result:[Landroid/net/NetworkInfo;
    const/4 v1, 0x0

    .line 634
    .local v1, i:I
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    .local v0, arr$:[Landroid/net/NetworkStateTracker;
    array-length v4, v0

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    move v2, v1

    .end local v1           #i:I
    .local v2, i:I
    :goto_0
    if-ge v3, v4, :cond_0

    aget-object v6, v0, v3

    .line 635
    .local v6, t:Landroid/net/NetworkStateTracker;
    if-eqz v6, :cond_1

    add-int/lit8 v1, v2, 0x1

    .end local v2           #i:I
    .restart local v1       #i:I
    invoke-virtual {v6}, Landroid/net/NetworkStateTracker;->getNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v7

    aput-object v7, v5, v2

    .line 634
    :goto_1
    add-int/lit8 v3, v3, 0x1

    move v2, v1

    .end local v1           #i:I
    .restart local v2       #i:I
    goto :goto_0

    .line 637
    .end local v6           #t:Landroid/net/NetworkStateTracker;
    :cond_0
    return-object v5

    .restart local v6       #t:Landroid/net/NetworkStateTracker;
    :cond_1
    move v1, v2

    .end local v2           #i:I
    .restart local v1       #i:I
    goto :goto_1
.end method

.method public getBackgroundDataSetting()Z
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 1002
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "background_data"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v2, :cond_0

    move v0, v2

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getInterfaceName(ILjava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "networkType"
    .parameter "feature"

    .prologue
    .line 1910
    move v1, p1

    .line 1911
    .local v1, usedNetworkType:I
    if-nez p1, :cond_0

    .line 1912
    if-nez p2, :cond_1

    .line 1913
    const/4 v1, 0x0

    .line 1929
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    aget-object v0, v2, v1

    .line 1931
    .local v0, network:Landroid/net/NetworkStateTracker;
    invoke-virtual {v0}, Landroid/net/NetworkStateTracker;->getInterfaceName()Ljava/lang/String;

    move-result-object v2

    .end local v0           #network:Landroid/net/NetworkStateTracker;
    :goto_1
    return-object v2

    .line 1914
    :cond_1
    const-string v2, "enableMMS"

    invoke-static {p2, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1915
    const/4 v1, 0x2

    goto :goto_0

    .line 1916
    :cond_2
    const-string v2, "enableSUPL"

    invoke-static {p2, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1917
    const/4 v1, 0x3

    goto :goto_0

    .line 1918
    :cond_3
    const-string v2, "enableDUN"

    invoke-static {p2, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1919
    const/4 v1, 0x4

    goto :goto_0

    .line 1920
    :cond_4
    const-string v2, "enableBIP"

    invoke-static {p2, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1921
    const/16 v1, 0xa

    goto :goto_0

    .line 1922
    :cond_5
    const-string v2, "enableHIPRI"

    invoke-static {p2, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1923
    const/4 v1, 0x5

    goto :goto_0

    .line 1925
    :cond_6
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public getLastTetherError(Ljava/lang/String;)I
    .locals 1
    .parameter "iface"

    .prologue
    .line 1764
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceTetherAccessPermission()V

    .line 1766
    invoke-virtual {p0}, Lcom/android/server/ConnectivityService;->isTetheringSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1767
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mTethering:Lcom/android/server/connectivity/Tethering;

    invoke-virtual {v0, p1}, Lcom/android/server/connectivity/Tethering;->getLastTetherError(Ljava/lang/String;)I

    move-result v0

    .line 1769
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x3

    goto :goto_0
.end method

.method public getMobileDataEnabled()Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 1032
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceAccessPermission()V

    .line 1033
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "mobile_data"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v3, :cond_0

    move v0, v3

    .line 1035
    .local v0, retVal:Z
    :goto_0
    const-string v1, "ConnectivityService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getMobileDataEnabled returning "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1036
    return v0

    .line 1033
    .end local v0           #retVal:Z
    :cond_0
    const/4 v1, 0x0

    move v0, v1

    goto :goto_0
.end method

.method public getNameServers(ILjava/lang/String;)[Ljava/lang/String;
    .locals 3
    .parameter "networkType"
    .parameter "feature"

    .prologue
    .line 1937
    move v1, p1

    .line 1938
    .local v1, usedNetworkType:I
    if-nez p1, :cond_0

    .line 1939
    if-nez p2, :cond_1

    .line 1940
    const/4 v1, 0x0

    .line 1956
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    aget-object v0, v2, v1

    .line 1958
    .local v0, network:Landroid/net/NetworkStateTracker;
    invoke-virtual {v0}, Landroid/net/NetworkStateTracker;->getNameServers()[Ljava/lang/String;

    move-result-object v2

    .end local v0           #network:Landroid/net/NetworkStateTracker;
    :goto_1
    return-object v2

    .line 1941
    :cond_1
    const-string v2, "enableMMS"

    invoke-static {p2, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1942
    const/4 v1, 0x2

    goto :goto_0

    .line 1943
    :cond_2
    const-string v2, "enableSUPL"

    invoke-static {p2, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1944
    const/4 v1, 0x3

    goto :goto_0

    .line 1945
    :cond_3
    const-string v2, "enableDUN"

    invoke-static {p2, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1946
    const/4 v1, 0x4

    goto :goto_0

    .line 1947
    :cond_4
    const-string v2, "enableBIP"

    invoke-static {p2, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1948
    const/16 v1, 0xa

    goto :goto_0

    .line 1949
    :cond_5
    const-string v2, "enableHIPRI"

    invoke-static {p2, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1950
    const/4 v1, 0x5

    goto :goto_0

    .line 1952
    :cond_6
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    goto :goto_1
.end method

.method public getNetworkInfo(I)Landroid/net/NetworkInfo;
    .locals 2
    .parameter "networkType"

    .prologue
    .line 621
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceAccessPermission()V

    .line 622
    invoke-static {p1}, Landroid/net/ConnectivityManager;->isNetworkTypeValid(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 623
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    aget-object v0, v1, p1

    .line 624
    .local v0, t:Landroid/net/NetworkStateTracker;
    if-eqz v0, :cond_0

    .line 625
    invoke-virtual {v0}, Landroid/net/NetworkStateTracker;->getNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 627
    .end local v0           #t:Landroid/net/NetworkStateTracker;
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getNetworkPreference()I
    .locals 2

    .prologue
    .line 534
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceAccessPermission()V

    .line 536
    monitor-enter p0

    .line 537
    :try_start_0
    iget v0, p0, Lcom/android/server/ConnectivityService;->mNetworkPreference:I

    .line 538
    .local v0, preference:I
    monitor-exit p0

    .line 539
    return v0

    .line 538
    .end local v0           #preference:I
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getTetherableIfaces()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 1795
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceTetherAccessPermission()V

    .line 1796
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mTethering:Lcom/android/server/connectivity/Tethering;

    invoke-virtual {v0}, Lcom/android/server/connectivity/Tethering;->getTetherableIfaces()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTetherableUsbRegexs()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 1775
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceTetherAccessPermission()V

    .line 1776
    invoke-virtual {p0}, Lcom/android/server/ConnectivityService;->isTetheringSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1777
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mTethering:Lcom/android/server/connectivity/Tethering;

    invoke-virtual {v0}, Lcom/android/server/connectivity/Tethering;->getTetherableUsbRegexs()[Ljava/lang/String;

    move-result-object v0

    .line 1779
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    goto :goto_0
.end method

.method public getTetherableWifiRegexs()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 1784
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceTetherAccessPermission()V

    .line 1785
    invoke-virtual {p0}, Lcom/android/server/ConnectivityService;->isTetheringSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1786
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mTethering:Lcom/android/server/connectivity/Tethering;

    invoke-virtual {v0}, Lcom/android/server/connectivity/Tethering;->getTetherableWifiRegexs()[Ljava/lang/String;

    move-result-object v0

    .line 1788
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    goto :goto_0
.end method

.method public getTetheredIfaces()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 1800
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceTetherAccessPermission()V

    .line 1801
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mTethering:Lcom/android/server/connectivity/Tethering;

    invoke-virtual {v0}, Lcom/android/server/connectivity/Tethering;->getTetheredIfaces()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTetheringErroredIfaces()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 1805
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceTetherAccessPermission()V

    .line 1806
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mTethering:Lcom/android/server/connectivity/Tethering;

    invoke-virtual {v0}, Lcom/android/server/connectivity/Tethering;->getErroredIfaces()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isTetheringSupported()Z
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1813
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceTetherAccessPermission()V

    .line 1814
    const-string v2, "ro.tether.denied"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "true"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v0, v4

    .line 1815
    .local v0, defaultVal:I
    :goto_0
    iget-object v2, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "tether_supported"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_1

    move v1, v5

    .line 1817
    .local v1, tetherEnabledInSettings:Z
    :goto_1
    if-eqz v1, :cond_2

    iget-boolean v2, p0, Lcom/android/server/ConnectivityService;->mTetheringConfigValid:Z

    if-eqz v2, :cond_2

    move v2, v5

    :goto_2
    return v2

    .end local v0           #defaultVal:I
    .end local v1           #tetherEnabledInSettings:Z
    :cond_0
    move v0, v5

    .line 1814
    goto :goto_0

    .restart local v0       #defaultVal:I
    :cond_1
    move v1, v4

    .line 1815
    goto :goto_1

    .restart local v1       #tetherEnabledInSettings:Z
    :cond_2
    move v2, v4

    .line 1817
    goto :goto_2
.end method

.method public reportInetCondition(II)V
    .locals 7
    .parameter "networkType"
    .parameter "percentage"

    .prologue
    const-string v6, "ConnectivityService"

    .line 1822
    const-string v3, "ConnectivityService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "reportNetworkCondition("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1823
    iget-object v3, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    const-string v4, "android.permission.STATUS_BAR"

    const-string v5, "ConnectivityService"

    invoke-virtual {v3, v4, v6}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1828
    invoke-static {}, Lcom/android/server/ConnectivityService;->getCallingPid()I

    move-result v0

    .line 1829
    .local v0, pid:I
    invoke-static {}, Lcom/android/server/ConnectivityService;->getCallingUid()I

    move-result v2

    .line 1830
    .local v2, uid:I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ") reports inet is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x32

    if-le p2, v4, :cond_0

    const-string v4, "connected"

    :goto_0
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ") on "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "network Type "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " at "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Ljava/util/GregorianCalendar;->getInstance()Ljava/util/Calendar;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1833
    .local v1, s:Ljava/lang/String;
    iget-object v3, p0, Lcom/android/server/ConnectivityService;->mInetLog:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1834
    :goto_1
    iget-object v3, p0, Lcom/android/server/ConnectivityService;->mInetLog:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/16 v4, 0xf

    if-le v3, v4, :cond_1

    .line 1835
    iget-object v3, p0, Lcom/android/server/ConnectivityService;->mInetLog:Ljava/util/ArrayList;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_1

    .line 1830
    .end local v1           #s:Ljava/lang/String;
    :cond_0
    const-string v4, "disconnected"

    goto :goto_0

    .line 1838
    .restart local v1       #s:Ljava/lang/String;
    :cond_1
    iget-object v3, p0, Lcom/android/server/ConnectivityService;->mHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/android/server/ConnectivityService;->mHandler:Landroid/os/Handler;

    const/16 v5, 0x68

    invoke-virtual {v4, v5, p1, p2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1840
    return-void
.end method

.method public requestRouteToHost(II)Z
    .locals 5
    .parameter "networkType"
    .parameter "hostAddress"

    .prologue
    const/4 v4, 0x0

    .line 976
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceChangePermission()V

    .line 977
    invoke-static {p1}, Landroid/net/ConnectivityManager;->isNetworkTypeValid(I)Z

    move-result v1

    if-nez v1, :cond_0

    move v1, v4

    .line 995
    :goto_0
    return v1

    .line 980
    :cond_0
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    aget-object v0, v1, p1

    .line 982
    .local v0, tracker:Landroid/net/NetworkStateTracker;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/net/NetworkStateTracker;->getNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Landroid/net/NetworkStateTracker;->isTeardownRequested()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 985
    :cond_1
    const-string v1, "ConnectivityService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "requestRouteToHost on down network ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") - dropped"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v4

    .line 987
    goto :goto_0

    .line 995
    :cond_2
    invoke-virtual {v0, p2}, Landroid/net/NetworkStateTracker;->requestRouteToHost(I)Z

    move-result v1

    goto :goto_0
.end method

.method public setBackgroundDataSetting(Z)V
    .locals 5
    .parameter "allowBackgroundDataUsage"

    .prologue
    const/4 v4, 0x0

    .line 1010
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.CHANGE_BACKGROUND_DATA_SETTING"

    const-string v2, "ConnectivityService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1014
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x6a

    if-eqz p1, :cond_0

    const/4 v3, 0x1

    :goto_0
    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1016
    return-void

    :cond_0
    move v3, v4

    .line 1014
    goto :goto_0
.end method

.method public setMobileDataEnabled(Z)V
    .locals 5
    .parameter "enabled"

    .prologue
    const/4 v4, 0x0

    .line 1043
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceChangePermission()V

    .line 1044
    const-string v0, "ConnectivityService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setMobileDataEnabled("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1046
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x6b

    if-eqz p1, :cond_0

    const/4 v3, 0x1

    :goto_0
    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1048
    return-void

    :cond_0
    move v3, v4

    .line 1046
    goto :goto_0
.end method

.method public setNetworkPreference(I)V
    .locals 4
    .parameter "preference"

    .prologue
    .line 528
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceChangePermission()V

    .line 530
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x67

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 531
    return-void
.end method

.method public setRadio(IZ)Z
    .locals 3
    .parameter "netType"
    .parameter "turnOn"

    .prologue
    const/4 v2, 0x0

    .line 650
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceChangePermission()V

    .line 651
    invoke-static {p1}, Landroid/net/ConnectivityManager;->isNetworkTypeValid(I)Z

    move-result v1

    if-nez v1, :cond_0

    move v1, v2

    .line 655
    :goto_0
    return v1

    .line 654
    :cond_0
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    aget-object v0, v1, p1

    .line 655
    .local v0, tracker:Landroid/net/NetworkStateTracker;
    if-eqz v0, :cond_1

    invoke-virtual {v0, p2}, Landroid/net/NetworkStateTracker;->setRadio(Z)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_0
.end method

.method public setRadios(Z)Z
    .locals 6
    .parameter "turnOn"

    .prologue
    .line 641
    const/4 v3, 0x1

    .line 642
    .local v3, result:Z
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceChangePermission()V

    .line 643
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    .local v0, arr$:[Landroid/net/NetworkStateTracker;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_2

    aget-object v4, v0, v1

    .line 644
    .local v4, t:Landroid/net/NetworkStateTracker;
    if-eqz v4, :cond_0

    invoke-virtual {v4, p1}, Landroid/net/NetworkStateTracker;->setRadio(Z)Z

    move-result v5

    if-eqz v5, :cond_1

    if-eqz v3, :cond_1

    const/4 v5, 0x1

    move v3, v5

    .line 643
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 644
    :cond_1
    const/4 v5, 0x0

    move v3, v5

    goto :goto_1

    .line 646
    .end local v4           #t:Landroid/net/NetworkStateTracker;
    :cond_2
    return v3
.end method

.method public startUsingNetworkFeature(ILjava/lang/String;Landroid/os/IBinder;)I
    .locals 10
    .parameter "networkType"
    .parameter "feature"
    .parameter "binder"

    .prologue
    .line 717
    const-string v6, "ConnectivityService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "startUsingNetworkFeature for net "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ": "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 720
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceChangePermission()V

    .line 721
    invoke-static {p1}, Landroid/net/ConnectivityManager;->isNetworkTypeValid(I)Z

    move-result v6

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/android/server/ConnectivityService;->mNetAttributes:[Lcom/android/server/ConnectivityService$NetworkAttributes;

    aget-object v6, v6, p1

    if-nez v6, :cond_1

    .line 723
    :cond_0
    const/4 v6, 0x3

    .line 840
    :goto_0
    return v6

    .line 726
    :cond_1
    new-instance v1, Lcom/android/server/ConnectivityService$FeatureUser;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/android/server/ConnectivityService$FeatureUser;-><init>(Lcom/android/server/ConnectivityService;ILjava/lang/String;Landroid/os/IBinder;)V

    .line 729
    .local v1, f:Lcom/android/server/ConnectivityService$FeatureUser;
    move v5, p1

    .line 730
    .local v5, usedNetworkType:I
    if-nez p1, :cond_3

    .line 731
    const-string v6, "enableMMS"

    invoke-static {p2, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 732
    invoke-virtual {p0}, Lcom/android/server/ConnectivityService;->getMobileDataEnabled()Z

    move-result v6

    if-nez v6, :cond_2

    .line 733
    const-string v6, "ConnectivityService"

    const-string v7, "requested special network with data disabled - rejected"

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 734
    const/4 v6, 0x2

    goto :goto_0

    .line 740
    :cond_2
    const-string v6, "enableMMS"

    invoke-static {p2, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 741
    const/4 v5, 0x2

    .line 753
    :cond_3
    :goto_1
    iget-object v6, p0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    aget-object v2, v6, v5

    .line 754
    .local v2, network:Landroid/net/NetworkStateTracker;
    if-eqz v2, :cond_e

    .line 755
    if-eq v5, p1, :cond_d

    .line 756
    new-instance v0, Ljava/lang/Integer;

    invoke-static {}, Lcom/android/server/ConnectivityService;->getCallingPid()I

    move-result v6

    invoke-direct {v0, v6}, Ljava/lang/Integer;-><init>(I)V

    .line 758
    .local v0, currentPid:Ljava/lang/Integer;
    iget-object v6, p0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    aget-object v4, v6, p1

    .line 759
    .local v4, radio:Landroid/net/NetworkStateTracker;
    invoke-virtual {v2}, Landroid/net/NetworkStateTracker;->getNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v3

    .line 777
    .local v3, ni:Landroid/net/NetworkInfo;
    invoke-virtual {v2}, Landroid/net/NetworkStateTracker;->isAvailable()Z

    move-result v6

    if-nez v6, :cond_8

    .line 779
    const-string v6, "ConnectivityService"

    const-string v7, "special network not available"

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 780
    const/4 v6, 0x2

    goto :goto_0

    .line 742
    .end local v0           #currentPid:Ljava/lang/Integer;
    .end local v2           #network:Landroid/net/NetworkStateTracker;
    .end local v3           #ni:Landroid/net/NetworkInfo;
    .end local v4           #radio:Landroid/net/NetworkStateTracker;
    :cond_4
    const-string v6, "enableSUPL"

    invoke-static {p2, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 743
    const/4 v5, 0x3

    goto :goto_1

    .line 744
    :cond_5
    const-string v6, "enableDUN"

    invoke-static {p2, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 745
    const/4 v5, 0x4

    goto :goto_1

    .line 746
    :cond_6
    const-string v6, "enableBIP"

    invoke-static {p2, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 747
    const/16 v5, 0xa

    goto :goto_1

    .line 748
    :cond_7
    const-string v6, "enableHIPRI"

    invoke-static {p2, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 749
    const/4 v5, 0x5

    goto :goto_1

    .line 784
    .restart local v0       #currentPid:Ljava/lang/Integer;
    .restart local v2       #network:Landroid/net/NetworkStateTracker;
    .restart local v3       #ni:Landroid/net/NetworkInfo;
    .restart local v4       #radio:Landroid/net/NetworkStateTracker;
    :cond_8
    monitor-enter p0

    .line 785
    :try_start_0
    iget-object v6, p0, Lcom/android/server/ConnectivityService;->mFeatureUsers:Ljava/util/List;

    invoke-interface {v6, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 786
    iget-object v6, p0, Lcom/android/server/ConnectivityService;->mNetRequestersPids:[Ljava/util/List;

    aget-object v6, v6, v5

    invoke-interface {v6, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_9

    .line 788
    iget-object v6, p0, Lcom/android/server/ConnectivityService;->mNetRequestersPids:[Ljava/util/List;

    aget-object v6, v6, v5

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 790
    :cond_9
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 793
    const/4 v6, 0x4

    if-eq v5, v6, :cond_a

    .line 795
    iget-object v6, p0, Lcom/android/server/ConnectivityService;->mHandler:Landroid/os/Handler;

    iget-object v7, p0, Lcom/android/server/ConnectivityService;->mHandler:Landroid/os/Handler;

    const/16 v8, 0x65

    invoke-virtual {v7, v8, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v7

    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->getRestoreDefaultNetworkDelay()I

    move-result v8

    int-to-long v8, v8

    invoke-virtual {v6, v7, v8, v9}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 808
    :cond_a
    invoke-virtual {v3}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_c

    invoke-virtual {v2}, Landroid/net/NetworkStateTracker;->isTeardownRequested()Z

    move-result v6

    if-nez v6, :cond_c

    .line 810
    invoke-virtual {v3}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_b

    .line 812
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->handleDnsConfigurationChange(I)V

    .line 813
    const-string v6, "ConnectivityService"

    const-string v7, "special network already active"

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 814
    const/4 v6, 0x0

    goto/16 :goto_0

    .line 790
    :catchall_0
    move-exception v6

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v6

    .line 816
    :cond_b
    const-string v6, "ConnectivityService"

    const-string v7, "special network already connecting"

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 817
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 823
    :cond_c
    const-string v6, "ConnectivityService"

    const-string v7, "reconnecting to special network"

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 824
    invoke-virtual {v2}, Landroid/net/NetworkStateTracker;->reconnect()Z

    .line 825
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 827
    .end local v0           #currentPid:Ljava/lang/Integer;
    .end local v3           #ni:Landroid/net/NetworkInfo;
    .end local v4           #radio:Landroid/net/NetworkStateTracker;
    :cond_d
    monitor-enter p0

    .line 828
    :try_start_2
    iget-object v6, p0, Lcom/android/server/ConnectivityService;->mFeatureUsers:Ljava/util/List;

    invoke-interface {v6, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 829
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 832
    iget-object v6, p0, Lcom/android/server/ConnectivityService;->mHandler:Landroid/os/Handler;

    iget-object v7, p0, Lcom/android/server/ConnectivityService;->mHandler:Landroid/os/Handler;

    const/16 v8, 0x65

    invoke-virtual {v7, v8, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v7

    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->getRestoreDefaultNetworkDelay()I

    move-result v8

    int-to-long v8, v8

    invoke-virtual {v6, v7, v8, v9}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 836
    invoke-static {}, Lcom/android/server/ConnectivityService;->getCallingPid()I

    move-result v6

    invoke-static {}, Lcom/android/server/ConnectivityService;->getCallingUid()I

    move-result v7

    invoke-virtual {v2, p2, v6, v7}, Landroid/net/NetworkStateTracker;->startUsingNetworkFeature(Ljava/lang/String;II)I

    move-result v6

    goto/16 :goto_0

    .line 829
    :catchall_1
    move-exception v6

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v6

    .line 840
    :cond_e
    const/4 v6, 0x2

    goto/16 :goto_0
.end method

.method public stopUsingNetworkFeature(ILjava/lang/String;)I
    .locals 9
    .parameter "networkType"
    .parameter "feature"

    .prologue
    const/4 v8, 0x1

    .line 845
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceChangePermission()V

    .line 847
    invoke-static {}, Lcom/android/server/ConnectivityService;->getCallingPid()I

    move-result v3

    .line 848
    .local v3, pid:I
    invoke-static {}, Lcom/android/server/ConnectivityService;->getCallingUid()I

    move-result v5

    .line 850
    .local v5, uid:I
    const/4 v4, 0x0

    .line 851
    .local v4, u:Lcom/android/server/ConnectivityService$FeatureUser;
    const/4 v1, 0x0

    .line 853
    .local v1, found:Z
    monitor-enter p0

    .line 854
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    :try_start_0
    iget-object v6, p0, Lcom/android/server/ConnectivityService;->mFeatureUsers:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ge v2, v6, :cond_0

    .line 855
    iget-object v6, p0, Lcom/android/server/ConnectivityService;->mFeatureUsers:Ljava/util/List;

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    move-object v0, v6

    check-cast v0, Lcom/android/server/ConnectivityService$FeatureUser;

    move-object v4, v0

    .line 856
    iget v6, v4, Lcom/android/server/ConnectivityService$FeatureUser;->mUid:I

    if-ne v5, v6, :cond_1

    iget v6, v4, Lcom/android/server/ConnectivityService$FeatureUser;->mPid:I

    if-ne v3, v6, :cond_1

    iget v6, v4, Lcom/android/server/ConnectivityService$FeatureUser;->mNetworkType:I

    if-ne p1, v6, :cond_1

    iget-object v6, v4, Lcom/android/server/ConnectivityService$FeatureUser;->mFeature:Ljava/lang/String;

    invoke-static {p2, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 859
    const/4 v1, 0x1

    .line 863
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 864
    if-eqz v1, :cond_2

    if-eqz v4, :cond_2

    .line 866
    invoke-direct {p0, v4, v8}, Lcom/android/server/ConnectivityService;->stopUsingNetworkFeature(Lcom/android/server/ConnectivityService$FeatureUser;Z)I

    move-result v6

    .line 870
    :goto_1
    return v6

    .line 854
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 863
    :catchall_0
    move-exception v6

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v6

    .line 869
    :cond_2
    const-string v6, "ConnectivityService"

    const-string v7, "ignoring stopUsingNetworkFeature - not a live request"

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v6, v8

    .line 870
    goto :goto_1
.end method

.method systemReady()V
    .locals 2

    .prologue
    .line 1324
    monitor-enter p0

    .line 1325
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/android/server/ConnectivityService;->mSystemReady:Z

    .line 1326
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mInitialBroadcast:Landroid/content/Intent;

    if-eqz v0, :cond_0

    .line 1327
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mInitialBroadcast:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    .line 1328
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/ConnectivityService;->mInitialBroadcast:Landroid/content/Intent;

    .line 1330
    :cond_0
    monitor-exit p0

    .line 1331
    return-void

    .line 1330
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public tether(Ljava/lang/String;)I
    .locals 1
    .parameter "iface"

    .prologue
    .line 1742
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceTetherChangePermission()V

    .line 1744
    invoke-virtual {p0}, Lcom/android/server/ConnectivityService;->isTetheringSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1745
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mTethering:Lcom/android/server/connectivity/Tethering;

    invoke-virtual {v0, p1}, Lcom/android/server/connectivity/Tethering;->tether(Ljava/lang/String;)I

    move-result v0

    .line 1747
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x3

    goto :goto_0
.end method

.method public untether(Ljava/lang/String;)I
    .locals 1
    .parameter "iface"

    .prologue
    .line 1753
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceTetherChangePermission()V

    .line 1755
    invoke-virtual {p0}, Lcom/android/server/ConnectivityService;->isTetheringSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1756
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mTethering:Lcom/android/server/connectivity/Tethering;

    invoke-virtual {v0, p1}, Lcom/android/server/connectivity/Tethering;->untether(Ljava/lang/String;)I

    move-result v0

    .line 1758
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x3

    goto :goto_0
.end method
