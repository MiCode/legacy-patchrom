.class public Landroid/media/AudioService$VolumeStreamState;
.super Ljava/lang/Object;
.source "AudioService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/AudioService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "VolumeStreamState"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/AudioService$VolumeStreamState$VolumeDeathHandler;
    }
.end annotation


# instance fields
.field private mDeathHandlers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/media/AudioService$VolumeStreamState$VolumeDeathHandler;",
            ">;"
        }
    .end annotation
.end field

.field private mIndex:I

.field private mIndexMax:I

.field private mLastAudibleIndex:I

.field private mLastAudibleVolumeIndexSettingName:Ljava/lang/String;

.field private final mStreamType:I

.field private mVolumeIndexSettingName:Ljava/lang/String;

.field final synthetic this$0:Landroid/media/AudioService;


# direct methods
.method private constructor <init>(Landroid/media/AudioService;Ljava/lang/String;I)V
    .locals 3
    .parameter
    .parameter "settingName"
    .parameter "streamType"

    .prologue
    iput-object p1, p0, Landroid/media/AudioService$VolumeStreamState;->this$0:Landroid/media/AudioService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0, p2}, Landroid/media/AudioService$VolumeStreamState;->setVolumeIndexSettingName(Ljava/lang/String;)V

    iput p3, p0, Landroid/media/AudioService$VolumeStreamState;->mStreamType:I

    #getter for: Landroid/media/AudioService;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {p1}, Landroid/media/AudioService;->access$1700(Landroid/media/AudioService;)Landroid/content/ContentResolver;

    move-result-object v0

    .local v0, cr:Landroid/content/ContentResolver;
    #getter for: Landroid/media/AudioService;->MAX_STREAM_VOLUME:[I
    invoke-static {p1}, Landroid/media/AudioService;->access$1800(Landroid/media/AudioService;)[I

    move-result-object v1

    aget v1, v1, p3

    iput v1, p0, Landroid/media/AudioService$VolumeStreamState;->mIndexMax:I

    iget-object v1, p0, Landroid/media/AudioService$VolumeStreamState;->mVolumeIndexSettingName:Ljava/lang/String;

    sget-object v2, Landroid/media/AudioManager;->DEFAULT_STREAM_VOLUME:[I

    aget v2, v2, p3

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Landroid/media/AudioService$VolumeStreamState;->mIndex:I

    iget-object v1, p0, Landroid/media/AudioService$VolumeStreamState;->mLastAudibleVolumeIndexSettingName:Ljava/lang/String;

    iget v2, p0, Landroid/media/AudioService$VolumeStreamState;->mIndex:I

    if-lez v2, :cond_0

    iget v2, p0, Landroid/media/AudioService$VolumeStreamState;->mIndex:I

    :goto_0
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Landroid/media/AudioService$VolumeStreamState;->mLastAudibleIndex:I

    const/4 v1, 0x0

    iget v2, p0, Landroid/media/AudioService$VolumeStreamState;->mIndexMax:I

    invoke-static {p3, v1, v2}, Landroid/media/AudioSystem;->initStreamVolume(III)I

    iget v1, p0, Landroid/media/AudioService$VolumeStreamState;->mIndexMax:I

    mul-int/lit8 v1, v1, 0xa

    iput v1, p0, Landroid/media/AudioService$VolumeStreamState;->mIndexMax:I

    iget v1, p0, Landroid/media/AudioService$VolumeStreamState;->mIndex:I

    mul-int/lit8 v1, v1, 0xa

    invoke-direct {p0, v1}, Landroid/media/AudioService$VolumeStreamState;->getValidIndex(I)I

    move-result v1

    iput v1, p0, Landroid/media/AudioService$VolumeStreamState;->mIndex:I

    iget v1, p0, Landroid/media/AudioService$VolumeStreamState;->mLastAudibleIndex:I

    mul-int/lit8 v1, v1, 0xa

    invoke-direct {p0, v1}, Landroid/media/AudioService$VolumeStreamState;->getValidIndex(I)I

    move-result v1

    iput v1, p0, Landroid/media/AudioService$VolumeStreamState;->mLastAudibleIndex:I

    iget v1, p0, Landroid/media/AudioService$VolumeStreamState;->mIndex:I

    #calls: Landroid/media/AudioService;->setStreamVolumeIndex(II)V
    invoke-static {p1, p3, v1}, Landroid/media/AudioService;->access$1900(Landroid/media/AudioService;II)V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroid/media/AudioService$VolumeStreamState;->mDeathHandlers:Ljava/util/ArrayList;

    return-void

    :cond_0
    sget-object v2, Landroid/media/AudioManager;->DEFAULT_STREAM_VOLUME:[I

    aget v2, v2, p3

    goto :goto_0
.end method

.method synthetic constructor <init>(Landroid/media/AudioService;Ljava/lang/String;ILandroid/media/AudioService$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    invoke-direct {p0, p1, p2, p3}, Landroid/media/AudioService$VolumeStreamState;-><init>(Landroid/media/AudioService;Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$1200(Landroid/media/AudioService$VolumeStreamState;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Landroid/media/AudioService$VolumeStreamState;->mDeathHandlers:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$2300(Landroid/media/AudioService$VolumeStreamState;)I
    .locals 1
    .parameter "x0"

    .prologue
    iget v0, p0, Landroid/media/AudioService$VolumeStreamState;->mStreamType:I

    return v0
.end method

.method static synthetic access$2700(Landroid/media/AudioService$VolumeStreamState;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Landroid/media/AudioService$VolumeStreamState;->mVolumeIndexSettingName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2800(Landroid/media/AudioService$VolumeStreamState;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Landroid/media/AudioService$VolumeStreamState;->mLastAudibleVolumeIndexSettingName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$4000(Landroid/media/AudioService$VolumeStreamState;)I
    .locals 1
    .parameter "x0"

    .prologue
    iget v0, p0, Landroid/media/AudioService$VolumeStreamState;->mIndexMax:I

    return v0
.end method

.method static synthetic access$600(Landroid/media/AudioService$VolumeStreamState;)I
    .locals 1
    .parameter "x0"

    .prologue
    iget v0, p0, Landroid/media/AudioService$VolumeStreamState;->mIndex:I

    return v0
.end method

.method static synthetic access$602(Landroid/media/AudioService$VolumeStreamState;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    iput p1, p0, Landroid/media/AudioService$VolumeStreamState;->mIndex:I

    return p1
.end method

.method static synthetic access$700(Landroid/media/AudioService$VolumeStreamState;I)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-direct {p0, p1}, Landroid/media/AudioService$VolumeStreamState;->getValidIndex(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$800(Landroid/media/AudioService$VolumeStreamState;)I
    .locals 1
    .parameter "x0"

    .prologue
    iget v0, p0, Landroid/media/AudioService$VolumeStreamState;->mLastAudibleIndex:I

    return v0
.end method

.method static synthetic access$802(Landroid/media/AudioService$VolumeStreamState;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    iput p1, p0, Landroid/media/AudioService$VolumeStreamState;->mLastAudibleIndex:I

    return p1
.end method

.method static synthetic access$900(Landroid/media/AudioService$VolumeStreamState;)I
    .locals 1
    .parameter "x0"

    .prologue
    invoke-direct {p0}, Landroid/media/AudioService$VolumeStreamState;->muteCount()I

    move-result v0

    return v0
.end method

.method private getDeathHandler(Landroid/os/IBinder;Z)Landroid/media/AudioService$VolumeStreamState$VolumeDeathHandler;
    .locals 7
    .parameter "cb"
    .parameter "state"

    .prologue
    iget-object v4, p0, Landroid/media/AudioService$VolumeStreamState;->mDeathHandlers:Ljava/util/ArrayList;

    monitor-enter v4

    :try_start_0
    iget-object v5, p0, Landroid/media/AudioService$VolumeStreamState;->mDeathHandlers:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v3

    .local v3, size:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v3, :cond_1

    iget-object v5, p0, Landroid/media/AudioService$VolumeStreamState;->mDeathHandlers:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioService$VolumeStreamState$VolumeDeathHandler;

    .local v0, handler:Landroid/media/AudioService$VolumeStreamState$VolumeDeathHandler;
    #getter for: Landroid/media/AudioService$VolumeStreamState$VolumeDeathHandler;->mICallback:Landroid/os/IBinder;
    invoke-static {v0}, Landroid/media/AudioService$VolumeStreamState$VolumeDeathHandler;->access$2500(Landroid/media/AudioService$VolumeStreamState$VolumeDeathHandler;)Landroid/os/IBinder;

    move-result-object v5

    if-ne p1, v5, :cond_0

    monitor-exit v4

    move-object v1, v0

    .end local v0           #handler:Landroid/media/AudioService$VolumeStreamState$VolumeDeathHandler;
    .local v1, handler:Landroid/media/AudioService$VolumeStreamState$VolumeDeathHandler;
    :goto_1
    return-object v1

    .end local v1           #handler:Landroid/media/AudioService$VolumeStreamState$VolumeDeathHandler;
    .restart local v0       #handler:Landroid/media/AudioService$VolumeStreamState$VolumeDeathHandler;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .end local v0           #handler:Landroid/media/AudioService$VolumeStreamState$VolumeDeathHandler;
    :cond_1
    if-eqz p2, :cond_2

    new-instance v0, Landroid/media/AudioService$VolumeStreamState$VolumeDeathHandler;

    invoke-direct {v0, p0, p1}, Landroid/media/AudioService$VolumeStreamState$VolumeDeathHandler;-><init>(Landroid/media/AudioService$VolumeStreamState;Landroid/os/IBinder;)V

    .restart local v0       #handler:Landroid/media/AudioService$VolumeStreamState$VolumeDeathHandler;
    :goto_2
    monitor-exit v4

    move-object v1, v0

    .end local v0           #handler:Landroid/media/AudioService$VolumeStreamState$VolumeDeathHandler;
    .restart local v1       #handler:Landroid/media/AudioService$VolumeStreamState$VolumeDeathHandler;
    goto :goto_1

    .end local v1           #handler:Landroid/media/AudioService$VolumeStreamState$VolumeDeathHandler;
    :cond_2
    const-string v5, "AudioService"

    const-string v6, "stream was not muted by this client"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .restart local v0       #handler:Landroid/media/AudioService$VolumeStreamState$VolumeDeathHandler;
    goto :goto_2

    .end local v0           #handler:Landroid/media/AudioService$VolumeStreamState$VolumeDeathHandler;
    .end local v2           #i:I
    .end local v3           #size:I
    :catchall_0
    move-exception v5

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5
.end method

.method private getValidIndex(I)I
    .locals 1
    .parameter "index"

    .prologue
    if-gez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Landroid/media/AudioService$VolumeStreamState;->mIndexMax:I

    if-le p1, v0, :cond_1

    iget v0, p0, Landroid/media/AudioService$VolumeStreamState;->mIndexMax:I

    goto :goto_0

    :cond_1
    move v0, p1

    goto :goto_0
.end method

.method private muteCount()I
    .locals 4

    .prologue
    const/4 v0, 0x0

    .local v0, count:I
    iget-object v3, p0, Landroid/media/AudioService$VolumeStreamState;->mDeathHandlers:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .local v2, size:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v2, :cond_0

    iget-object v3, p0, Landroid/media/AudioService$VolumeStreamState;->mDeathHandlers:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/AudioService$VolumeStreamState$VolumeDeathHandler;

    #getter for: Landroid/media/AudioService$VolumeStreamState$VolumeDeathHandler;->mMuteCount:I
    invoke-static {v3}, Landroid/media/AudioService$VolumeStreamState$VolumeDeathHandler;->access$1300(Landroid/media/AudioService$VolumeStreamState$VolumeDeathHandler;)I

    move-result v3

    add-int/2addr v0, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return v0
.end method


# virtual methods
.method public adjustIndex(I)Z
    .locals 2
    .parameter "deltaIndex"

    .prologue
    iget v0, p0, Landroid/media/AudioService$VolumeStreamState;->mIndex:I

    mul-int/lit8 v1, p1, 0xa

    add-int/2addr v0, v1

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Landroid/media/AudioService$VolumeStreamState;->setIndex(IZ)Z

    move-result v0

    return v0
.end method

.method public adjustLastAudibleIndex(I)V
    .locals 2
    .parameter "deltaIndex"

    .prologue
    iget v0, p0, Landroid/media/AudioService$VolumeStreamState;->mLastAudibleIndex:I

    mul-int/lit8 v1, p1, 0xa

    add-int/2addr v0, v1

    invoke-virtual {p0, v0}, Landroid/media/AudioService$VolumeStreamState;->setLastAudibleIndex(I)V

    return-void
.end method

.method public getMaxIndex()I
    .locals 1

    .prologue
    iget v0, p0, Landroid/media/AudioService$VolumeStreamState;->mIndexMax:I

    return v0
.end method

.method public mute(Landroid/os/IBinder;Z)V
    .locals 4
    .parameter "cb"
    .parameter "state"

    .prologue
    invoke-direct {p0, p1, p2}, Landroid/media/AudioService$VolumeStreamState;->getDeathHandler(Landroid/os/IBinder;Z)Landroid/media/AudioService$VolumeStreamState$VolumeDeathHandler;

    move-result-object v0

    .local v0, handler:Landroid/media/AudioService$VolumeStreamState$VolumeDeathHandler;
    if-nez v0, :cond_0

    const-string v1, "AudioService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not get client death handler for stream: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/media/AudioService$VolumeStreamState;->mStreamType:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    invoke-virtual {v0, p2}, Landroid/media/AudioService$VolumeStreamState$VolumeDeathHandler;->mute(Z)V

    goto :goto_0
.end method

.method public setIndex(IZ)Z
    .locals 9
    .parameter "index"
    .parameter "lastAudible"

    .prologue
    const/4 v8, 0x1

    iget v1, p0, Landroid/media/AudioService$VolumeStreamState;->mIndex:I

    .local v1, oldIndex:I
    invoke-direct {p0, p1}, Landroid/media/AudioService$VolumeStreamState;->getValidIndex(I)I

    move-result v4

    iput v4, p0, Landroid/media/AudioService$VolumeStreamState;->mIndex:I

    invoke-static {}, Landroid/media/AudioSystem;->getNumStreamTypes()I

    move-result v0

    .local v0, numStreamTypes:I
    const/4 v3, 0x0

    .local v3, updatedAliasStreams:I
    sub-int v2, v0, v8

    .local v2, streamType:I
    :goto_0
    if-ltz v2, :cond_1

    iget v4, p0, Landroid/media/AudioService$VolumeStreamState;->mStreamType:I

    if-eq v2, v4, :cond_0

    iget-object v4, p0, Landroid/media/AudioService$VolumeStreamState;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->STREAM_VOLUME_ALIAS:[I
    invoke-static {v4}, Landroid/media/AudioService;->access$2000(Landroid/media/AudioService;)[I

    move-result-object v4

    aget v4, v4, v2

    iget v5, p0, Landroid/media/AudioService$VolumeStreamState;->mStreamType:I

    if-ne v4, v5, :cond_0

    iget-object v4, p0, Landroid/media/AudioService$VolumeStreamState;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;
    invoke-static {v4}, Landroid/media/AudioService;->access$2200(Landroid/media/AudioService;)[Landroid/media/AudioService$VolumeStreamState;

    move-result-object v4

    aget-object v4, v4, v2

    iget-object v5, p0, Landroid/media/AudioService$VolumeStreamState;->this$0:Landroid/media/AudioService;

    iget v6, p0, Landroid/media/AudioService$VolumeStreamState;->mIndex:I

    iget v7, p0, Landroid/media/AudioService$VolumeStreamState;->mStreamType:I

    #calls: Landroid/media/AudioService;->rescaleIndex(III)I
    invoke-static {v5, v6, v7, v2}, Landroid/media/AudioService;->access$2100(Landroid/media/AudioService;III)I

    move-result v5

    invoke-virtual {v4, v5, p2}, Landroid/media/AudioService$VolumeStreamState;->setIndex(IZ)Z

    move-result v4

    if-eqz v4, :cond_0

    add-int/lit8 v3, v3, 0x1

    :cond_0
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_1
    iget v4, p0, Landroid/media/AudioService$VolumeStreamState;->mIndex:I

    if-eq v1, v4, :cond_3

    if-eqz p2, :cond_2

    iget v4, p0, Landroid/media/AudioService$VolumeStreamState;->mIndex:I

    iput v4, p0, Landroid/media/AudioService$VolumeStreamState;->mLastAudibleIndex:I

    :cond_2
    move v4, v8

    :goto_1
    return v4

    :cond_3
    if-eqz v3, :cond_4

    move v4, v8

    goto :goto_1

    :cond_4
    const/4 v4, 0x0

    goto :goto_1
.end method

.method public setLastAudibleIndex(I)V
    .locals 1
    .parameter "index"

    .prologue
    invoke-direct {p0, p1}, Landroid/media/AudioService$VolumeStreamState;->getValidIndex(I)I

    move-result v0

    iput v0, p0, Landroid/media/AudioService$VolumeStreamState;->mLastAudibleIndex:I

    return-void
.end method

.method public setVolumeIndexSettingName(Ljava/lang/String;)V
    .locals 2
    .parameter "settingName"

    .prologue
    iput-object p1, p0, Landroid/media/AudioService$VolumeStreamState;->mVolumeIndexSettingName:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_last_audible"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/media/AudioService$VolumeStreamState;->mLastAudibleVolumeIndexSettingName:Ljava/lang/String;

    return-void
.end method
