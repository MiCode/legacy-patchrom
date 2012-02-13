.class Landroid/webkit/HTML5Audio;
.super Landroid/os/Handler;
.source "HTML5Audio.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnBufferingUpdateListener;
.implements Landroid/media/MediaPlayer$OnCompletionListener;
.implements Landroid/media/MediaPlayer$OnErrorListener;
.implements Landroid/media/MediaPlayer$OnPreparedListener;
.implements Landroid/media/MediaPlayer$OnSeekCompleteListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/webkit/HTML5Audio$1;,
        Landroid/webkit/HTML5Audio$TimeupdateTask;
    }
.end annotation


# static fields
.field private static COMPLETE:I = 0x0

.field private static ERROR:I = 0x0

.field private static IDLE:I = 0x0

.field private static INITIALIZED:I = 0x0

.field private static final LOGTAG:Ljava/lang/String; = "HTML5Audio"

.field private static PAUSED:I = 0x0

.field private static PREPARED:I = 0x0

.field private static STARTED:I = 0x0

.field private static STOPPED:I = 0x0

.field private static final TIMEUPDATE:I = 0x64

.field private static final TIMEUPDATE_PERIOD:I = 0xfa


# instance fields
.field private mAskToPlay:Z

.field private mMediaPlayer:Landroid/media/MediaPlayer;

.field private mNativePointer:I

.field private mState:I

.field private mTimer:Ljava/util/Timer;

.field private mUrl:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    sput v0, Landroid/webkit/HTML5Audio;->IDLE:I

    const/4 v0, 0x1

    sput v0, Landroid/webkit/HTML5Audio;->INITIALIZED:I

    const/4 v0, 0x2

    sput v0, Landroid/webkit/HTML5Audio;->PREPARED:I

    const/4 v0, 0x4

    sput v0, Landroid/webkit/HTML5Audio;->STARTED:I

    const/4 v0, 0x5

    sput v0, Landroid/webkit/HTML5Audio;->COMPLETE:I

    const/4 v0, 0x6

    sput v0, Landroid/webkit/HTML5Audio;->PAUSED:I

    const/4 v0, -0x2

    sput v0, Landroid/webkit/HTML5Audio;->STOPPED:I

    const/4 v0, -0x1

    sput v0, Landroid/webkit/HTML5Audio;->ERROR:I

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .parameter "nativePtr"

    .prologue
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    sget v0, Landroid/webkit/HTML5Audio;->IDLE:I

    iput v0, p0, Landroid/webkit/HTML5Audio;->mState:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/webkit/HTML5Audio;->mAskToPlay:Z

    iput p1, p0, Landroid/webkit/HTML5Audio;->mNativePointer:I

    invoke-direct {p0}, Landroid/webkit/HTML5Audio;->resetMediaPlayer()V

    return-void
.end method

.method private getMaxTimeSeekable()F
    .locals 2

    .prologue
    iget-object v0, p0, Landroid/webkit/HTML5Audio;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x447a

    div-float/2addr v0, v1

    return v0
.end method

.method private native nativeOnBuffering(II)V
.end method

.method private native nativeOnEnded(I)V
.end method

.method private native nativeOnPrepared(IIII)V
.end method

.method private native nativeOnTimeupdate(II)V
.end method

.method private pause()V
    .locals 2

    .prologue
    iget v0, p0, Landroid/webkit/HTML5Audio;->mState:I

    sget v1, Landroid/webkit/HTML5Audio;->STARTED:I

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Landroid/webkit/HTML5Audio;->mTimer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/webkit/HTML5Audio;->mTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->purge()I

    :cond_0
    iget-object v0, p0, Landroid/webkit/HTML5Audio;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    sget v0, Landroid/webkit/HTML5Audio;->PAUSED:I

    iput v0, p0, Landroid/webkit/HTML5Audio;->mState:I

    :cond_1
    return-void
.end method

