.class final Landroid/app/ActivityThread$ApplicationThread;
.super Landroid/app/ApplicationThreadNative;
.source "ActivityThread.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/ActivityThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ApplicationThread"
.end annotation


# static fields
.field private static final ACTIVITY_THREAD_CHECKIN_VERSION:I = 0x1

.field private static final DB_INFO_FORMAT:Ljava/lang/String; = "  %8d %8d %14d  %s"

.field private static final HEAP_COLUMN:Ljava/lang/String; = "%17s %8s %8s %8s %8s"

.field private static final ONE_COUNT_COLUMN:Ljava/lang/String; = "%17s %8d"

.field private static final TWO_COUNT_COLUMNS:Ljava/lang/String; = "%17s %8d %17s %8d"

.field private static final TWO_COUNT_COLUMNS_DB:Ljava/lang/String; = "%20s %8d %20s %8d"


# instance fields
.field final synthetic this$0:Landroid/app/ActivityThread;


# direct methods
.method private constructor <init>(Landroid/app/ActivityThread;)V
    .locals 0
    .parameter

    .prologue
    iput-object p1, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    invoke-direct {p0}, Landroid/app/ApplicationThreadNative;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/app/ActivityThread;Landroid/app/ActivityThread$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-direct {p0, p1}, Landroid/app/ActivityThread$ApplicationThread;-><init>(Landroid/app/ActivityThread;)V

    return-void
.end method

