.class Landroid/media/AudioService$AudioHandler;
.super Landroid/os/Handler;
.source "AudioService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/AudioService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AudioHandler"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/media/AudioService;


# direct methods
.method private constructor <init>(Landroid/media/AudioService;)V
    .locals 0
    .parameter

    .prologue
    iput-object p1, p0, Landroid/media/AudioService$AudioHandler;->this$0:Landroid/media/AudioService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/media/AudioService;Landroid/media/AudioService$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-direct {p0, p1}, Landroid/media/AudioService$AudioHandler;-><init>(Landroid/media/AudioService;)V

    return-void
.end method

.method static synthetic access$3400(Landroid/media/AudioService$AudioHandler;Landroid/media/MediaPlayer;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-direct {p0, p1}, Landroid/media/AudioService$AudioHandler;->cleanupPlayer(Landroid/media/MediaPlayer;)V

    return-void
.end method

.method private cleanupPlayer(Landroid/media/MediaPlayer;)V
    .locals 4
    .parameter "mp"

    .prologue
    if-eqz p1, :cond_0

    :try_start_0
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->stop()V

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->release()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v1

    move-object v0, v1

    .local v0, ex:Ljava/lang/IllegalStateException;
    const-string v1, "AudioService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MediaPlayer IllegalStateException: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private persistRingerMode()V
    .locals 3

    .prologue
    iget-object v0, p0, Landroid/media/AudioService$AudioHandler;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {v0}, Landroid/media/AudioService;->access$1700(Landroid/media/AudioService;)Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "mode_ringer"

    iget-object v2, p0, Landroid/media/AudioService$AudioHandler;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mRingerMode:I
    invoke-static {v2}, Landroid/media/AudioService;->access$2400(Landroid/media/AudioService;)I

    move-result v2

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method

.method private persistVibrateSetting()V
    .locals 3

    .prologue
    iget-object v0, p0, Landroid/media/AudioService$AudioHandler;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {v0}, Landroid/media/AudioService;->access$1700(Landroid/media/AudioService;)Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "vibrate_on"

    iget-object v2, p0, Landroid/media/AudioService$AudioHandler;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mVibrateSetting:I
    invoke-static {v2}, Landroid/media/AudioService;->access$2900(Landroid/media/AudioService;)I

    move-result v2

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method

.method private persistVolume(Landroid/media/AudioService$VolumeStreamState;ZZ)V
    .locals 3
    .parameter "streamState"
    .parameter "current"
    .parameter "lastAudible"

    .prologue
    #getter for: Landroid/media/AudioService$VolumeStreamState;->mStreamType:I
    invoke-static {p1}, Landroid/media/AudioService$VolumeStreamState;->access$2300(Landroid/media/AudioService$VolumeStreamState;)I

    move-result v0

    iget-object v1, p0, Landroid/media/AudioService$AudioHandler;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->STREAM_VOLUME_ALIAS:[I
    invoke-static {v1}, Landroid/media/AudioService;->access$2000(Landroid/media/AudioService;)[I

    move-result-object v1

    #getter for: Landroid/media/AudioService$VolumeStreamState;->mStreamType:I
    invoke-static {p1}, Landroid/media/AudioService$VolumeStreamState;->access$2300(Landroid/media/AudioService$VolumeStreamState;)I

    move-result v2

    aget v1, v1, v2

    if-eq v0, v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-eqz p2, :cond_2

    iget-object v0, p0, Landroid/media/AudioService$AudioHandler;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {v0}, Landroid/media/AudioService;->access$1700(Landroid/media/AudioService;)Landroid/content/ContentResolver;

    move-result-object v0

    #getter for: Landroid/media/AudioService$VolumeStreamState;->mVolumeIndexSettingName:Ljava/lang/String;
    invoke-static {p1}, Landroid/media/AudioService$VolumeStreamState;->access$2700(Landroid/media/AudioService$VolumeStreamState;)Ljava/lang/String;

    move-result-object v1

    #getter for: Landroid/media/AudioService$VolumeStreamState;->mIndex:I
    invoke-static {p1}, Landroid/media/AudioService$VolumeStreamState;->access$600(Landroid/media/AudioService$VolumeStreamState;)I

    move-result v2

    add-int/lit8 v2, v2, 0x5

    div-int/lit8 v2, v2, 0xa

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_2
    if-eqz p3, :cond_0

    iget-object v0, p0, Landroid/media/AudioService$AudioHandler;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {v0}, Landroid/media/AudioService;->access$1700(Landroid/media/AudioService;)Landroid/content/ContentResolver;

    move-result-object v0

    #getter for: Landroid/media/AudioService$VolumeStreamState;->mLastAudibleVolumeIndexSettingName:Ljava/lang/String;
    invoke-static {p1}, Landroid/media/AudioService$VolumeStreamState;->access$2800(Landroid/media/AudioService$VolumeStreamState;)Ljava/lang/String;

    move-result-object v1

    #getter for: Landroid/media/AudioService$VolumeStreamState;->mLastAudibleIndex:I
    invoke-static {p1}, Landroid/media/AudioService$VolumeStreamState;->access$800(Landroid/media/AudioService$VolumeStreamState;)I

    move-result v2

    add-int/lit8 v2, v2, 0x5

    div-int/lit8 v2, v2, 0xa

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0
.end method

.method private playSoundEffect(II)V
    .locals 15
    .parameter "effectType"
    .parameter "volume"

    .prologue
    iget-object v1, p0, Landroid/media/AudioService$AudioHandler;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mSoundEffectsLock:Ljava/lang/Object;
    invoke-static {v1}, Landroid/media/AudioService;->access$3000(Landroid/media/AudioService;)Ljava/lang/Object;

    move-result-object v14

    monitor-enter v14

    :try_start_0
    iget-object v1, p0, Landroid/media/AudioService$AudioHandler;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mSoundPool:Landroid/media/SoundPool;
    invoke-static {v1}, Landroid/media/AudioService;->access$3100(Landroid/media/AudioService;)Landroid/media/SoundPool;

    move-result-object v1

    if-nez v1, :cond_0

    monitor-exit v14

    :goto_0
    return-void

    :cond_0
    if-gez p2, :cond_2

    const-wide/high16 v1, 0x4049

    iget-object v3, p0, Landroid/media/AudioService$AudioHandler;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->MAX_STREAM_VOLUME:[I
    invoke-static {v3}, Landroid/media/AudioService;->access$1800(Landroid/media/AudioService;)[I

    move-result-object v3

    const/4 v4, 0x3

    aget v3, v3, v4

    int-to-double v3, v3

    div-double/2addr v1, v3

    double-to-float v8, v1

    .local v8, dBPerStep:F
    iget-object v1, p0, Landroid/media/AudioService$AudioHandler;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;
    invoke-static {v1}, Landroid/media/AudioService;->access$2200(Landroid/media/AudioService;)[Landroid/media/AudioService$VolumeStreamState;

    move-result-object v1

    const/4 v2, 0x3

    aget-object v1, v1, v2

    #getter for: Landroid/media/AudioService$VolumeStreamState;->mIndex:I
    invoke-static {v1}, Landroid/media/AudioService$VolumeStreamState;->access$600(Landroid/media/AudioService$VolumeStreamState;)I

    move-result v1

    add-int/lit8 v1, v1, 0x5

    div-int/lit8 v12, v1, 0xa

    .local v12, musicVolIndex:I
    iget-object v1, p0, Landroid/media/AudioService$AudioHandler;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->MAX_STREAM_VOLUME:[I
    invoke-static {v1}, Landroid/media/AudioService;->access$1800(Landroid/media/AudioService;)[I

    move-result-object v1

    const/4 v2, 0x3

    aget v1, v1, v2

    sub-int v1, v12, v1

    int-to-float v1, v1

    mul-float v13, v8, v1

    .local v13, musicVoldB:F
    const-wide/high16 v1, 0x4024

    const/high16 v3, 0x4040

    sub-float v3, v13, v3

    const/high16 v4, 0x41a0

    div-float/2addr v3, v4

    float-to-double v3, v3

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v1

    double-to-float v3, v1

    .end local v8           #dBPerStep:F
    .end local v12           #musicVolIndex:I
    .end local v13           #musicVoldB:F
    .local v3, volFloat:F
    :goto_1
    iget-object v1, p0, Landroid/media/AudioService$AudioHandler;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->SOUND_EFFECT_FILES_MAP:[[I
    invoke-static {v1}, Landroid/media/AudioService;->access$3200(Landroid/media/AudioService;)[[I

    move-result-object v1

    aget-object v1, v1, p1

    const/4 v2, 0x1

    aget v1, v1, v2

    if-lez v1, :cond_3

    iget-object v1, p0, Landroid/media/AudioService$AudioHandler;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mSoundPool:Landroid/media/SoundPool;
    invoke-static {v1}, Landroid/media/AudioService;->access$3100(Landroid/media/AudioService;)Landroid/media/SoundPool;

    move-result-object v1

    iget-object v2, p0, Landroid/media/AudioService$AudioHandler;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->SOUND_EFFECT_FILES_MAP:[[I
    invoke-static {v2}, Landroid/media/AudioService;->access$3200(Landroid/media/AudioService;)[[I

    move-result-object v2

    aget-object v2, v2, p1

    const/4 v4, 0x1

    aget v2, v2, v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/high16 v7, 0x3f80

    move v4, v3

    invoke-virtual/range {v1 .. v7}, Landroid/media/SoundPool;->play(IFFIIF)I

    .end local v3           #volFloat:F
    :cond_1
    :goto_2
    monitor-exit v14

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v14
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_2
    move/from16 v0, p2

    int-to-float v0, v0

    move v1, v0

    const/high16 v2, 0x447a

    div-float v3, v1, v2

    .restart local v3       #volFloat:F
    goto :goto_1

    :cond_3
    :try_start_1
    new-instance v11, Landroid/media/MediaPlayer;

    invoke-direct {v11}, Landroid/media/MediaPlayer;-><init>()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .local v11, mediaPlayer:Landroid/media/MediaPlayer;
    if-eqz v11, :cond_1

    :try_start_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/media/audio/ui/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/media/AudioService;->access$3300()[Ljava/lang/String;

    move-result-object v2

    iget-object v4, p0, Landroid/media/AudioService$AudioHandler;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->SOUND_EFFECT_FILES_MAP:[[I
    invoke-static {v4}, Landroid/media/AudioService;->access$3200(Landroid/media/AudioService;)[[I

    move-result-object v4

    aget-object v4, v4, p1

    const/4 v5, 0x0

    aget v4, v4, v5

    aget-object v2, v2, v4

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .local v10, filePath:Ljava/lang/String;
    invoke-virtual {v11, v10}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V

    const/4 v1, 0x1

    invoke-virtual {v11, v1}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    invoke-virtual {v11}, Landroid/media/MediaPlayer;->prepare()V

    invoke-virtual {v11, v3, v3}, Landroid/media/MediaPlayer;->setVolume(FF)V

    new-instance v1, Landroid/media/AudioService$AudioHandler$1;

    invoke-direct {v1, p0}, Landroid/media/AudioService$AudioHandler$1;-><init>(Landroid/media/AudioService$AudioHandler;)V

    invoke-virtual {v11, v1}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    new-instance v1, Landroid/media/AudioService$AudioHandler$2;

    invoke-direct {v1, p0}, Landroid/media/AudioService$AudioHandler$2;-><init>(Landroid/media/AudioService$AudioHandler;)V

    invoke-virtual {v11, v1}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    invoke-virtual {v11}, Landroid/media/MediaPlayer;->start()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    .end local v10           #filePath:Ljava/lang/String;
    :catch_0
    move-exception v1

    move-object v9, v1

    .local v9, ex:Ljava/io/IOException;
    :try_start_3
    const-string v1, "AudioService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MediaPlayer IOException: "

    .end local v3           #volFloat:F
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .end local v9           #ex:Ljava/io/IOException;
    .restart local v3       #volFloat:F
    :catch_1
    move-exception v1

    move-object v9, v1

    .local v9, ex:Ljava/lang/IllegalArgumentException;
    const-string v1, "AudioService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MediaPlayer IllegalArgumentException: "

    .end local v3           #volFloat:F
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .end local v9           #ex:Ljava/lang/IllegalArgumentException;
    .restart local v3       #volFloat:F
    :catch_2
    move-exception v1

    move-object v9, v1

    .local v9, ex:Ljava/lang/IllegalStateException;
    const-string v1, "AudioService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MediaPlayer IllegalStateException: "

    .end local v3           #volFloat:F
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_2
.end method

.method private setSystemVolume(Landroid/media/AudioService$VolumeStreamState;)V
    .locals 10
    .parameter "streamState"

    .prologue
    const/4 v1, 0x1

    iget-object v0, p0, Landroid/media/AudioService$AudioHandler;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService$VolumeStreamState;->mStreamType:I
    invoke-static {p1}, Landroid/media/AudioService$VolumeStreamState;->access$2300(Landroid/media/AudioService$VolumeStreamState;)I

    move-result v2

    #getter for: Landroid/media/AudioService$VolumeStreamState;->mIndex:I
    invoke-static {p1}, Landroid/media/AudioService$VolumeStreamState;->access$600(Landroid/media/AudioService$VolumeStreamState;)I

    move-result v3

    #calls: Landroid/media/AudioService;->setStreamVolumeIndex(II)V
    invoke-static {v0, v2, v3}, Landroid/media/AudioService;->access$1900(Landroid/media/AudioService;II)V

    invoke-static {}, Landroid/media/AudioSystem;->getNumStreamTypes()I

    move-result v8

    .local v8, numStreamTypes:I
    sub-int v9, v8, v1

    .local v9, streamType:I
    :goto_0
    if-ltz v9, :cond_1

    #getter for: Landroid/media/AudioService$VolumeStreamState;->mStreamType:I
    invoke-static {p1}, Landroid/media/AudioService$VolumeStreamState;->access$2300(Landroid/media/AudioService$VolumeStreamState;)I

    move-result v0

    if-eq v9, v0, :cond_0

    iget-object v0, p0, Landroid/media/AudioService$AudioHandler;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->STREAM_VOLUME_ALIAS:[I
    invoke-static {v0}, Landroid/media/AudioService;->access$2000(Landroid/media/AudioService;)[I

    move-result-object v0

    aget v0, v0, v9

    #getter for: Landroid/media/AudioService$VolumeStreamState;->mStreamType:I
    invoke-static {p1}, Landroid/media/AudioService$VolumeStreamState;->access$2300(Landroid/media/AudioService$VolumeStreamState;)I

    move-result v2

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Landroid/media/AudioService$AudioHandler;->this$0:Landroid/media/AudioService;

    iget-object v2, p0, Landroid/media/AudioService$AudioHandler;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;
    invoke-static {v2}, Landroid/media/AudioService;->access$2200(Landroid/media/AudioService;)[Landroid/media/AudioService$VolumeStreamState;

    move-result-object v2

    aget-object v2, v2, v9

    #getter for: Landroid/media/AudioService$VolumeStreamState;->mIndex:I
    invoke-static {v2}, Landroid/media/AudioService$VolumeStreamState;->access$600(Landroid/media/AudioService$VolumeStreamState;)I

    move-result v2

    #calls: Landroid/media/AudioService;->setStreamVolumeIndex(II)V
    invoke-static {v0, v9, v2}, Landroid/media/AudioService;->access$1900(Landroid/media/AudioService;II)V

    :cond_0
    add-int/lit8 v9, v9, -0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Landroid/media/AudioService$AudioHandler;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;
    invoke-static {v0}, Landroid/media/AudioService;->access$100(Landroid/media/AudioService;)Landroid/media/AudioService$AudioHandler;

    move-result-object v0

    #getter for: Landroid/media/AudioService$VolumeStreamState;->mStreamType:I
    invoke-static {p1}, Landroid/media/AudioService$VolumeStreamState;->access$2300(Landroid/media/AudioService$VolumeStreamState;)I

    move-result v2

    const/4 v3, 0x0

    const/16 v7, 0xbb8

    move v4, v1

    move v5, v1

    move-object v6, p1

    #calls: Landroid/media/AudioService;->sendMsg(Landroid/os/Handler;IIIIILjava/lang/Object;I)V
    invoke-static/range {v0 .. v7}, Landroid/media/AudioService;->access$200(Landroid/os/Handler;IIIIILjava/lang/Object;I)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 21
    .parameter "msg"

    .prologue
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move v4, v0

    #calls: Landroid/media/AudioService;->getMsgBase(I)I
    invoke-static {v4}, Landroid/media/AudioService;->access$3500(I)I

    move-result v12

    .local v12, baseMsgWhat:I
    packed-switch v12, :pswitch_data_0

    .end local p0
    .end local p1
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .restart local p0
    .restart local p1
    :pswitch_1
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 p1, v0

    .end local p1
    check-cast p1, Landroid/media/AudioService$VolumeStreamState;

    invoke-direct/range {p0 .. p1}, Landroid/media/AudioService$AudioHandler;->setSystemVolume(Landroid/media/AudioService$VolumeStreamState;)V

    goto :goto_0

    .restart local p1
    :pswitch_2
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v4, v0

    check-cast v4, Landroid/media/AudioService$VolumeStreamState;

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move v5, v0

    if-eqz v5, :cond_1

    const/4 v5, 0x1

    :goto_1
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move v6, v0

    if-eqz v6, :cond_2

    const/4 v6, 0x1

    :goto_2
    move-object/from16 v0, p0

    move-object v1, v4

    move v2, v5

    move v3, v6

    invoke-direct {v0, v1, v2, v3}, Landroid/media/AudioService$AudioHandler;->persistVolume(Landroid/media/AudioService$VolumeStreamState;ZZ)V

    goto :goto_0

    :cond_1
    const/4 v5, 0x0

    goto :goto_1

    :cond_2
    const/4 v6, 0x0

    goto :goto_2

    :pswitch_3
    invoke-direct/range {p0 .. p0}, Landroid/media/AudioService$AudioHandler;->persistRingerMode()V

    goto :goto_0

    :pswitch_4
    invoke-direct/range {p0 .. p0}, Landroid/media/AudioService$AudioHandler;->persistVibrateSetting()V

    goto :goto_0

    :pswitch_5
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/AudioService$AudioHandler;->this$0:Landroid/media/AudioService;

    move-object v4, v0

    #getter for: Landroid/media/AudioService;->mMediaServerOk:Z
    invoke-static {v4}, Landroid/media/AudioService;->access$000(Landroid/media/AudioService;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "AudioService"

    const-string v5, "Media server died."

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x3

    invoke-static {v4}, Landroid/media/AudioSystem;->isStreamActive(I)Z

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/AudioService$AudioHandler;->this$0:Landroid/media/AudioService;

    move-object v4, v0

    #getter for: Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;
    invoke-static {v4}, Landroid/media/AudioService;->access$100(Landroid/media/AudioService;)Landroid/media/AudioService$AudioHandler;

    move-result-object v4

    const/4 v5, 0x5

    const/4 v6, -0x1

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/16 v11, 0x1f4

    #calls: Landroid/media/AudioService;->sendMsg(Landroid/os/Handler;IIIIILjava/lang/Object;I)V
    invoke-static/range {v4 .. v11}, Landroid/media/AudioService;->access$200(Landroid/os/Handler;IIIIILjava/lang/Object;I)V

    goto :goto_0

    :pswitch_6
    const-string v4, "AudioService"

    const-string v5, "Media server started."

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v4, "restarting=true"

    invoke-static {v4}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/AudioService$AudioHandler;->this$0:Landroid/media/AudioService;

    move-object v4, v0

    #getter for: Landroid/media/AudioService;->mConnectedDevices:Ljava/util/concurrent/ConcurrentHashMap;
    invoke-static {v4}, Landroid/media/AudioService;->access$3600(Landroid/media/AudioService;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v18

    .local v18, set:Ljava/util/Set;
    invoke-interface/range {v18 .. v18}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v15

    .end local p1
    .local v15, i:Ljava/util/Iterator;
    :goto_3
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/util/Map$Entry;

    .local v14, device:Ljava/util/Map$Entry;
    invoke-interface {v14}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/4 v5, 0x1

    invoke-interface {v14}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    move v0, v4

    move v1, v5

    move-object/from16 v2, p1

    invoke-static {v0, v1, v2}, Landroid/media/AudioSystem;->setDeviceConnectionState(IILjava/lang/String;)I

    goto :goto_3

    .end local v14           #device:Ljava/util/Map$Entry;
    :cond_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "DockState="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/AudioService$AudioHandler;->this$0:Landroid/media/AudioService;

    move-object v5, v0

    #getter for: Landroid/media/AudioService;->mDockState:I
    invoke-static {v5}, Landroid/media/AudioService;->access$3700(Landroid/media/AudioService;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/AudioService$AudioHandler;->this$0:Landroid/media/AudioService;

    move-object v4, v0

    #getter for: Landroid/media/AudioService;->mMode:I
    invoke-static {v4}, Landroid/media/AudioService;->access$1100(Landroid/media/AudioService;)I

    move-result v4

    invoke-static {v4}, Landroid/media/AudioSystem;->setPhoneState(I)I

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/AudioService$AudioHandler;->this$0:Landroid/media/AudioService;

    move-object v5, v0

    #getter for: Landroid/media/AudioService;->mForcedUseForComm:I
    invoke-static {v5}, Landroid/media/AudioService;->access$3800(Landroid/media/AudioService;)I

    move-result v5

    invoke-static {v4, v5}, Landroid/media/AudioSystem;->setForceUse(II)I

    const/4 v4, 0x2

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/AudioService$AudioHandler;->this$0:Landroid/media/AudioService;

    move-object v5, v0

    #getter for: Landroid/media/AudioService;->mForcedUseForComm:I
    invoke-static {v5}, Landroid/media/AudioService;->access$3800(Landroid/media/AudioService;)I

    move-result v5

    invoke-static {v4, v5}, Landroid/media/AudioSystem;->setForceUse(II)I

    const/4 v4, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/AudioService$AudioHandler;->this$0:Landroid/media/AudioService;

    move-object v5, v0

    #getter for: Landroid/media/AudioService;->mForcedUseForMedia:I
    invoke-static {v5}, Landroid/media/AudioService;->access$3900(Landroid/media/AudioService;)I

    move-result v5

    invoke-static {v4, v5}, Landroid/media/AudioSystem;->setForceUse(II)I

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/AudioService$AudioHandler;->this$0:Landroid/media/AudioService;

    move-object v4, v0

    #getter for: Landroid/media/AudioService;->mDockState:I
    invoke-static {v4}, Landroid/media/AudioService;->access$3700(Landroid/media/AudioService;)I

    move-result v4

    packed-switch v4, :pswitch_data_1

    const/4 v13, 0x0

    .local v13, config:I
    :goto_4
    const/4 v4, 0x3

    invoke-static {v4, v13}, Landroid/media/AudioSystem;->setForceUse(II)I

    invoke-static {}, Landroid/media/AudioSystem;->getNumStreamTypes()I

    move-result v17

    .local v17, numStreamTypes:I
    const/4 v4, 0x1

    sub-int v20, v17, v4

    .local v20, streamType:I
    :goto_5
    if-ltz v20, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/AudioService$AudioHandler;->this$0:Landroid/media/AudioService;

    move-object v4, v0

    #getter for: Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;
    invoke-static {v4}, Landroid/media/AudioService;->access$2200(Landroid/media/AudioService;)[Landroid/media/AudioService$VolumeStreamState;

    move-result-object v4

    aget-object v19, v4, v20

    .local v19, streamState:Landroid/media/AudioService$VolumeStreamState;
    const/4 v4, 0x0

    #getter for: Landroid/media/AudioService$VolumeStreamState;->mIndexMax:I
    invoke-static/range {v19 .. v19}, Landroid/media/AudioService$VolumeStreamState;->access$4000(Landroid/media/AudioService$VolumeStreamState;)I

    move-result v5

    add-int/lit8 v5, v5, 0x5

    div-int/lit8 v5, v5, 0xa

    move/from16 v0, v20

    move v1, v4

    move v2, v5

    invoke-static {v0, v1, v2}, Landroid/media/AudioSystem;->initStreamVolume(III)I

    #calls: Landroid/media/AudioService$VolumeStreamState;->muteCount()I
    invoke-static/range {v19 .. v19}, Landroid/media/AudioService$VolumeStreamState;->access$900(Landroid/media/AudioService$VolumeStreamState;)I

    move-result v4

    if-nez v4, :cond_4

    #getter for: Landroid/media/AudioService$VolumeStreamState;->mIndex:I
    invoke-static/range {v19 .. v19}, Landroid/media/AudioService$VolumeStreamState;->access$600(Landroid/media/AudioService$VolumeStreamState;)I

    move-result v16

    .local v16, index:I
    :goto_6
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/AudioService$AudioHandler;->this$0:Landroid/media/AudioService;

    move-object v4, v0

    move-object v0, v4

    move/from16 v1, v20

    move/from16 v2, v16

    #calls: Landroid/media/AudioService;->setStreamVolumeIndex(II)V
    invoke-static {v0, v1, v2}, Landroid/media/AudioService;->access$1900(Landroid/media/AudioService;II)V

    add-int/lit8 v20, v20, -0x1

    goto :goto_5

    .end local v13           #config:I
    .end local v16           #index:I
    .end local v17           #numStreamTypes:I
    .end local v19           #streamState:Landroid/media/AudioService$VolumeStreamState;
    .end local v20           #streamType:I
    :pswitch_7
    const/4 v13, 0x7

    .restart local v13       #config:I
    goto :goto_4

    .end local v13           #config:I
    :pswitch_8
    const/4 v13, 0x6

    .restart local v13       #config:I
    goto :goto_4

    .restart local v17       #numStreamTypes:I
    .restart local v19       #streamState:Landroid/media/AudioService$VolumeStreamState;
    .restart local v20       #streamType:I
    :cond_4
    const/16 v16, 0x0

    .restart local v16       #index:I
    goto :goto_6

    .end local v16           #index:I
    .end local v19           #streamState:Landroid/media/AudioService$VolumeStreamState;
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/AudioService$AudioHandler;->this$0:Landroid/media/AudioService;

    move-object v4, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/AudioService$AudioHandler;->this$0:Landroid/media/AudioService;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/media/AudioService;->getRingerMode()I

    move-result v5

    const/4 v6, 0x0

    #calls: Landroid/media/AudioService;->setRingerModeInt(IZ)V
    invoke-static {v4, v5, v6}, Landroid/media/AudioService;->access$4100(Landroid/media/AudioService;IZ)V

    const-string v4, "restarting=false"

    invoke-static {v4}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    goto/16 :goto_0

    .end local v13           #config:I
    .end local v15           #i:Ljava/util/Iterator;
    .end local v17           #numStreamTypes:I
    .end local v18           #set:Ljava/util/Set;
    .end local v20           #streamType:I
    .restart local p1
    :pswitch_9
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move v4, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move v5, v0

    move-object/from16 v0, p0

    move v1, v4

    move v2, v5

    invoke-direct {v0, v1, v2}, Landroid/media/AudioService$AudioHandler;->playSoundEffect(II)V

    goto/16 :goto_0

    :pswitch_a
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/AudioService$AudioHandler;->this$0:Landroid/media/AudioService;

    move-object v4, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 p0, v0

    .end local p0
    check-cast p0, Ljava/lang/String;

    move-object v0, v4

    move-object/from16 v1, p0

    #calls: Landroid/media/AudioService;->makeA2dpDeviceUnavailableNow(Ljava/lang/String;)V
    invoke-static {v0, v1}, Landroid/media/AudioService;->access$4200(Landroid/media/AudioService;Ljava/lang/String;)V

    goto/16 :goto_0

    .restart local p0
    :pswitch_b
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/AudioService$AudioHandler;->this$0:Landroid/media/AudioService;

    move-object v4, v0

    const/4 v5, 0x0

    const-string v6, "AudioFocus_For_Phone_Ring_And_Calls"

    invoke-virtual {v4, v5, v6}, Landroid/media/AudioService;->abandonAudioFocus(Landroid/media/IAudioFocusDispatcher;Ljava/lang/String;)I

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_9
        :pswitch_a
        :pswitch_b
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_7
        :pswitch_8
        :pswitch_7
        :pswitch_7
    .end packed-switch
.end method