.method private play()V
    .locals 2

    .prologue
    iget v0, p0, Landroid/webkit/HTML5Audio;->mState:I

    sget v1, Landroid/webkit/HTML5Audio;->ERROR:I

    if-eq v0, v1, :cond_0

    iget v0, p0, Landroid/webkit/HTML5Audio;->mState:I

    sget v1, Landroid/webkit/HTML5Audio;->IDLE:I

    if-ne v0, v1, :cond_1

    :cond_0
    iget-object v0, p0, Landroid/webkit/HTML5Audio;->mUrl:Ljava/lang/String;

    if-eqz v0, :cond_1

    invoke-direct {p0}, Landroid/webkit/HTML5Audio;->resetMediaPlayer()V

    iget-object v0, p0, Landroid/webkit/HTML5Audio;->mUrl:Ljava/lang/String;

    invoke-direct {p0, v0}, Landroid/webkit/HTML5Audio;->setDataSource(Ljava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/webkit/HTML5Audio;->mAskToPlay:Z

    :cond_1
    iget v0, p0, Landroid/webkit/HTML5Audio;->mState:I

    sget v1, Landroid/webkit/HTML5Audio;->PREPARED:I

    if-lt v0, v1, :cond_2

    iget-object v0, p0, Landroid/webkit/HTML5Audio;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    sget v0, Landroid/webkit/HTML5Audio;->STARTED:I

    iput v0, p0, Landroid/webkit/HTML5Audio;->mState:I

    :cond_2
    return-void
.end method

.method private resetMediaPlayer()V
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/webkit/HTML5Audio;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-nez v0, :cond_1

    new-instance v0, Landroid/media/MediaPlayer;

    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v0, p0, Landroid/webkit/HTML5Audio;->mMediaPlayer:Landroid/media/MediaPlayer;

    :goto_0
    iget-object v0, p0, Landroid/webkit/HTML5Audio;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p0}, Landroid/media/MediaPlayer;->setOnBufferingUpdateListener(Landroid/media/MediaPlayer$OnBufferingUpdateListener;)V

    iget-object v0, p0, Landroid/webkit/HTML5Audio;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p0}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    iget-object v0, p0, Landroid/webkit/HTML5Audio;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p0}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    iget-object v0, p0, Landroid/webkit/HTML5Audio;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p0}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    iget-object v0, p0, Landroid/webkit/HTML5Audio;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p0}, Landroid/media/MediaPlayer;->setOnSeekCompleteListener(Landroid/media/MediaPlayer$OnSeekCompleteListener;)V

    iget-object v0, p0, Landroid/webkit/HTML5Audio;->mTimer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/webkit/HTML5Audio;->mTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    :cond_0
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Landroid/webkit/HTML5Audio;->mTimer:Ljava/util/Timer;

    sget v0, Landroid/webkit/HTML5Audio;->IDLE:I

    iput v0, p0, Landroid/webkit/HTML5Audio;->mState:I

    return-void

    :cond_1
    iget-object v0, p0, Landroid/webkit/HTML5Audio;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->reset()V

    goto :goto_0
.end method

.method private seek(I)V
    .locals 2
    .parameter "msec"

    .prologue
    iget v0, p0, Landroid/webkit/HTML5Audio;->mState:I

    sget v1, Landroid/webkit/HTML5Audio;->PREPARED:I

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Landroid/webkit/HTML5Audio;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->seekTo(I)V

    :cond_0
    return-void
.end method

.method private setDataSource(Ljava/lang/String;)V
    .locals 4
    .parameter "url"

    .prologue
    iput-object p1, p0, Landroid/webkit/HTML5Audio;->mUrl:Ljava/lang/String;

    :try_start_0
    iget v1, p0, Landroid/webkit/HTML5Audio;->mState:I

    sget v2, Landroid/webkit/HTML5Audio;->IDLE:I

    if-eq v1, v2, :cond_0

    invoke-direct {p0}, Landroid/webkit/HTML5Audio;->resetMediaPlayer()V

    :cond_0
    iget-object v1, p0, Landroid/webkit/HTML5Audio;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1, p1}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V

    sget v1, Landroid/webkit/HTML5Audio;->INITIALIZED:I

    iput v1, p0, Landroid/webkit/HTML5Audio;->mState:I

    iget-object v1, p0, Landroid/webkit/HTML5Audio;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->prepareAsync()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v1

    move-object v0, v1

    .local v0, e:Ljava/io/IOException;
    const-string v1, "HTML5Audio"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "couldn\'t load the resource: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " exc: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Landroid/webkit/HTML5Audio;->resetMediaPlayer()V

    goto :goto_0
.end method