.method private varargs printRow(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1
    .parameter "pw"
    .parameter "format"
    .parameter "objs"

    .prologue
    invoke-static {p2, p3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final bindApplication(Ljava/lang/String;Landroid/content/pm/ApplicationInfo;Ljava/util/List;Landroid/content/ComponentName;Ljava/lang/String;Landroid/os/Bundle;Landroid/app/IInstrumentationWatcher;IZLandroid/content/res/Configuration;Ljava/util/Map;)V
    .locals 3
    .parameter "processName"
    .parameter "appInfo"
    .parameter
    .parameter "instrumentationName"
    .parameter "profileFile"
    .parameter "instrumentationArgs"
    .parameter "instrumentationWatcher"
    .parameter "debugMode"
    .parameter "isRestrictedBackupMode"
    .parameter "config"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/content/pm/ApplicationInfo;",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ProviderInfo;",
            ">;",
            "Landroid/content/ComponentName;",
            "Ljava/lang/String;",
            "Landroid/os/Bundle;",
            "Landroid/app/IInstrumentationWatcher;",
            "IZ",
            "Landroid/content/res/Configuration;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/os/IBinder;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p3, providers:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ProviderInfo;>;"
    .local p11, services:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Landroid/os/IBinder;>;"
    if-eqz p11, :cond_0

    invoke-static {p11}, Landroid/os/ServiceManager;->initServiceCache(Ljava/util/Map;)V

    :cond_0
    new-instance v0, Landroid/app/ActivityThread$AppBindData;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/app/ActivityThread$AppBindData;-><init>(Landroid/app/ActivityThread$1;)V

    .local v0, data:Landroid/app/ActivityThread$AppBindData;
    iput-object p1, v0, Landroid/app/ActivityThread$AppBindData;->processName:Ljava/lang/String;

    iput-object p2, v0, Landroid/app/ActivityThread$AppBindData;->appInfo:Landroid/content/pm/ApplicationInfo;

    iput-object p3, v0, Landroid/app/ActivityThread$AppBindData;->providers:Ljava/util/List;

    iput-object p4, v0, Landroid/app/ActivityThread$AppBindData;->instrumentationName:Landroid/content/ComponentName;

    iput-object p5, v0, Landroid/app/ActivityThread$AppBindData;->profileFile:Ljava/lang/String;

    iput-object p6, v0, Landroid/app/ActivityThread$AppBindData;->instrumentationArgs:Landroid/os/Bundle;

    iput-object p7, v0, Landroid/app/ActivityThread$AppBindData;->instrumentationWatcher:Landroid/app/IInstrumentationWatcher;

    iput p8, v0, Landroid/app/ActivityThread$AppBindData;->debugMode:I

    iput-boolean p9, v0, Landroid/app/ActivityThread$AppBindData;->restrictedBackupMode:Z

    iput-object p10, v0, Landroid/app/ActivityThread$AppBindData;->config:Landroid/content/res/Configuration;

    iget-object v1, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    const/16 v2, 0x6e

    #calls: Landroid/app/ActivityThread;->queueOrSendMessage(ILjava/lang/Object;)V
    invoke-static {v1, v2, v0}, Landroid/app/ActivityThread;->access$300(Landroid/app/ActivityThread;ILjava/lang/Object;)V

    return-void
.end method

.method public dispatchPackageBroadcast(I[Ljava/lang/String;)V
    .locals 2
    .parameter "cmd"
    .parameter "packages"

    .prologue
    iget-object v0, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    const/16 v1, 0x85

    #calls: Landroid/app/ActivityThread;->queueOrSendMessage(ILjava/lang/Object;I)V
    invoke-static {v0, v1, p2, p1}, Landroid/app/ActivityThread;->access$400(Landroid/app/ActivityThread;ILjava/lang/Object;I)V

    return-void
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 56
    .parameter "fd"
    .parameter "pw"
    .parameter "args"

    .prologue
    invoke-static {}, Landroid/os/Debug;->getNativeHeapSize()J

    move-result-wide v51

    const-wide/16 v53, 0x400

    div-long v35, v51, v53

    .local v35, nativeMax:J
    invoke-static {}, Landroid/os/Debug;->getNativeHeapAllocatedSize()J

    move-result-wide v51

    const-wide/16 v53, 0x400

    div-long v31, v51, v53

    .local v31, nativeAllocated:J
    invoke-static {}, Landroid/os/Debug;->getNativeHeapFreeSize()J

    move-result-wide v51

    const-wide/16 v53, 0x400

    div-long v33, v51, v53

    .local v33, nativeFree:J
    new-instance v30, Landroid/os/Debug$MemoryInfo;

    invoke-direct/range {v30 .. v30}, Landroid/os/Debug$MemoryInfo;-><init>()V

    .local v30, memInfo:Landroid/os/Debug$MemoryInfo;
    invoke-static/range {v30 .. v30}, Landroid/os/Debug;->getMemoryInfo(Landroid/os/Debug$MemoryInfo;)V

    move-object/from16 v0, v30

    iget v0, v0, Landroid/os/Debug$MemoryInfo;->nativeSharedDirty:I

    move/from16 v38, v0

    .local v38, nativeShared:I
    move-object/from16 v0, v30

    iget v0, v0, Landroid/os/Debug$MemoryInfo;->dalvikSharedDirty:I

    move/from16 v22, v0

    .local v22, dalvikShared:I
    move-object/from16 v0, v30

    iget v0, v0, Landroid/os/Debug$MemoryInfo;->otherSharedDirty:I

    move/from16 v41, v0

    .local v41, otherShared:I
    move-object/from16 v0, v30

    iget v0, v0, Landroid/os/Debug$MemoryInfo;->nativePrivateDirty:I

    move/from16 v37, v0

    .local v37, nativePrivate:I
    move-object/from16 v0, v30

    iget v0, v0, Landroid/os/Debug$MemoryInfo;->dalvikPrivateDirty:I

    move/from16 v21, v0

    .local v21, dalvikPrivate:I
    move-object/from16 v0, v30

    iget v0, v0, Landroid/os/Debug$MemoryInfo;->otherPrivateDirty:I

    move/from16 v40, v0

    .local v40, otherPrivate:I
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v43

    .local v43, runtime:Ljava/lang/Runtime;
    invoke-virtual/range {v43 .. v43}, Ljava/lang/Runtime;->totalMemory()J

    move-result-wide v51

    const-wide/16 v53, 0x400

    div-long v19, v51, v53

    .local v19, dalvikMax:J
    invoke-virtual/range {v43 .. v43}, Ljava/lang/Runtime;->freeMemory()J

    move-result-wide v51

    const-wide/16 v53, 0x400

    div-long v17, v51, v53

    .local v17, dalvikFree:J
    sub-long v15, v19, v17

    .local v15, dalvikAllocated:J
    invoke-static {}, Landroid/view/ViewDebug;->getViewInstanceCount()J

    move-result-wide v47

    .local v47, viewInstanceCount:J
    invoke-static {}, Landroid/view/ViewDebug;->getViewRootInstanceCount()J

    move-result-wide v49

    .local v49, viewRootInstanceCount:J
    invoke-static {}, Landroid/app/ContextImpl;->getInstanceCount()J

    move-result-wide v7

    .local v7, appContextInstanceCount:J
    invoke-static {}, Landroid/app/Activity;->getInstanceCount()J

    move-result-wide v5

    .local v5, activityInstanceCount:J
    invoke-static {}, Landroid/content/res/AssetManager;->getGlobalAssetCount()I

    move-result v25

    .local v25, globalAssetCount:I
    invoke-static {}, Landroid/content/res/AssetManager;->getGlobalAssetManagerCount()I

    move-result v26

    .local v26, globalAssetManagerCount:I
    invoke-static {}, Landroid/os/Debug;->getBinderLocalObjectCount()I

    move-result v13

    .local v13, binderLocalObjectCount:I
    invoke-static {}, Landroid/os/Debug;->getBinderProxyObjectCount()I

    move-result v14

    .local v14, binderProxyObjectCount:I
    invoke-static {}, Landroid/os/Debug;->getBinderDeathObjectCount()I

    move-result v12

    .local v12, binderDeathObjectCount:I
    invoke-static {}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->getInstanceCount()I

    move-result v39

    .local v39, openSslSocketCount:I
    invoke-static {}, Landroid/database/sqlite/SQLiteDebug;->getHeapAllocatedSize()J

    move-result-wide v51

    const-wide/16 v53, 0x400

    div-long v44, v51, v53

    .local v44, sqliteAllocated:J
    invoke-static {}, Landroid/database/sqlite/SQLiteDebug;->getDatabaseInfo()Landroid/database/sqlite/SQLiteDebug$PagerStats;

    move-result-object v46

    .local v46, stats:Landroid/database/sqlite/SQLiteDebug$PagerStats;
    const/16 v24, 0x0

    .local v24, doCheckinFormat:Z
    if-eqz p3, :cond_1

    move-object/from16 v10, p3

    .local v10, arr$:[Ljava/lang/String;
    move-object v0, v10

    array-length v0, v0

    move/from16 v29, v0

    .local v29, len$:I
    const/16 v28, 0x0

    .local v28, i$:I
    :goto_0
    move/from16 v0, v28

    move/from16 v1, v29

    if-ge v0, v1, :cond_1

    aget-object v9, v10, v28

    .local v9, arg:Ljava/lang/String;
    const-string v51, "-c"

    move-object/from16 v0, v51

    move-object v1, v9

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v51

    if-eqz v51, :cond_0

    const/16 v24, 0x1

    :cond_0
    add-int/lit8 v28, v28, 0x1

    goto :goto_0

    .end local v9           #arg:Ljava/lang/String;
    .end local v10           #arr$:[Ljava/lang/String;
    .end local v28           #i$:I
    .end local v29           #len$:I
    :cond_1
    if-eqz v24, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    move-object/from16 v51, v0

    move-object/from16 v0, v51

    iget-object v0, v0, Landroid/app/ActivityThread;->mBoundApplication:Landroid/app/ActivityThread$AppBindData;

    move-object/from16 v51, v0

    if-eqz v51, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    move-object/from16 v51, v0

    move-object/from16 v0, v51

    iget-object v0, v0, Landroid/app/ActivityThread;->mBoundApplication:Landroid/app/ActivityThread$AppBindData;

    move-object/from16 v51, v0

    move-object/from16 v0, v51

    iget-object v0, v0, Landroid/app/ActivityThread$AppBindData;->processName:Ljava/lang/String;

    move-object/from16 v51, v0

    move-object/from16 v42, v51

    .local v42, processName:Ljava/lang/String;
    :goto_1
    const/16 v51, 0x1

    move-object/from16 v0, p2

    move/from16 v1, v51

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(I)V

    const/16 v51, 0x2c

    move-object/from16 v0, p2

    move/from16 v1, v51

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v51

    move-object/from16 v0, p2

    move/from16 v1, v51

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(I)V

    const/16 v51, 0x2c

    move-object/from16 v0, p2

    move/from16 v1, v51

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    move-object/from16 v0, p2

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/16 v51, 0x2c

    move-object/from16 v0, p2

    move/from16 v1, v51

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    move-object/from16 v0, p2

    move-wide/from16 v1, v35

    invoke-virtual {v0, v1, v2}, Ljava/io/PrintWriter;->print(J)V

    const/16 v51, 0x2c

    move-object/from16 v0, p2

    move/from16 v1, v51

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    move-object/from16 v0, p2

    move-wide/from16 v1, v19

    invoke-virtual {v0, v1, v2}, Ljava/io/PrintWriter;->print(J)V

    const/16 v51, 0x2c

    move-object/from16 v0, p2

    move/from16 v1, v51

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    const-string v51, "N/A,"

    move-object/from16 v0, p2

    move-object/from16 v1, v51

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    add-long v51, v35, v19

    move-object/from16 v0, p2

    move-wide/from16 v1, v51

    invoke-virtual {v0, v1, v2}, Ljava/io/PrintWriter;->print(J)V

    const/16 v51, 0x2c

    move-object/from16 v0, p2

    move/from16 v1, v51

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    move-object/from16 v0, p2

    move-wide/from16 v1, v31

    invoke-virtual {v0, v1, v2}, Ljava/io/PrintWriter;->print(J)V

    const/16 v51, 0x2c

    move-object/from16 v0, p2

    move/from16 v1, v51

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    move-object/from16 v0, p2

    move-wide v1, v15

    invoke-virtual {v0, v1, v2}, Ljava/io/PrintWriter;->print(J)V

    const/16 v51, 0x2c

    move-object/from16 v0, p2

    move/from16 v1, v51

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    const-string v51, "N/A,"

    move-object/from16 v0, p2

    move-object/from16 v1, v51

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    add-long v51, v31, v15

    move-object/from16 v0, p2

    move-wide/from16 v1, v51

    invoke-virtual {v0, v1, v2}, Ljava/io/PrintWriter;->print(J)V

    const/16 v51, 0x2c

    move-object/from16 v0, p2

    move/from16 v1, v51

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    move-object/from16 v0, p2

    move-wide/from16 v1, v33

    invoke-virtual {v0, v1, v2}, Ljava/io/PrintWriter;->print(J)V

    const/16 v51, 0x2c

    move-object/from16 v0, p2

    move/from16 v1, v51

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    move-object/from16 v0, p2

    move-wide/from16 v1, v17

    invoke-virtual {v0, v1, v2}, Ljava/io/PrintWriter;->print(J)V

    const/16 v51, 0x2c

    move-object/from16 v0, p2

    move/from16 v1, v51

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    const-string v51, "N/A,"

    move-object/from16 v0, p2

    move-object/from16 v1, v51

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    add-long v51, v33, v17

    move-object/from16 v0, p2

    move-wide/from16 v1, v51

    invoke-virtual {v0, v1, v2}, Ljava/io/PrintWriter;->print(J)V

    const/16 v51, 0x2c

    move-object/from16 v0, p2

    move/from16 v1, v51

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    move-object/from16 v0, v30

    iget v0, v0, Landroid/os/Debug$MemoryInfo;->nativePss:I

    move/from16 v51, v0

    move-object/from16 v0, p2

    move/from16 v1, v51

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(I)V

    const/16 v51, 0x2c

    move-object/from16 v0, p2

    move/from16 v1, v51

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    move-object/from16 v0, v30

    iget v0, v0, Landroid/os/Debug$MemoryInfo;->dalvikPss:I

    move/from16 v51, v0

    move-object/from16 v0, p2

    move/from16 v1, v51

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(I)V

    const/16 v51, 0x2c

    move-object/from16 v0, p2

    move/from16 v1, v51

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    move-object/from16 v0, v30

    iget v0, v0, Landroid/os/Debug$MemoryInfo;->otherPss:I

    move/from16 v51, v0

    move-object/from16 v0, p2

    move/from16 v1, v51

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(I)V

    const/16 v51, 0x2c

    move-object/from16 v0, p2

    move/from16 v1, v51

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    move-object/from16 v0, v30

    iget v0, v0, Landroid/os/Debug$MemoryInfo;->nativePss:I

    move/from16 v51, v0

    move-object/from16 v0, v30

    iget v0, v0, Landroid/os/Debug$MemoryInfo;->dalvikPss:I

    move/from16 v52, v0

    add-int v51, v51, v52

    move-object/from16 v0, v30

    iget v0, v0, Landroid/os/Debug$MemoryInfo;->otherPss:I

    move/from16 v52, v0

    add-int v51, v51, v52

    move-object/from16 v0, p2

    move/from16 v1, v51

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(I)V

    const/16 v51, 0x2c

    move-object/from16 v0, p2

    move/from16 v1, v51

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    move-object/from16 v0, p2

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(I)V

    const/16 v51, 0x2c

    move-object/from16 v0, p2

    move/from16 v1, v51

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    move-object/from16 v0, p2

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(I)V

    const/16 v51, 0x2c

    move-object/from16 v0, p2

    move/from16 v1, v51

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    move-object/from16 v0, p2

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(I)V

    const/16 v51, 0x2c

    move-object/from16 v0, p2

    move/from16 v1, v51

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    add-int v51, v38, v22

    add-int v51, v51, v41

    move-object/from16 v0, p2

    move/from16 v1, v51

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(I)V

    const/16 v51, 0x2c

    move-object/from16 v0, p2

    move/from16 v1, v51

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    move-object/from16 v0, p2

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(I)V

    const/16 v51, 0x2c

    move-object/from16 v0, p2

    move/from16 v1, v51

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    move-object/from16 v0, p2

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(I)V

    const/16 v51, 0x2c

    move-object/from16 v0, p2

    move/from16 v1, v51

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    move-object/from16 v0, p2

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(I)V

    const/16 v51, 0x2c

    move-object/from16 v0, p2

    move/from16 v1, v51

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    add-int v51, v37, v21

    add-int v51, v51, v40

    move-object/from16 v0, p2

    move/from16 v1, v51

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(I)V

    const/16 v51, 0x2c

    move-object/from16 v0, p2

    move/from16 v1, v51

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    move-object/from16 v0, p2

    move-wide/from16 v1, v47

    invoke-virtual {v0, v1, v2}, Ljava/io/PrintWriter;->print(J)V

    const/16 v51, 0x2c

    move-object/from16 v0, p2

    move/from16 v1, v51

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    move-object/from16 v0, p2

    move-wide/from16 v1, v49

    invoke-virtual {v0, v1, v2}, Ljava/io/PrintWriter;->print(J)V

    const/16 v51, 0x2c

    move-object/from16 v0, p2

    move/from16 v1, v51

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    move-object/from16 v0, p2

    move-wide v1, v7

    invoke-virtual {v0, v1, v2}, Ljava/io/PrintWriter;->print(J)V

    const/16 v51, 0x2c

    move-object/from16 v0, p2

    move/from16 v1, v51

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    move-object/from16 v0, p2

    move-wide v1, v5

    invoke-virtual {v0, v1, v2}, Ljava/io/PrintWriter;->print(J)V

    const/16 v51, 0x2c

    move-object/from16 v0, p2

    move/from16 v1, v51

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    move-object/from16 v0, p2

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(I)V

    const/16 v51, 0x2c

    move-object/from16 v0, p2

    move/from16 v1, v51

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    move-object/from16 v0, p2

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(I)V

    const/16 v51, 0x2c

    move-object/from16 v0, p2

    move/from16 v1, v51

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    move-object/from16 v0, p2

    move v1, v13

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(I)V

    const/16 v51, 0x2c

    move-object/from16 v0, p2

    move/from16 v1, v51

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    move-object/from16 v0, p2

    move v1, v14

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(I)V

    const/16 v51, 0x2c

    move-object/from16 v0, p2

    move/from16 v1, v51

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    move-object/from16 v0, p2

    move v1, v12

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(I)V

    const/16 v51, 0x2c

    move-object/from16 v0, p2

    move/from16 v1, v51

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    move-object/from16 v0, p2

    move/from16 v1, v39

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(I)V

    const/16 v51, 0x2c

    move-object/from16 v0, p2

    move/from16 v1, v51

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    move-object/from16 v0, p2

    move-wide/from16 v1, v44

    invoke-virtual {v0, v1, v2}, Ljava/io/PrintWriter;->print(J)V

    const/16 v51, 0x2c

    move-object/from16 v0, p2

    move/from16 v1, v51

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    move-object/from16 v0, v46

    iget v0, v0, Landroid/database/sqlite/SQLiteDebug$PagerStats;->memoryUsed:I

    move/from16 v51, v0

    move/from16 v0, v51

    div-int/lit16 v0, v0, 0x400

    move/from16 v51, v0

    move-object/from16 v0, p2

    move/from16 v1, v51

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(I)V

    const/16 v51, 0x2c

    move-object/from16 v0, p2

    move/from16 v1, v51

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    move-object/from16 v0, v46

    iget v0, v0, Landroid/database/sqlite/SQLiteDebug$PagerStats;->pageCacheOverflo:I

    move/from16 v51, v0

    move/from16 v0, v51

    div-int/lit16 v0, v0, 0x400

    move/from16 v51, v0

    move-object/from16 v0, p2

    move/from16 v1, v51

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(I)V

    const/16 v51, 0x2c

    move-object/from16 v0, p2

    move/from16 v1, v51

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    move-object/from16 v0, v46

    iget v0, v0, Landroid/database/sqlite/SQLiteDebug$PagerStats;->largestMemAlloc:I

    move/from16 v51, v0

    move/from16 v0, v51

    div-int/lit16 v0, v0, 0x400

    move/from16 v51, v0

    move-object/from16 v0, p2

    move/from16 v1, v51

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(I)V

    const/16 v51, 0x2c

    move-object/from16 v0, p2

    move/from16 v1, v51

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    const/16 v27, 0x0

    .local v27, i:I
    :goto_2
    move-object/from16 v0, v46

    iget-object v0, v0, Landroid/database/sqlite/SQLiteDebug$PagerStats;->dbStats:Ljava/util/ArrayList;

    move-object/from16 v51, v0

    invoke-virtual/range {v51 .. v51}, Ljava/util/ArrayList;->size()I

    move-result v51

    move/from16 v0, v27

    move/from16 v1, v51

    if-ge v0, v1, :cond_5

    move-object/from16 v0, v46

    iget-object v0, v0, Landroid/database/sqlite/SQLiteDebug$PagerStats;->dbStats:Ljava/util/ArrayList;

    move-object/from16 v51, v0

    move-object/from16 v0, v51

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Landroid/database/sqlite/SQLiteDebug$DbStats;

    .local v23, dbStats:Landroid/database/sqlite/SQLiteDebug$DbStats;
    const-string v51, "  %8d %8d %14d  %s"

    const/16 v52, 0x4

    move/from16 v0, v52

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v52, v0

    const/16 v53, 0x0

    move-object/from16 v0, v23

    iget-wide v0, v0, Landroid/database/sqlite/SQLiteDebug$DbStats;->pageSize:J

    move-wide/from16 v54, v0

    invoke-static/range {v54 .. v55}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v54

    aput-object v54, v52, v53

    const/16 v53, 0x1

    move-object/from16 v0, v23

    iget-wide v0, v0, Landroid/database/sqlite/SQLiteDebug$DbStats;->dbSize:J

    move-wide/from16 v54, v0

    invoke-static/range {v54 .. v55}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v54

    aput-object v54, v52, v53

    const/16 v53, 0x2

    move-object/from16 v0, v23

    iget v0, v0, Landroid/database/sqlite/SQLiteDebug$DbStats;->lookaside:I

    move/from16 v54, v0

    invoke-static/range {v54 .. v54}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v54

    aput-object v54, v52, v53

    const/16 v53, 0x3

    move-object/from16 v0, v23

    iget-object v0, v0, Landroid/database/sqlite/SQLiteDebug$DbStats;->dbName:Ljava/lang/String;

    move-object/from16 v54, v0

    aput-object v54, v52, v53

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, v51

    move-object/from16 v3, v52

    invoke-direct {v0, v1, v2, v3}, Landroid/app/ActivityThread$ApplicationThread;->printRow(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/Object;)V

    const/16 v51, 0x2c

    move-object/from16 v0, p2

    move/from16 v1, v51

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    add-int/lit8 v27, v27, 0x1

    goto :goto_2

    .end local v23           #dbStats:Landroid/database/sqlite/SQLiteDebug$DbStats;
    .end local v27           #i:I
    .end local v42           #processName:Ljava/lang/String;
    :cond_2
    const-string v51, "unknown"

    move-object/from16 v42, v51

    goto/16 :goto_1

    :cond_3
    const-string v51, "%17s %8s %8s %8s %8s"

    const/16 v52, 0x5

    move/from16 v0, v52

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v52, v0

    const/16 v53, 0x0

    const-string v54, ""

    aput-object v54, v52, v53

    const/16 v53, 0x1

    const-string v54, "native"

    aput-object v54, v52, v53

    const/16 v53, 0x2

    const-string v54, "dalvik"

    aput-object v54, v52, v53

    const/16 v53, 0x3

    const-string v54, "other"

    aput-object v54, v52, v53

    const/16 v53, 0x4

    const-string v54, "total"

    aput-object v54, v52, v53

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, v51

    move-object/from16 v3, v52

    invoke-direct {v0, v1, v2, v3}, Landroid/app/ActivityThread$ApplicationThread;->printRow(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v51, "%17s %8s %8s %8s %8s"

    const/16 v52, 0x5

    move/from16 v0, v52

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v52, v0

    const/16 v53, 0x0

    const-string v54, "size:"

    aput-object v54, v52, v53

    const/16 v53, 0x1

    invoke-static/range {v35 .. v36}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v54

    aput-object v54, v52, v53

    const/16 v53, 0x2

    invoke-static/range {v19 .. v20}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v54

    aput-object v54, v52, v53

    const/16 v53, 0x3

    const-string v54, "N/A"

    aput-object v54, v52, v53

    const/16 v53, 0x4

    add-long v54, v35, v19

    invoke-static/range {v54 .. v55}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v54

    aput-object v54, v52, v53

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, v51

    move-object/from16 v3, v52

    invoke-direct {v0, v1, v2, v3}, Landroid/app/ActivityThread$ApplicationThread;->printRow(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v51, "%17s %8s %8s %8s %8s"

    const/16 v52, 0x5

    move/from16 v0, v52

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v52, v0

    const/16 v53, 0x0

    const-string v54, "allocated:"

    aput-object v54, v52, v53

    const/16 v53, 0x1

    invoke-static/range {v31 .. v32}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v54

    aput-object v54, v52, v53

    const/16 v53, 0x2

    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v54

    aput-object v54, v52, v53

    const/16 v53, 0x3

    const-string v54, "N/A"

    aput-object v54, v52, v53

    const/16 v53, 0x4

    add-long v54, v31, v15

    invoke-static/range {v54 .. v55}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v54

    aput-object v54, v52, v53

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, v51

    move-object/from16 v3, v52

    invoke-direct {v0, v1, v2, v3}, Landroid/app/ActivityThread$ApplicationThread;->printRow(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v51, "%17s %8s %8s %8s %8s"

    const/16 v52, 0x5

    move/from16 v0, v52

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v52, v0

    const/16 v53, 0x0

    const-string v54, "free:"

    aput-object v54, v52, v53

    const/16 v53, 0x1

    invoke-static/range {v33 .. v34}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v54

    aput-object v54, v52, v53

    const/16 v53, 0x2

    invoke-static/range {v17 .. v18}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v54

    aput-object v54, v52, v53

    const/16 v53, 0x3

    const-string v54, "N/A"

    aput-object v54, v52, v53

    const/16 v53, 0x4

    add-long v54, v33, v17

    invoke-static/range {v54 .. v55}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v54

    aput-object v54, v52, v53

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, v51

    move-object/from16 v3, v52

    invoke-direct {v0, v1, v2, v3}, Landroid/app/ActivityThread$ApplicationThread;->printRow(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v51, "%17s %8s %8s %8s %8s"

    const/16 v52, 0x5

    move/from16 v0, v52

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v52, v0

    const/16 v53, 0x0

    const-string v54, "(Pss):"

    aput-object v54, v52, v53

    const/16 v53, 0x1

    move-object/from16 v0, v30

    iget v0, v0, Landroid/os/Debug$MemoryInfo;->nativePss:I

    move/from16 v54, v0

    invoke-static/range {v54 .. v54}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v54

    aput-object v54, v52, v53

    const/16 v53, 0x2

    move-object/from16 v0, v30

    iget v0, v0, Landroid/os/Debug$MemoryInfo;->dalvikPss:I

    move/from16 v54, v0

    invoke-static/range {v54 .. v54}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v54

    aput-object v54, v52, v53

    const/16 v53, 0x3

    move-object/from16 v0, v30

    iget v0, v0, Landroid/os/Debug$MemoryInfo;->otherPss:I

    move/from16 v54, v0

    invoke-static/range {v54 .. v54}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v54

    aput-object v54, v52, v53

    const/16 v53, 0x4

    move-object/from16 v0, v30

    iget v0, v0, Landroid/os/Debug$MemoryInfo;->nativePss:I

    move/from16 v54, v0

    move-object/from16 v0, v30

    iget v0, v0, Landroid/os/Debug$MemoryInfo;->dalvikPss:I

    move/from16 v55, v0

    add-int v54, v54, v55

    move-object/from16 v0, v30

    iget v0, v0, Landroid/os/Debug$MemoryInfo;->otherPss:I

    move/from16 v55, v0

    add-int v54, v54, v55

    invoke-static/range {v54 .. v54}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v54

    aput-object v54, v52, v53

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, v51

    move-object/from16 v3, v52

    invoke-direct {v0, v1, v2, v3}, Landroid/app/ActivityThread$ApplicationThread;->printRow(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v51, "%17s %8s %8s %8s %8s"

    const/16 v52, 0x5

    move/from16 v0, v52

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v52, v0

    const/16 v53, 0x0

    const-string v54, "(shared dirty):"

    aput-object v54, v52, v53

    const/16 v53, 0x1

    invoke-static/range {v38 .. v38}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v54

    aput-object v54, v52, v53

    const/16 v53, 0x2

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v54

    aput-object v54, v52, v53

    const/16 v53, 0x3

    invoke-static/range {v41 .. v41}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v54

    aput-object v54, v52, v53

    const/16 v53, 0x4

    add-int v54, v38, v22

    add-int v54, v54, v41

    invoke-static/range {v54 .. v54}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v54

    aput-object v54, v52, v53

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, v51

    move-object/from16 v3, v52

    invoke-direct {v0, v1, v2, v3}, Landroid/app/ActivityThread$ApplicationThread;->printRow(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v51, "%17s %8s %8s %8s %8s"

    const/16 v52, 0x5

    move/from16 v0, v52

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v52, v0

    const/16 v53, 0x0

    const-string v54, "(priv dirty):"

    aput-object v54, v52, v53

    const/16 v53, 0x1

    invoke-static/range {v37 .. v37}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v54

    aput-object v54, v52, v53

    const/16 v53, 0x2

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v54

    aput-object v54, v52, v53

    const/16 v53, 0x3

    invoke-static/range {v40 .. v40}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v54

    aput-object v54, v52, v53

    const/16 v53, 0x4

    add-int v54, v37, v21

    add-int v54, v54, v40

    invoke-static/range {v54 .. v54}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v54

    aput-object v54, v52, v53

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, v51

    move-object/from16 v3, v52

    invoke-direct {v0, v1, v2, v3}, Landroid/app/ActivityThread$ApplicationThread;->printRow(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v51, " "

    move-object/from16 v0, p2

    move-object/from16 v1, v51

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v51, " Objects"

    move-object/from16 v0, p2

    move-object/from16 v1, v51

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v51, "%17s %8d %17s %8d"

    const/16 v52, 0x4

    move/from16 v0, v52

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v52, v0

    const/16 v53, 0x0

    const-string v54, "Views:"

    aput-object v54, v52, v53

    const/16 v53, 0x1

    invoke-static/range {v47 .. v48}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v54

    aput-object v54, v52, v53

    const/16 v53, 0x2

    const-string v54, "ViewRoots:"

    aput-object v54, v52, v53

    const/16 v53, 0x3

    invoke-static/range {v49 .. v50}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v54

    aput-object v54, v52, v53

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, v51

    move-object/from16 v3, v52

    invoke-direct {v0, v1, v2, v3}, Landroid/app/ActivityThread$ApplicationThread;->printRow(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v51, "%17s %8d %17s %8d"

    const/16 v52, 0x4

    move/from16 v0, v52

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v52, v0

    const/16 v53, 0x0

    const-string v54, "AppContexts:"

    aput-object v54, v52, v53

    const/16 v53, 0x1

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v54

    aput-object v54, v52, v53

    const/16 v53, 0x2

    const-string v54, "Activities:"

    aput-object v54, v52, v53

    const/16 v53, 0x3

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v54

    aput-object v54, v52, v53

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, v51

    move-object/from16 v3, v52

    invoke-direct {v0, v1, v2, v3}, Landroid/app/ActivityThread$ApplicationThread;->printRow(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v51, "%17s %8d %17s %8d"

    const/16 v52, 0x4

    move/from16 v0, v52

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v52, v0

    const/16 v53, 0x0

    const-string v54, "Assets:"

    aput-object v54, v52, v53

    const/16 v53, 0x1

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v54

    aput-object v54, v52, v53

    const/16 v53, 0x2

    const-string v54, "AssetManagers:"

    aput-object v54, v52, v53

    const/16 v53, 0x3

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v54

    aput-object v54, v52, v53

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, v51

    move-object/from16 v3, v52

    invoke-direct {v0, v1, v2, v3}, Landroid/app/ActivityThread$ApplicationThread;->printRow(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v51, "%17s %8d %17s %8d"

    const/16 v52, 0x4

    move/from16 v0, v52

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v52, v0

    const/16 v53, 0x0

    const-string v54, "Local Binders:"

    aput-object v54, v52, v53

    const/16 v53, 0x1

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v54

    aput-object v54, v52, v53

    const/16 v53, 0x2

    const-string v54, "Proxy Binders:"

    aput-object v54, v52, v53

    const/16 v53, 0x3

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v54

    aput-object v54, v52, v53

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, v51

    move-object/from16 v3, v52

    invoke-direct {v0, v1, v2, v3}, Landroid/app/ActivityThread$ApplicationThread;->printRow(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v51, "%17s %8d"

    const/16 v52, 0x2

    move/from16 v0, v52

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v52, v0

    const/16 v53, 0x0

    const-string v54, "Death Recipients:"

    aput-object v54, v52, v53

    const/16 v53, 0x1

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v54

    aput-object v54, v52, v53

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, v51

    move-object/from16 v3, v52

    invoke-direct {v0, v1, v2, v3}, Landroid/app/ActivityThread$ApplicationThread;->printRow(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v51, "%17s %8d"

    const/16 v52, 0x2

    move/from16 v0, v52

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v52, v0

    const/16 v53, 0x0

    const-string v54, "OpenSSL Sockets:"

    aput-object v54, v52, v53

    const/16 v53, 0x1

    invoke-static/range {v39 .. v39}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v54

    aput-object v54, v52, v53

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, v51

    move-object/from16 v3, v52

    invoke-direct {v0, v1, v2, v3}, Landroid/app/ActivityThread$ApplicationThread;->printRow(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v51, " "

    move-object/from16 v0, p2

    move-object/from16 v1, v51

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v51, " SQL"

    move-object/from16 v0, p2

    move-object/from16 v1, v51

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v51, "%20s %8d %20s %8d"

    const/16 v52, 0x4

    move/from16 v0, v52

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v52, v0

    const/16 v53, 0x0

    const-string v54, "heap:"

    aput-object v54, v52, v53

    const/16 v53, 0x1

    invoke-static/range {v44 .. v45}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v54

    aput-object v54, v52, v53

    const/16 v53, 0x2

    const-string v54, "MEMORY_USED:"

    aput-object v54, v52, v53

    const/16 v53, 0x3

    move-object/from16 v0, v46

    iget v0, v0, Landroid/database/sqlite/SQLiteDebug$PagerStats;->memoryUsed:I

    move/from16 v54, v0

    move/from16 v0, v54

    div-int/lit16 v0, v0, 0x400

    move/from16 v54, v0

    invoke-static/range {v54 .. v54}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v54

    aput-object v54, v52, v53

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, v51

    move-object/from16 v3, v52

    invoke-direct {v0, v1, v2, v3}, Landroid/app/ActivityThread$ApplicationThread;->printRow(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v51, "%20s %8d %20s %8d"

    const/16 v52, 0x4

    move/from16 v0, v52

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v52, v0

    const/16 v53, 0x0

    const-string v54, "PAGECACHE_OVERFLOW:"

    aput-object v54, v52, v53

    const/16 v53, 0x1

    move-object/from16 v0, v46

    iget v0, v0, Landroid/database/sqlite/SQLiteDebug$PagerStats;->pageCacheOverflo:I

    move/from16 v54, v0

    move/from16 v0, v54

    div-int/lit16 v0, v0, 0x400

    move/from16 v54, v0

    invoke-static/range {v54 .. v54}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v54

    aput-object v54, v52, v53

    const/16 v53, 0x2

    const-string v54, "MALLOC_SIZE:"

    aput-object v54, v52, v53

    const/16 v53, 0x3

    move-object/from16 v0, v46

    iget v0, v0, Landroid/database/sqlite/SQLiteDebug$PagerStats;->largestMemAlloc:I

    move/from16 v54, v0

    move/from16 v0, v54

    div-int/lit16 v0, v0, 0x400

    move/from16 v54, v0

    invoke-static/range {v54 .. v54}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v54

    aput-object v54, v52, v53

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, v51

    move-object/from16 v3, v52

    invoke-direct {v0, v1, v2, v3}, Landroid/app/ActivityThread$ApplicationThread;->printRow(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v51, " "

    move-object/from16 v0, p2

    move-object/from16 v1, v51

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    move-object/from16 v0, v46

    iget-object v0, v0, Landroid/database/sqlite/SQLiteDebug$PagerStats;->dbStats:Ljava/util/ArrayList;

    move-object/from16 v51, v0

    invoke-virtual/range {v51 .. v51}, Ljava/util/ArrayList;->size()I

    move-result v4

    .local v4, N:I
    if-lez v4, :cond_4

    const-string v51, " DATABASES"

    move-object/from16 v0, p2

    move-object/from16 v1, v51

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v51, "  %8s %8s %14s  %s"

    const/16 v52, 0x4

    move/from16 v0, v52

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v52, v0

    const/16 v53, 0x0

    const-string v54, "pgsz"

    aput-object v54, v52, v53

    const/16 v53, 0x1

    const-string v54, "dbsz"

    aput-object v54, v52, v53

    const/16 v53, 0x2

    const-string v54, "Lookaside(b)"

    aput-object v54, v52, v53

    const/16 v53, 0x3

    const-string v54, "Dbname"

    aput-object v54, v52, v53

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, v51

    move-object/from16 v3, v52

    invoke-direct {v0, v1, v2, v3}, Landroid/app/ActivityThread$ApplicationThread;->printRow(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/Object;)V

    const/16 v27, 0x0

    .restart local v27       #i:I
    :goto_3
    move/from16 v0, v27

    move v1, v4

    if-ge v0, v1, :cond_4

    move-object/from16 v0, v46

    iget-object v0, v0, Landroid/database/sqlite/SQLiteDebug$PagerStats;->dbStats:Ljava/util/ArrayList;

    move-object/from16 v51, v0

    move-object/from16 v0, v51

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Landroid/database/sqlite/SQLiteDebug$DbStats;

    .restart local v23       #dbStats:Landroid/database/sqlite/SQLiteDebug$DbStats;
    const-string v51, "  %8d %8d %14d  %s"

    const/16 v52, 0x4

    move/from16 v0, v52

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v52, v0

    const/16 v53, 0x0

    move-object/from16 v0, v23

    iget-wide v0, v0, Landroid/database/sqlite/SQLiteDebug$DbStats;->pageSize:J

    move-wide/from16 v54, v0

    invoke-static/range {v54 .. v55}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v54

    aput-object v54, v52, v53

    const/16 v53, 0x1

    move-object/from16 v0, v23

    iget-wide v0, v0, Landroid/database/sqlite/SQLiteDebug$DbStats;->dbSize:J

    move-wide/from16 v54, v0

    invoke-static/range {v54 .. v55}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v54

    aput-object v54, v52, v53

    const/16 v53, 0x2

    move-object/from16 v0, v23

    iget v0, v0, Landroid/database/sqlite/SQLiteDebug$DbStats;->lookaside:I

    move/from16 v54, v0

    invoke-static/range {v54 .. v54}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v54

    aput-object v54, v52, v53

    const/16 v53, 0x3

    move-object/from16 v0, v23

    iget-object v0, v0, Landroid/database/sqlite/SQLiteDebug$DbStats;->dbName:Ljava/lang/String;

    move-object/from16 v54, v0

    aput-object v54, v52, v53

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, v51

    move-object/from16 v3, v52

    invoke-direct {v0, v1, v2, v3}, Landroid/app/ActivityThread$ApplicationThread;->printRow(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/Object;)V

    add-int/lit8 v27, v27, 0x1

    goto :goto_3

    .end local v23           #dbStats:Landroid/database/sqlite/SQLiteDebug$DbStats;
    .end local v27           #i:I
    :cond_4
    invoke-static {}, Landroid/content/res/AssetManager;->getAssetAllocations()Ljava/lang/String;

    move-result-object v11

    .local v11, assetAlloc:Ljava/lang/String;
    if-eqz v11, :cond_5

    const-string v51, " "

    move-object/from16 v0, p2

    move-object/from16 v1, v51

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v51, " Asset Allocations"

    move-object/from16 v0, p2

    move-object/from16 v1, v51

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    move-object/from16 v0, p2

    move-object v1, v11

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .end local v4           #N:I
    .end local v11           #assetAlloc:Ljava/lang/String;
    :cond_5
    return-void
.end method

.method public dumpService(Ljava/io/FileDescriptor;Landroid/os/IBinder;[Ljava/lang/String;)V
    .locals 3
    .parameter "fd"
    .parameter "servicetoken"
    .parameter "args"

    .prologue
    new-instance v0, Landroid/app/ActivityThread$DumpServiceInfo;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/app/ActivityThread$DumpServiceInfo;-><init>(Landroid/app/ActivityThread$1;)V

    .local v0, data:Landroid/app/ActivityThread$DumpServiceInfo;
    iput-object p1, v0, Landroid/app/ActivityThread$DumpServiceInfo;->fd:Ljava/io/FileDescriptor;

    iput-object p2, v0, Landroid/app/ActivityThread$DumpServiceInfo;->service:Landroid/os/IBinder;

    iput-object p3, v0, Landroid/app/ActivityThread$DumpServiceInfo;->args:[Ljava/lang/String;

    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/app/ActivityThread$DumpServiceInfo;->dumped:Z

    iget-object v1, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    const/16 v2, 0x7b

    #calls: Landroid/app/ActivityThread;->queueOrSendMessage(ILjava/lang/Object;)V
    invoke-static {v1, v2, v0}, Landroid/app/ActivityThread;->access$300(Landroid/app/ActivityThread;ILjava/lang/Object;)V

    monitor-enter v0

    :goto_0
    :try_start_0
    iget-boolean v1, v0, Landroid/app/ActivityThread$DumpServiceInfo;->dumped:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_0

    :cond_0
    :try_start_2
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public getMemoryInfo(Landroid/os/Debug$MemoryInfo;)V
    .locals 0
    .parameter "outInfo"

    .prologue
    invoke-static {p1}, Landroid/os/Debug;->getMemoryInfo(Landroid/os/Debug$MemoryInfo;)V

    return-void
.end method

.method public processInBackground()V
    .locals 3

    .prologue
    const/16 v2, 0x78

    iget-object v0, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    iget-object v0, v0, Landroid/app/ActivityThread;->mH:Landroid/app/ActivityThread$H;

    invoke-virtual {v0, v2}, Landroid/app/ActivityThread$H;->removeMessages(I)V

    iget-object v0, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    iget-object v0, v0, Landroid/app/ActivityThread;->mH:Landroid/app/ActivityThread$H;

    iget-object v1, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    iget-object v1, v1, Landroid/app/ActivityThread;->mH:Landroid/app/ActivityThread$H;

    invoke-virtual {v1, v2}, Landroid/app/ActivityThread$H;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ActivityThread$H;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public profilerControl(ZLjava/lang/String;Landroid/os/ParcelFileDescriptor;)V
    .locals 4
    .parameter "start"
    .parameter "path"
    .parameter "fd"

    .prologue
    new-instance v0, Landroid/app/ActivityThread$ProfilerControlData;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/app/ActivityThread$ProfilerControlData;-><init>(Landroid/app/ActivityThread$1;)V

    .local v0, pcd:Landroid/app/ActivityThread$ProfilerControlData;
    iput-object p2, v0, Landroid/app/ActivityThread$ProfilerControlData;->path:Ljava/lang/String;

    iput-object p3, v0, Landroid/app/ActivityThread$ProfilerControlData;->fd:Landroid/os/ParcelFileDescriptor;

    iget-object v1, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    const/16 v2, 0x7f

    if-eqz p1, :cond_0

    const/4 v3, 0x1

    :goto_0
    #calls: Landroid/app/ActivityThread;->queueOrSendMessage(ILjava/lang/Object;I)V
    invoke-static {v1, v2, v0, v3}, Landroid/app/ActivityThread;->access$400(Landroid/app/ActivityThread;ILjava/lang/Object;I)V

    return-void

    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public requestThumbnail(Landroid/os/IBinder;)V
    .locals 2
    .parameter "token"

    .prologue
    iget-object v0, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    const/16 v1, 0x75

    #calls: Landroid/app/ActivityThread;->queueOrSendMessage(ILjava/lang/Object;)V
    invoke-static {v0, v1, p1}, Landroid/app/ActivityThread;->access$300(Landroid/app/ActivityThread;ILjava/lang/Object;)V

    return-void
.end method

.method public scheduleActivityConfigurationChanged(Landroid/os/IBinder;)V
    .locals 2
    .parameter "token"

    .prologue
    iget-object v0, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    const/16 v1, 0x7d

    #calls: Landroid/app/ActivityThread;->queueOrSendMessage(ILjava/lang/Object;)V
    invoke-static {v0, v1, p1}, Landroid/app/ActivityThread;->access$300(Landroid/app/ActivityThread;ILjava/lang/Object;)V

    return-void
.end method

.method public final scheduleBindService(Landroid/os/IBinder;Landroid/content/Intent;Z)V
    .locals 3
    .parameter "token"
    .parameter "intent"
    .parameter "rebind"

    .prologue
    new-instance v0, Landroid/app/ActivityThread$BindServiceData;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/app/ActivityThread$BindServiceData;-><init>(Landroid/app/ActivityThread$1;)V

    .local v0, s:Landroid/app/ActivityThread$BindServiceData;
    iput-object p1, v0, Landroid/app/ActivityThread$BindServiceData;->token:Landroid/os/IBinder;

    iput-object p2, v0, Landroid/app/ActivityThread$BindServiceData;->intent:Landroid/content/Intent;

    iput-boolean p3, v0, Landroid/app/ActivityThread$BindServiceData;->rebind:Z

    iget-object v1, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    const/16 v2, 0x79

    #calls: Landroid/app/ActivityThread;->queueOrSendMessage(ILjava/lang/Object;)V
    invoke-static {v1, v2, v0}, Landroid/app/ActivityThread;->access$300(Landroid/app/ActivityThread;ILjava/lang/Object;)V

    return-void
.end method

.method public scheduleConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .parameter "config"

    .prologue
    iget-object v0, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    iget-object v0, v0, Landroid/app/ActivityThread;->mPackages:Ljava/util/HashMap;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    iget-object v1, v1, Landroid/app/ActivityThread;->mPendingConfiguration:Landroid/content/res/Configuration;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    iget-object v1, v1, Landroid/app/ActivityThread;->mPendingConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v1, p1}, Landroid/content/res/Configuration;->isOtherSeqNewer(Landroid/content/res/Configuration;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    iget-object v1, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    iput-object p1, v1, Landroid/app/ActivityThread;->mPendingConfiguration:Landroid/content/res/Configuration;

    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    const/16 v1, 0x76

    #calls: Landroid/app/ActivityThread;->queueOrSendMessage(ILjava/lang/Object;)V
    invoke-static {v0, v1, p1}, Landroid/app/ActivityThread;->access$300(Landroid/app/ActivityThread;ILjava/lang/Object;)V

    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public scheduleCrash(Ljava/lang/String;)V
    .locals 2
    .parameter "msg"

    .prologue
    iget-object v0, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    const/16 v1, 0x86

    #calls: Landroid/app/ActivityThread;->queueOrSendMessage(ILjava/lang/Object;)V
    invoke-static {v0, v1, p1}, Landroid/app/ActivityThread;->access$300(Landroid/app/ActivityThread;ILjava/lang/Object;)V

    return-void
.end method

.method public final scheduleCreateBackupAgent(Landroid/content/pm/ApplicationInfo;I)V
    .locals 3
    .parameter "app"
    .parameter "backupMode"

    .prologue
    new-instance v0, Landroid/app/ActivityThread$CreateBackupAgentData;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/app/ActivityThread$CreateBackupAgentData;-><init>(Landroid/app/ActivityThread$1;)V

    .local v0, d:Landroid/app/ActivityThread$CreateBackupAgentData;
    iput-object p1, v0, Landroid/app/ActivityThread$CreateBackupAgentData;->appInfo:Landroid/content/pm/ApplicationInfo;

    iput p2, v0, Landroid/app/ActivityThread$CreateBackupAgentData;->backupMode:I

    iget-object v1, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    const/16 v2, 0x80

    #calls: Landroid/app/ActivityThread;->queueOrSendMessage(ILjava/lang/Object;)V
    invoke-static {v1, v2, v0}, Landroid/app/ActivityThread;->access$300(Landroid/app/ActivityThread;ILjava/lang/Object;)V

    return-void
.end method

.method public final scheduleCreateService(Landroid/os/IBinder;Landroid/content/pm/ServiceInfo;)V
    .locals 3
    .parameter "token"
    .parameter "info"

    .prologue
    new-instance v0, Landroid/app/ActivityThread$CreateServiceData;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/app/ActivityThread$CreateServiceData;-><init>(Landroid/app/ActivityThread$1;)V

    .local v0, s:Landroid/app/ActivityThread$CreateServiceData;
    iput-object p1, v0, Landroid/app/ActivityThread$CreateServiceData;->token:Landroid/os/IBinder;

    iput-object p2, v0, Landroid/app/ActivityThread$CreateServiceData;->info:Landroid/content/pm/ServiceInfo;

    iget-object v1, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    const/16 v2, 0x72

    #calls: Landroid/app/ActivityThread;->queueOrSendMessage(ILjava/lang/Object;)V
    invoke-static {v1, v2, v0}, Landroid/app/ActivityThread;->access$300(Landroid/app/ActivityThread;ILjava/lang/Object;)V

    return-void
.end method

.method public final scheduleDestroyActivity(Landroid/os/IBinder;ZI)V
    .locals 3
    .parameter "token"
    .parameter "finishing"
    .parameter "configChanges"

    .prologue
    iget-object v0, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    const/16 v1, 0x6d

    if-eqz p2, :cond_0

    const/4 v2, 0x1

    :goto_0
    #calls: Landroid/app/ActivityThread;->queueOrSendMessage(ILjava/lang/Object;II)V
    invoke-static {v0, v1, p1, v2, p3}, Landroid/app/ActivityThread;->access$200(Landroid/app/ActivityThread;ILjava/lang/Object;II)V

    return-void

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public final scheduleDestroyBackupAgent(Landroid/content/pm/ApplicationInfo;)V
    .locals 3
    .parameter "app"

    .prologue
    new-instance v0, Landroid/app/ActivityThread$CreateBackupAgentData;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/app/ActivityThread$CreateBackupAgentData;-><init>(Landroid/app/ActivityThread$1;)V

    .local v0, d:Landroid/app/ActivityThread$CreateBackupAgentData;
    iput-object p1, v0, Landroid/app/ActivityThread$CreateBackupAgentData;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v1, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    const/16 v2, 0x81

    #calls: Landroid/app/ActivityThread;->queueOrSendMessage(ILjava/lang/Object;)V
    invoke-static {v1, v2, v0}, Landroid/app/ActivityThread;->access$300(Landroid/app/ActivityThread;ILjava/lang/Object;)V

    return-void
.end method

.method public final scheduleExit()V
    .locals 3

    .prologue
    iget-object v0, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    const/16 v1, 0x6f

    const/4 v2, 0x0

    #calls: Landroid/app/ActivityThread;->queueOrSendMessage(ILjava/lang/Object;)V
    invoke-static {v0, v1, v2}, Landroid/app/ActivityThread;->access$300(Landroid/app/ActivityThread;ILjava/lang/Object;)V

    return-void
.end method

.method public final scheduleLaunchActivity(Landroid/content/Intent;Landroid/os/IBinder;ILandroid/content/pm/ActivityInfo;Landroid/os/Bundle;Ljava/util/List;Ljava/util/List;ZZ)V
    .locals 3
    .parameter "intent"
    .parameter "token"
    .parameter "ident"
    .parameter "info"
    .parameter "state"
    .parameter
    .parameter
    .parameter "notResumed"
    .parameter "isForward"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "Landroid/os/IBinder;",
            "I",
            "Landroid/content/pm/ActivityInfo;",
            "Landroid/os/Bundle;",
            "Ljava/util/List",
            "<",
            "Landroid/app/ResultInfo;",
            ">;",
            "Ljava/util/List",
            "<",
            "Landroid/content/Intent;",
            ">;ZZ)V"
        }
    .end annotation

    .prologue
    .local p6, pendingResults:Ljava/util/List;,"Ljava/util/List<Landroid/app/ResultInfo;>;"
    .local p7, pendingNewIntents:Ljava/util/List;,"Ljava/util/List<Landroid/content/Intent;>;"
    new-instance v0, Landroid/app/ActivityThread$ActivityClientRecord;

    invoke-direct {v0}, Landroid/app/ActivityThread$ActivityClientRecord;-><init>()V

    .local v0, r:Landroid/app/ActivityThread$ActivityClientRecord;
    iput-object p2, v0, Landroid/app/ActivityThread$ActivityClientRecord;->token:Landroid/os/IBinder;

    iput p3, v0, Landroid/app/ActivityThread$ActivityClientRecord;->ident:I

    iput-object p1, v0, Landroid/app/ActivityThread$ActivityClientRecord;->intent:Landroid/content/Intent;

    iput-object p4, v0, Landroid/app/ActivityThread$ActivityClientRecord;->activityInfo:Landroid/content/pm/ActivityInfo;

    iput-object p5, v0, Landroid/app/ActivityThread$ActivityClientRecord;->state:Landroid/os/Bundle;

    iput-object p6, v0, Landroid/app/ActivityThread$ActivityClientRecord;->pendingResults:Ljava/util/List;

    iput-object p7, v0, Landroid/app/ActivityThread$ActivityClientRecord;->pendingIntents:Ljava/util/List;

    iput-boolean p8, v0, Landroid/app/ActivityThread$ActivityClientRecord;->startsNotResumed:Z

    iput-boolean p9, v0, Landroid/app/ActivityThread$ActivityClientRecord;->isForward:Z

    iget-object v1, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    const/16 v2, 0x64

    #calls: Landroid/app/ActivityThread;->queueOrSendMessage(ILjava/lang/Object;)V
    invoke-static {v1, v2, v0}, Landroid/app/ActivityThread;->access$300(Landroid/app/ActivityThread;ILjava/lang/Object;)V

    return-void
.end method

.method public scheduleLowMemory()V
    .locals 3

    .prologue
    iget-object v0, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    const/16 v1, 0x7c

    const/4 v2, 0x0

    #calls: Landroid/app/ActivityThread;->queueOrSendMessage(ILjava/lang/Object;)V
    invoke-static {v0, v1, v2}, Landroid/app/ActivityThread;->access$300(Landroid/app/ActivityThread;ILjava/lang/Object;)V

    return-void
.end method

.method public final scheduleNewIntent(Ljava/util/List;Landroid/os/IBinder;)V
    .locals 3
    .parameter
    .parameter "token"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/content/Intent;",
            ">;",
            "Landroid/os/IBinder;",
            ")V"
        }
    .end annotation

    .prologue
    .local p1, intents:Ljava/util/List;,"Ljava/util/List<Landroid/content/Intent;>;"
    new-instance v0, Landroid/app/ActivityThread$NewIntentData;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/app/ActivityThread$NewIntentData;-><init>(Landroid/app/ActivityThread$1;)V

    .local v0, data:Landroid/app/ActivityThread$NewIntentData;
    iput-object p1, v0, Landroid/app/ActivityThread$NewIntentData;->intents:Ljava/util/List;

    iput-object p2, v0, Landroid/app/ActivityThread$NewIntentData;->token:Landroid/os/IBinder;

    iget-object v1, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    const/16 v2, 0x70

    #calls: Landroid/app/ActivityThread;->queueOrSendMessage(ILjava/lang/Object;)V
    invoke-static {v1, v2, v0}, Landroid/app/ActivityThread;->access$300(Landroid/app/ActivityThread;ILjava/lang/Object;)V

    return-void
.end method

.method public final schedulePauseActivity(Landroid/os/IBinder;ZZI)V
    .locals 3
    .parameter "token"
    .parameter "finished"
    .parameter "userLeaving"
    .parameter "configChanges"

    .prologue
    iget-object v0, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    if-eqz p2, :cond_0

    const/16 v1, 0x66

    :goto_0
    if-eqz p3, :cond_1

    const/4 v2, 0x1

    :goto_1
    #calls: Landroid/app/ActivityThread;->queueOrSendMessage(ILjava/lang/Object;II)V
    invoke-static {v0, v1, p1, v2, p4}, Landroid/app/ActivityThread;->access$200(Landroid/app/ActivityThread;ILjava/lang/Object;II)V

    return-void

    :cond_0
    const/16 v1, 0x65

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public final scheduleReceiver(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;ILjava/lang/String;Landroid/os/Bundle;Z)V
    .locals 3
    .parameter "intent"
    .parameter "info"
    .parameter "resultCode"
    .parameter "data"
    .parameter "extras"
    .parameter "sync"

    .prologue
    new-instance v0, Landroid/app/ActivityThread$ReceiverData;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/app/ActivityThread$ReceiverData;-><init>(Landroid/app/ActivityThread$1;)V

    .local v0, r:Landroid/app/ActivityThread$ReceiverData;
    iput-object p1, v0, Landroid/app/ActivityThread$ReceiverData;->intent:Landroid/content/Intent;

    iput-object p2, v0, Landroid/app/ActivityThread$ReceiverData;->info:Landroid/content/pm/ActivityInfo;

    iput p3, v0, Landroid/app/ActivityThread$ReceiverData;->resultCode:I

    iput-object p4, v0, Landroid/app/ActivityThread$ReceiverData;->resultData:Ljava/lang/String;

    iput-object p5, v0, Landroid/app/ActivityThread$ReceiverData;->resultExtras:Landroid/os/Bundle;

    iput-boolean p6, v0, Landroid/app/ActivityThread$ReceiverData;->sync:Z

    iget-object v1, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    const/16 v2, 0x71

    #calls: Landroid/app/ActivityThread;->queueOrSendMessage(ILjava/lang/Object;)V
    invoke-static {v1, v2, v0}, Landroid/app/ActivityThread;->access$300(Landroid/app/ActivityThread;ILjava/lang/Object;)V

    return-void
.end method

.method public scheduleRegisteredReceiver(Landroid/content/IIntentReceiver;Landroid/content/Intent;ILjava/lang/String;Landroid/os/Bundle;ZZ)V
    .locals 8
    .parameter "receiver"
    .parameter "intent"
    .parameter "resultCode"
    .parameter "dataStr"
    .parameter "extras"
    .parameter "ordered"
    .parameter "sticky"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    :try_start_0
    invoke-interface/range {p1 .. p7}, Landroid/content/IIntentReceiver;->performReceive(Landroid/content/Intent;ILjava/lang/String;Landroid/os/Bundle;ZZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v7

    .local v7, e:Landroid/os/RemoteException;
    const-string v1, "ActivityThread"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception in performReceive(), intent="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v3, p1

    .local v3, _receiver:Landroid/content/IIntentReceiver;
    move v4, p3

    .local v4, _resultCode:I
    move-object v5, p4

    .local v5, _dataStr:Ljava/lang/String;
    move-object v6, p5

    .local v6, _extras:Landroid/os/Bundle;
    new-instance v0, Landroid/app/ActivityThread$ApplicationThread$1;

    const-string v2, "finishReceiver"

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Landroid/app/ActivityThread$ApplicationThread$1;-><init>(Landroid/app/ActivityThread$ApplicationThread;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;)V

    .local v0, t:Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method

.method public final scheduleRelaunchActivity(Landroid/os/IBinder;Ljava/util/List;Ljava/util/List;IZLandroid/content/res/Configuration;)V
    .locals 3
    .parameter "token"
    .parameter
    .parameter
    .parameter "configChanges"
    .parameter "notResumed"
    .parameter "config"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/IBinder;",
            "Ljava/util/List",
            "<",
            "Landroid/app/ResultInfo;",
            ">;",
            "Ljava/util/List",
            "<",
            "Landroid/content/Intent;",
            ">;IZ",
            "Landroid/content/res/Configuration;",
            ")V"
        }
    .end annotation

    .prologue
    .local p2, pendingResults:Ljava/util/List;,"Ljava/util/List<Landroid/app/ResultInfo;>;"
    .local p3, pendingNewIntents:Ljava/util/List;,"Ljava/util/List<Landroid/content/Intent;>;"
    new-instance v0, Landroid/app/ActivityThread$ActivityClientRecord;

    invoke-direct {v0}, Landroid/app/ActivityThread$ActivityClientRecord;-><init>()V

    .local v0, r:Landroid/app/ActivityThread$ActivityClientRecord;
    iput-object p1, v0, Landroid/app/ActivityThread$ActivityClientRecord;->token:Landroid/os/IBinder;

    iput-object p2, v0, Landroid/app/ActivityThread$ActivityClientRecord;->pendingResults:Ljava/util/List;

    iput-object p3, v0, Landroid/app/ActivityThread$ActivityClientRecord;->pendingIntents:Ljava/util/List;

    iput-boolean p5, v0, Landroid/app/ActivityThread$ActivityClientRecord;->startsNotResumed:Z

    iput-object p6, v0, Landroid/app/ActivityThread$ActivityClientRecord;->createdConfig:Landroid/content/res/Configuration;

    iget-object v1, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    iget-object v1, v1, Landroid/app/ActivityThread;->mPackages:Ljava/util/HashMap;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    iget-object v2, v2, Landroid/app/ActivityThread;->mRelaunchingActivities:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v1, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    const/16 v2, 0x7e

    #calls: Landroid/app/ActivityThread;->queueOrSendMessage(ILjava/lang/Object;I)V
    invoke-static {v1, v2, v0, p4}, Landroid/app/ActivityThread;->access$400(Landroid/app/ActivityThread;ILjava/lang/Object;I)V

    return-void

    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public final scheduleResumeActivity(Landroid/os/IBinder;Z)V
    .locals 3
    .parameter "token"
    .parameter "isForward"

    .prologue
    iget-object v0, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    const/16 v1, 0x6b

    if-eqz p2, :cond_0

    const/4 v2, 0x1

    :goto_0
    #calls: Landroid/app/ActivityThread;->queueOrSendMessage(ILjava/lang/Object;I)V
    invoke-static {v0, v1, p1, v2}, Landroid/app/ActivityThread;->access$400(Landroid/app/ActivityThread;ILjava/lang/Object;I)V

    return-void

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public final scheduleSendResult(Landroid/os/IBinder;Ljava/util/List;)V
    .locals 3
    .parameter "token"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/IBinder;",
            "Ljava/util/List",
            "<",
            "Landroid/app/ResultInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, results:Ljava/util/List;,"Ljava/util/List<Landroid/app/ResultInfo;>;"
    new-instance v0, Landroid/app/ActivityThread$ResultData;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/app/ActivityThread$ResultData;-><init>(Landroid/app/ActivityThread$1;)V

    .local v0, res:Landroid/app/ActivityThread$ResultData;
    iput-object p1, v0, Landroid/app/ActivityThread$ResultData;->token:Landroid/os/IBinder;

    iput-object p2, v0, Landroid/app/ActivityThread$ResultData;->results:Ljava/util/List;

    iget-object v1, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    const/16 v2, 0x6c

    #calls: Landroid/app/ActivityThread;->queueOrSendMessage(ILjava/lang/Object;)V
    invoke-static {v1, v2, v0}, Landroid/app/ActivityThread;->access$300(Landroid/app/ActivityThread;ILjava/lang/Object;)V

    return-void
.end method

.method public final scheduleServiceArgs(Landroid/os/IBinder;IILandroid/content/Intent;)V
    .locals 3
    .parameter "token"
    .parameter "startId"
    .parameter "flags"
    .parameter "args"

    .prologue
    new-instance v0, Landroid/app/ActivityThread$ServiceArgsData;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/app/ActivityThread$ServiceArgsData;-><init>(Landroid/app/ActivityThread$1;)V

    .local v0, s:Landroid/app/ActivityThread$ServiceArgsData;
    iput-object p1, v0, Landroid/app/ActivityThread$ServiceArgsData;->token:Landroid/os/IBinder;

    iput p2, v0, Landroid/app/ActivityThread$ServiceArgsData;->startId:I

    iput p3, v0, Landroid/app/ActivityThread$ServiceArgsData;->flags:I

    iput-object p4, v0, Landroid/app/ActivityThread$ServiceArgsData;->args:Landroid/content/Intent;

    iget-object v1, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    const/16 v2, 0x73

    #calls: Landroid/app/ActivityThread;->queueOrSendMessage(ILjava/lang/Object;)V
    invoke-static {v1, v2, v0}, Landroid/app/ActivityThread;->access$300(Landroid/app/ActivityThread;ILjava/lang/Object;)V

    return-void
.end method

.method public final scheduleStopActivity(Landroid/os/IBinder;ZI)V
    .locals 3
    .parameter "token"
    .parameter "showWindow"
    .parameter "configChanges"

    .prologue
    iget-object v0, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    if-eqz p2, :cond_0

    const/16 v1, 0x67

    :goto_0
    const/4 v2, 0x0

    #calls: Landroid/app/ActivityThread;->queueOrSendMessage(ILjava/lang/Object;II)V
    invoke-static {v0, v1, p1, v2, p3}, Landroid/app/ActivityThread;->access$200(Landroid/app/ActivityThread;ILjava/lang/Object;II)V

    return-void

    :cond_0
    const/16 v1, 0x68

    goto :goto_0
.end method

.method public final scheduleStopService(Landroid/os/IBinder;)V
    .locals 2
    .parameter "token"

    .prologue
    iget-object v0, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    const/16 v1, 0x74

    #calls: Landroid/app/ActivityThread;->queueOrSendMessage(ILjava/lang/Object;)V
    invoke-static {v0, v1, p1}, Landroid/app/ActivityThread;->access$300(Landroid/app/ActivityThread;ILjava/lang/Object;)V

    return-void
.end method

.method public final scheduleSuicide()V
    .locals 3

    .prologue
    iget-object v0, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    const/16 v1, 0x82

    const/4 v2, 0x0

    #calls: Landroid/app/ActivityThread;->queueOrSendMessage(ILjava/lang/Object;)V
    invoke-static {v0, v1, v2}, Landroid/app/ActivityThread;->access$300(Landroid/app/ActivityThread;ILjava/lang/Object;)V

    return-void
.end method

.method public final scheduleUnbindService(Landroid/os/IBinder;Landroid/content/Intent;)V
    .locals 3
    .parameter "token"
    .parameter "intent"

    .prologue
    new-instance v0, Landroid/app/ActivityThread$BindServiceData;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/app/ActivityThread$BindServiceData;-><init>(Landroid/app/ActivityThread$1;)V

    .local v0, s:Landroid/app/ActivityThread$BindServiceData;
    iput-object p1, v0, Landroid/app/ActivityThread$BindServiceData;->token:Landroid/os/IBinder;

    iput-object p2, v0, Landroid/app/ActivityThread$BindServiceData;->intent:Landroid/content/Intent;

    iget-object v1, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    const/16 v2, 0x7a

    #calls: Landroid/app/ActivityThread;->queueOrSendMessage(ILjava/lang/Object;)V
    invoke-static {v1, v2, v0}, Landroid/app/ActivityThread;->access$300(Landroid/app/ActivityThread;ILjava/lang/Object;)V

    return-void
.end method

.method public final scheduleWindowVisibility(Landroid/os/IBinder;Z)V
    .locals 2
    .parameter "token"
    .parameter "showWindow"

    .prologue
    iget-object v0, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    if-eqz p2, :cond_0

    const/16 v1, 0x69

    :goto_0
    #calls: Landroid/app/ActivityThread;->queueOrSendMessage(ILjava/lang/Object;)V
    invoke-static {v0, v1, p1}, Landroid/app/ActivityThread;->access$300(Landroid/app/ActivityThread;ILjava/lang/Object;)V

    return-void

    :cond_0
    const/16 v1, 0x6a

    goto :goto_0
.end method

.method public setSchedulingGroup(I)V
    .locals 4
    .parameter "group"

    .prologue
    :try_start_0
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    invoke-static {v1, p1}, Landroid/os/Process;->setProcessGroup(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v1

    move-object v0, v1

    .local v0, e:Ljava/lang/Exception;
    const-string v1, "ActivityThread"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed setting process group to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public updateTimeZone()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/util/TimeZone;->setDefault(Ljava/util/TimeZone;)V

    return-void
.end method
