.class Lcom/android/internal/policy/impl/AlarmScreen$5;
.super Ljava/lang/Object;
.source "AlarmScreen.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnErrorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/AlarmScreen;->playAlert(Lcom/android/internal/policy/impl/Alarm;)V
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
    iput-object p1, p0, Lcom/android/internal/policy/impl/AlarmScreen$5;->this$0:Lcom/android/internal/policy/impl/AlarmScreen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Landroid/media/MediaPlayer;II)Z
    .locals 2
    .parameter "mp"
    .parameter "what"
    .parameter "extra"

    .prologue
    const-string v0, "AlarmScreen"

    const-string v1, "Error occurred while playing audio."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->stop()V

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->release()V

    iget-object v0, p0, Lcom/android/internal/policy/impl/AlarmScreen$5;->this$0:Lcom/android/internal/policy/impl/AlarmScreen;

    const/4 v1, 0x0

    #setter for: Lcom/android/internal/policy/impl/AlarmScreen;->mMediaPlayer:Landroid/media/MediaPlayer;
    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/AlarmScreen;->access$802(Lcom/android/internal/policy/impl/AlarmScreen;Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer;

    const/4 v0, 0x1

    return v0
.end method
