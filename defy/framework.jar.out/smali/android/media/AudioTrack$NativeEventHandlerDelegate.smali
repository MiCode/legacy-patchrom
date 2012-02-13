.class Landroid/media/AudioTrack$NativeEventHandlerDelegate;
.super Ljava/lang/Object;
.source "AudioTrack.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/AudioTrack;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NativeEventHandlerDelegate"
.end annotation


# instance fields
.field private final mAudioTrack:Landroid/media/AudioTrack;

.field private final mHandler:Landroid/os/Handler;

.field final synthetic this$0:Landroid/media/AudioTrack;


# direct methods
.method constructor <init>(Landroid/media/AudioTrack;Landroid/media/AudioTrack;Landroid/os/Handler;)V
    .locals 2
    .parameter
    .parameter "track"
    .parameter "handler"

    .prologue
    iput-object p1, p0, Landroid/media/AudioTrack$NativeEventHandlerDelegate;->this$0:Landroid/media/AudioTrack;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Landroid/media/AudioTrack$NativeEventHandlerDelegate;->mAudioTrack:Landroid/media/AudioTrack;

    if-eqz p3, :cond_0

    invoke-virtual {p3}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    .local v0, looper:Landroid/os/Looper;
    :goto_0
    if-eqz v0, :cond_1

    new-instance v1, Landroid/media/AudioTrack$NativeEventHandlerDelegate$1;

    invoke-direct {v1, p0, v0, p1}, Landroid/media/AudioTrack$NativeEventHandlerDelegate$1;-><init>(Landroid/media/AudioTrack$NativeEventHandlerDelegate;Landroid/os/Looper;Landroid/media/AudioTrack;)V

    iput-object v1, p0, Landroid/media/AudioTrack$NativeEventHandlerDelegate;->mHandler:Landroid/os/Handler;

    :goto_1
    return-void

    .end local v0           #looper:Landroid/os/Looper;
    :cond_0
    #getter for: Landroid/media/AudioTrack;->mInitializationLooper:Landroid/os/Looper;
    invoke-static {p1}, Landroid/media/AudioTrack;->access$000(Landroid/media/AudioTrack;)Landroid/os/Looper;

    move-result-object v0

    .restart local v0       #looper:Landroid/os/Looper;
    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/media/AudioTrack$NativeEventHandlerDelegate;->mHandler:Landroid/os/Handler;

    goto :goto_1
.end method

.method static synthetic access$100(Landroid/media/AudioTrack$NativeEventHandlerDelegate;)Landroid/media/AudioTrack;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Landroid/media/AudioTrack$NativeEventHandlerDelegate;->mAudioTrack:Landroid/media/AudioTrack;

    return-object v0
.end method


# virtual methods
.method getHandler()Landroid/os/Handler;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/media/AudioTrack$NativeEventHandlerDelegate;->mHandler:Landroid/os/Handler;

    return-object v0
.end method
