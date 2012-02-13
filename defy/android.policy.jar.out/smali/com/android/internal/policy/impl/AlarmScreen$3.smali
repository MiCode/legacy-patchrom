.class Lcom/android/internal/policy/impl/AlarmScreen$3;
.super Ljava/lang/Object;
.source "AlarmScreen.java"

# interfaces
.implements Lcom/motorola/android/widget/SlideButton$OnSlideEndListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/AlarmScreen;-><init>(Landroid/content/Context;Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/AlarmScreen;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/AlarmScreen;)V
    .locals 0
    .parameter

    .prologue
    iput-object p1, p0, Lcom/android/internal/policy/impl/AlarmScreen$3;->this$0:Lcom/android/internal/policy/impl/AlarmScreen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSlideDone(Lcom/motorola/android/widget/SlideButton;)Z
    .locals 1
    .parameter "from"

    .prologue
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/AlarmScreen$3;->this$0:Lcom/android/internal/policy/impl/AlarmScreen;

    #getter for: Lcom/android/internal/policy/impl/AlarmScreen;->mMediaPlayer:Landroid/media/MediaPlayer;
    invoke-static {v0}, Lcom/android/internal/policy/impl/AlarmScreen;->access$800(Lcom/android/internal/policy/impl/AlarmScreen;)Landroid/media/MediaPlayer;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/AlarmScreen$3;->this$0:Lcom/android/internal/policy/impl/AlarmScreen;

    #getter for: Lcom/android/internal/policy/impl/AlarmScreen;->mMediaPlayer:Landroid/media/MediaPlayer;
    invoke-static {v0}, Lcom/android/internal/policy/impl/AlarmScreen;->access$800(Lcom/android/internal/policy/impl/AlarmScreen;)Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    iget-object v0, p0, Lcom/android/internal/policy/impl/AlarmScreen$3;->this$0:Lcom/android/internal/policy/impl/AlarmScreen;

    #getter for: Lcom/android/internal/policy/impl/AlarmScreen;->mMediaPlayer:Landroid/media/MediaPlayer;
    invoke-static {v0}, Lcom/android/internal/policy/impl/AlarmScreen;->access$800(Lcom/android/internal/policy/impl/AlarmScreen;)Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/AlarmScreen$3;->this$0:Lcom/android/internal/policy/impl/AlarmScreen;

    #getter for: Lcom/android/internal/policy/impl/AlarmScreen;->mVibrator:Landroid/os/Vibrator;
    invoke-static {v0}, Lcom/android/internal/policy/impl/AlarmScreen;->access$900(Lcom/android/internal/policy/impl/AlarmScreen;)Landroid/os/Vibrator;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/policy/impl/AlarmScreen$3;->this$0:Lcom/android/internal/policy/impl/AlarmScreen;

    #getter for: Lcom/android/internal/policy/impl/AlarmScreen;->mVibrator:Landroid/os/Vibrator;
    invoke-static {v0}, Lcom/android/internal/policy/impl/AlarmScreen;->access$900(Lcom/android/internal/policy/impl/AlarmScreen;)Landroid/os/Vibrator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Vibrator;->cancel()V

    :cond_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/AlarmScreen$3;->this$0:Lcom/android/internal/policy/impl/AlarmScreen;

    #calls: Lcom/android/internal/policy/impl/AlarmScreen;->showAlertDialog()V
    invoke-static {v0}, Lcom/android/internal/policy/impl/AlarmScreen;->access$1000(Lcom/android/internal/policy/impl/AlarmScreen;)V

    const/4 v0, 0x1

    return v0

    :catch_0
    move-exception v0

    goto :goto_0
.end method
