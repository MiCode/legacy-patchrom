.class Landroid/widget/MediaController$4;
.super Ljava/lang/Object;
.source "MediaController.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/MediaController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/MediaController;


# direct methods
.method constructor <init>(Landroid/widget/MediaController;)V
    .locals 0
    .parameter

    .prologue
    .line 484
    iput-object p1, p0, Landroid/widget/MediaController$4;->this$0:Landroid/widget/MediaController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 8
    .parameter "bar"
    .parameter "progress"
    .parameter "fromuser"

    .prologue
    .line 499
    if-nez p3, :cond_1

    .line 510
    :cond_0
    :goto_0
    return-void

    .line 505
    :cond_1
    iget-object v4, p0, Landroid/widget/MediaController$4;->this$0:Landroid/widget/MediaController;

    #getter for: Landroid/widget/MediaController;->mPlayer:Landroid/widget/MediaController$MediaPlayerControl;
    invoke-static {v4}, Landroid/widget/MediaController;->access$300(Landroid/widget/MediaController;)Landroid/widget/MediaController$MediaPlayerControl;

    move-result-object v4

    invoke-interface {v4}, Landroid/widget/MediaController$MediaPlayerControl;->getDuration()I

    move-result v4

    int-to-long v0, v4

    .line 506
    .local v0, duration:J
    int-to-long v4, p2

    mul-long/2addr v4, v0

    const-wide/16 v6, 0x3e8

    div-long v2, v4, v6

    .line 507
    .local v2, newposition:J
    iget-object v4, p0, Landroid/widget/MediaController$4;->this$0:Landroid/widget/MediaController;

    #getter for: Landroid/widget/MediaController;->mPlayer:Landroid/widget/MediaController$MediaPlayerControl;
    invoke-static {v4}, Landroid/widget/MediaController;->access$300(Landroid/widget/MediaController;)Landroid/widget/MediaController$MediaPlayerControl;

    move-result-object v4

    long-to-int v5, v2

    invoke-interface {v4, v5}, Landroid/widget/MediaController$MediaPlayerControl;->seekTo(I)V

    .line 508
    iget-object v4, p0, Landroid/widget/MediaController$4;->this$0:Landroid/widget/MediaController;

    #getter for: Landroid/widget/MediaController;->mCurrentTime:Landroid/widget/TextView;
    invoke-static {v4}, Landroid/widget/MediaController;->access$600(Landroid/widget/MediaController;)Landroid/widget/TextView;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 509
    iget-object v4, p0, Landroid/widget/MediaController$4;->this$0:Landroid/widget/MediaController;

    #getter for: Landroid/widget/MediaController;->mCurrentTime:Landroid/widget/TextView;
    invoke-static {v4}, Landroid/widget/MediaController;->access$600(Landroid/widget/MediaController;)Landroid/widget/TextView;

    move-result-object v4

    iget-object v5, p0, Landroid/widget/MediaController$4;->this$0:Landroid/widget/MediaController;

    long-to-int v6, v2

    #calls: Landroid/widget/MediaController;->stringForTime(I)Ljava/lang/String;
    invoke-static {v5, v6}, Landroid/widget/MediaController;->access$700(Landroid/widget/MediaController;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 2
    .parameter "bar"

    .prologue
    .line 486
    iget-object v0, p0, Landroid/widget/MediaController$4;->this$0:Landroid/widget/MediaController;

    const v1, 0x36ee80

    invoke-virtual {v0, v1}, Landroid/widget/MediaController;->show(I)V

    .line 488
    iget-object v0, p0, Landroid/widget/MediaController$4;->this$0:Landroid/widget/MediaController;

    const/4 v1, 0x1

    #setter for: Landroid/widget/MediaController;->mDragging:Z
    invoke-static {v0, v1}, Landroid/widget/MediaController;->access$202(Landroid/widget/MediaController;Z)Z

    .line 495
    iget-object v0, p0, Landroid/widget/MediaController$4;->this$0:Landroid/widget/MediaController;

    #getter for: Landroid/widget/MediaController;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Landroid/widget/MediaController;->access$500(Landroid/widget/MediaController;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 496
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 2
    .parameter "bar"

    .prologue
    .line 513
    iget-object v0, p0, Landroid/widget/MediaController$4;->this$0:Landroid/widget/MediaController;

    const/4 v1, 0x0

    #setter for: Landroid/widget/MediaController;->mDragging:Z
    invoke-static {v0, v1}, Landroid/widget/MediaController;->access$202(Landroid/widget/MediaController;Z)Z

    .line 514
    iget-object v0, p0, Landroid/widget/MediaController$4;->this$0:Landroid/widget/MediaController;

    #calls: Landroid/widget/MediaController;->setProgress()I
    invoke-static {v0}, Landroid/widget/MediaController;->access$100(Landroid/widget/MediaController;)I

    .line 515
    iget-object v0, p0, Landroid/widget/MediaController$4;->this$0:Landroid/widget/MediaController;

    #calls: Landroid/widget/MediaController;->updatePausePlay()V
    invoke-static {v0}, Landroid/widget/MediaController;->access$800(Landroid/widget/MediaController;)V

    .line 516
    iget-object v0, p0, Landroid/widget/MediaController$4;->this$0:Landroid/widget/MediaController;

    const/16 v1, 0xbb8

    invoke-virtual {v0, v1}, Landroid/widget/MediaController;->show(I)V

    .line 521
    iget-object v0, p0, Landroid/widget/MediaController$4;->this$0:Landroid/widget/MediaController;

    #getter for: Landroid/widget/MediaController;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Landroid/widget/MediaController;->access$500(Landroid/widget/MediaController;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 522
    return-void
.end method
