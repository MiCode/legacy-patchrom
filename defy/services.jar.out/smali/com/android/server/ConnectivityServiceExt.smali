.class public Lcom/android/server/ConnectivityServiceExt;
.super Lcom/android/server/ConnectivityService;
.source "ConnectivityServiceExt.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/ConnectivityServiceExt$MyHandler;,
        Lcom/android/server/ConnectivityServiceExt$FeatureUser;,
        Lcom/android/server/ConnectivityServiceExt$ConnectivityThread;,
        Lcom/android/server/ConnectivityServiceExt$RadioAttributes;,
        Lcom/android/server/ConnectivityServiceExt$NetworkAttributes;,
        Lcom/android/server/ConnectivityServiceExt$HostRouteInfo;
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

.field private static final RESTORE_DEFAULT_NETWORK_DELAY:I = -0x1

.field private static final TAG:Ljava/lang/String; = "ConnectivityService"

.field private static sServiceInstance:Lcom/android/server/ConnectivityServiceExt;


# instance fields
.field private mActiveDefaultNetwork:I

.field private mContext:Landroid/content/Context;

.field private mDefaultConnectionSequence:I

.field private mDefaultInetCondition:I

.field private mDefaultInetConditionPublished:I

.field private mFeatureUsers:Ljava/util/List;

.field private mHandler:Landroid/os/Handler;

.field private mHipriPermissionCheck:Z

.field private mHostRouteInfoList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/ConnectivityServiceExt$HostRouteInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mInetConditionChangeInFlight:Z

.field private mInetLog:Ljava/util/ArrayList;

.field private mInitialBroadcast:Landroid/content/Intent;