.method private teardown()V
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/webkit/HTML5Audio;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    sget v0, Landroid/webkit/HTML5Audio;->ERROR:I

    iput v0, p0, Landroid/webkit/HTML5Audio;->mState:I

    const/4 v0, 0x0

    iput v0, p0, Landroid/webkit/HTML5Audio;->mNativePointer:I

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .parameter "msg"

    .prologue
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    :try_start_0
    iget v2, p0, Landroid/webkit/HTML5Audio;->mState:I

    sget v3, Landroid/webkit/HTML5Audio;->ERROR:I

    if-eq v2, v3, :cond_0

    iget-object v2, p0, Landroid/webkit/HTML5Audio;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/webkit/HTML5Audio;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v1

    .local v1, position:I
    iget v2, p0, Landroid/webkit/HTML5Audio;->mNativePointer:I

    invoke-direct {p0, v1, v2}, Landroid/webkit/HTML5Audio;->nativeOnTimeupdate(II)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .end local v1           #position:I
    :catch_0
    move-exception v2

    move-object v0, v2

    .local v0, e:Ljava/lang/IllegalStateException;
    sget v2, Landroid/webkit/HTML5Audio;->ERROR:I

    iput v2, p0, Landroid/webkit/HTML5Audio;->mState:I

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_0
    .end packed-switch
.end method

.method public onBufferingUpdate(Landroid/media/MediaPlayer;I)V
    .locals 1
    .parameter "mp"
    .parameter "percent"

    .prologue
    iget v0, p0, Landroid/webkit/HTML5Audio;->mNativePointer:I

    invoke-direct {p0, p2, v0}, Landroid/webkit/HTML5Audio;->nativeOnBuffering(II)V

    return-void
.end method

.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 1
    .parameter "mp"

    .prologue
    invoke-direct {p0}, Landroid/webkit/HTML5Audio;->resetMediaPlayer()V

    sget v0, Landroid/webkit/HTML5Audio;->IDLE:I

    iput v0, p0, Landroid/webkit/HTML5Audio;->mState:I

    iget v0, p0, Landroid/webkit/HTML5Audio;->mNativePointer:I

    invoke-direct {p0, v0}, Landroid/webkit/HTML5Audio;->nativeOnEnded(I)V

    return-void
.end method

.method public onError(Landroid/media/MediaPlayer;II)Z
    .locals 1
    .parameter "mp"
    .parameter "what"
    .parameter "extra"

    .prologue
    sget v0, Landroid/webkit/HTML5Audio;->ERROR:I

    iput v0, p0, Landroid/webkit/HTML5Audio;->mState:I

    invoke-direct {p0}, Landroid/webkit/HTML5Audio;->resetMediaPlayer()V

    sget v0, Landroid/webkit/HTML5Audio;->IDLE:I

    iput v0, p0, Landroid/webkit/HTML5Audio;->mState:I

    const/4 v0, 0x0

    return v0
.end method

.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 7
    .parameter "mp"

    .prologue
    const-wide/16 v2, 0xfa

    const/4 v6, 0x0

    sget v0, Landroid/webkit/HTML5Audio;->PREPARED:I

    iput v0, p0, Landroid/webkit/HTML5Audio;->mState:I

    iget-object v0, p0, Landroid/webkit/HTML5Audio;->mTimer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/webkit/HTML5Audio;->mTimer:Ljava/util/Timer;

    new-instance v1, Landroid/webkit/HTML5Audio$TimeupdateTask;

    const/4 v4, 0x0

    invoke-direct {v1, p0, v4}, Landroid/webkit/HTML5Audio$TimeupdateTask;-><init>(Landroid/webkit/HTML5Audio;Landroid/webkit/HTML5Audio$1;)V

    move-wide v4, v2

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    :cond_0
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v0

    iget v1, p0, Landroid/webkit/HTML5Audio;->mNativePointer:I

    invoke-direct {p0, v0, v6, v6, v1}, Landroid/webkit/HTML5Audio;->nativeOnPrepared(IIII)V

    iget-boolean v0, p0, Landroid/webkit/HTML5Audio;->mAskToPlay:Z

    if-eqz v0, :cond_1

    iput-boolean v6, p0, Landroid/webkit/HTML5Audio;->mAskToPlay:Z

    invoke-direct {p0}, Landroid/webkit/HTML5Audio;->play()V

    :cond_1
    return-void
.end method

.method public onSeekComplete(Landroid/media/MediaPlayer;)V
    .locals 2
    .parameter "mp"

    .prologue
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v0

    iget v1, p0, Landroid/webkit/HTML5Audio;->mNativePointer:I

    invoke-direct {p0, v0, v1}, Landroid/webkit/HTML5Audio;->nativeOnTimeupdate(II)V

    return-void
.end method