.field mInterfaceInfors:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field mNetAttributes:[Lcom/android/server/ConnectivityServiceExt$NetworkAttributes;

.field private mNetRequestersPids:[Ljava/util/List;

.field private mNetTrackers:[Landroid/net/NetworkStateTracker;

.field private mNetworkPreference:I

.field mNetworksDefined:I

.field private mNumDnsEntries:I

.field private mPriorityList:[I

.field mRadioAttributes:[Lcom/android/server/ConnectivityServiceExt$RadioAttributes;

.field private mStateReceiver:Landroid/content/BroadcastReceiver;

.field private mSystemReady:Z

.field private mTestMode:Z

.field private mTethering:Lcom/android/server/connectivity/Tethering;

.field private mTetheringConfigValid:Z


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 33
    .parameter "context"

    .prologue
    invoke-direct/range {p0 .. p0}, Lcom/android/server/ConnectivityService;-><init>()V

    const/16 v29, 0x0

    move/from16 v0, v29

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/ConnectivityServiceExt;->mTetheringConfigValid:Z

    const/16 v29, -0x1

    move/from16 v0, v29

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/ConnectivityServiceExt;->mActiveDefaultNetwork:I

    const/16 v29, 0x0

    move/from16 v0, v29

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/ConnectivityServiceExt;->mDefaultInetCondition:I

    const/16 v29, 0x0

    move/from16 v0, v29

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/ConnectivityServiceExt;->mDefaultInetConditionPublished:I

    const/16 v29, 0x0

    move/from16 v0, v29

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/ConnectivityServiceExt;->mInetConditionChangeInFlight:Z

    const/16 v29, 0x0

    move/from16 v0, v29

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/ConnectivityServiceExt;->mDefaultConnectionSequence:I

    new-instance v29, Ljava/util/ArrayList;

    invoke-direct/range {v29 .. v29}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/ConnectivityServiceExt;->mHostRouteInfoList:Ljava/util/ArrayList;

    new-instance v29, Ljava/util/HashMap;

    invoke-direct/range {v29 .. v29}, Ljava/util/HashMap;-><init>()V

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/ConnectivityServiceExt;->mInterfaceInfors:Ljava/util/HashMap;

    new-instance v29, Lcom/android/server/ConnectivityServiceExt$1;

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/server/ConnectivityServiceExt$1;-><init>(Lcom/android/server/ConnectivityServiceExt;)V

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/ConnectivityServiceExt;->mStateReceiver:Landroid/content/BroadcastReceiver;

    const-string v29, "ConnectivityService"

    const-string v30, "ConnectivityService starting up"

    invoke-static/range {v29 .. v30}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v29

    const-string v30, "android_id"

    invoke-static/range {v29 .. v30}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .local v11, id:Ljava/lang/String;
    if-eqz v11, :cond_0

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v29

    if-lez v29, :cond_0

    new-instance v29, Ljava/lang/String;

    const-string v30, "android_"

    invoke-direct/range {v29 .. v30}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v29

    move-object v1, v11

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .local v19, name:Ljava/lang/String;
    const-string v29, "net.hostname"

    move-object/from16 v0, v29

    move-object/from16 v1, v19

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .end local v19           #name:Ljava/lang/String;
    :cond_0
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/ConnectivityServiceExt;->mContext:Landroid/content/Context;

    const/16 v29, 0x23

    move/from16 v0, v29

    new-array v0, v0, [Landroid/net/NetworkStateTracker;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/ConnectivityServiceExt;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    new-instance v29, Lcom/android/server/ConnectivityServiceExt$MyHandler;

    const/16 v30, 0x0

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    move-object/from16 v2, v30

    invoke-direct {v0, v1, v2}, Lcom/android/server/ConnectivityServiceExt$MyHandler;-><init>(Lcom/android/server/ConnectivityServiceExt;Lcom/android/server/ConnectivityServiceExt$1;)V

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/ConnectivityServiceExt;->mHandler:Landroid/os/Handler;

    invoke-direct/range {p0 .. p0}, Lcom/android/server/ConnectivityServiceExt;->getPersistedNetworkPreference()I

    move-result v29

    move/from16 v0, v29

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/ConnectivityServiceExt;->mNetworkPreference:I

    const/16 v29, 0xa

    move/from16 v0, v29

    new-array v0, v0, [Lcom/android/server/ConnectivityServiceExt$RadioAttributes;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/ConnectivityServiceExt;->mRadioAttributes:[Lcom/android/server/ConnectivityServiceExt$RadioAttributes;

    const/16 v29, 0x23

    move/from16 v0, v29

    new-array v0, v0, [Lcom/android/server/ConnectivityServiceExt$NetworkAttributes;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/ConnectivityServiceExt;->mNetAttributes:[Lcom/android/server/ConnectivityServiceExt$NetworkAttributes;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v29

    const v30, 0x107000c

    invoke-virtual/range {v29 .. v30}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v26

    .local v26, raStrings:[Ljava/lang/String;
    move-object/from16 v5, v26

    .local v5, arr$:[Ljava/lang/String;
    array-length v14, v5

    .local v14, len$:I
    const/4 v10, 0x0

    .local v10, i$:I
    :goto_0
    if-ge v10, v14, :cond_3

    aget-object v25, v5, v10

    .local v25, raString:Ljava/lang/String;
    new-instance v24, Lcom/android/server/ConnectivityServiceExt$RadioAttributes;

    invoke-direct/range {v24 .. v25}, Lcom/android/server/ConnectivityServiceExt$RadioAttributes;-><init>(Ljava/lang/String;)V

    .local v24, r:Lcom/android/server/ConnectivityServiceExt$RadioAttributes;
    move-object/from16 v0, v24

    iget v0, v0, Lcom/android/server/ConnectivityServiceExt$RadioAttributes;->mType:I

    move/from16 v29, v0

    const/16 v30, 0x9

    move/from16 v0, v29

    move/from16 v1, v30

    if-le v0, v1, :cond_1

    const-string v29, "ConnectivityService"

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "Error in radioAttributes - ignoring attempt to define type "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v24

    iget v0, v0, Lcom/android/server/ConnectivityServiceExt$RadioAttributes;->mType:I

    move/from16 v31, v0

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v29 .. v30}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityServiceExt;->mRadioAttributes:[Lcom/android/server/ConnectivityServiceExt$RadioAttributes;

    move-object/from16 v29, v0

    move-object/from16 v0, v24

    iget v0, v0, Lcom/android/server/ConnectivityServiceExt$RadioAttributes;->mType:I

    move/from16 v30, v0

    aget-object v29, v29, v30

    if-eqz v29, :cond_2

    const-string v29, "ConnectivityService"

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "Error in radioAttributes - ignoring attempt to redefine type "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v24

    iget v0, v0, Lcom/android/server/ConnectivityServiceExt$RadioAttributes;->mType:I

    move/from16 v31, v0

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v29 .. v30}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityServiceExt;->mRadioAttributes:[Lcom/android/server/ConnectivityServiceExt$RadioAttributes;

    move-object/from16 v29, v0

    move-object/from16 v0, v24

    iget v0, v0, Lcom/android/server/ConnectivityServiceExt$RadioAttributes;->mType:I

    move/from16 v30, v0

    aput-object v24, v29, v30

    goto :goto_1

    .end local v24           #r:Lcom/android/server/ConnectivityServiceExt$RadioAttributes;
    .end local v25           #raString:Ljava/lang/String;
    :cond_3
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v29

    const v30, 0x107000b

    invoke-virtual/range {v29 .. v30}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v18

    .local v18, naStrings:[Ljava/lang/String;
    move-object/from16 v5, v18

    array-length v14, v5

    const/4 v10, 0x0

    :goto_2
    if-ge v10, v14, :cond_7

    aget-object v17, v5, v10

    .local v17, naString:Ljava/lang/String;
    :try_start_0
    new-instance v15, Lcom/android/server/ConnectivityServiceExt$NetworkAttributes;

    move-object v0, v15

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/server/ConnectivityServiceExt$NetworkAttributes;-><init>(Ljava/lang/String;)V

    .local v15, n:Lcom/android/server/ConnectivityServiceExt$NetworkAttributes;
    move-object v0, v15

    iget v0, v0, Lcom/android/server/ConnectivityServiceExt$NetworkAttributes;->mType:I

    move/from16 v29, v0

    const/16 v30, 0x22

    move/from16 v0, v29

    move/from16 v1, v30

    if-le v0, v1, :cond_4

    const-string v29, "ConnectivityService"

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "Error in networkAttributes - ignoring attempt to define type "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object v0, v15

    iget v0, v0, Lcom/android/server/ConnectivityServiceExt$NetworkAttributes;->mType:I

    move/from16 v31, v0

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v29 .. v30}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v15           #n:Lcom/android/server/ConnectivityServiceExt$NetworkAttributes;
    :goto_3
    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    .restart local v15       #n:Lcom/android/server/ConnectivityServiceExt$NetworkAttributes;
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityServiceExt;->mNetAttributes:[Lcom/android/server/ConnectivityServiceExt$NetworkAttributes;

    move-object/from16 v29, v0

    move-object v0, v15

    iget v0, v0, Lcom/android/server/ConnectivityServiceExt$NetworkAttributes;->mType:I

    move/from16 v30, v0

    aget-object v29, v29, v30

    if-eqz v29, :cond_5

    const-string v29, "ConnectivityService"

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "Error in networkAttributes - ignoring attempt to redefine type "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object v0, v15

    iget v0, v0, Lcom/android/server/ConnectivityServiceExt$NetworkAttributes;->mType:I

    move/from16 v31, v0

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v29 .. v30}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .end local v15           #n:Lcom/android/server/ConnectivityServiceExt$NetworkAttributes;
    :catch_0
    move-exception v29

    goto :goto_3

    .restart local v15       #n:Lcom/android/server/ConnectivityServiceExt$NetworkAttributes;
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityServiceExt;->mRadioAttributes:[Lcom/android/server/ConnectivityServiceExt$RadioAttributes;

    move-object/from16 v29, v0

    move-object v0, v15

    iget v0, v0, Lcom/android/server/ConnectivityServiceExt$NetworkAttributes;->mRadio:I

    move/from16 v30, v0

    aget-object v29, v29, v30

    if-nez v29, :cond_6

    const-string v29, "ConnectivityService"

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "Error in networkAttributes - ignoring attempt to use undefined radio "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object v0, v15

    iget v0, v0, Lcom/android/server/ConnectivityServiceExt$NetworkAttributes;->mRadio:I

    move/from16 v31, v0

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string v31, " in network type "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object v0, v15

    iget v0, v0, Lcom/android/server/ConnectivityServiceExt$NetworkAttributes;->mType:I

    move/from16 v31, v0

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v29 .. v30}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityServiceExt;->mNetAttributes:[Lcom/android/server/ConnectivityServiceExt$NetworkAttributes;

    move-object/from16 v29, v0

    move-object v0, v15

    iget v0, v0, Lcom/android/server/ConnectivityServiceExt$NetworkAttributes;->mType:I

    move/from16 v30, v0

    aput-object v15, v29, v30

    const-string v29, "ConnectivityService"

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "got networkAttributes: "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v29 .. v30}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/ConnectivityServiceExt;->mNetworksDefined:I

    move/from16 v29, v0

    add-int/lit8 v29, v29, 0x1

    move/from16 v0, v29

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/ConnectivityServiceExt;->mNetworksDefined:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_3

    .end local v15           #n:Lcom/android/server/ConnectivityServiceExt$NetworkAttributes;
    .end local v17           #naString:Ljava/lang/String;
    :cond_7
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/ConnectivityServiceExt;->mNetworksDefined:I

    move/from16 v29, v0

    move/from16 v0, v29

    new-array v0, v0, [I

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/ConnectivityServiceExt;->mPriorityList:[I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/ConnectivityServiceExt;->mNetworksDefined:I

    move/from16 v29, v0

    const/16 v30, 0x1

    sub-int v12, v29, v30

    .local v12, insertionPoint:I
    const/4 v6, 0x0

    .local v6, currentLowest:I
    const/16 v21, 0x0

    .end local v5           #arr$:[Ljava/lang/String;
    .local v21, nextLowest:I
    :goto_4
    const/16 v29, -0x1

    move v0, v12

    move/from16 v1, v29

    if-le v0, v1, :cond_d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityServiceExt;->mNetAttributes:[Lcom/android/server/ConnectivityServiceExt$NetworkAttributes;

    move-object v5, v0

    .local v5, arr$:[Lcom/android/server/ConnectivityServiceExt$NetworkAttributes;
    array-length v14, v5

    const/4 v10, 0x0

    move v13, v12

    .end local v12           #insertionPoint:I
    .local v13, insertionPoint:I
    :goto_5
    if-ge v10, v14, :cond_c

    aget-object v16, v5, v10

    .local v16, na:Lcom/android/server/ConnectivityServiceExt$NetworkAttributes;
    if-nez v16, :cond_8

    move v12, v13

    .end local v13           #insertionPoint:I
    .restart local v12       #insertionPoint:I
    :goto_6
    add-int/lit8 v10, v10, 0x1

    move v13, v12

    .end local v12           #insertionPoint:I
    .restart local v13       #insertionPoint:I
    goto :goto_5

    :cond_8
    move-object/from16 v0, v16

    iget v0, v0, Lcom/android/server/ConnectivityServiceExt$NetworkAttributes;->mPriority:I

    move/from16 v29, v0

    move/from16 v0, v29

    move v1, v6

    if-ge v0, v1, :cond_9

    move v12, v13

    .end local v13           #insertionPoint:I
    .restart local v12       #insertionPoint:I
    goto :goto_6

    .end local v12           #insertionPoint:I
    .restart local v13       #insertionPoint:I
    :cond_9
    move-object/from16 v0, v16

    iget v0, v0, Lcom/android/server/ConnectivityServiceExt$NetworkAttributes;->mPriority:I

    move/from16 v29, v0

    move/from16 v0, v29

    move v1, v6

    if-le v0, v1, :cond_b

    move-object/from16 v0, v16

    iget v0, v0, Lcom/android/server/ConnectivityServiceExt$NetworkAttributes;->mPriority:I

    move/from16 v29, v0

    move/from16 v0, v29

    move/from16 v1, v21

    if-lt v0, v1, :cond_a

    if-nez v21, :cond_17

    :cond_a
    move-object/from16 v0, v16

    iget v0, v0, Lcom/android/server/ConnectivityServiceExt$NetworkAttributes;->mPriority:I

    move/from16 v21, v0

    move v12, v13

    .end local v13           #insertionPoint:I
    .restart local v12       #insertionPoint:I
    goto :goto_6

    .end local v12           #insertionPoint:I
    .restart local v13       #insertionPoint:I
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityServiceExt;->mPriorityList:[I

    move-object/from16 v29, v0

    add-int/lit8 v12, v13, -0x1

    .end local v13           #insertionPoint:I
    .restart local v12       #insertionPoint:I
    move-object/from16 v0, v16

    iget v0, v0, Lcom/android/server/ConnectivityServiceExt$NetworkAttributes;->mType:I

    move/from16 v30, v0

    aput v30, v29, v13

    goto :goto_6

    .end local v12           #insertionPoint:I
    .end local v16           #na:Lcom/android/server/ConnectivityServiceExt$NetworkAttributes;
    .restart local v13       #insertionPoint:I
    :cond_c
    move/from16 v6, v21

    const/16 v21, 0x0

    move v12, v13

    .end local v13           #insertionPoint:I
    .restart local v12       #insertionPoint:I
    goto :goto_4

    .end local v5           #arr$:[Lcom/android/server/ConnectivityServiceExt$NetworkAttributes;
    :cond_d
    const/16 v29, 0x23

    move/from16 v0, v29

    new-array v0, v0, [Ljava/util/ArrayList;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/ConnectivityServiceExt;->mNetRequestersPids:[Ljava/util/List;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityServiceExt;->mPriorityList:[I

    move-object v5, v0

    .local v5, arr$:[I
    array-length v14, v5

    const/4 v10, 0x0

    :goto_7
    if-ge v10, v14, :cond_e

    aget v9, v5, v10

    .local v9, i:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityServiceExt;->mNetRequestersPids:[Ljava/util/List;

    move-object/from16 v29, v0

    new-instance v30, Ljava/util/ArrayList;

    invoke-direct/range {v30 .. v30}, Ljava/util/ArrayList;-><init>()V

    aput-object v30, v29, v9

    add-int/lit8 v10, v10, 0x1

    goto :goto_7

    .end local v9           #i:I
    :cond_e
    new-instance v29, Ljava/util/ArrayList;

    invoke-direct/range {v29 .. v29}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/ConnectivityServiceExt;->mFeatureUsers:Ljava/util/List;

    const/16 v29, 0x0

    move/from16 v0, v29

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/ConnectivityServiceExt;->mNumDnsEntries:I

    const-string v29, "cm.test.mode"

    invoke-static/range {v29 .. v29}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v29

    const-string v30, "true"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_10

    const-string v29, "ro.build.type"

    invoke-static/range {v29 .. v29}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v29

    const-string v30, "eng"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_10

    const/16 v29, 0x1

    :goto_8
    move/from16 v0, v29

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/ConnectivityServiceExt;->mTestMode:Z

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/ConnectivityServiceExt;->getMobileDataEnabled()Z

    move-result v29

    if-nez v29, :cond_11

    const/16 v29, 0x1

    move/from16 v22, v29

    .local v22, noMobileData:Z
    :goto_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityServiceExt;->mPriorityList:[I

    move-object v5, v0

    array-length v14, v5

    const/4 v10, 0x0

    :goto_a
    if-ge v10, v14, :cond_13

    aget v20, v5, v10

    .local v20, netType:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityServiceExt;->mNetAttributes:[Lcom/android/server/ConnectivityServiceExt$NetworkAttributes;

    move-object/from16 v29, v0

    aget-object v29, v29, v20

    move-object/from16 v0, v29

    iget v0, v0, Lcom/android/server/ConnectivityServiceExt$NetworkAttributes;->mRadio:I

    move/from16 v29, v0

    sparse-switch v29, :sswitch_data_0

    const-string v29, "ConnectivityService"

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "Trying to create a DataStateTracker for an unknown radio type "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityServiceExt;->mNetAttributes:[Lcom/android/server/ConnectivityServiceExt$NetworkAttributes;

    move-object/from16 v31, v0

    aget-object v31, v31, v20

    move-object/from16 v0, v31

    iget v0, v0, Lcom/android/server/ConnectivityServiceExt$NetworkAttributes;->mRadio:I

    move/from16 v31, v0

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v29 .. v30}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_f
    :goto_b
    add-int/lit8 v10, v10, 0x1

    goto :goto_a

    .end local v20           #netType:I
    .end local v22           #noMobileData:Z
    :cond_10
    const/16 v29, 0x0

    goto :goto_8

    :cond_11
    const/16 v29, 0x0

    move/from16 v22, v29

    goto :goto_9

    .restart local v20       #netType:I
    .restart local v22       #noMobileData:Z
    :sswitch_0
    const-string v29, "ConnectivityService"

    const-string v30, "Starting Wifi Service."

    invoke-static/range {v29 .. v30}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v28, Landroid/net/wifi/WifiStateTracker;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityServiceExt;->mHandler:Landroid/os/Handler;

    move-object/from16 v29, v0

    move-object/from16 v0, v28

    move-object/from16 v1, p1

    move-object/from16 v2, v29

    invoke-direct {v0, v1, v2}, Landroid/net/wifi/WifiStateTracker;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    .local v28, wst:Landroid/net/wifi/WifiStateTracker;
    new-instance v27, Lcom/android/server/WifiService;

    move-object/from16 v0, v27

    move-object/from16 v1, p1

    move-object/from16 v2, v28

    invoke-direct {v0, v1, v2}, Lcom/android/server/WifiService;-><init>(Landroid/content/Context;Landroid/net/wifi/WifiStateTracker;)V

    .local v27, wifiService:Lcom/android/server/WifiService;
    const-string v29, "wifi"

    move-object/from16 v0, v29

    move-object/from16 v1, v27

    invoke-static {v0, v1}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    invoke-virtual/range {v27 .. v27}, Lcom/android/server/WifiService;->startWifi()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityServiceExt;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    move-object/from16 v29, v0

    const/16 v30, 0x1

    aput-object v28, v29, v30

    invoke-virtual/range {v28 .. v28}, Landroid/net/wifi/WifiStateTracker;->startMonitoring()V

    goto :goto_b

    .end local v27           #wifiService:Lcom/android/server/WifiService;
    .end local v28           #wst:Landroid/net/wifi/WifiStateTracker;
    :sswitch_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityServiceExt;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    move-object/from16 v29, v0

    new-instance v30, Landroid/net/MobileDataStateTracker;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityServiceExt;->mHandler:Landroid/os/Handler;

    move-object/from16 v31, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityServiceExt;->mNetAttributes:[Lcom/android/server/ConnectivityServiceExt$NetworkAttributes;

    move-object/from16 v32, v0

    aget-object v32, v32, v20

    move-object/from16 v0, v32

    iget-object v0, v0, Lcom/android/server/ConnectivityServiceExt$NetworkAttributes;->mName:Ljava/lang/String;

    move-object/from16 v32, v0

    move-object/from16 v0, v30

    move-object/from16 v1, p1

    move-object/from16 v2, v31

    move/from16 v3, v20

    move-object/from16 v4, v32

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/net/MobileDataStateTracker;-><init>(Landroid/content/Context;Landroid/os/Handler;ILjava/lang/String;)V

    aput-object v30, v29, v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityServiceExt;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    move-object/from16 v29, v0

    aget-object v29, v29, v20

    invoke-virtual/range {v29 .. v29}, Landroid/net/NetworkStateTracker;->startMonitoring()V

    if-eqz v22, :cond_f

    const-string v29, "ConnectivityService"

    const-string v30, "tearing down Mobile networks due to setting"

    invoke-static/range {v29 .. v30}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityServiceExt;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    move-object/from16 v29, v0

    aget-object v29, v29, v20

    invoke-virtual/range {v29 .. v29}, Landroid/net/NetworkStateTracker;->teardown()Z

    goto/16 :goto_b

    :sswitch_2
    invoke-direct/range {p0 .. p0}, Lcom/android/server/ConnectivityServiceExt;->makeWimaxStateTracker()Landroid/net/NetworkStateTracker;

    move-result-object v23

    .local v23, nst:Landroid/net/NetworkStateTracker;
    if-eqz v23, :cond_12

    invoke-virtual/range {v23 .. v23}, Landroid/net/NetworkStateTracker;->startMonitoring()V

    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityServiceExt;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    move-object/from16 v29, v0

    aput-object v23, v29, v20

    if-eqz v22, :cond_f

    const-string v29, "ConnectivityService"

    const-string v30, "tearing down WiMAX networks due to setting"

    invoke-static/range {v29 .. v30}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityServiceExt;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    move-object/from16 v29, v0

    aget-object v29, v29, v20

    invoke-virtual/range {v29 .. v29}, Landroid/net/NetworkStateTracker;->teardown()Z

    goto/16 :goto_b

    .end local v20           #netType:I
    .end local v23           #nst:Landroid/net/NetworkStateTracker;
    :cond_13
    new-instance v29, Lcom/android/server/connectivity/Tethering;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityServiceExt;->mContext:Landroid/content/Context;

    move-object/from16 v30, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityServiceExt;->mHandler:Landroid/os/Handler;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v31

    invoke-direct/range {v29 .. v31}, Lcom/android/server/connectivity/Tethering;-><init>(Landroid/content/Context;Landroid/os/Looper;)V

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/ConnectivityServiceExt;->mTethering:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityServiceExt;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    move-object/from16 v29, v0

    const/16 v30, 0x4

    aget-object v29, v29, v30

    if-nez v29, :cond_14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityServiceExt;->mTethering:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Lcom/android/server/connectivity/Tethering;->isDunRequired()Z

    move-result v29

    if-nez v29, :cond_16

    :cond_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityServiceExt;->mTethering:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Lcom/android/server/connectivity/Tethering;->getTetherableUsbRegexs()[Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v29

    array-length v0, v0

    move/from16 v29, v0

    if-nez v29, :cond_15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityServiceExt;->mTethering:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Lcom/android/server/connectivity/Tethering;->getTetherableWifiRegexs()[Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v29

    array-length v0, v0

    move/from16 v29, v0

    if-eqz v29, :cond_16

    :cond_15
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityServiceExt;->mTethering:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Lcom/android/server/connectivity/Tethering;->getUpstreamIfaceRegexs()[Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v29

    array-length v0, v0

    move/from16 v29, v0

    if-eqz v29, :cond_16

    const/16 v29, 0x1

    :goto_c
    move/from16 v0, v29

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/ConnectivityServiceExt;->mTetheringConfigValid:Z

    new-instance v29, Ljava/util/ArrayList;

    invoke-direct/range {v29 .. v29}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/ConnectivityServiceExt;->mInetLog:Ljava/util/ArrayList;

    new-instance v8, Landroid/content/IntentFilter;

    invoke-direct {v8}, Landroid/content/IntentFilter;-><init>()V

    .local v8, filter:Landroid/content/IntentFilter;
    const-string v29, "com.motorola.android.net.wifi.PROXY_CHANGE"

    move-object v0, v8

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityServiceExt;->mContext:Landroid/content/Context;

    move-object/from16 v29, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityServiceExt;->mStateReceiver:Landroid/content/BroadcastReceiver;

    move-object/from16 v30, v0

    move-object/from16 v0, v29

    move-object/from16 v1, v30

    move-object v2, v8

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityServiceExt;->mContext:Landroid/content/Context;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v29

    const v30, 0x10d0030

    invoke-virtual/range {v29 .. v30}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v29

    move/from16 v0, v29

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/ConnectivityServiceExt;->mHipriPermissionCheck:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :goto_d
    const-string v29, "ConnectivityService"

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "Multiple APN HiPri Permission ckeck supported? "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/ConnectivityServiceExt;->mHipriPermissionCheck:Z

    move/from16 v31, v0

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v29 .. v30}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .end local v8           #filter:Landroid/content/IntentFilter;
    :cond_16
    const/16 v29, 0x0

    goto :goto_c

    .restart local v8       #filter:Landroid/content/IntentFilter;
    :catch_1
    move-exception v29

    move-object/from16 v7, v29

    .local v7, e:Ljava/lang/Exception;
    const/16 v29, 0x0

    move/from16 v0, v29

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/ConnectivityServiceExt;->mHipriPermissionCheck:Z

    goto :goto_d

    .end local v7           #e:Ljava/lang/Exception;
    .end local v8           #filter:Landroid/content/IntentFilter;
    .end local v12           #insertionPoint:I
    .end local v22           #noMobileData:Z
    .local v5, arr$:[Lcom/android/server/ConnectivityServiceExt$NetworkAttributes;
    .restart local v13       #insertionPoint:I
    .restart local v16       #na:Lcom/android/server/ConnectivityServiceExt$NetworkAttributes;
    :cond_17
    move v12, v13

    .end local v13           #insertionPoint:I
    .restart local v12       #insertionPoint:I
    goto/16 :goto_6

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_1
        0x1 -> :sswitch_0
        0x6 -> :sswitch_2
    .end sparse-switch
.end method

.method synthetic constructor <init>(Landroid/content/Context;Lcom/android/server/ConnectivityServiceExt$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityServiceExt;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$000()Lcom/android/server/ConnectivityServiceExt;
    .locals 1

    .prologue
    sget-object v0, Lcom/android/server/ConnectivityServiceExt;->sServiceInstance:Lcom/android/server/ConnectivityServiceExt;

    return-object v0
.end method

.method static synthetic access$002(Lcom/android/server/ConnectivityServiceExt;)Lcom/android/server/ConnectivityServiceExt;
    .locals 0
    .parameter "x0"

    .prologue
    sput-object p0, Lcom/android/server/ConnectivityServiceExt;->sServiceInstance:Lcom/android/server/ConnectivityServiceExt;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/android/server/ConnectivityServiceExt;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityServiceExt;->handleDnsConfigurationChange(I)V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/server/ConnectivityServiceExt;Landroid/net/NetworkInfo;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityServiceExt;->handleRATChange(Landroid/net/NetworkInfo;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/server/ConnectivityServiceExt;II)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/ConnectivityServiceExt;->handleInetConditionChange(II)V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/server/ConnectivityServiceExt;II)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/ConnectivityServiceExt;->handleInetConditionHoldEnd(II)V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/server/ConnectivityServiceExt;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityServiceExt;->handleSetNetworkPreference(I)V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/server/ConnectivityServiceExt;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityServiceExt;->handleSetBackgroundData(Z)V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/server/ConnectivityServiceExt;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityServiceExt;->handleSetMobileData(Z)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/server/ConnectivityServiceExt;Lcom/android/server/ConnectivityServiceExt$FeatureUser;Z)I
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/ConnectivityServiceExt;->stopUsingNetworkFeature(Lcom/android/server/ConnectivityServiceExt$FeatureUser;Z)I

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lcom/android/server/ConnectivityServiceExt;Landroid/net/NetworkInfo;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityServiceExt;->handleConnectionFailure(Landroid/net/NetworkInfo;)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/server/ConnectivityServiceExt;Landroid/net/NetworkInfo;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityServiceExt;->handleDisconnect(Landroid/net/NetworkInfo;)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/server/ConnectivityServiceExt;Landroid/net/NetworkInfo;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityServiceExt;->handleConnect(Landroid/net/NetworkInfo;)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/server/ConnectivityServiceExt;Landroid/net/NetworkInfo;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityServiceExt;->handleScanResultsAvailable(Landroid/net/NetworkInfo;)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/server/ConnectivityServiceExt;ZILandroid/app/Notification;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/ConnectivityServiceExt;->handleNotificationChange(ZILandroid/app/Notification;)V

    return-void
.end method

.method private bumpDns()V
    .locals 5

    .prologue
    const-string v4, "net.dnschange"

    const-string v2, "net.dnschange"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .local v1, propVal:Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, n:I
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_0

    :try_start_0
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

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

    return-void

    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method private convertApnTypeToFeature(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "apnType"

    .prologue
    const-string v0, "mms"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "enableMMS"

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "supl"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "enableSUPL"

    goto :goto_0

    :cond_1
    const-string v0, "dun"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "enableDUN"

    goto :goto_0

    :cond_2
    const-string v0, "hipri"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "enableHIPRI"

    goto :goto_0

    :cond_3
    const-string v0, "agps"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "enableAGPS"

    goto :goto_0

    :cond_4
    const-string v0, "fota"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "enableFOTA"

    goto :goto_0

    :cond_5
    const-string v0, "ims"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    const-string v0, "enableIMS"

    goto :goto_0

    :cond_6
    const-string v0, "cbs"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    const-string v0, "enableCBS"

    goto :goto_0

    :cond_7
    move-object v0, p1

    goto :goto_0
.end method

.method private enforceAccessPermission()V
    .locals 3

    .prologue
    iget-object v0, p0, Lcom/android/server/ConnectivityServiceExt;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.ACCESS_NETWORK_STATE"

    const-string v2, "ConnectivityService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private enforceChangePermission()V
    .locals 3

    .prologue
    iget-object v0, p0, Lcom/android/server/ConnectivityServiceExt;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.CHANGE_NETWORK_STATE"

    const-string v2, "ConnectivityService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private enforceCheckPermissionforHiPri()Z
    .locals 11

    .prologue
    const/4 v10, 0x0

    const-string v9, "ConnectivityService"

    const-string v7, "ConnectivityService"

    const-string v7, "enforceCheckPermissionforHiPri"

    invoke-static {v9, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/motorola/android/internal/util/ApplicationInfoUtils;

    iget-object v7, p0, Lcom/android/server/ConnectivityServiceExt;->mContext:Landroid/content/Context;

    invoke-direct {v0, v7}, Lcom/motorola/android/internal/util/ApplicationInfoUtils;-><init>(Landroid/content/Context;)V

    .local v0, AiUtils:Lcom/motorola/android/internal/util/ApplicationInfoUtils;
    invoke-static {}, Lcom/android/server/ConnectivityServiceExt;->getCallingPid()I

    move-result v5

    .local v5, pid:I
    invoke-static {}, Lcom/android/server/ConnectivityServiceExt;->getCallingUid()I

    move-result v6

    .local v6, uid:I
    :try_start_0
    iget-object v7, p0, Lcom/android/server/ConnectivityServiceExt;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x10403ad

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .local v2, PERMISSION_PACKAGE_NAME:Ljava/lang/String;
    :try_start_1
    iget-object v7, p0, Lcom/android/server/ConnectivityServiceExt;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x10403ae

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v1

    .local v1, LTE_METADATA:Ljava/lang/String;
    invoke-virtual {v0, v5, v6, v2, v1}, Lcom/motorola/android/internal/util/ApplicationInfoUtils;->checkApnAccessPermissions(IILjava/lang/String;Ljava/lang/String;)Z

    move-result v3

    .local v3, checkApnPermission:Z
    move v7, v3

    .end local v1           #LTE_METADATA:Ljava/lang/String;
    .end local v2           #PERMISSION_PACKAGE_NAME:Ljava/lang/String;
    .end local v3           #checkApnPermission:Z
    :goto_0
    return v7

    :catch_0
    move-exception v7

    move-object v4, v7

    .local v4, e:Ljava/lang/Exception;
    const-string v7, "ConnectivityService"

    const-string v7, "Permission Package Not Found"

    invoke-static {v9, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move v7, v10

    goto :goto_0

    .end local v4           #e:Ljava/lang/Exception;
    .restart local v2       #PERMISSION_PACKAGE_NAME:Ljava/lang/String;
    :catch_1
    move-exception v7

    move-object v4, v7

    .restart local v4       #e:Ljava/lang/Exception;
    const-string v7, "ConnectivityService"

    const-string v7, "MetaData Not Found"

    invoke-static {v9, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move v7, v10

    goto :goto_0
.end method

.method private enforcePreference()V
    .locals 4

    .prologue
    iget-object v1, p0, Lcom/android/server/ConnectivityServiceExt;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    iget v2, p0, Lcom/android/server/ConnectivityServiceExt;->mNetworkPreference:I

    aget-object v1, v1, v2

    invoke-virtual {v1}, Landroid/net/NetworkStateTracker;->getNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/android/server/ConnectivityServiceExt;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    iget v2, p0, Lcom/android/server/ConnectivityServiceExt;->mNetworkPreference:I

    aget-object v1, v1, v2

    invoke-virtual {v1}, Landroid/net/NetworkStateTracker;->isAvailable()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    .local v0, t:I
    :goto_0
    const/16 v1, 0x9

    if-gt v0, v1, :cond_0

    iget v1, p0, Lcom/android/server/ConnectivityServiceExt;->mNetworkPreference:I

    if-eq v0, v1, :cond_2

    iget-object v1, p0, Lcom/android/server/ConnectivityServiceExt;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    aget-object v1, v1, v0

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/server/ConnectivityServiceExt;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Landroid/net/NetworkStateTracker;->getNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "ConnectivityService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "tearing down "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/ConnectivityServiceExt;->mNetTrackers:[Landroid/net/NetworkStateTracker;

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

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/server/ConnectivityServiceExt;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    aget-object v1, v1, v0

    invoke-direct {p0, v1}, Lcom/android/server/ConnectivityServiceExt;->teardown(Landroid/net/NetworkStateTracker;)Z

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private enforceTetherAccessPermission()V
    .locals 3

    .prologue
    iget-object v0, p0, Lcom/android/server/ConnectivityServiceExt;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.ACCESS_NETWORK_STATE"

    const-string v2, "ConnectivityService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private enforceTetherChangePermission()V
    .locals 3

    .prologue
    iget-object v0, p0, Lcom/android/server/ConnectivityServiceExt;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.CHANGE_NETWORK_STATE"

    const-string v2, "ConnectivityService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/android/server/ConnectivityServiceExt;
    .locals 1
    .parameter "context"

    .prologue
    invoke-static {p0}, Lcom/android/server/ConnectivityServiceExt$ConnectivityThread;->getServiceInstance(Landroid/content/Context;)Lcom/android/server/ConnectivityServiceExt;

    move-result-object v0

    return-object v0
.end method

.method private getMobileDataEnabledInternal()Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    iget-object v1, p0, Lcom/android/server/ConnectivityServiceExt;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "mobile_data"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v3, :cond_0

    move v0, v3

    .local v0, retVal:Z
    :goto_0
    const-string v1, "ConnectivityService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getMobileDataEnabledInternal returning "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    .end local v0           #retVal:Z
    :cond_0
    const/4 v1, 0x0

    move v0, v1

    goto :goto_0
.end method

.method private getNetworkTypeByFeature(Ljava/lang/String;)I
    .locals 6
    .parameter "feature"

    .prologue
    const/4 v4, -0x1

    .local v4, usedNetworkType:I
    if-nez p1, :cond_0

    const/4 v5, -0x1

    :goto_0
    return v5

    :cond_0
    iget-object v0, p0, Lcom/android/server/ConnectivityServiceExt;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    .local v0, arr$:[Landroid/net/NetworkStateTracker;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_1
    if-ge v1, v2, :cond_3

    aget-object v3, v0, v1

    .local v3, network:Landroid/net/NetworkStateTracker;
    if-nez v3, :cond_2

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    invoke-virtual {v3}, Landroid/net/NetworkStateTracker;->getFeature()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {v3}, Landroid/net/NetworkStateTracker;->getNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/NetworkInfo;->getType()I

    move-result v4

    .end local v3           #network:Landroid/net/NetworkStateTracker;
    :cond_3
    move v5, v4

    goto :goto_0
.end method

.method private getNumConnectedNetworks()I
    .locals 8

    .prologue
    const/4 v4, 0x0

    .local v4, numConnectedNets:I
    iget-object v0, p0, Lcom/android/server/ConnectivityServiceExt;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    .local v0, arr$:[Landroid/net/NetworkStateTracker;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

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

    add-int/lit8 v4, v4, 0x1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .end local v3           #nt:Landroid/net/NetworkStateTracker;
    :cond_1
    const-string v5, "ConnectivityService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "numConnectedNets returning "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v4
.end method

.method private getPersistedNetworkPreference()I
    .locals 4

    .prologue
    const/4 v3, -0x1

    iget-object v2, p0, Lcom/android/server/ConnectivityServiceExt;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .local v0, cr:Landroid/content/ContentResolver;
    const-string v2, "network_preference"

    invoke-static {v0, v2, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .local v1, networkPrefSetting:I
    if-eq v1, v3, :cond_0

    move v2, v1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x1

    goto :goto_0
.end method

.method private getRestoreDefaultNetworkDelay()I
    .locals 2

    .prologue
    const-string v1, "android.telephony.apn-restore"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .local v0, restoreDefaultNetworkDelayStr:Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_0

    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v1

    :cond_0
    const/4 v1, -0x1

    goto :goto_0
.end method

.method private handleConnect(Landroid/net/NetworkInfo;)V
    .locals 10
    .parameter "info"

    .prologue
    const/4 v9, 0x0

    const-string v8, "ConnectivityService"

    const-string v6, "ConnectivityService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Handle CONNECT for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v8, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getType()I

    move-result v4

    .local v4, type:I
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->isFailover()Z

    move-result v1

    .local v1, isFailover:Z
    iget-object v6, p0, Lcom/android/server/ConnectivityServiceExt;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    aget-object v3, v6, v4

    .local v3, thisNet:Landroid/net/NetworkStateTracker;
    invoke-virtual {v3}, Landroid/net/NetworkStateTracker;->getInterfaceName()Ljava/lang/String;

    move-result-object v0

    .local v0, ifName:Ljava/lang/String;
    if-eqz v0, :cond_0

    iget-object v6, p0, Lcom/android/server/ConnectivityServiceExt;->mInterfaceInfors:Ljava/util/HashMap;

    invoke-virtual {v6, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/HashSet;

    .local v5, typeSet:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/Integer;>;"
    if-nez v5, :cond_3

    new-instance v5, Ljava/util/HashSet;

    .end local v5           #typeSet:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/Integer;>;"
    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    .restart local v5       #typeSet:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/Integer;>;"
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    iget-object v6, p0, Lcom/android/server/ConnectivityServiceExt;->mInterfaceInfors:Ljava/util/HashMap;

    invoke-virtual {v6, v0, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .end local v5           #typeSet:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/Integer;>;"
    :cond_0
    :goto_0
    iget-object v6, p0, Lcom/android/server/ConnectivityServiceExt;->mNetAttributes:[Lcom/android/server/ConnectivityServiceExt$NetworkAttributes;

    aget-object v6, v6, v4

    invoke-virtual {v6}, Lcom/android/server/ConnectivityServiceExt$NetworkAttributes;->isDefault()Z

    move-result v6

    if-eqz v6, :cond_7

    const-string v6, "ConnectivityService"

    const-string v6, "connecting to a default network"

    invoke-static {v8, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v6, p0, Lcom/android/server/ConnectivityServiceExt;->mActiveDefaultNetwork:I

    const/4 v7, -0x1

    if-eq v6, v7, :cond_6

    iget v6, p0, Lcom/android/server/ConnectivityServiceExt;->mActiveDefaultNetwork:I

    if-eq v6, v4, :cond_6

    iget v6, p0, Lcom/android/server/ConnectivityServiceExt;->mNetworkPreference:I

    if-eq v4, v6, :cond_1

    iget-object v6, p0, Lcom/android/server/ConnectivityServiceExt;->mNetAttributes:[Lcom/android/server/ConnectivityServiceExt$NetworkAttributes;

    iget v7, p0, Lcom/android/server/ConnectivityServiceExt;->mActiveDefaultNetwork:I

    aget-object v6, v6, v7

    iget v6, v6, Lcom/android/server/ConnectivityServiceExt$NetworkAttributes;->mPriority:I

    iget-object v7, p0, Lcom/android/server/ConnectivityServiceExt;->mNetAttributes:[Lcom/android/server/ConnectivityServiceExt$NetworkAttributes;

    aget-object v7, v7, v4

    iget v7, v7, Lcom/android/server/ConnectivityServiceExt$NetworkAttributes;->mPriority:I

    if-gt v6, v7, :cond_2

    :cond_1
    iget v6, p0, Lcom/android/server/ConnectivityServiceExt;->mNetworkPreference:I

    iget v7, p0, Lcom/android/server/ConnectivityServiceExt;->mActiveDefaultNetwork:I

    if-ne v6, v7, :cond_4

    :cond_2
    const-string v6, "ConnectivityService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Not broadcasting CONNECT_ACTION to torn down network "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v8, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, v3}, Lcom/android/server/ConnectivityServiceExt;->teardown(Landroid/net/NetworkStateTracker;)Z

    :goto_1
    return-void

    .restart local v5       #typeSet:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/Integer;>;"
    :cond_3
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .end local v5           #typeSet:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/Integer;>;"
    :cond_4
    iget-object v6, p0, Lcom/android/server/ConnectivityServiceExt;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    iget v7, p0, Lcom/android/server/ConnectivityServiceExt;->mActiveDefaultNetwork:I

    aget-object v2, v6, v7

    .local v2, otherNet:Landroid/net/NetworkStateTracker;
    const-string v6, "ConnectivityService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Policy requires "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Landroid/net/NetworkStateTracker;->getNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v7

    invoke-virtual {v7}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " teardown"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v8, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, v2}, Lcom/android/server/ConnectivityServiceExt;->teardown(Landroid/net/NetworkStateTracker;)Z

    move-result v6

    if-nez v6, :cond_5

    const-string v6, "ConnectivityService"

    const-string v6, "Network declined teardown request"

    invoke-static {v8, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, v3}, Lcom/android/server/ConnectivityServiceExt;->teardown(Landroid/net/NetworkStateTracker;)Z

    goto :goto_1

    :cond_5
    if-eqz v1, :cond_6

    invoke-virtual {v2}, Landroid/net/NetworkStateTracker;->releaseWakeLock()V

    .end local v2           #otherNet:Landroid/net/NetworkStateTracker;
    :cond_6
    iput v4, p0, Lcom/android/server/ConnectivityServiceExt;->mActiveDefaultNetwork:I

    iput v9, p0, Lcom/android/server/ConnectivityServiceExt;->mDefaultInetConditionPublished:I

    iget v6, p0, Lcom/android/server/ConnectivityServiceExt;->mDefaultConnectionSequence:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Lcom/android/server/ConnectivityServiceExt;->mDefaultConnectionSequence:I

    iput-boolean v9, p0, Lcom/android/server/ConnectivityServiceExt;->mInetConditionChangeInFlight:Z

    invoke-direct {p0}, Lcom/android/server/ConnectivityServiceExt;->updateWifiHostException()V

    :cond_7
    invoke-virtual {v3, v9}, Landroid/net/NetworkStateTracker;->setTeardownRequested(Z)V

    const-string v6, "ConnectivityService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Sending CONNECT bcast for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v8, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v3}, Landroid/net/NetworkStateTracker;->updateNetworkSettings()V

    invoke-direct {p0, v4}, Lcom/android/server/ConnectivityServiceExt;->handleConnectivityChange(I)V

    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityServiceExt;->sendConnectedBroadcast(Landroid/net/NetworkInfo;)V

    goto/16 :goto_1
.end method

.method private handleConnectionFailure(Landroid/net/NetworkInfo;)V
    .locals 12
    .parameter "info"

    .prologue
    const/4 v10, -0x1

    const/4 v9, 0x1

    const/4 v8, 0x0

    const-string v11, "noConnectivity"

    iget-object v5, p0, Lcom/android/server/ConnectivityServiceExt;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getType()I

    move-result v6

    aget-object v5, v5, v6

    invoke-virtual {v5, v8}, Landroid/net/NetworkStateTracker;->setTeardownRequested(Z)V

    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getReason()Ljava/lang/String;

    move-result-object v2

    .local v2, reason:Ljava/lang/String;
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    move-result-object v0

    .local v0, extraInfo:Ljava/lang/String;
    if-nez v2, :cond_6

    const-string v3, "."

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

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Lcom/android/server/ConnectivityServiceExt;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getType()I

    move-result v6

    aget-object v5, v5, v6

    invoke-virtual {v5}, Landroid/net/NetworkStateTracker;->getFeature()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/server/ConnectivityServiceExt;->removeFeatureUser(Ljava/lang/String;)V

    new-instance v1, Landroid/content/Intent;

    const-string v5, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v1, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v1, intent:Landroid/content/Intent;
    const-string v5, "networkInfo"

    invoke-virtual {v1, v5, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/server/ConnectivityServiceExt;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v5

    if-nez v5, :cond_0

    const-string v5, "noConnectivity"

    invoke-virtual {v1, v11, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :cond_0
    if-eqz v2, :cond_1

    const-string v5, "reason"

    invoke-virtual {v1, v5, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_1
    if-eqz v0, :cond_2

    const-string v5, "extraInfo"

    invoke-virtual {v1, v5, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_2
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->isFailover()Z

    move-result v5

    if-eqz v5, :cond_3

    const-string v5, "isFailover"

    invoke-virtual {v1, v5, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual {p1, v8}, Landroid/net/NetworkInfo;->setFailover(Z)V

    :cond_3
    iget-object v5, p0, Lcom/android/server/ConnectivityServiceExt;->mNetAttributes:[Lcom/android/server/ConnectivityServiceExt$NetworkAttributes;

    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getType()I

    move-result v6

    aget-object v5, v5, v6

    invoke-virtual {v5}, Lcom/android/server/ConnectivityServiceExt$NetworkAttributes;->isDefault()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getType()I

    move-result v5

    invoke-direct {p0, v5}, Lcom/android/server/ConnectivityServiceExt;->tryFailover(I)V

    iget v5, p0, Lcom/android/server/ConnectivityServiceExt;->mActiveDefaultNetwork:I

    if-eq v5, v10, :cond_7

    iget-object v5, p0, Lcom/android/server/ConnectivityServiceExt;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    iget v6, p0, Lcom/android/server/ConnectivityServiceExt;->mActiveDefaultNetwork:I

    aget-object v5, v5, v6

    invoke-virtual {v5}, Landroid/net/NetworkStateTracker;->getNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v4

    .local v4, switchTo:Landroid/net/NetworkInfo;
    const-string v5, "otherNetwork"

    invoke-virtual {v1, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .end local v4           #switchTo:Landroid/net/NetworkInfo;
    :cond_4
    :goto_1
    const-string v5, "inetCondition"

    iget v6, p0, Lcom/android/server/ConnectivityServiceExt;->mDefaultInetConditionPublished:I

    invoke-virtual {v1, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-direct {p0, v1}, Lcom/android/server/ConnectivityServiceExt;->sendStickyBroadcast(Landroid/content/Intent;)V

    iget v5, p0, Lcom/android/server/ConnectivityServiceExt;->mActiveDefaultNetwork:I

    if-eq v5, v10, :cond_5

    iget-object v5, p0, Lcom/android/server/ConnectivityServiceExt;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    iget v6, p0, Lcom/android/server/ConnectivityServiceExt;->mActiveDefaultNetwork:I

    aget-object v5, v5, v6

    invoke-virtual {v5}, Landroid/net/NetworkStateTracker;->getNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/server/ConnectivityServiceExt;->sendConnectedBroadcast(Landroid/net/NetworkInfo;)V

    :cond_5
    return-void

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

    .restart local v1       #intent:Landroid/content/Intent;
    :cond_7
    iput v8, p0, Lcom/android/server/ConnectivityServiceExt;->mDefaultInetConditionPublished:I

    const-string v5, "noConnectivity"

    invoke-virtual {v1, v11, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto :goto_1
.end method

.method private handleConnectivityChange(I)V
    .locals 5
    .parameter "netType"

    .prologue
    const-string v3, "ConnectivityService"

    const-string v4, "handleConnectivityChange"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityServiceExt;->handleDnsConfigurationChange(I)V

    iget-object v3, p0, Lcom/android/server/ConnectivityServiceExt;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    aget-object v3, v3, p1

    invoke-virtual {v3}, Landroid/net/NetworkStateTracker;->getNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/server/ConnectivityServiceExt;->mNetAttributes:[Lcom/android/server/ConnectivityServiceExt$NetworkAttributes;

    aget-object v3, v3, p1

    invoke-virtual {v3}, Lcom/android/server/ConnectivityServiceExt$NetworkAttributes;->isDefault()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/server/ConnectivityServiceExt;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    aget-object v3, v3, p1

    invoke-virtual {v3}, Landroid/net/NetworkStateTracker;->addDefaultRoute()V

    :goto_0
    return-void

    :cond_0
    iget v3, p0, Lcom/android/server/ConnectivityServiceExt;->mActiveDefaultNetwork:I

    const/4 v4, -0x1

    if-eq v3, v4, :cond_1

    iget-object v3, p0, Lcom/android/server/ConnectivityServiceExt;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    iget v4, p0, Lcom/android/server/ConnectivityServiceExt;->mActiveDefaultNetwork:I

    aget-object v3, v3, v4

    invoke-virtual {v3}, Landroid/net/NetworkStateTracker;->getInterfaceName()Ljava/lang/String;

    move-result-object v0

    .local v0, defaultIface:Ljava/lang/String;
    if-eqz v0, :cond_1

    iget-object v3, p0, Lcom/android/server/ConnectivityServiceExt;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    aget-object v3, v3, p1

    invoke-virtual {v3}, Landroid/net/NetworkStateTracker;->getInterfaceName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/android/server/ConnectivityServiceExt;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    aget-object v3, v3, p1

    invoke-virtual {v3}, Landroid/net/NetworkStateTracker;->removeDefaultRoute()V

    .end local v0           #defaultIface:Ljava/lang/String;
    :cond_1
    iget-object v3, p0, Lcom/android/server/ConnectivityServiceExt;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    aget-object v3, v3, p1

    invoke-virtual {v3}, Landroid/net/NetworkStateTracker;->addPrivateDnsRoutes()V

    goto :goto_0

    :cond_2
    iget-object v3, p0, Lcom/android/server/ConnectivityServiceExt;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    aget-object v3, v3, p1

    invoke-virtual {v3}, Landroid/net/NetworkStateTracker;->getInterfaceName()Ljava/lang/String;

    move-result-object v1

    .local v1, ifName:Ljava/lang/String;
    iget-object v3, p0, Lcom/android/server/ConnectivityServiceExt;->mInterfaceInfors:Ljava/util/HashMap;

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    .local v2, isShared:Z
    iget-object v3, p0, Lcom/android/server/ConnectivityServiceExt;->mNetAttributes:[Lcom/android/server/ConnectivityServiceExt$NetworkAttributes;

    aget-object v3, v3, p1

    invoke-virtual {v3}, Lcom/android/server/ConnectivityServiceExt$NetworkAttributes;->isDefault()Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/android/server/ConnectivityServiceExt;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    aget-object v3, v3, p1

    invoke-virtual {v3}, Landroid/net/NetworkStateTracker;->removeDefaultRoute()V

    :goto_1
    if-nez v2, :cond_3

    if-eqz v1, :cond_3

    invoke-direct {p0, v1}, Lcom/android/server/ConnectivityServiceExt;->removeHostRouteInfo(Ljava/lang/String;)V

    :cond_3
    iget-object v3, p0, Lcom/android/server/ConnectivityServiceExt;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    aget-object v3, v3, p1

    invoke-virtual {v3, v2}, Landroid/net/NetworkStateTracker;->resetConnectionsInTracker(Z)V

    goto :goto_0

    :cond_4
    iget-object v3, p0, Lcom/android/server/ConnectivityServiceExt;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    aget-object v3, v3, p1

    invoke-virtual {v3, v2}, Landroid/net/NetworkStateTracker;->removePrivateDnsRoutes(Z)V

    goto :goto_1
.end method

.method private handleDisconnect(Landroid/net/NetworkInfo;)V
    .locals 14
    .parameter "info"

    .prologue
    const/4 v13, 0x1

    const/4 v12, -0x1

    const/4 v10, 0x0

    const-string v11, "ConnectivityService"

    const-string v8, "ConnectivityService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Handle DISCONNECT for "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v11, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getType()I

    move-result v5

    .local v5, prevNetType:I
    iget-object v8, p0, Lcom/android/server/ConnectivityServiceExt;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    aget-object v8, v8, v5

    invoke-virtual {v8}, Landroid/net/NetworkStateTracker;->getInterfaceName()Ljava/lang/String;

    move-result-object v2

    .local v2, interfaceName:Ljava/lang/String;
    iget-object v8, p0, Lcom/android/server/ConnectivityServiceExt;->mInterfaceInfors:Ljava/util/HashMap;

    invoke-virtual {v8, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/HashSet;

    .local v7, typeSet:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/Integer;>;"
    if-nez v7, :cond_1

    const-string v8, "ConnectivityService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "DISCONNECT for unknown interface "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v11, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    iget-object v8, p0, Lcom/android/server/ConnectivityServiceExt;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    aget-object v8, v8, v5

    invoke-virtual {v8, v10}, Landroid/net/NetworkStateTracker;->setTeardownRequested(Z)V

    iget-object v8, p0, Lcom/android/server/ConnectivityServiceExt;->mNetAttributes:[Lcom/android/server/ConnectivityServiceExt$NetworkAttributes;

    aget-object v8, v8, v5

    invoke-virtual {v8}, Lcom/android/server/ConnectivityServiceExt$NetworkAttributes;->isDefault()Z

    move-result v8

    if-nez v8, :cond_2

    iget-object v8, p0, Lcom/android/server/ConnectivityServiceExt;->mNetRequestersPids:[Ljava/util/List;

    aget-object v4, v8, v5

    .local v4, pids:Ljava/util/List;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v8

    if-ge v0, v8, :cond_2

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .local v3, pid:Ljava/lang/Integer;
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-direct {p0, v8, v10}, Lcom/android/server/ConnectivityServiceExt;->reassessPidDns(IZ)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .end local v0           #i:I
    .end local v3           #pid:Ljava/lang/Integer;
    .end local v4           #pids:Ljava/util/List;
    :cond_1
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    invoke-virtual {v7}, Ljava/util/HashSet;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_0

    const-string v8, "ConnectivityService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "interface "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " is useless"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v11, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v8, p0, Lcom/android/server/ConnectivityServiceExt;->mInterfaceInfors:Ljava/util/HashMap;

    invoke-virtual {v8, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    iget-object v8, p0, Lcom/android/server/ConnectivityServiceExt;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    aget-object v8, v8, v5

    invoke-virtual {v8}, Landroid/net/NetworkStateTracker;->getFeature()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/android/server/ConnectivityServiceExt;->removeFeatureUser(Ljava/lang/String;)V

    new-instance v1, Landroid/content/Intent;

    const-string v8, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v1, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v1, intent:Landroid/content/Intent;
    const-string v8, "networkInfo"

    invoke-virtual {v1, v8, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    invoke-virtual {p1}, Landroid/net/NetworkInfo;->isFailover()Z

    move-result v8

    if-eqz v8, :cond_3

    const-string v8, "isFailover"

    invoke-virtual {v1, v8, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual {p1, v10}, Landroid/net/NetworkInfo;->setFailover(Z)V

    :cond_3
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getReason()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_4

    const-string v8, "reason"

    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getReason()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_4
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_5

    const-string v8, "extraInfo"

    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_5
    iget-object v8, p0, Lcom/android/server/ConnectivityServiceExt;->mNetAttributes:[Lcom/android/server/ConnectivityServiceExt$NetworkAttributes;

    aget-object v8, v8, v5

    invoke-virtual {v8}, Lcom/android/server/ConnectivityServiceExt$NetworkAttributes;->isDefault()Z

    move-result v8

    if-eqz v8, :cond_6

    invoke-direct {p0, v5}, Lcom/android/server/ConnectivityServiceExt;->tryFailover(I)V

    iget v8, p0, Lcom/android/server/ConnectivityServiceExt;->mActiveDefaultNetwork:I

    if-eq v8, v12, :cond_8

    iget-object v8, p0, Lcom/android/server/ConnectivityServiceExt;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    iget v9, p0, Lcom/android/server/ConnectivityServiceExt;->mActiveDefaultNetwork:I

    aget-object v8, v8, v9

    invoke-virtual {v8}, Landroid/net/NetworkStateTracker;->getNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v6

    .local v6, switchTo:Landroid/net/NetworkInfo;
    const-string v8, "otherNetwork"

    invoke-virtual {v1, v8, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .end local v6           #switchTo:Landroid/net/NetworkInfo;
    :cond_6
    :goto_2
    const-string v8, "inetCondition"

    iget v9, p0, Lcom/android/server/ConnectivityServiceExt;->mDefaultInetConditionPublished:I

    invoke-virtual {v1, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-direct {p0, v5}, Lcom/android/server/ConnectivityServiceExt;->handleConnectivityChange(I)V

    invoke-direct {p0, v1}, Lcom/android/server/ConnectivityServiceExt;->sendStickyBroadcast(Landroid/content/Intent;)V

    iget v8, p0, Lcom/android/server/ConnectivityServiceExt;->mActiveDefaultNetwork:I

    if-eq v8, v12, :cond_7

    iget-object v8, p0, Lcom/android/server/ConnectivityServiceExt;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    iget v9, p0, Lcom/android/server/ConnectivityServiceExt;->mActiveDefaultNetwork:I

    aget-object v8, v8, v9

    invoke-virtual {v8}, Landroid/net/NetworkStateTracker;->getNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/android/server/ConnectivityServiceExt;->sendConnectedBroadcast(Landroid/net/NetworkInfo;)V

    :cond_7
    return-void

    :cond_8
    iput v10, p0, Lcom/android/server/ConnectivityServiceExt;->mDefaultInetConditionPublished:I

    const-string v8, "noConnectivity"

    invoke-virtual {v1, v8, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto :goto_2
.end method

.method private handleDnsConfigurationChange(I)V
    .locals 15
    .parameter "netType"

    .prologue
    const-string v12, "ConnectivityService"

    const-string v13, "handleDnsConfig Change"

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v12, p0, Lcom/android/server/ConnectivityServiceExt;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    aget-object v8, v12, p1

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

    invoke-virtual {v8}, Landroid/net/NetworkStateTracker;->getNameServers()[Ljava/lang/String;

    move-result-object v2

    .local v2, dnsList:[Ljava/lang/String;
    iget-object v12, p0, Lcom/android/server/ConnectivityServiceExt;->mNetAttributes:[Lcom/android/server/ConnectivityServiceExt$NetworkAttributes;

    aget-object v12, v12, p1

    invoke-virtual {v12}, Lcom/android/server/ConnectivityServiceExt$NetworkAttributes;->isDefault()Z

    move-result v12

    if-eqz v12, :cond_3

    const/4 v4, 0x1

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

    .local v1, dns:Ljava/lang/String;
    if-eqz v1, :cond_4

    const-string v12, "0.0.0.0"

    invoke-static {v1, v12}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_4

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

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

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

    :goto_1
    add-int/lit8 v3, v3, 0x1

    move v5, v4

    .end local v4           #j:I
    .restart local v5       #j:I
    goto :goto_0

    .end local v1           #dns:Ljava/lang/String;
    :cond_0
    move v6, v5

    .local v6, k:I
    :goto_2
    iget v12, p0, Lcom/android/server/ConnectivityServiceExt;->mNumDnsEntries:I

    if-ge v6, v12, :cond_1

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

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

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

    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_1
    iput v5, p0, Lcom/android/server/ConnectivityServiceExt;->mNumDnsEntries:I

    .end local v0           #arr$:[Ljava/lang/String;
    .end local v2           #dnsList:[Ljava/lang/String;
    .end local v3           #i$:I
    .end local v5           #j:I
    .end local v6           #k:I
    .end local v7           #len$:I
    :cond_2
    invoke-direct {p0}, Lcom/android/server/ConnectivityServiceExt;->bumpDns()V

    return-void

    .restart local v2       #dnsList:[Ljava/lang/String;
    :cond_3
    iget-object v12, p0, Lcom/android/server/ConnectivityServiceExt;->mNetRequestersPids:[Ljava/util/List;

    aget-object v10, v12, p1

    .local v10, pids:Ljava/util/List;
    const/4 v11, 0x0

    .local v11, y:I
    :goto_3
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v12

    if-ge v11, v12, :cond_2

    invoke-interface {v10, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    .local v9, pid:Ljava/lang/Integer;
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v12

    invoke-direct {p0, v2, v12}, Lcom/android/server/ConnectivityServiceExt;->writePidDns([Ljava/lang/String;I)V

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

    iget v2, p0, Lcom/android/server/ConnectivityServiceExt;->mActiveDefaultNetwork:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v1, p0, Lcom/android/server/ConnectivityServiceExt;->mActiveDefaultNetwork:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    const-string v1, "ConnectivityService"

    const-string v1, "no active default network - aborting"

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    iget v1, p0, Lcom/android/server/ConnectivityServiceExt;->mActiveDefaultNetwork:I

    if-eq v1, p1, :cond_1

    const-string v1, "ConnectivityService"

    const-string v1, "given net not default - aborting"

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    iput p2, p0, Lcom/android/server/ConnectivityServiceExt;->mDefaultInetCondition:I

    iget-boolean v1, p0, Lcom/android/server/ConnectivityServiceExt;->mInetConditionChangeInFlight:Z

    if-nez v1, :cond_3

    const-string v1, "ConnectivityService"

    const-string v1, "starting a change hold"

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v1, p0, Lcom/android/server/ConnectivityServiceExt;->mDefaultInetCondition:I

    const/16 v2, 0x32

    if-le v1, v2, :cond_2

    iget-object v1, p0, Lcom/android/server/ConnectivityServiceExt;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "inet_condition_debounce_up_delay"

    const/16 v3, 0x1f4

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .local v0, delay:I
    :goto_1
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/ConnectivityServiceExt;->mInetConditionChangeInFlight:Z

    iget-object v1, p0, Lcom/android/server/ConnectivityServiceExt;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/server/ConnectivityServiceExt;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x69

    iget v4, p0, Lcom/android/server/ConnectivityServiceExt;->mActiveDefaultNetwork:I

    iget v5, p0, Lcom/android/server/ConnectivityServiceExt;->mDefaultConnectionSequence:I

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v2

    int-to-long v3, v0

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .end local v0           #delay:I
    :cond_2
    iget-object v1, p0, Lcom/android/server/ConnectivityServiceExt;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "inet_condition_debounce_down_delay"

    const/16 v3, 0xbb8

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .restart local v0       #delay:I
    goto :goto_1

    .end local v0           #delay:I
    :cond_3
    const-string v1, "ConnectivityService"

    const-string v1, "currently in hold - not setting new end evt"

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private handleInetConditionHoldEnd(II)V
    .locals 4
    .parameter "netType"
    .parameter "sequence"

    .prologue
    const-string v3, "ConnectivityService"

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

    iget v2, p0, Lcom/android/server/ConnectivityServiceExt;->mDefaultInetCondition:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", published condition ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/ConnectivityServiceExt;->mDefaultInetConditionPublished:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/ConnectivityServiceExt;->mInetConditionChangeInFlight:Z

    iget v1, p0, Lcom/android/server/ConnectivityServiceExt;->mActiveDefaultNetwork:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    const-string v1, "ConnectivityService"

    const-string v1, "no active default network - aborting"

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    iget v1, p0, Lcom/android/server/ConnectivityServiceExt;->mDefaultConnectionSequence:I

    if-eq v1, p2, :cond_1

    const-string v1, "ConnectivityService"

    const-string v1, "event hold for obsolete network - aborting"

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    iget v1, p0, Lcom/android/server/ConnectivityServiceExt;->mDefaultInetConditionPublished:I

    iget v2, p0, Lcom/android/server/ConnectivityServiceExt;->mDefaultInetCondition:I

    if-ne v1, v2, :cond_2

    const-string v1, "ConnectivityService"

    const-string v1, "no change in condition - aborting"

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/android/server/ConnectivityServiceExt;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    iget v2, p0, Lcom/android/server/ConnectivityServiceExt;->mActiveDefaultNetwork:I

    aget-object v1, v1, v2

    invoke-virtual {v1}, Landroid/net/NetworkStateTracker;->getNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .local v0, networkInfo:Landroid/net/NetworkInfo;
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "ConnectivityService"

    const-string v1, "default network not connected - aborting"

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    iget v1, p0, Lcom/android/server/ConnectivityServiceExt;->mDefaultInetCondition:I

    iput v1, p0, Lcom/android/server/ConnectivityServiceExt;->mDefaultInetConditionPublished:I

    invoke-direct {p0, v0}, Lcom/android/server/ConnectivityServiceExt;->sendInetConditionBroadcast(Landroid/net/NetworkInfo;)V

    goto :goto_0
.end method

.method private handleNotificationChange(ZILandroid/app/Notification;)V
    .locals 3
    .parameter "visible"
    .parameter "id"
    .parameter "notification"

    .prologue
    iget-object v1, p0, Lcom/android/server/ConnectivityServiceExt;->mContext:Landroid/content/Context;

    const-string v2, "notification"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .local v0, notificationManager:Landroid/app/NotificationManager;
    if-eqz p1, :cond_0

    invoke-virtual {v0, p2, p3}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {v0, p2}, Landroid/app/NotificationManager;->cancel(I)V

    goto :goto_0
.end method

.method private handleRATChange(Landroid/net/NetworkInfo;)V
    .locals 4
    .parameter "info"

    .prologue
    const-string v2, "ConnectivityService"

    const-string v3, "Radio access technology (RAT) change - updating network settings"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getType()I

    move-result v1

    .local v1, type:I
    iget-object v2, p0, Lcom/android/server/ConnectivityServiceExt;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    aget-object v0, v2, v1

    .local v0, thisNet:Landroid/net/NetworkStateTracker;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/NetworkStateTracker;->updateNetworkSettings()V

    :cond_0
    return-void
.end method

.method private handleScanResultsAvailable(Landroid/net/NetworkInfo;)V
    .locals 4
    .parameter "info"

    .prologue
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getType()I

    move-result v0

    .local v0, networkType:I
    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

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

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v1, p0, Lcom/android/server/ConnectivityServiceExt;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Landroid/net/NetworkStateTracker;->interpretScanResultsAvailable()V

    return-void
.end method

.method private handleSetBackgroundData(Z)V
    .locals 4
    .parameter "enabled"

    .prologue
    invoke-virtual {p0}, Lcom/android/server/ConnectivityServiceExt;->getBackgroundDataSetting()Z

    move-result v1

    if-eq p1, v1, :cond_0

    iget-object v1, p0, Lcom/android/server/ConnectivityServiceExt;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "background_data"

    if-eqz p1, :cond_1

    const/4 v3, 0x1

    :goto_0
    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.net.conn.BACKGROUND_DATA_SETTING_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v0, broadcast:Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/server/ConnectivityServiceExt;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .end local v0           #broadcast:Landroid/content/Intent;
    :cond_0
    return-void

    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private handleSetMobileData(Z)V
    .locals 12
    .parameter "enabled"

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x6

    const-string v11, "starting up "

    const-string v10, "ConnectivityService"

    invoke-virtual {p0}, Lcom/android/server/ConnectivityServiceExt;->getMobileDataEnabled()Z

    move-result v5

    if-ne v5, p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v5, p0, Lcom/android/server/ConnectivityServiceExt;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "mobile_data"

    if-eqz p1, :cond_3

    const/4 v7, 0x1

    :goto_1
    invoke-static {v5, v6, v7}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    if-eqz p1, :cond_4

    iget-object v5, p0, Lcom/android/server/ConnectivityServiceExt;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    aget-object v5, v5, v9

    if-eqz v5, :cond_2

    const-string v5, "ConnectivityService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "starting up "

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/ConnectivityServiceExt;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    aget-object v6, v6, v9

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v10, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Lcom/android/server/ConnectivityServiceExt;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    aget-object v5, v5, v9

    invoke-virtual {v5}, Landroid/net/NetworkStateTracker;->reconnect()Z

    :cond_2
    iget-object v5, p0, Lcom/android/server/ConnectivityServiceExt;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    aget-object v5, v5, v8

    if-eqz v5, :cond_0

    const-string v5, "ConnectivityService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "starting up "

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/ConnectivityServiceExt;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    aget-object v6, v6, v8

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v10, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Lcom/android/server/ConnectivityServiceExt;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    aget-object v5, v5, v8

    invoke-virtual {v5}, Landroid/net/NetworkStateTracker;->reconnect()Z

    goto :goto_0

    :cond_3
    move v7, v9

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lcom/android/server/ConnectivityServiceExt;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    .local v0, arr$:[Landroid/net/NetworkStateTracker;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_2
    if-ge v1, v2, :cond_7

    aget-object v4, v0, v1

    .local v4, nt:Landroid/net/NetworkStateTracker;
    if-nez v4, :cond_6

    :cond_5
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_6
    invoke-virtual {v4}, Landroid/net/NetworkStateTracker;->getNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/NetworkInfo;->getType()I

    move-result v3

    .local v3, netType:I
    iget-object v5, p0, Lcom/android/server/ConnectivityServiceExt;->mNetAttributes:[Lcom/android/server/ConnectivityServiceExt$NetworkAttributes;

    aget-object v5, v5, v3

    iget v5, v5, Lcom/android/server/ConnectivityServiceExt$NetworkAttributes;->mRadio:I

    if-nez v5, :cond_5

    const-string v5, "ConnectivityService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "tearing down "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v10, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v4}, Landroid/net/NetworkStateTracker;->teardown()Z

    goto :goto_3

    .end local v3           #netType:I
    .end local v4           #nt:Landroid/net/NetworkStateTracker;
    :cond_7
    iget-object v5, p0, Lcom/android/server/ConnectivityServiceExt;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    aget-object v5, v5, v8

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/server/ConnectivityServiceExt;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    aget-object v5, v5, v8

    invoke-virtual {v5}, Landroid/net/NetworkStateTracker;->teardown()Z

    goto/16 :goto_0
.end method

.method private handleSetNetworkPreference(I)V
    .locals 2
    .parameter "preference"

    .prologue
    invoke-static {p1}, Landroid/net/ConnectivityManager;->isNetworkTypeValid(I)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/ConnectivityServiceExt;->mNetAttributes:[Lcom/android/server/ConnectivityServiceExt$NetworkAttributes;

    aget-object v1, v1, p1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/ConnectivityServiceExt;->mNetAttributes:[Lcom/android/server/ConnectivityServiceExt$NetworkAttributes;

    aget-object v1, v1, p1

    invoke-virtual {v1}, Lcom/android/server/ConnectivityServiceExt$NetworkAttributes;->isDefault()Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/android/server/ConnectivityServiceExt;->mNetworkPreference:I

    if-eq v1, p1, :cond_0

    iget-object v1, p0, Lcom/android/server/ConnectivityServiceExt;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .local v0, cr:Landroid/content/ContentResolver;
    const-string v1, "network_preference"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    monitor-enter p0

    :try_start_0
    iput p1, p0, Lcom/android/server/ConnectivityServiceExt;->mNetworkPreference:I

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-direct {p0}, Lcom/android/server/ConnectivityServiceExt;->enforcePreference()V

    .end local v0           #cr:Landroid/content/ContentResolver;
    :cond_0
    return-void

    .restart local v0       #cr:Landroid/content/ContentResolver;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private isHiPriRequested(ILjava/lang/String;)Z
    .locals 2
    .parameter "networkType"
    .parameter "feature"

    .prologue
    const/4 v1, 0x5

    iget-boolean v0, p0, Lcom/android/server/ConnectivityServiceExt;->mHipriPermissionCheck:Z

    if-eqz v0, :cond_1

    if-eq p1, v1, :cond_0

    if-nez p1, :cond_1

    invoke-direct {p0, p2}, Lcom/android/server/ConnectivityServiceExt;->getNetworkTypeByFeature(Ljava/lang/String;)I

    move-result v0

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isSinglePdpOnly(Landroid/content/Context;)Z
    .locals 5
    .parameter "context"

    .prologue
    const/4 v4, 0x1

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "multiple_pdp_isenabled"

    invoke-static {v1, v2, v4}, Lcom/motorola/android/provider/MotorolaSettings;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .local v0, isMulti:I
    const-string v1, "ConnectivityService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isSinglePdpOnly:isMulti:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v0, :cond_0

    move v1, v4

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private makeWimaxStateTracker()Landroid/net/NetworkStateTracker;
    .locals 23

    .prologue
    const/16 v16, 0x0

    .local v16, wimaxStateTrackerClass:Ljava/lang/Class;
    const/4 v13, 0x0

    .local v13, wimaxServiceClass:Ljava/lang/Class;
    const/4 v15, 0x0

    .local v15, wimaxStateTracker:Landroid/net/NetworkStateTracker;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityServiceExt;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    const v21, 0x10d001c

    invoke-virtual/range {v20 .. v21}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v6

    .local v6, isWimaxEnabled:Z
    if-eqz v6, :cond_0

    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityServiceExt;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    const v21, 0x104002e

    invoke-virtual/range {v20 .. v21}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    .local v9, wimaxJarLocation:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityServiceExt;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    const v21, 0x104002f

    invoke-virtual/range {v20 .. v21}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    .local v10, wimaxLibLocation:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityServiceExt;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    const v21, 0x1040030

    invoke-virtual/range {v20 .. v21}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    .local v12, wimaxManagerClassName:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityServiceExt;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    const v21, 0x1040031

    invoke-virtual/range {v20 .. v21}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v14

    .local v14, wimaxServiceClassName:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityServiceExt;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    const v21, 0x1040032

    invoke-virtual/range {v20 .. v21}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v17

    .local v17, wimaxStateTrackerClassName:Ljava/lang/String;
    new-instance v8, Ldalvik/system/DexClassLoader;

    new-instance v20, Landroid/content/ContextWrapper;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityServiceExt;->mContext:Landroid/content/Context;

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

    .local v8, wimaxClassLoader:Ldalvik/system/DexClassLoader;
    :try_start_1
    invoke-virtual {v8, v12}, Ldalvik/system/DexClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v11

    .local v11, wimaxManagerClass:Ljava/lang/Class;
    move-object v0, v8

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ldalvik/system/DexClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v16

    invoke-virtual {v8, v14}, Ldalvik/system/DexClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v13

    :try_start_2
    const-string v20, "ConnectivityService"

    const-string v21, "Starting Wimax Service... "

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

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

    .local v19, wmxStTrkrConst:Ljava/lang/reflect/Constructor;
    const/16 v20, 0x2

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityServiceExt;->mContext:Landroid/content/Context;

    move-object/from16 v22, v0

    aput-object v22, v20, v21

    const/16 v21, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityServiceExt;->mHandler:Landroid/os/Handler;

    move-object/from16 v22, v0

    aput-object v22, v20, v21

    invoke-virtual/range {v19 .. v20}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    .end local v17           #wimaxStateTrackerClassName:Ljava/lang/String;
    move-object/from16 v0, v17

    check-cast v0, Landroid/net/NetworkStateTracker;

    move-object v15, v0

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

    .local v18, wmxSrvConst:Ljava/lang/reflect/Constructor;
    const/16 v20, 0x1

    move-object/from16 v0, v18

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    const/16 v20, 0x2

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityServiceExt;->mContext:Landroid/content/Context;

    move-object/from16 v22, v0

    aput-object v22, v20, v21

    const/16 v21, 0x1

    aput-object v15, v20, v21

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/os/IBinder;

    .local v7, svcInvoker:Landroid/os/IBinder;
    const/16 v20, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

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

    .restart local v8       #wimaxClassLoader:Ldalvik/system/DexClassLoader;
    .restart local v9       #wimaxJarLocation:Ljava/lang/String;
    .restart local v10       #wimaxLibLocation:Ljava/lang/String;
    .restart local v12       #wimaxManagerClassName:Ljava/lang/String;
    .restart local v14       #wimaxServiceClassName:Ljava/lang/String;
    .restart local v17       #wimaxStateTrackerClassName:Ljava/lang/String;
    :catch_0
    move-exception v20

    move-object/from16 v5, v20

    .local v5, ex:Ljava/lang/ClassNotFoundException;
    :try_start_3
    invoke-virtual {v5}, Ljava/lang/ClassNotFoundException;->printStackTrace()V
    :try_end_3
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_3 .. :try_end_3} :catch_1

    const/16 v20, 0x0

    goto :goto_0

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

    .local v5, ex:Landroid/content/res/Resources$NotFoundException;
    const-string v20, "ConnectivityService"

    const-string v21, "Wimax Resources does not exist!!! "

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v20, 0x0

    goto :goto_0

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

    .local v5, ex:Ljava/lang/ClassCastException;
    invoke-virtual {v5}, Ljava/lang/ClassCastException;->printStackTrace()V

    const/16 v20, 0x0

    goto :goto_0

    .end local v5           #ex:Ljava/lang/ClassCastException;
    :catch_3
    move-exception v20

    move-object/from16 v5, v20

    .local v5, ex:Ljava/lang/NoSuchMethodException;
    invoke-virtual {v5}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    const/16 v20, 0x0

    goto :goto_0

    .end local v5           #ex:Ljava/lang/NoSuchMethodException;
    :catch_4
    move-exception v20

    move-object/from16 v5, v20

    .local v5, ex:Ljava/lang/InstantiationException;
    invoke-virtual {v5}, Ljava/lang/InstantiationException;->printStackTrace()V

    const/16 v20, 0x0

    goto :goto_0

    .end local v5           #ex:Ljava/lang/InstantiationException;
    :catch_5
    move-exception v20

    move-object/from16 v5, v20

    .local v5, ex:Ljava/lang/IllegalAccessException;
    invoke-virtual {v5}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    const/16 v20, 0x0

    goto :goto_0

    .end local v5           #ex:Ljava/lang/IllegalAccessException;
    :catch_6
    move-exception v20

    move-object/from16 v5, v20

    .local v5, ex:Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v5}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    const/16 v20, 0x0

    goto :goto_0

    .end local v5           #ex:Ljava/lang/reflect/InvocationTargetException;
    :catch_7
    move-exception v20

    move-object/from16 v5, v20

    .local v5, ex:Ljava/lang/Exception;
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    const/16 v20, 0x0

    goto :goto_0

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

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v20, 0x0

    goto :goto_0
.end method

.method private reassessPidDns(IZ)V
    .locals 13
    .parameter "myPid"
    .parameter "doBump"

    .prologue
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

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/ConnectivityServiceExt;->mPriorityList:[I

    .local v0, arr$:[I
    array-length v5, v0

    .local v5, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_0
    if-ge v3, v5, :cond_4

    aget v2, v0, v3

    .local v2, i:I
    iget-object v10, p0, Lcom/android/server/ConnectivityServiceExt;->mNetAttributes:[Lcom/android/server/ConnectivityServiceExt$NetworkAttributes;

    aget-object v10, v10, v2

    invoke-virtual {v10}, Lcom/android/server/ConnectivityServiceExt$NetworkAttributes;->isDefault()Z

    move-result v10

    if-eqz v10, :cond_1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    iget-object v10, p0, Lcom/android/server/ConnectivityServiceExt;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    aget-object v6, v10, v2

    .local v6, nt:Landroid/net/NetworkStateTracker;
    invoke-virtual {v6}, Landroid/net/NetworkStateTracker;->getNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v10

    invoke-virtual {v10}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v10

    if-eqz v10, :cond_0

    invoke-virtual {v6}, Landroid/net/NetworkStateTracker;->isTeardownRequested()Z

    move-result v10

    if-nez v10, :cond_0

    iget-object v10, p0, Lcom/android/server/ConnectivityServiceExt;->mNetRequestersPids:[Ljava/util/List;

    aget-object v8, v10, v2

    .local v8, pids:Ljava/util/List;
    const/4 v4, 0x0

    .local v4, j:I
    :goto_1
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v10

    if-ge v4, v10, :cond_0

    invoke-interface {v8, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    .local v7, pid:Ljava/lang/Integer;
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v10

    if-ne v10, p1, :cond_3

    invoke-virtual {v6}, Landroid/net/NetworkStateTracker;->getNameServers()[Ljava/lang/String;

    move-result-object v1

    .local v1, dnsList:[Ljava/lang/String;
    invoke-direct {p0, v1, p1}, Lcom/android/server/ConnectivityServiceExt;->writePidDns([Ljava/lang/String;I)V

    if-eqz p2, :cond_2

    invoke-direct {p0}, Lcom/android/server/ConnectivityServiceExt;->bumpDns()V

    .end local v1           #dnsList:[Ljava/lang/String;
    .end local v4           #j:I
    .end local v6           #nt:Landroid/net/NetworkStateTracker;
    .end local v7           #pid:Ljava/lang/Integer;
    .end local v8           #pids:Ljava/util/List;
    :cond_2
    :goto_2
    return-void

    .restart local v4       #j:I
    .restart local v6       #nt:Landroid/net/NetworkStateTracker;
    .restart local v7       #pid:Ljava/lang/Integer;
    .restart local v8       #pids:Ljava/util/List;
    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .end local v2           #i:I
    .end local v4           #j:I
    .end local v6           #nt:Landroid/net/NetworkStateTracker;
    .end local v7           #pid:Ljava/lang/Integer;
    .end local v8           #pids:Ljava/util/List;
    :cond_4
    const/4 v2, 0x1

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

    .local v9, prop:Ljava/lang/String;
    invoke-static {v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    if-nez v10, :cond_5

    if-eqz p2, :cond_2

    invoke-direct {p0}, Lcom/android/server/ConnectivityServiceExt;->bumpDns()V

    goto :goto_2

    :cond_5
    const-string v10, ""

    invoke-static {v9, v10}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_3
.end method

.method private recordHostRouteInfo(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;)V
    .locals 7
    .parameter "pid"
    .parameter "hostAddress"
    .parameter "ifName"

    .prologue
    const/4 v3, 0x1

    .local v3, updateFile:Z
    iget-object v4, p0, Lcom/android/server/ConnectivityServiceExt;->mHostRouteInfoList:Ljava/util/ArrayList;

    monitor-enter v4

    :try_start_0
    iget-object v5, p0, Lcom/android/server/ConnectivityServiceExt;->mHostRouteInfoList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/ConnectivityServiceExt$HostRouteInfo;

    .local v1, item:Lcom/android/server/ConnectivityServiceExt$HostRouteInfo;
    iget v5, v1, Lcom/android/server/ConnectivityServiceExt$HostRouteInfo;->pid:I

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-ne v5, v6, :cond_0

    iget v5, v1, Lcom/android/server/ConnectivityServiceExt$HostRouteInfo;->addr:I

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-ne v5, v6, :cond_0

    iget-object v5, v1, Lcom/android/server/ConnectivityServiceExt$HostRouteInfo;->ifName:Ljava/lang/String;

    invoke-static {v5, p3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v3, 0x0

    .end local v1           #item:Lcom/android/server/ConnectivityServiceExt$HostRouteInfo;
    :cond_1
    if-eqz v3, :cond_2

    new-instance v2, Lcom/android/server/ConnectivityServiceExt$HostRouteInfo;

    const/4 v5, 0x0

    invoke-direct {v2, v5}, Lcom/android/server/ConnectivityServiceExt$HostRouteInfo;-><init>(Lcom/android/server/ConnectivityServiceExt$1;)V

    .local v2, newOne:Lcom/android/server/ConnectivityServiceExt$HostRouteInfo;
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v5

    iput v5, v2, Lcom/android/server/ConnectivityServiceExt$HostRouteInfo;->pid:I

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v5

    iput v5, v2, Lcom/android/server/ConnectivityServiceExt$HostRouteInfo;->addr:I

    iput-object p3, v2, Lcom/android/server/ConnectivityServiceExt$HostRouteInfo;->ifName:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/server/ConnectivityServiceExt;->mHostRouteInfoList:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .end local v2           #newOne:Lcom/android/server/ConnectivityServiceExt$HostRouteInfo;
    :cond_2
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v3, :cond_3

    invoke-direct {p0}, Lcom/android/server/ConnectivityServiceExt;->updateWifiHostException()V

    :cond_3
    return-void

    .end local v0           #i$:Ljava/util/Iterator;
    :catchall_0
    move-exception v5

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v5
.end method

.method private removeFeatureUser(Ljava/lang/String;)V
    .locals 5
    .parameter "feature"

    .prologue
    monitor-enter p0

    :try_start_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .local v2, removedItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/ConnectivityServiceExt$FeatureUser;>;"
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v4, p0, Lcom/android/server/ConnectivityServiceExt;->mFeatureUsers:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v0, v4, :cond_1

    iget-object v4, p0, Lcom/android/server/ConnectivityServiceExt;->mFeatureUsers:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/ConnectivityServiceExt$FeatureUser;

    .local v3, u:Lcom/android/server/ConnectivityServiceExt$FeatureUser;
    iget-object v4, v3, Lcom/android/server/ConnectivityServiceExt$FeatureUser;->mFeature:Ljava/lang/String;

    invoke-static {p1, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .end local v3           #u:Lcom/android/server/ConnectivityServiceExt$FeatureUser;
    :cond_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/ConnectivityServiceExt$FeatureUser;

    .restart local v3       #u:Lcom/android/server/ConnectivityServiceExt$FeatureUser;
    invoke-virtual {v3}, Lcom/android/server/ConnectivityServiceExt$FeatureUser;->expire()V

    goto :goto_1

    .end local v0           #i:I
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #removedItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/ConnectivityServiceExt$FeatureUser;>;"
    .end local v3           #u:Lcom/android/server/ConnectivityServiceExt$FeatureUser;
    :catchall_0
    move-exception v4

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .restart local v0       #i:I
    .restart local v1       #i$:Ljava/util/Iterator;
    .restart local v2       #removedItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/ConnectivityServiceExt$FeatureUser;>;"
    :cond_2
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void
.end method

.method private removeHostRouteInfo(Ljava/lang/String;)V
    .locals 6
    .parameter "ifName"

    .prologue
    const/4 v3, 0x0

    .local v3, updateFile:Z
    iget-object v4, p0, Lcom/android/server/ConnectivityServiceExt;->mHostRouteInfoList:Ljava/util/ArrayList;

    monitor-enter v4

    :try_start_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .local v2, rmItemList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/ConnectivityServiceExt$HostRouteInfo;>;"
    iget-object v5, p0, Lcom/android/server/ConnectivityServiceExt;->mHostRouteInfoList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/ConnectivityServiceExt$HostRouteInfo;

    .local v1, item:Lcom/android/server/ConnectivityServiceExt$HostRouteInfo;
    iget-object v5, v1, Lcom/android/server/ConnectivityServiceExt$HostRouteInfo;->ifName:Ljava/lang/String;

    invoke-static {v5, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #item:Lcom/android/server/ConnectivityServiceExt$HostRouteInfo;
    .end local v2           #rmItemList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/ConnectivityServiceExt$HostRouteInfo;>;"
    :catchall_0
    move-exception v5

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5

    .restart local v0       #i$:Ljava/util/Iterator;
    .restart local v2       #rmItemList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/ConnectivityServiceExt$HostRouteInfo;>;"
    :cond_1
    :try_start_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_2

    const/4 v5, 0x1

    move v3, v5

    :goto_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/ConnectivityServiceExt$HostRouteInfo;

    .restart local v1       #item:Lcom/android/server/ConnectivityServiceExt$HostRouteInfo;
    iget-object v5, p0, Lcom/android/server/ConnectivityServiceExt;->mHostRouteInfoList:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_2

    .end local v1           #item:Lcom/android/server/ConnectivityServiceExt$HostRouteInfo;
    :cond_2
    const/4 v5, 0x0

    move v3, v5

    goto :goto_1

    :cond_3
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v3, :cond_4

    invoke-direct {p0}, Lcom/android/server/ConnectivityServiceExt;->updateWifiHostException()V

    :cond_4
    return-void
.end method

.method private sendConnectedBroadcast(Landroid/net/NetworkInfo;)V
    .locals 1
    .parameter "info"

    .prologue
    const-string v0, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {p0, p1, v0}, Lcom/android/server/ConnectivityServiceExt;->sendGeneralBroadcast(Landroid/net/NetworkInfo;Ljava/lang/String;)V

    return-void
.end method

.method private sendGeneralBroadcast(Landroid/net/NetworkInfo;Ljava/lang/String;)V
    .locals 3
    .parameter "info"
    .parameter "bcastType"

    .prologue
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v0, intent:Landroid/content/Intent;
    const-string v1, "networkInfo"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    invoke-virtual {p1}, Landroid/net/NetworkInfo;->isFailover()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "isFailover"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/net/NetworkInfo;->setFailover(Z)V

    :cond_0
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getReason()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    const-string v1, "reason"

    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getReason()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_1
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    const-string v1, "extraInfo"

    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_2
    const-string v1, "inetCondition"

    iget v2, p0, Lcom/android/server/ConnectivityServiceExt;->mDefaultInetConditionPublished:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-direct {p0, v0}, Lcom/android/server/ConnectivityServiceExt;->sendStickyBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method private sendInetConditionBroadcast(Landroid/net/NetworkInfo;)V
    .locals 1
    .parameter "info"

    .prologue
    const-string v0, "android.net.conn.INET_CONDITION_ACTION"

    invoke-direct {p0, p1, v0}, Lcom/android/server/ConnectivityServiceExt;->sendGeneralBroadcast(Landroid/net/NetworkInfo;Ljava/lang/String;)V

    return-void
.end method

.method private sendStickyBroadcast(Landroid/content/Intent;)V
    .locals 4
    .parameter "intent"

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityServiceExt;->sendStickyBroadcastExt(Landroid/content/Intent;)V

    const-string v1, "networkInfo"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/NetworkInfo;

    .local v0, info:Landroid/net/NetworkInfo;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v1

    invoke-static {v1}, Landroid/net/ConnectivityManager;->isExtNetworkTypeValid(I)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "ConnectivityService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "It is ExtNetworkType:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    monitor-enter p0

    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/ConnectivityServiceExt;->mSystemReady:Z

    if-nez v1, :cond_1

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, p1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    iput-object v1, p0, Lcom/android/server/ConnectivityServiceExt;->mInitialBroadcast:Landroid/content/Intent;

    :cond_1
    const/high16 v1, 0x1000

    invoke-virtual {p1, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/server/ConnectivityServiceExt;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private sendStickyBroadcastExt(Landroid/content/Intent;)V
    .locals 3
    .parameter "intent"

    .prologue
    invoke-virtual {p1}, Landroid/content/Intent;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    .local v0, extIntent:Landroid/content/Intent;
    const-string v2, "com.motorola.android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "networkInfo"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/NetworkInfo;

    .local v1, info:Landroid/net/NetworkInfo;
    monitor-enter p0

    :try_start_0
    iget-boolean v2, p0, Lcom/android/server/ConnectivityServiceExt;->mSystemReady:Z

    if-nez v2, :cond_0

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2, v0}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    iput-object v2, p0, Lcom/android/server/ConnectivityServiceExt;->mInitialBroadcast:Landroid/content/Intent;

    :cond_0
    const/high16 v2, 0x1000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/server/ConnectivityServiceExt;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method private stopUsingNetworkFeature(Lcom/android/server/ConnectivityServiceExt$FeatureUser;Z)I
    .locals 18
    .parameter "u"
    .parameter "ignoreDups"

    .prologue
    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/server/ConnectivityServiceExt$FeatureUser;->mNetworkType:I

    move v8, v0

    .local v8, networkType:I
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/ConnectivityServiceExt$FeatureUser;->mFeature:Ljava/lang/String;

    move-object v6, v0

    .local v6, feature:Ljava/lang/String;
    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/server/ConnectivityServiceExt$FeatureUser;->mPid:I

    move v9, v0

    .local v9, pid:I
    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/server/ConnectivityServiceExt$FeatureUser;->mUid:I

    move v12, v0

    .local v12, uid:I
    const/4 v4, 0x1

    .local v4, cbsPermissionChk:Z
    move-object/from16 v0, p0

    move v1, v8

    move-object v2, v6

    invoke-direct {v0, v1, v2}, Lcom/android/server/ConnectivityServiceExt;->isHiPriRequested(ILjava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_0

    invoke-direct/range {p0 .. p0}, Lcom/android/server/ConnectivityServiceExt;->enforceCheckPermissionforHiPri()Z

    move-result v4

    const-string v15, "ConnectivityService"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Permitted to use HiPri? "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v4, :cond_0

    const/4 v8, 0x0

    const-string v6, ""

    :cond_0
    const/4 v11, 0x0

    .local v11, tracker:Landroid/net/NetworkStateTracker;
    const/4 v3, 0x0

    .local v3, callTeardown:Z
    const-string v15, "ConnectivityService"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "stopUsingNetworkFeature for net "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move v1, v8

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, ": "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move-object v1, v6

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v8}, Landroid/net/ConnectivityManager;->isNetworkTypeValid(I)Z

    move-result v15

    if-nez v15, :cond_1

    invoke-static {v8}, Landroid/net/ConnectivityManager;->isExtNetworkTypeValid(I)Z

    move-result v15

    if-nez v15, :cond_1

    const/4 v15, -0x1

    :goto_0
    return v15

    :cond_1
    monitor-enter p0

    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityServiceExt;->mFeatureUsers:Ljava/util/List;

    move-object v15, v0

    move-object v0, v15

    move-object/from16 v1, p1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_2

    const-string v15, "ConnectivityService"

    const-string v16, "ignoring - this process has no outstanding requests"

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v15, 0x1

    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v15

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v15

    :cond_2
    :try_start_1
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/ConnectivityServiceExt$FeatureUser;->unlinkDeathRecipient()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityServiceExt;->mFeatureUsers:Ljava/util/List;

    move-object v15, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityServiceExt;->mFeatureUsers:Ljava/util/List;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    move-object/from16 v1, p1

    invoke-interface {v0, v1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v16

    invoke-interface/range {v15 .. v16}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    if-nez p2, :cond_4

    const/4 v7, 0x0

    .local v7, i:I
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityServiceExt;->mFeatureUsers:Ljava/util/List;

    move-object v15, v0

    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v15

    if-ge v7, v15, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityServiceExt;->mFeatureUsers:Ljava/util/List;

    move-object v15, v0

    invoke-interface {v15, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/server/ConnectivityServiceExt$FeatureUser;

    .local v14, x:Lcom/android/server/ConnectivityServiceExt$FeatureUser;
    iget v15, v14, Lcom/android/server/ConnectivityServiceExt$FeatureUser;->mUid:I

    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/server/ConnectivityServiceExt$FeatureUser;->mUid:I

    move/from16 v16, v0

    move v0, v15

    move/from16 v1, v16

    if-ne v0, v1, :cond_3

    iget v15, v14, Lcom/android/server/ConnectivityServiceExt$FeatureUser;->mPid:I

    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/server/ConnectivityServiceExt$FeatureUser;->mPid:I

    move/from16 v16, v0

    move v0, v15

    move/from16 v1, v16

    if-ne v0, v1, :cond_3

    iget v15, v14, Lcom/android/server/ConnectivityServiceExt$FeatureUser;->mNetworkType:I

    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/server/ConnectivityServiceExt$FeatureUser;->mNetworkType:I

    move/from16 v16, v0

    move v0, v15

    move/from16 v1, v16

    if-ne v0, v1, :cond_3

    iget-object v15, v14, Lcom/android/server/ConnectivityServiceExt$FeatureUser;->mFeature:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/ConnectivityServiceExt$FeatureUser;->mFeature:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-static/range {v15 .. v16}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v15

    if-eqz v15, :cond_3

    const-string v15, "ConnectivityService"

    const-string v16, "ignoring stopUsingNetworkFeature as dup is found"

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v15, 0x1

    monitor-exit p0

    goto/16 :goto_0

    :cond_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .end local v7           #i:I
    .end local v14           #x:Lcom/android/server/ConnectivityServiceExt$FeatureUser;
    :cond_4
    move v13, v8

    .local v13, usedNetworkType:I
    if-nez v8, :cond_5

    move-object/from16 v0, p0

    move-object v1, v6

    invoke-direct {v0, v1}, Lcom/android/server/ConnectivityServiceExt;->getNetworkTypeByFeature(Ljava/lang/String;)I

    move-result v13

    if-gez v13, :cond_5

    move v13, v8

    :cond_5
    if-nez v4, :cond_6

    const/4 v13, 0x0

    const/4 v8, 0x5

    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityServiceExt;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    move-object v15, v0

    aget-object v11, v15, v13

    if-nez v11, :cond_7

    const-string v15, "ConnectivityService"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "ignoring - no known tracker for net type "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move v1, v13

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v15, -0x1

    monitor-exit p0

    goto/16 :goto_0

    :cond_7
    if-eq v13, v8, :cond_9

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, v9}, Ljava/lang/Integer;-><init>(I)V

    .local v5, currentPid:Ljava/lang/Integer;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityServiceExt;->mNetRequestersPids:[Ljava/util/List;

    move-object v15, v0

    aget-object v15, v15, v13

    invoke-interface {v15, v5}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    const/4 v15, 0x1

    move-object/from16 v0, p0

    move v1, v9

    move v2, v15

    invoke-direct {v0, v1, v2}, Lcom/android/server/ConnectivityServiceExt;->reassessPidDns(IZ)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityServiceExt;->mNetRequestersPids:[Ljava/util/List;

    move-object v15, v0

    aget-object v15, v15, v13

    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v15

    if-eqz v15, :cond_8

    const-string v15, "ConnectivityService"

    const-string v16, "not tearing down special network - others still using it"

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v15, 0x1

    monitor-exit p0

    goto/16 :goto_0

    :cond_8
    const/4 v3, 0x1

    .end local v5           #currentPid:Ljava/lang/Integer;
    :cond_9
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-string v15, "ConnectivityService"

    const-string v16, "Doing network teardown"

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v3, :cond_b

    invoke-virtual {v11}, Landroid/net/NetworkStateTracker;->teardown()Z

    move-result v10

    .local v10, ret:Z
    if-eqz v10, :cond_a

    const/4 v15, 0x1

    goto/16 :goto_0

    :cond_a
    const/4 v15, 0x3

    goto/16 :goto_0

    .end local v10           #ret:Z
    :cond_b
    invoke-virtual {v11, v6, v9, v12}, Landroid/net/NetworkStateTracker;->stopUsingNetworkFeature(Ljava/lang/String;II)I

    move-result v15

    goto/16 :goto_0
.end method

.method private teardown(Landroid/net/NetworkStateTracker;)Z
    .locals 2
    .parameter "netTracker"

    .prologue
    const/4 v1, 0x1

    invoke-virtual {p1}, Landroid/net/NetworkStateTracker;->teardown()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1, v1}, Landroid/net/NetworkStateTracker;->setTeardownRequested(Z)V

    move v0, v1

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

    iget-object v4, p0, Lcom/android/server/ConnectivityServiceExt;->mNetAttributes:[Lcom/android/server/ConnectivityServiceExt$NetworkAttributes;

    aget-object v4, v4, p1

    invoke-virtual {v4}, Lcom/android/server/ConnectivityServiceExt$NetworkAttributes;->isDefault()Z

    move-result v4

    if-eqz v4, :cond_8

    iget v4, p0, Lcom/android/server/ConnectivityServiceExt;->mActiveDefaultNetwork:I

    if-ne v4, p1, :cond_0

    const/4 v4, -0x1

    iput v4, p0, Lcom/android/server/ConnectivityServiceExt;->mActiveDefaultNetwork:I

    :cond_0
    invoke-direct {p0}, Lcom/android/server/ConnectivityServiceExt;->updateWifiHostException()V

    invoke-virtual {p0}, Lcom/android/server/ConnectivityServiceExt;->getMobileDataEnabled()Z

    move-result v4

    if-nez v4, :cond_2

    move v3, v7

    .local v3, noMobileData:Z
    :goto_0
    const/4 v2, 0x0

    .local v2, checkType:I
    :goto_1
    const/16 v4, 0x22

    if-gt v2, v4, :cond_8

    if-ne v2, p1, :cond_3

    :cond_1
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .end local v2           #checkType:I
    .end local v3           #noMobileData:Z
    :cond_2
    const/4 v4, 0x0

    move v3, v4

    goto :goto_0

    .restart local v2       #checkType:I
    .restart local v3       #noMobileData:Z
    :cond_3
    iget-object v4, p0, Lcom/android/server/ConnectivityServiceExt;->mNetAttributes:[Lcom/android/server/ConnectivityServiceExt$NetworkAttributes;

    aget-object v4, v4, v2

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/server/ConnectivityServiceExt;->mNetAttributes:[Lcom/android/server/ConnectivityServiceExt$NetworkAttributes;

    aget-object v4, v4, v2

    invoke-virtual {v4}, Lcom/android/server/ConnectivityServiceExt$NetworkAttributes;->isDefault()Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/server/ConnectivityServiceExt;->mNetAttributes:[Lcom/android/server/ConnectivityServiceExt$NetworkAttributes;

    aget-object v4, v4, v2

    iget v4, v4, Lcom/android/server/ConnectivityServiceExt$NetworkAttributes;->mRadio:I

    if-nez v4, :cond_4

    if-eqz v3, :cond_4

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

    invoke-static {v6, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_4
    iget-object v4, p0, Lcom/android/server/ConnectivityServiceExt;->mNetAttributes:[Lcom/android/server/ConnectivityServiceExt$NetworkAttributes;

    aget-object v4, v4, v2

    iget v4, v4, Lcom/android/server/ConnectivityServiceExt$NetworkAttributes;->mRadio:I

    const/4 v5, 0x6

    if-ne v4, v5, :cond_5

    if-eqz v3, :cond_5

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

    invoke-static {v6, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_5
    iget-object v4, p0, Lcom/android/server/ConnectivityServiceExt;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    aget-object v1, v4, v2

    .local v1, checkTracker:Landroid/net/NetworkStateTracker;
    invoke-virtual {v1}, Landroid/net/NetworkStateTracker;->getNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .local v0, checkInfo:Landroid/net/NetworkInfo;
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-virtual {v1}, Landroid/net/NetworkStateTracker;->isTeardownRequested()Z

    move-result v4

    if-eqz v4, :cond_7

    :cond_6
    invoke-virtual {v0, v7}, Landroid/net/NetworkInfo;->setFailover(Z)V

    invoke-virtual {v1}, Landroid/net/NetworkStateTracker;->reconnect()Z

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

    invoke-static {v6, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .end local v0           #checkInfo:Landroid/net/NetworkInfo;
    .end local v1           #checkTracker:Landroid/net/NetworkStateTracker;
    .end local v2           #checkType:I
    .end local v3           #noMobileData:Z
    :cond_8
    return-void
.end method

.method private updateWifiHostException()V
    .locals 11

    .prologue
    const-string v7, "updateWifiHostException :fail to update:\n"

    const-string v7, "ConnectivityService"

    iget-object v7, p0, Lcom/android/server/ConnectivityServiceExt;->mHostRouteInfoList:Ljava/util/ArrayList;

    monitor-enter v7

    :try_start_0
    const-string v0, "/tmp/WifiHostException"

    .local v0, destFile:Ljava/lang/String;
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .local v4, infoFile:Ljava/io/File;
    iget v8, p0, Lcom/android/server/ConnectivityServiceExt;->mActiveDefaultNetwork:I

    const/4 v9, 0x1

    if-eq v8, v9, :cond_1

    const-string v8, "ConnectivityService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "updateWifiHostException: delete file :"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    :cond_0
    :goto_0
    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :cond_1
    :try_start_1
    const-string v8, "ConnectivityService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "updateWifiHostException: create file :"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v4}, Ljava/io/File;->createNewFile()Z

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "chmod 644 "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    iget-object v8, p0, Lcom/android/server/ConnectivityServiceExt;->mHostRouteInfoList:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_0

    new-instance v2, Ljava/io/FileOutputStream;

    const/4 v8, 0x0

    invoke-direct {v2, v4, v8}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    .local v2, file:Ljava/io/FileOutputStream;
    new-instance v6, Ljava/io/DataOutputStream;

    invoke-direct {v6, v2}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .local v6, out:Ljava/io/DataOutputStream;
    iget-object v8, p0, Lcom/android/server/ConnectivityServiceExt;->mHostRouteInfoList:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/ConnectivityServiceExt$HostRouteInfo;

    .local v5, item:Lcom/android/server/ConnectivityServiceExt$HostRouteInfo;
    const-string v8, "ConnectivityService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "updateWifiHostException :pid:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, v5, Lcom/android/server/ConnectivityServiceExt$HostRouteInfo;->pid:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ",address:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, v5, Lcom/android/server/ConnectivityServiceExt$HostRouteInfo;->addr:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v8, v5, Lcom/android/server/ConnectivityServiceExt$HostRouteInfo;->pid:I

    invoke-virtual {v6, v8}, Ljava/io/DataOutputStream;->writeInt(I)V

    iget v8, v5, Lcom/android/server/ConnectivityServiceExt$HostRouteInfo;->addr:I

    invoke-virtual {v6, v8}, Ljava/io/DataOutputStream;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .end local v2           #file:Ljava/io/FileOutputStream;
    .end local v3           #i$:Ljava/util/Iterator;
    .end local v5           #item:Lcom/android/server/ConnectivityServiceExt$HostRouteInfo;
    .end local v6           #out:Ljava/io/DataOutputStream;
    :catch_0
    move-exception v8

    move-object v1, v8

    .local v1, e:Ljava/io/FileNotFoundException;
    :try_start_2
    const-string v8, "ConnectivityService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "updateWifiHostException :fail to update:\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .end local v0           #destFile:Ljava/lang/String;
    .end local v1           #e:Ljava/io/FileNotFoundException;
    .end local v4           #infoFile:Ljava/io/File;
    :catchall_0
    move-exception v8

    monitor-exit v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v8

    .restart local v0       #destFile:Ljava/lang/String;
    .restart local v2       #file:Ljava/io/FileOutputStream;
    .restart local v3       #i$:Ljava/util/Iterator;
    .restart local v4       #infoFile:Ljava/io/File;
    .restart local v6       #out:Ljava/io/DataOutputStream;
    :cond_2
    :try_start_3
    invoke-virtual {v6}, Ljava/io/DataOutputStream;->flush()V

    invoke-virtual {v6}, Ljava/io/DataOutputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_0

    .end local v2           #file:Ljava/io/FileOutputStream;
    .end local v3           #i$:Ljava/util/Iterator;
    .end local v6           #out:Ljava/io/DataOutputStream;
    :catch_1
    move-exception v8

    move-object v1, v8

    .local v1, e:Ljava/io/IOException;
    :try_start_4
    const-string v8, "ConnectivityService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "updateWifiHostException :fail to update:\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_0
.end method

.method private writePidDns([Ljava/lang/String;I)V
    .locals 8
    .parameter "dnsList"
    .parameter "pid"

    .prologue
    const/4 v3, 0x1

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

    .local v1, dns:Ljava/lang/String;
    if-eqz v1, :cond_1

    const-string v6, "0.0.0.0"

    invoke-static {v1, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

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

    :goto_1
    add-int/lit8 v2, v2, 0x1

    move v4, v3

    .end local v3           #j:I
    .restart local v4       #j:I
    goto :goto_0

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
.method public addHostRouteByInterface(Ljava/lang/String;I)Z
    .locals 9
    .parameter "ifName"
    .parameter "hostAddress"

    .prologue
    const/4 v8, 0x0

    invoke-direct {p0}, Lcom/android/server/ConnectivityServiceExt;->enforceChangePermission()V

    const-string v5, "ConnectivityService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Add host route to "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_5

    const/4 v5, -0x1

    if-eq p2, v5, :cond_5

    invoke-static {p1, p2}, Landroid/net/NetworkUtils;->addHostRoute(Ljava/lang/String;I)I

    move-result v5

    if-nez v5, :cond_1

    const/4 v5, 0x1

    move v2, v5

    .local v2, ret:Z
    :goto_0
    if-eqz v2, :cond_4

    const/4 v1, 0x0

    .local v1, onDefault:Z
    const/4 v4, 0x0

    .local v4, type:I
    :goto_1
    const/16 v5, 0x9

    if-gt v4, v5, :cond_3

    iget-object v5, p0, Lcom/android/server/ConnectivityServiceExt;->mNetAttributes:[Lcom/android/server/ConnectivityServiceExt$NetworkAttributes;

    aget-object v5, v5, v4

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/server/ConnectivityServiceExt;->mNetAttributes:[Lcom/android/server/ConnectivityServiceExt$NetworkAttributes;

    aget-object v5, v5, v4

    invoke-virtual {v5}, Lcom/android/server/ConnectivityServiceExt$NetworkAttributes;->isDefault()Z

    move-result v5

    if-nez v5, :cond_2

    :cond_0
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .end local v1           #onDefault:Z
    .end local v2           #ret:Z
    .end local v4           #type:I
    :cond_1
    move v2, v8

    goto :goto_0

    .restart local v1       #onDefault:Z
    .restart local v2       #ret:Z
    .restart local v4       #type:I
    :cond_2
    iget-object v5, p0, Lcom/android/server/ConnectivityServiceExt;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    aget-object v3, v5, v4

    .local v3, t:Landroid/net/NetworkStateTracker;
    invoke-virtual {v3}, Landroid/net/NetworkStateTracker;->getNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .local v0, info:Landroid/net/NetworkInfo;
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v3}, Landroid/net/NetworkStateTracker;->getInterfaceName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v1, 0x1

    goto :goto_2

    .end local v0           #info:Landroid/net/NetworkInfo;
    .end local v3           #t:Landroid/net/NetworkStateTracker;
    :cond_3
    if-nez v1, :cond_4

    invoke-static {}, Lcom/android/server/ConnectivityServiceExt;->getCallingPid()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-direct {p0, v5, v6, p1}, Lcom/android/server/ConnectivityServiceExt;->recordHostRouteInfo(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;)V

    .end local v1           #onDefault:Z
    .end local v4           #type:I
    :cond_4
    move v5, v2

    .end local v2           #ret:Z
    :goto_3
    return v5

    :cond_5
    move v5, v8

    goto :goto_3
.end method

.method public configureNetwork(I[Ljava/lang/String;)Z
    .locals 12
    .parameter "networkType"
    .parameter "config"

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    const-string v11, "ConnectivityService"

    invoke-direct {p0}, Lcom/android/server/ConnectivityServiceExt;->enforceChangePermission()V

    packed-switch p1, :pswitch_data_0

    move v7, v9

    :goto_0
    return v7

    :pswitch_0
    move v7, v10

    goto :goto_0

    :pswitch_1
    aget-object v7, p2, v9

    if-eqz v7, :cond_0

    aget-object v7, p2, v10

    if-nez v7, :cond_1

    :cond_0
    move v7, v9

    goto :goto_0

    :cond_1
    aget-object v0, p2, v9

    .local v0, apnType:Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/android/server/ConnectivityServiceExt;->convertApnTypeToFeature(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/android/server/ConnectivityServiceExt;->getNetworkTypeByFeature(Ljava/lang/String;)I

    move-result v6

    .local v6, userNetworkType:I
    if-gez v6, :cond_2

    const-string v7, "ConnectivityService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getNetworkTypeByFeature("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "), fail"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v11, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v7, v9

    goto :goto_0

    :cond_2
    iget-object v7, p0, Lcom/android/server/ConnectivityServiceExt;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    aget-object v5, v7, v6

    .local v5, tracker:Landroid/net/NetworkStateTracker;
    if-eqz v5, :cond_3

    invoke-virtual {v5}, Landroid/net/NetworkStateTracker;->getNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v7

    invoke-virtual {v7}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-virtual {v5}, Landroid/net/NetworkStateTracker;->isTeardownRequested()Z

    move-result v7

    if-eqz v7, :cond_4

    :cond_3
    const-string v7, "ConnectivityService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "configureNetwork on down network ("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " - dropped"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v11, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v7, v9

    goto :goto_0

    :cond_4
    const/4 v2, -0x1

    .local v2, hostAddress:I
    const/4 v3, 0x1

    .local v3, i:I
    :goto_1
    const/4 v7, 0x2

    if-gt v3, v7, :cond_5

    const-string v7, "ConnectivityService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Before NetworkUtils.lookupHost("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    aget-object v8, p2, v10

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "), count="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v11, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    aget-object v7, p2, v10

    invoke-static {v7}, Landroid/net/NetworkUtils;->lookupHost(Ljava/lang/String;)I

    move-result v2

    const/4 v7, -0x1

    if-eq v2, v7, :cond_7

    :cond_5
    iget-object v7, p0, Lcom/android/server/ConnectivityServiceExt;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    aget-object v7, v7, v6

    invoke-virtual {v7, v2}, Landroid/net/NetworkStateTracker;->requestRouteToHost(I)Z

    move-result v4

    .local v4, ret:Z
    if-eqz v4, :cond_6

    iget-object v7, p0, Lcom/android/server/ConnectivityServiceExt;->mNetAttributes:[Lcom/android/server/ConnectivityServiceExt$NetworkAttributes;

    aget-object v7, v7, v6

    invoke-virtual {v7}, Lcom/android/server/ConnectivityServiceExt$NetworkAttributes;->isDefault()Z

    move-result v7

    if-nez v7, :cond_6

    invoke-static {}, Lcom/android/server/ConnectivityServiceExt;->getCallingPid()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v5}, Landroid/net/NetworkStateTracker;->getInterfaceName()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v7, v8, v9}, Lcom/android/server/ConnectivityServiceExt;->recordHostRouteInfo(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;)V

    :cond_6
    move v7, v4

    goto/16 :goto_0

    .end local v4           #ret:Z
    :cond_7
    const-string v7, "ConnectivityService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "NetworkUtils.lookupHost("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    aget-object v8, p2, v10

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ") fail, count="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v11, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    monitor-enter v0

    const-wide/16 v7, 0x1f4

    :try_start_0
    invoke-virtual {v0, v7, v8}, Ljava/lang/Object;->wait(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    :try_start_1
    monitor-exit v0

    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_1

    :catch_0
    move-exception v1

    .local v1, e:Ljava/lang/InterruptedException;
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_2

    .end local v1           #e:Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v7

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v7

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 12
    .parameter "fd"
    .parameter "pw"
    .parameter "args"

    .prologue
    iget-object v10, p0, Lcom/android/server/ConnectivityServiceExt;->mContext:Landroid/content/Context;

    const-string v11, "android.permission.DUMP"

    invoke-virtual {v10, v11}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v10

    if-eqz v10, :cond_1

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

    :cond_0
    return-void

    :cond_1
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    iget-object v0, p0, Lcom/android/server/ConnectivityServiceExt;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    .local v0, arr$:[Landroid/net/NetworkStateTracker;
    array-length v4, v0

    .local v4, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v4, :cond_4

    aget-object v6, v0, v2

    .local v6, nst:Landroid/net/NetworkStateTracker;
    if-eqz v6, :cond_3

    invoke-virtual {v6}, Landroid/net/NetworkStateTracker;->getNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v10

    invoke-virtual {v10}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v10

    if-eqz v10, :cond_2

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

    :cond_2
    invoke-virtual {v6}, Landroid/net/NetworkStateTracker;->getNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v10

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .end local v6           #nst:Landroid/net/NetworkStateTracker;
    :cond_4
    const-string v10, "Network Requester Pids:"

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/ConnectivityServiceExt;->mPriorityList:[I

    .local v0, arr$:[I
    array-length v4, v0

    const/4 v2, 0x0

    move v3, v2

    .end local v2           #i$:I
    .local v3, i$:I
    :goto_1
    if-ge v3, v4, :cond_6

    aget v5, v0, v3

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

    .local v8, pidString:Ljava/lang/String;
    iget-object v10, p0, Lcom/android/server/ConnectivityServiceExt;->mNetRequestersPids:[Ljava/util/List;

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

    .end local v7           #pid:Ljava/lang/Object;
    :cond_5
    invoke-virtual {p2, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v2, v3, 0x1

    .local v2, i$:I
    move v3, v2

    .end local v2           #i$:I
    .restart local v3       #i$:I
    goto :goto_1

    .end local v5           #net:I
    .end local v8           #pidString:Ljava/lang/String;
    :cond_6
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    const-string v10, "FeatureUsers:"

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v10, p0, Lcom/android/server/ConnectivityServiceExt;->mFeatureUsers:Ljava/util/List;

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

    .local v9, requester:Ljava/lang/Object;
    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_3

    .end local v9           #requester:Ljava/lang/Object;
    :cond_7
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    iget-object v10, p0, Lcom/android/server/ConnectivityServiceExt;->mTethering:Lcom/android/server/connectivity/Tethering;

    invoke-virtual {v10, p1, p2, p3}, Lcom/android/server/connectivity/Tethering;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    iget-object v10, p0, Lcom/android/server/ConnectivityServiceExt;->mInetLog:Ljava/util/ArrayList;

    if-eqz v10, :cond_0

    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    const-string v10, "Inet condition reports:"

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v1, 0x0

    .local v1, i:I
    :goto_4
    iget-object v10, p0, Lcom/android/server/ConnectivityServiceExt;->mInetLog:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-ge v1, v10, :cond_0

    iget-object v10, p0, Lcom/android/server/ConnectivityServiceExt;->mInetLog:Ljava/util/ArrayList;

    invoke-virtual {v10, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_4
.end method

.method public getActiveNetworkInfo()Landroid/net/NetworkInfo;
    .locals 2

    .prologue
    invoke-direct {p0}, Lcom/android/server/ConnectivityServiceExt;->enforceAccessPermission()V

    iget v0, p0, Lcom/android/server/ConnectivityServiceExt;->mActiveDefaultNetwork:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/server/ConnectivityServiceExt;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    iget v1, p0, Lcom/android/server/ConnectivityServiceExt;->mActiveDefaultNetwork:I

    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroid/net/NetworkStateTracker;->getNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getAllNetworkInfo()[Landroid/net/NetworkInfo;
    .locals 9

    .prologue
    invoke-direct {p0}, Lcom/android/server/ConnectivityServiceExt;->enforceAccessPermission()V

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .local v4, result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/net/NetworkInfo;>;"
    const/4 v1, 0x0

    .local v1, i:I
    iget-object v0, p0, Lcom/android/server/ConnectivityServiceExt;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    .local v0, arr$:[Landroid/net/NetworkStateTracker;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_2

    aget-object v5, v0, v2

    .local v5, t:Landroid/net/NetworkStateTracker;
    if-nez v5, :cond_1

    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v5}, Landroid/net/NetworkStateTracker;->getNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v6

    invoke-virtual {v6}, Landroid/net/NetworkInfo;->getType()I

    move-result v6

    invoke-static {v6}, Landroid/net/ConnectivityManager;->isExtNetworkTypeValid(I)Z

    move-result v6

    if-nez v6, :cond_0

    invoke-virtual {v5}, Landroid/net/NetworkStateTracker;->getNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .end local v5           #t:Landroid/net/NetworkStateTracker;
    :cond_2
    const-string v6, "ConnectivityService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "in getAllNetworkInfo: mNetworksDefined="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/android/server/ConnectivityServiceExt;->mNetworksDefined:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", result count="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v6, 0x0

    new-array v6, v6, [Landroid/net/NetworkInfo;

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, [Landroid/net/NetworkInfo;

    return-object p0
.end method

.method public getAllNetworkInfoOem()[Landroid/net/NetworkInfoOem;
    .locals 18

    .prologue
    invoke-direct/range {p0 .. p0}, Lcom/android/server/ConnectivityServiceExt;->enforceAccessPermission()V

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/ConnectivityServiceExt;->mNetworksDefined:I

    move v1, v0

    move v0, v1

    new-array v0, v0, [Landroid/net/NetworkInfoOem;

    move-object/from16 v16, v0

    .local v16, result:[Landroid/net/NetworkInfoOem;
    const/4 v12, 0x0

    .local v12, i:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityServiceExt;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    move-object v11, v0

    .local v11, arr$:[Landroid/net/NetworkStateTracker;
    array-length v15, v11

    .local v15, len$:I
    const/4 v14, 0x0

    .local v14, i$:I
    move v13, v12

    .end local v12           #i:I
    .local v13, i:I
    :goto_0
    if-ge v14, v15, :cond_1

    aget-object v17, v11, v14

    .local v17, t:Landroid/net/NetworkStateTracker;
    if-nez v17, :cond_0

    move v12, v13

    .end local v13           #i:I
    .restart local v12       #i:I
    :goto_1
    add-int/lit8 v14, v14, 0x1

    move v13, v12

    .end local v12           #i:I
    .restart local v13       #i:I
    goto :goto_0

    :cond_0
    add-int/lit8 v12, v13, 0x1

    .end local v13           #i:I
    .restart local v12       #i:I
    new-instance v1, Landroid/net/NetworkInfoOem;

    invoke-virtual/range {v17 .. v17}, Landroid/net/NetworkStateTracker;->getNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v2

    invoke-virtual/range {v17 .. v17}, Landroid/net/NetworkStateTracker;->getFeature()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {v17 .. v17}, Landroid/net/NetworkStateTracker;->getCid()I

    move-result v4

    invoke-virtual/range {v17 .. v17}, Landroid/net/NetworkStateTracker;->getApnni()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {v17 .. v17}, Landroid/net/NetworkStateTracker;->getInterfaceName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {v17 .. v17}, Landroid/net/NetworkStateTracker;->getIpAddr()[Ljava/net/InetAddress;

    move-result-object v7

    const/16 v8, 0x20

    invoke-virtual/range {v17 .. v17}, Landroid/net/NetworkStateTracker;->getDnsAddr()[Ljava/net/InetAddress;

    move-result-object v9

    invoke-virtual/range {v17 .. v17}, Landroid/net/NetworkStateTracker;->getGwAddr()[Ljava/net/InetAddress;

    move-result-object v10

    invoke-direct/range {v1 .. v10}, Landroid/net/NetworkInfoOem;-><init>(Landroid/net/NetworkInfo;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;[Ljava/net/InetAddress;I[Ljava/net/InetAddress;[Ljava/net/InetAddress;)V

    aput-object v1, v16, v13

    goto :goto_1

    .end local v12           #i:I
    .end local v17           #t:Landroid/net/NetworkStateTracker;
    .restart local v13       #i:I
    :cond_1
    return-object v16
.end method

.method public getBackgroundDataSetting()Z
    .locals 3

    .prologue
    const/4 v2, 0x1

    iget-object v0, p0, Lcom/android/server/ConnectivityServiceExt;->mContext:Landroid/content/Context;

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

.method public getLastTetherError(Ljava/lang/String;)I
    .locals 1
    .parameter "iface"

    .prologue
    invoke-direct {p0}, Lcom/android/server/ConnectivityServiceExt;->enforceTetherAccessPermission()V

    invoke-virtual {p0}, Lcom/android/server/ConnectivityServiceExt;->isTetheringSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/ConnectivityServiceExt;->mTethering:Lcom/android/server/connectivity/Tethering;

    invoke-virtual {v0, p1}, Lcom/android/server/connectivity/Tethering;->getLastTetherError(Ljava/lang/String;)I

    move-result v0

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

    invoke-direct {p0}, Lcom/android/server/ConnectivityServiceExt;->enforceAccessPermission()V

    iget-object v1, p0, Lcom/android/server/ConnectivityServiceExt;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "mobile_data"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v3, :cond_0

    move v0, v3

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

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    .end local v0           #retVal:Z
    :cond_0
    const/4 v1, 0x0

    move v0, v1

    goto :goto_0
.end method

.method public getNetworkInfo(I)Landroid/net/NetworkInfo;
    .locals 2
    .parameter "networkType"

    .prologue
    invoke-direct {p0}, Lcom/android/server/ConnectivityServiceExt;->enforceAccessPermission()V

    invoke-static {p1}, Landroid/net/ConnectivityManager;->isNetworkTypeValid(I)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/ConnectivityServiceExt;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    aget-object v0, v1, p1

    .local v0, t:Landroid/net/NetworkStateTracker;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/NetworkStateTracker;->getNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .end local v0           #t:Landroid/net/NetworkStateTracker;
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getNetworkInfoOem(Ljava/lang/String;)Landroid/net/NetworkInfoOem;
    .locals 12
    .parameter "feature"

    .prologue
    const/4 v1, 0x0

    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityServiceExt;->getNetworkTypeByFeature(Ljava/lang/String;)I

    move-result v11

    .local v11, usedNetworkType:I
    if-gez v11, :cond_0

    move-object v0, v1

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/server/ConnectivityServiceExt;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    aget-object v10, v0, v11

    .local v10, t:Landroid/net/NetworkStateTracker;
    if-nez v10, :cond_1

    move-object v0, v1

    goto :goto_0

    :cond_1
    new-instance v0, Landroid/net/NetworkInfoOem;

    invoke-virtual {v10}, Landroid/net/NetworkStateTracker;->getNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    invoke-virtual {v10}, Landroid/net/NetworkStateTracker;->getFeature()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10}, Landroid/net/NetworkStateTracker;->getCid()I

    move-result v3

    invoke-virtual {v10}, Landroid/net/NetworkStateTracker;->getApnni()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v10}, Landroid/net/NetworkStateTracker;->getInterfaceName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v10}, Landroid/net/NetworkStateTracker;->getIpAddr()[Ljava/net/InetAddress;

    move-result-object v6

    const/16 v7, 0x20

    invoke-virtual {v10}, Landroid/net/NetworkStateTracker;->getDnsAddr()[Ljava/net/InetAddress;

    move-result-object v8

    invoke-virtual {v10}, Landroid/net/NetworkStateTracker;->getGwAddr()[Ljava/net/InetAddress;

    move-result-object v9

    invoke-direct/range {v0 .. v9}, Landroid/net/NetworkInfoOem;-><init>(Landroid/net/NetworkInfo;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;[Ljava/net/InetAddress;I[Ljava/net/InetAddress;[Ljava/net/InetAddress;)V

    goto :goto_0
.end method

.method public getNetworkInterface(I)Ljava/lang/String;
    .locals 2
    .parameter "networkType"

    .prologue
    invoke-direct {p0}, Lcom/android/server/ConnectivityServiceExt;->enforceAccessPermission()V

    invoke-static {p1}, Landroid/net/ConnectivityManager;->isNetworkTypeValid(I)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p1}, Landroid/net/ConnectivityManager;->isExtNetworkTypeValid(I)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    iget-object v1, p0, Lcom/android/server/ConnectivityServiceExt;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    aget-object v0, v1, p1

    .local v0, t:Landroid/net/NetworkStateTracker;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/net/NetworkStateTracker;->getInterfaceName()Ljava/lang/String;

    move-result-object v1

    .end local v0           #t:Landroid/net/NetworkStateTracker;
    :goto_0
    return-object v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getNetworkPreference()I
    .locals 2

    .prologue
    invoke-direct {p0}, Lcom/android/server/ConnectivityServiceExt;->enforceAccessPermission()V

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/android/server/ConnectivityServiceExt;->mNetworkPreference:I

    .local v0, preference:I
    monitor-exit p0

    return v0

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
    invoke-direct {p0}, Lcom/android/server/ConnectivityServiceExt;->enforceTetherAccessPermission()V

    iget-object v0, p0, Lcom/android/server/ConnectivityServiceExt;->mTethering:Lcom/android/server/connectivity/Tethering;

    invoke-virtual {v0}, Lcom/android/server/connectivity/Tethering;->getTetherableIfaces()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTetherableUsbRegexs()[Ljava/lang/String;
    .locals 1

    .prologue
    invoke-direct {p0}, Lcom/android/server/ConnectivityServiceExt;->enforceTetherAccessPermission()V

    invoke-virtual {p0}, Lcom/android/server/ConnectivityServiceExt;->isTetheringSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/ConnectivityServiceExt;->mTethering:Lcom/android/server/connectivity/Tethering;

    invoke-virtual {v0}, Lcom/android/server/connectivity/Tethering;->getTetherableUsbRegexs()[Ljava/lang/String;

    move-result-object v0

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
    invoke-direct {p0}, Lcom/android/server/ConnectivityServiceExt;->enforceTetherAccessPermission()V

    invoke-virtual {p0}, Lcom/android/server/ConnectivityServiceExt;->isTetheringSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/ConnectivityServiceExt;->mTethering:Lcom/android/server/connectivity/Tethering;

    invoke-virtual {v0}, Lcom/android/server/connectivity/Tethering;->getTetherableWifiRegexs()[Ljava/lang/String;

    move-result-object v0

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
    invoke-direct {p0}, Lcom/android/server/ConnectivityServiceExt;->enforceTetherAccessPermission()V

    iget-object v0, p0, Lcom/android/server/ConnectivityServiceExt;->mTethering:Lcom/android/server/connectivity/Tethering;

    invoke-virtual {v0}, Lcom/android/server/connectivity/Tethering;->getTetheredIfaces()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTetheringErroredIfaces()[Ljava/lang/String;
    .locals 1

    .prologue
    invoke-direct {p0}, Lcom/android/server/ConnectivityServiceExt;->enforceTetherAccessPermission()V

    iget-object v0, p0, Lcom/android/server/ConnectivityServiceExt;->mTethering:Lcom/android/server/connectivity/Tethering;

    invoke-virtual {v0}, Lcom/android/server/connectivity/Tethering;->getErroredIfaces()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isTetheringSupported()Z
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    invoke-direct {p0}, Lcom/android/server/ConnectivityServiceExt;->enforceTetherAccessPermission()V

    const-string v2, "ro.tether.denied"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "true"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v0, v4

    .local v0, defaultVal:I
    :goto_0
    iget-object v2, p0, Lcom/android/server/ConnectivityServiceExt;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "tether_supported"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_1

    move v1, v5

    .local v1, tetherEnabledInSettings:Z
    :goto_1
    if-eqz v1, :cond_2

    iget-boolean v2, p0, Lcom/android/server/ConnectivityServiceExt;->mTetheringConfigValid:Z

    if-eqz v2, :cond_2

    move v2, v5

    :goto_2
    return v2

    .end local v0           #defaultVal:I
    .end local v1           #tetherEnabledInSettings:Z
    :cond_0
    move v0, v5

    goto :goto_0

    .restart local v0       #defaultVal:I
    :cond_1
    move v1, v4

    goto :goto_1

    .restart local v1       #tetherEnabledInSettings:Z
    :cond_2
    move v2, v4

    goto :goto_2
.end method

.method public rawIptablesCommand(Ljava/lang/String;)Z
    .locals 6
    .parameter "command"

    .prologue
    invoke-direct {p0}, Lcom/android/server/ConnectivityServiceExt;->enforceTetherChangePermission()V

    const-string v3, "network_management"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .local v0, b:Landroid/os/IBinder;
    invoke-static {v0}, Landroid/os/INetworkManagementService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/INetworkManagementService;

    move-result-object v2

    .local v2, service:Landroid/os/INetworkManagementService;
    :try_start_0
    invoke-interface {v2, p1}, Landroid/os/INetworkManagementService;->rawIptablesCommand(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v3, 0x1

    :goto_0
    return v3

    :catch_0
    move-exception v1

    .local v1, e:Landroid/os/RemoteException;
    const-string v3, "ConnectivityService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error invoking rawIptablesCommand :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x0

    goto :goto_0
.end method

.method public removeHostRoutes(I)Z
    .locals 4
    .parameter "networkType"

    .prologue
    const/4 v3, 0x0

    invoke-direct {p0}, Lcom/android/server/ConnectivityServiceExt;->enforceChangePermission()V

    invoke-virtual {p0, p1}, Lcom/android/server/ConnectivityServiceExt;->getNetworkInterface(I)Ljava/lang/String;

    move-result-object v0

    .local v0, interfaceName:Ljava/lang/String;
    if-nez v0, :cond_0

    move v1, v3

    :goto_0
    return v1

    :cond_0
    iget-object v1, p0, Lcom/android/server/ConnectivityServiceExt;->mNetAttributes:[Lcom/android/server/ConnectivityServiceExt$NetworkAttributes;

    aget-object v1, v1, p1

    invoke-virtual {v1}, Lcom/android/server/ConnectivityServiceExt$NetworkAttributes;->isDefault()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "ConnectivityService"

    const-string v2, "can\'t removeHostRoutes with default network"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v3

    goto :goto_0

    :cond_1
    invoke-static {v0}, Landroid/net/NetworkUtils;->removeHostRoutes(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_2

    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    move v1, v3

    goto :goto_0
.end method

.method public removeHostRoutesByInterface(Ljava/lang/String;)Z
    .locals 8
    .parameter "ifName"

    .prologue
    const/4 v6, 0x0

    const-string v7, "ConnectivityService"

    invoke-direct {p0}, Lcom/android/server/ConnectivityServiceExt;->enforceChangePermission()V

    const-string v4, "ConnectivityService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Remove all host routes on "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v7, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_0

    move v4, v6

    :goto_0
    return v4

    :cond_0
    iget-object v0, p0, Lcom/android/server/ConnectivityServiceExt;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    .local v0, arr$:[Landroid/net/NetworkStateTracker;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_1
    if-ge v1, v2, :cond_3

    aget-object v3, v0, v1

    .local v3, t:Landroid/net/NetworkStateTracker;
    if-nez v3, :cond_2

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    iget-object v4, p0, Lcom/android/server/ConnectivityServiceExt;->mNetAttributes:[Lcom/android/server/ConnectivityServiceExt$NetworkAttributes;

    invoke-virtual {v3}, Landroid/net/NetworkStateTracker;->getNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/NetworkInfo;->getType()I

    move-result v5

    aget-object v4, v4, v5

    invoke-virtual {v4}, Lcom/android/server/ConnectivityServiceExt$NetworkAttributes;->isDefault()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v3}, Landroid/net/NetworkStateTracker;->getInterfaceName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const-string v4, "ConnectivityService"

    const-string v4, "can\'t removeHostRoutes with default network"

    invoke-static {v7, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v4, v6

    goto :goto_0

    .end local v3           #t:Landroid/net/NetworkStateTracker;
    :cond_3
    invoke-static {p1}, Landroid/net/NetworkUtils;->removeHostRoutes(Ljava/lang/String;)I

    move-result v4

    if-nez v4, :cond_4

    const/4 v4, 0x1

    goto :goto_0

    :cond_4
    move v4, v6

    goto :goto_0
.end method

.method public reportInetCondition(II)V
    .locals 7
    .parameter "networkType"
    .parameter "percentage"

    .prologue
    const-string v6, "ConnectivityService"

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

    invoke-static {v6, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/server/ConnectivityServiceExt;->mContext:Landroid/content/Context;

    const-string v4, "android.permission.STATUS_BAR"

    const-string v5, "ConnectivityService"

    invoke-virtual {v3, v4, v6}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/server/ConnectivityServiceExt;->getCallingPid()I

    move-result v0

    .local v0, pid:I
    invoke-static {}, Lcom/android/server/ConnectivityServiceExt;->getCallingUid()I

    move-result v2

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

    .local v1, s:Ljava/lang/String;
    iget-object v3, p0, Lcom/android/server/ConnectivityServiceExt;->mInetLog:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_1
    iget-object v3, p0, Lcom/android/server/ConnectivityServiceExt;->mInetLog:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/16 v4, 0xf

    if-le v3, v4, :cond_1

    iget-object v3, p0, Lcom/android/server/ConnectivityServiceExt;->mInetLog:Ljava/util/ArrayList;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_1

    .end local v1           #s:Ljava/lang/String;
    :cond_0
    const-string v4, "disconnected"

    goto :goto_0

    .restart local v1       #s:Ljava/lang/String;
    :cond_1
    iget-object v3, p0, Lcom/android/server/ConnectivityServiceExt;->mHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/android/server/ConnectivityServiceExt;->mHandler:Landroid/os/Handler;

    const/16 v5, 0x68

    invoke-virtual {v4, v5, p1, p2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public requestRouteToHost(II)Z
    .locals 8
    .parameter "networkType"
    .parameter "hostAddress"

    .prologue
    const/4 v6, 0x0

    const-string v7, "ConnectivityService"

    iget-object v4, p0, Lcom/android/server/ConnectivityServiceExt;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    aget-object v2, v4, p1

    .local v2, tracker:Landroid/net/NetworkStateTracker;
    invoke-virtual {v2}, Landroid/net/NetworkStateTracker;->getFeature()Ljava/lang/String;

    move-result-object v3

    .local v3, usedFeature:Ljava/lang/String;
    invoke-direct {p0, p1, v3}, Lcom/android/server/ConnectivityServiceExt;->isHiPriRequested(ILjava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v0, 0x0

    .local v0, cbsPermissionChk:Z
    invoke-direct {p0}, Lcom/android/server/ConnectivityServiceExt;->enforceCheckPermissionforHiPri()Z

    move-result v0

    const-string v4, "ConnectivityService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Permitted to use HiPri? "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v7, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v0, :cond_0

    const/4 p1, 0x0

    iget-object v4, p0, Lcom/android/server/ConnectivityServiceExt;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    aget-object v2, v4, p1

    .end local v0           #cbsPermissionChk:Z
    :cond_0
    invoke-direct {p0}, Lcom/android/server/ConnectivityServiceExt;->enforceChangePermission()V

    invoke-static {p1}, Landroid/net/ConnectivityManager;->isNetworkTypeValid(I)Z

    move-result v4

    if-nez v4, :cond_1

    move v4, v6

    :goto_0
    return v4

    :cond_1
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Landroid/net/NetworkStateTracker;->getNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v2}, Landroid/net/NetworkStateTracker;->isTeardownRequested()Z

    move-result v4

    if-eqz v4, :cond_3

    :cond_2
    const-string v4, "ConnectivityService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "requestRouteToHost on down network ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ") - dropped"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v7, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v4, v6

    goto :goto_0

    :cond_3
    invoke-virtual {v2, p2}, Landroid/net/NetworkStateTracker;->requestRouteToHost(I)Z

    move-result v1

    .local v1, ret:Z
    if-eqz v1, :cond_4

    iget-object v4, p0, Lcom/android/server/ConnectivityServiceExt;->mNetAttributes:[Lcom/android/server/ConnectivityServiceExt$NetworkAttributes;

    aget-object v4, v4, p1

    invoke-virtual {v4}, Lcom/android/server/ConnectivityServiceExt$NetworkAttributes;->isDefault()Z

    move-result v4

    if-nez v4, :cond_4

    invoke-static {}, Lcom/android/server/ConnectivityServiceExt;->getCallingPid()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2}, Landroid/net/NetworkStateTracker;->getInterfaceName()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v4, v5, v6}, Lcom/android/server/ConnectivityServiceExt;->recordHostRouteInfo(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;)V

    :cond_4
    move v4, v1

    goto :goto_0
.end method

.method public requestRouteToHostAddress(I[BI)Z
    .locals 10
    .parameter "networkType"
    .parameter "hostAddress"
    .parameter "mask"

    .prologue
    const/4 v9, 0x0

    const-string v8, "ConnectivityService"

    iget-object v6, p0, Lcom/android/server/ConnectivityServiceExt;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    aget-object v4, v6, p1

    .local v4, tracker:Landroid/net/NetworkStateTracker;
    invoke-virtual {v4}, Landroid/net/NetworkStateTracker;->getFeature()Ljava/lang/String;

    move-result-object v5

    .local v5, usedFeature:Ljava/lang/String;
    invoke-direct {p0, p1, v5}, Lcom/android/server/ConnectivityServiceExt;->isHiPriRequested(ILjava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 v0, 0x0

    .local v0, cbsPermissionChk:Z
    invoke-direct {p0}, Lcom/android/server/ConnectivityServiceExt;->enforceCheckPermissionforHiPri()Z

    move-result v0

    const-string v6, "ConnectivityService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Permitted to use HiPri? "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v8, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v0, :cond_0

    const/4 p1, 0x0

    iget-object v6, p0, Lcom/android/server/ConnectivityServiceExt;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    aget-object v4, v6, p1

    .end local v0           #cbsPermissionChk:Z
    :cond_0
    invoke-direct {p0}, Lcom/android/server/ConnectivityServiceExt;->enforceChangePermission()V

    invoke-static {p1}, Landroid/net/ConnectivityManager;->isNetworkTypeValid(I)Z

    move-result v6

    if-nez v6, :cond_1

    invoke-static {p1}, Landroid/net/ConnectivityManager;->isExtNetworkTypeValid(I)Z

    move-result v6

    if-nez v6, :cond_1

    move v6, v9

    :goto_0
    return v6

    :cond_1
    if-eqz v4, :cond_2

    invoke-virtual {v4}, Landroid/net/NetworkStateTracker;->getNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v6

    invoke-virtual {v6}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-virtual {v4}, Landroid/net/NetworkStateTracker;->isTeardownRequested()Z

    move-result v6

    if-eqz v6, :cond_3

    :cond_2
    const-string v6, "ConnectivityService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "requestRouteToHostAddress on down network ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ") - dropped"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v8, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v6, v9

    goto :goto_0

    :cond_3
    :try_start_0
    invoke-static {p2}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;

    move-result-object v2

    .local v2, inetAddress:Ljava/net/InetAddress;
    invoke-virtual {v4, v2, p3}, Landroid/net/NetworkStateTracker;->requestRouteToHost(Ljava/net/InetAddress;I)Z

    move-result v3

    .local v3, ret:Z
    if-eqz v3, :cond_4

    iget-object v6, p0, Lcom/android/server/ConnectivityServiceExt;->mNetAttributes:[Lcom/android/server/ConnectivityServiceExt$NetworkAttributes;

    aget-object v6, v6, p1

    invoke-virtual {v6}, Lcom/android/server/ConnectivityServiceExt$NetworkAttributes;->isDefault()Z

    move-result v6

    if-nez v6, :cond_4

    invoke-static {}, Lcom/android/server/ConnectivityServiceExt;->getCallingPid()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v2}, Ljava/net/InetAddress;->getHostName()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/net/NetworkUtils;->lookupHost(Ljava/lang/String;)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v4}, Landroid/net/NetworkStateTracker;->getInterfaceName()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v6, v7, v8}, Lcom/android/server/ConnectivityServiceExt;->recordHostRouteInfo(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_4
    move v6, v3

    goto :goto_0

    .end local v2           #inetAddress:Ljava/net/InetAddress;
    .end local v3           #ret:Z
    :catch_0
    move-exception v6

    move-object v1, v6

    .local v1, e:Ljava/net/UnknownHostException;
    move v6, v9

    goto :goto_0
.end method

.method public setBackgroundDataSetting(Z)V
    .locals 5
    .parameter "allowBackgroundDataUsage"

    .prologue
    const/4 v4, 0x0

    iget-object v0, p0, Lcom/android/server/ConnectivityServiceExt;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.CHANGE_BACKGROUND_DATA_SETTING"

    const-string v2, "ConnectivityService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/ConnectivityServiceExt;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/ConnectivityServiceExt;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x6a

    if-eqz p1, :cond_0

    const/4 v3, 0x1

    :goto_0
    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void

    :cond_0
    move v3, v4

    goto :goto_0
.end method

.method public setMobileDataEnabled(Z)V
    .locals 5
    .parameter "enabled"

    .prologue
    const/4 v4, 0x0

    invoke-direct {p0}, Lcom/android/server/ConnectivityServiceExt;->enforceChangePermission()V

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

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/ConnectivityServiceExt;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/ConnectivityServiceExt;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x6b

    if-eqz p1, :cond_0

    const/4 v3, 0x1

    :goto_0
    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void

    :cond_0
    move v3, v4

    goto :goto_0
.end method

.method public setNetworkPreference(I)V
    .locals 4
    .parameter "preference"

    .prologue
    invoke-direct {p0}, Lcom/android/server/ConnectivityServiceExt;->enforceChangePermission()V

    iget-object v0, p0, Lcom/android/server/ConnectivityServiceExt;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/ConnectivityServiceExt;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x67

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public setRadio(IZ)Z
    .locals 3
    .parameter "netType"
    .parameter "turnOn"

    .prologue
    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/android/server/ConnectivityServiceExt;->enforceChangePermission()V

    invoke-static {p1}, Landroid/net/ConnectivityManager;->isNetworkTypeValid(I)Z

    move-result v1

    if-nez v1, :cond_0

    move v1, v2

    :goto_0
    return v1

    :cond_0
    iget-object v1, p0, Lcom/android/server/ConnectivityServiceExt;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    aget-object v0, v1, p1

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
    const/4 v3, 0x1

    .local v3, result:Z
    invoke-direct {p0}, Lcom/android/server/ConnectivityServiceExt;->enforceChangePermission()V

    iget-object v0, p0, Lcom/android/server/ConnectivityServiceExt;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    .local v0, arr$:[Landroid/net/NetworkStateTracker;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_2

    aget-object v4, v0, v1

    .local v4, t:Landroid/net/NetworkStateTracker;
    if-eqz v4, :cond_0

    invoke-virtual {v4, p1}, Landroid/net/NetworkStateTracker;->setRadio(Z)Z

    move-result v5

    if-eqz v5, :cond_1

    if-eqz v3, :cond_1

    const/4 v5, 0x1

    move v3, v5

    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v5, 0x0

    move v3, v5

    goto :goto_1

    .end local v4           #t:Landroid/net/NetworkStateTracker;
    :cond_2
    return v3
.end method

.method public startUsingNetworkFeature(ILjava/lang/String;Landroid/os/IBinder;)I
    .locals 18
    .parameter "networkType"
    .parameter "feature"
    .parameter "binder"

    .prologue
    const-string v15, "ConnectivityService"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "startUsingNetworkFeature for net "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, ": "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v5, 0x1

    .local v5, cbsPermissionChk:Z
    invoke-direct/range {p0 .. p2}, Lcom/android/server/ConnectivityServiceExt;->isHiPriRequested(ILjava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_0

    invoke-direct/range {p0 .. p0}, Lcom/android/server/ConnectivityServiceExt;->enforceCheckPermissionforHiPri()Z

    move-result v5

    const-string v15, "ConnectivityService"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Permitted to use HiPri? "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v5, :cond_0

    const-string p2, ""

    :cond_0
    invoke-direct/range {p0 .. p0}, Lcom/android/server/ConnectivityServiceExt;->enforceChangePermission()V

    invoke-static/range {p1 .. p1}, Landroid/net/ConnectivityManager;->isNetworkTypeValid(I)Z

    move-result v15

    if-nez v15, :cond_1

    invoke-static/range {p1 .. p1}, Landroid/net/ConnectivityManager;->isExtNetworkTypeValid(I)Z

    move-result v15

    if-eqz v15, :cond_2

    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityServiceExt;->mNetAttributes:[Lcom/android/server/ConnectivityServiceExt$NetworkAttributes;

    move-object v15, v0

    aget-object v15, v15, p1

    if-nez v15, :cond_3

    :cond_2
    const/4 v15, 0x3

    :goto_0
    return v15

    :cond_3
    move/from16 v13, p1

    .local v13, usedNetworkType:I
    if-nez p1, :cond_7

    invoke-direct/range {p0 .. p0}, Lcom/android/server/ConnectivityServiceExt;->getMobileDataEnabledInternal()Z

    move-result v15

    if-nez v15, :cond_6

    const-string v15, "enableMMS"

    move-object v0, v15

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_4

    const-string v15, "ConnectivityService"

    const-string v16, "requested special network with data disabled - rejected"

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v15, 0x2

    goto :goto_0

    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityServiceExt;->mContext:Landroid/content/Context;

    move-object v15, v0

    invoke-virtual {v15}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v15

    const-string v16, "enable_mms_when_data_disabled"

    invoke-static/range {v15 .. v16}, Lcom/motorola/android/provider/MotorolaSettings;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .local v14, val:Ljava/lang/String;
    if-eqz v14, :cond_5

    const-string v15, "true"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v15

    if-nez v15, :cond_6

    :cond_5
    const-string v15, "ConnectivityService"

    const-string v16, "requested MMS connectivity with data disabled - rejected"

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v15, 0x2

    goto :goto_0

    .end local v14           #val:Ljava/lang/String;
    :cond_6
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/android/server/ConnectivityServiceExt;->getNetworkTypeByFeature(Ljava/lang/String;)I

    move-result v13

    if-gez v13, :cond_7

    const-string v15, "ConnectivityService"

    const-string v16, "Can\'t match any netTracker!"

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move/from16 v13, p1

    :cond_7
    if-nez v5, :cond_a

    const/4 v13, 0x0

    const/16 p1, 0x5

    new-instance v9, Lcom/android/server/ConnectivityServiceExt$FeatureUser;

    move-object v0, v9

    move-object/from16 v1, p0

    move v2, v13

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/ConnectivityServiceExt$FeatureUser;-><init>(Lcom/android/server/ConnectivityServiceExt;ILjava/lang/String;Landroid/os/IBinder;)V

    .local v9, f:Lcom/android/server/ConnectivityServiceExt$FeatureUser;
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityServiceExt;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    move-object v15, v0

    aget-object v10, v15, v13

    .local v10, network:Landroid/net/NetworkStateTracker;
    if-eqz v10, :cond_12

    move v0, v13

    move/from16 v1, p1

    if-eq v0, v1, :cond_10

    new-instance v6, Ljava/lang/Integer;

    invoke-static {}, Lcom/android/server/ConnectivityServiceExt;->getCallingPid()I

    move-result v15

    invoke-direct {v6, v15}, Ljava/lang/Integer;-><init>(I)V

    .local v6, currentPid:Ljava/lang/Integer;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityServiceExt;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    move-object v15, v0

    aget-object v12, v15, p1

    .local v12, radio:Landroid/net/NetworkStateTracker;
    invoke-virtual {v10}, Landroid/net/NetworkStateTracker;->getNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v11

    .local v11, ni:Landroid/net/NetworkInfo;
    monitor-enter p0

    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityServiceExt;->mFeatureUsers:Ljava/util/List;

    move-object v15, v0

    invoke-interface {v15, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityServiceExt;->mNetRequestersPids:[Ljava/util/List;

    move-object v15, v0

    aget-object v15, v15, v13

    invoke-interface {v15, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityServiceExt;->mNetRequestersPids:[Ljava/util/List;

    move-object v15, v0

    aget-object v15, v15, v13

    invoke-interface {v15, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_8
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityServiceExt;->mContext:Landroid/content/Context;

    move-object v15, v0

    invoke-static {v15}, Lcom/android/server/ConnectivityServiceExt;->isSinglePdpOnly(Landroid/content/Context;)Z

    move-result v15

    if-eqz v15, :cond_9

    invoke-direct/range {p0 .. p0}, Lcom/android/server/ConnectivityServiceExt;->getRestoreDefaultNetworkDelay()I

    move-result v15

    int-to-long v7, v15

    .local v7, delay:J
    const-wide/16 v15, 0x0

    cmp-long v15, v7, v15

    if-lez v15, :cond_b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityServiceExt;->mHandler:Landroid/os/Handler;

    move-object v15, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityServiceExt;->mHandler:Landroid/os/Handler;

    move-object/from16 v16, v0

    const/16 v17, 0x65

    move-object/from16 v0, v16

    move/from16 v1, v17

    move-object v2, v9

    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v16

    move-object v0, v15

    move-object/from16 v1, v16

    move-wide v2, v7

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .end local v7           #delay:J
    :cond_9
    :goto_2
    invoke-virtual {v11}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result v15

    const/16 v16, 0x1

    move v0, v15

    move/from16 v1, v16

    if-ne v0, v1, :cond_d

    invoke-virtual {v10}, Landroid/net/NetworkStateTracker;->isTeardownRequested()Z

    move-result v15

    if-nez v15, :cond_d

    invoke-virtual {v11}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v15

    const/16 v16, 0x1

    move v0, v15

    move/from16 v1, v16

    if-ne v0, v1, :cond_c

    invoke-direct/range {p0 .. p1}, Lcom/android/server/ConnectivityServiceExt;->handleDnsConfigurationChange(I)V

    const-string v15, "ConnectivityService"

    const-string v16, "special network already active"

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v15, 0x0

    goto/16 :goto_0

    .end local v6           #currentPid:Ljava/lang/Integer;
    .end local v9           #f:Lcom/android/server/ConnectivityServiceExt$FeatureUser;
    .end local v10           #network:Landroid/net/NetworkStateTracker;
    .end local v11           #ni:Landroid/net/NetworkInfo;
    .end local v12           #radio:Landroid/net/NetworkStateTracker;
    :cond_a
    new-instance v9, Lcom/android/server/ConnectivityServiceExt$FeatureUser;

    move-object v0, v9

    move-object/from16 v1, p0

    move/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/ConnectivityServiceExt$FeatureUser;-><init>(Lcom/android/server/ConnectivityServiceExt;ILjava/lang/String;Landroid/os/IBinder;)V

    .restart local v9       #f:Lcom/android/server/ConnectivityServiceExt$FeatureUser;
    goto/16 :goto_1

    .restart local v6       #currentPid:Ljava/lang/Integer;
    .restart local v10       #network:Landroid/net/NetworkStateTracker;
    .restart local v11       #ni:Landroid/net/NetworkInfo;
    .restart local v12       #radio:Landroid/net/NetworkStateTracker;
    :catchall_0
    move-exception v15

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v15

    .restart local v7       #delay:J
    :cond_b
    const-string v15, "ConnectivityService"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "No start restore default timer, since get delay is "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move-wide v1, v7

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .end local v7           #delay:J
    :cond_c
    const-string v15, "ConnectivityService"

    const-string v16, "special network already connecting"

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v15, 0x1

    goto/16 :goto_0

    :cond_d
    const-string v15, "ConnectivityService"

    const-string v16, "reconnecting to special network"

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v10}, Landroid/net/NetworkStateTracker;->reconnect()Z

    move-result v15

    if-eqz v15, :cond_e

    const/4 v15, 0x1

    goto/16 :goto_0

    :cond_e
    monitor-enter p0

    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityServiceExt;->mFeatureUsers:Ljava/util/List;

    move-object v15, v0

    invoke-interface {v15, v9}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_f

    invoke-virtual {v9}, Lcom/android/server/ConnectivityServiceExt$FeatureUser;->unlinkDeathRecipient()V

    :cond_f
    monitor-exit p0

    const/4 v15, 0x3

    goto/16 :goto_0

    :catchall_1
    move-exception v15

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v15

    .end local v6           #currentPid:Ljava/lang/Integer;
    .end local v11           #ni:Landroid/net/NetworkInfo;
    .end local v12           #radio:Landroid/net/NetworkStateTracker;
    :cond_10
    monitor-enter p0

    :try_start_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityServiceExt;->mFeatureUsers:Ljava/util/List;

    move-object v15, v0

    invoke-interface {v15, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    invoke-direct/range {p0 .. p0}, Lcom/android/server/ConnectivityServiceExt;->getRestoreDefaultNetworkDelay()I

    move-result v15

    int-to-long v7, v15

    .restart local v7       #delay:J
    const-wide/16 v15, 0x0

    cmp-long v15, v7, v15

    if-lez v15, :cond_11

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityServiceExt;->mHandler:Landroid/os/Handler;

    move-object v15, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityServiceExt;->mHandler:Landroid/os/Handler;

    move-object/from16 v16, v0

    const/16 v17, 0x65

    move-object/from16 v0, v16

    move/from16 v1, v17

    move-object v2, v9

    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v16

    move-object v0, v15

    move-object/from16 v1, v16

    move-wide v2, v7

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :goto_3
    invoke-static {}, Lcom/android/server/ConnectivityServiceExt;->getCallingPid()I

    move-result v15

    invoke-static {}, Lcom/android/server/ConnectivityServiceExt;->getCallingUid()I

    move-result v16

    move-object v0, v10

    move-object/from16 v1, p2

    move v2, v15

    move/from16 v3, v16

    invoke-virtual {v0, v1, v2, v3}, Landroid/net/NetworkStateTracker;->startUsingNetworkFeature(Ljava/lang/String;II)I

    move-result v15

    goto/16 :goto_0

    .end local v7           #delay:J
    :catchall_2
    move-exception v15

    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw v15

    .restart local v7       #delay:J
    :cond_11
    const-string v15, "ConnectivityService"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "No start restore default timer, since get delay is "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move-wide v1, v7

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .end local v7           #delay:J
    :cond_12
    const/4 v15, 0x2

    goto/16 :goto_0
.end method

.method public stopUsingNetworkFeature(ILjava/lang/String;)I
    .locals 11
    .parameter "networkType"
    .parameter "feature"

    .prologue
    const/4 v10, 0x1

    const-string v9, "ConnectivityService"

    const/4 v1, 0x1

    .local v1, cbsPermissionChk:Z
    invoke-direct {p0, p1, p2}, Lcom/android/server/ConnectivityServiceExt;->isHiPriRequested(ILjava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-direct {p0}, Lcom/android/server/ConnectivityServiceExt;->enforceCheckPermissionforHiPri()Z

    move-result v1

    const-string v7, "ConnectivityService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Permitted to use HiPri? "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v9, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v1, :cond_0

    const/4 p1, 0x0

    const-string p2, ""

    :cond_0
    invoke-direct {p0}, Lcom/android/server/ConnectivityServiceExt;->enforceChangePermission()V

    invoke-static {}, Lcom/android/server/ConnectivityServiceExt;->getCallingPid()I

    move-result v4

    .local v4, pid:I
    invoke-static {}, Lcom/android/server/ConnectivityServiceExt;->getCallingUid()I

    move-result v6

    .local v6, uid:I
    const/4 v5, 0x0

    .local v5, u:Lcom/android/server/ConnectivityServiceExt$FeatureUser;
    const/4 v2, 0x0

    .local v2, found:Z
    const-string v7, "ConnectivityService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "stopUsingNetworkFeature for net "

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

    invoke-static {v9, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    monitor-enter p0

    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    :try_start_0
    iget-object v7, p0, Lcom/android/server/ConnectivityServiceExt;->mFeatureUsers:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-ge v3, v7, :cond_1

    iget-object v7, p0, Lcom/android/server/ConnectivityServiceExt;->mFeatureUsers:Ljava/util/List;

    invoke-interface {v7, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    move-object v0, v7

    check-cast v0, Lcom/android/server/ConnectivityServiceExt$FeatureUser;

    move-object v5, v0

    iget v7, v5, Lcom/android/server/ConnectivityServiceExt$FeatureUser;->mUid:I

    if-ne v6, v7, :cond_2

    iget v7, v5, Lcom/android/server/ConnectivityServiceExt$FeatureUser;->mPid:I

    if-ne v4, v7, :cond_2

    iget v7, v5, Lcom/android/server/ConnectivityServiceExt$FeatureUser;->mNetworkType:I

    if-ne p1, v7, :cond_2

    iget-object v7, v5, Lcom/android/server/ConnectivityServiceExt$FeatureUser;->mFeature:Ljava/lang/String;

    invoke-static {p2, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_2

    const/4 v2, 0x1

    :cond_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_3

    if-eqz v5, :cond_3

    invoke-direct {p0, v5, v10}, Lcom/android/server/ConnectivityServiceExt;->stopUsingNetworkFeature(Lcom/android/server/ConnectivityServiceExt$FeatureUser;Z)I

    move-result v7

    :goto_1
    return v7

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :catchall_0
    move-exception v7

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v7

    :cond_3
    const-string v7, "ConnectivityService"

    const-string v7, "ignoring stopUsingNetworkFeature - not a live request"

    invoke-static {v9, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v7, v10

    goto :goto_1
.end method

.method systemReady()V
    .locals 2

    .prologue
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/android/server/ConnectivityServiceExt;->mSystemReady:Z

    iget-object v0, p0, Lcom/android/server/ConnectivityServiceExt;->mInitialBroadcast:Landroid/content/Intent;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/ConnectivityServiceExt;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/ConnectivityServiceExt;->mInitialBroadcast:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/ConnectivityServiceExt;->mInitialBroadcast:Landroid/content/Intent;

    :cond_0
    monitor-exit p0

    return-void

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
    invoke-direct {p0}, Lcom/android/server/ConnectivityServiceExt;->enforceTetherChangePermission()V

    invoke-virtual {p0}, Lcom/android/server/ConnectivityServiceExt;->isTetheringSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/ConnectivityServiceExt;->mTethering:Lcom/android/server/connectivity/Tethering;

    invoke-virtual {v0, p1}, Lcom/android/server/connectivity/Tethering;->tether(Ljava/lang/String;)I

    move-result v0

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
    invoke-direct {p0}, Lcom/android/server/ConnectivityServiceExt;->enforceTetherChangePermission()V

    invoke-virtual {p0}, Lcom/android/server/ConnectivityServiceExt;->isTetheringSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/ConnectivityServiceExt;->mTethering:Lcom/android/server/connectivity/Tethering;

    invoke-virtual {v0, p1}, Lcom/android/server/connectivity/Tethering;->untether(Ljava/lang/String;)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x3

    goto :goto_0
.end method
