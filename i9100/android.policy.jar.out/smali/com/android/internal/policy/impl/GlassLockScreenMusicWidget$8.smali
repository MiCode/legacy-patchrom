.class Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget$8;
.super Ljava/lang/Object;
.source "GlassLockScreenMusicWidget.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;)V
    .locals 0
    .parameter

    .prologue
    .line 546
    iput-object p1, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget$8;->this$0:Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 9
    .parameter "v"
    .parameter "event"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    const-string v8, "com.android.music.musicservicecommand.rew.up"

    const-string v5, "musicplayer.from"

    const-string v4, "lockscreen"

    .line 549
    const-string v1, "Nawoong"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "evnet ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 551
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget$8;->this$0:Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;

    #getter for: Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;
    invoke-static {v1}, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->access$400(Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;)Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->pokeWakelock()V

    .line 553
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    const v2, 0x1020289

    if-ne v1, v2, :cond_0

    .line 554
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 608
    :cond_0
    :goto_0
    return v6

    .line 557
    :pswitch_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget$8;->this$0:Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;

    #calls: Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->removeMinTimer()V
    invoke-static {v1}, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->access$1200(Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;)V

    .line 558
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget$8;->this$0:Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;

    #getter for: Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mBeforeButton:Landroid/widget/ImageButton;
    invoke-static {v1}, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->access$1600(Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;)Landroid/widget/ImageButton;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/widget/ImageButton;->playSoundEffect(I)V

    goto :goto_0

    .line 562
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/View;->isPressed()Z

    move-result v1

    if-nez v1, :cond_0

    .line 563
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget$8;->this$0:Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;

    #getter for: Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mREWLongPressed:Z
    invoke-static {v1}, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->access$1500(Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 564
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget$8;->this$0:Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;

    #setter for: Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mREWLongPressed:Z
    invoke-static {v1, v6}, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->access$1502(Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;Z)Z

    .line 565
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget$8;->this$0:Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;

    #getter for: Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mServiceNumber:I
    invoke-static {v1}, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->access$200(Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;)I

    move-result v1

    if-ne v1, v7, :cond_1

    .line 566
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.music.musicservicecommand.rew.up"

    invoke-direct {v0, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 567
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "musicplayer.from"

    const-string v1, "lockscreen"

    invoke-virtual {v0, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 568
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget$8;->this$0:Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;

    invoke-virtual {v1, p1, v0}, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->sendBroadcastAfterBooting(Landroid/view/View;Landroid/content/Intent;)V

    goto :goto_0

    .line 570
    .end local v0           #intent:Landroid/content/Intent;
    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.music.musicservicecommand.rew.up"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 571
    .restart local v0       #intent:Landroid/content/Intent;
    const-string v1, "musicplayer.from"

    const-string v1, "lockscreen"

    invoke-virtual {v0, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 572
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget$8;->this$0:Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;

    invoke-virtual {v1, p1, v0}, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->sendBroadcastAfterBooting(Landroid/view/View;Landroid/content/Intent;)V

    goto :goto_0

    .line 582
    .end local v0           #intent:Landroid/content/Intent;
    :pswitch_2
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget$8;->this$0:Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;

    #calls: Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->addMinTimer()V
    invoke-static {v1}, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->access$1400(Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;)V

    .line 583
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget$8;->this$0:Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;

    #getter for: Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mREWLongPressed:Z
    invoke-static {v1}, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->access$1500(Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 584
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget$8;->this$0:Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;

    #setter for: Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mREWLongPressed:Z
    invoke-static {v1, v6}, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->access$1502(Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;Z)Z

    .line 585
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget$8;->this$0:Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;

    #getter for: Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mServiceNumber:I
    invoke-static {v1}, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->access$200(Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;)I

    move-result v1

    if-ne v1, v7, :cond_2

    .line 586
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.music.musicservicecommand.rew.up"

    invoke-direct {v0, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 587
    .restart local v0       #intent:Landroid/content/Intent;
    const-string v1, "musicplayer.from"

    const-string v1, "lockscreen"

    invoke-virtual {v0, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 588
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget$8;->this$0:Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;

    invoke-virtual {v1, p1, v0}, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->sendBroadcastAfterBooting(Landroid/view/View;Landroid/content/Intent;)V

    goto :goto_0

    .line 590
    .end local v0           #intent:Landroid/content/Intent;
    :cond_2
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.music.musicservicecommand.rew.up"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 591
    .restart local v0       #intent:Landroid/content/Intent;
    const-string v1, "musicplayer.from"

    const-string v1, "lockscreen"

    invoke-virtual {v0, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 592
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget$8;->this$0:Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;

    invoke-virtual {v1, p1, v0}, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->sendBroadcastAfterBooting(Landroid/view/View;Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 595
    .end local v0           #intent:Landroid/content/Intent;
    :cond_3
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget$8;->this$0:Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;

    #getter for: Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mServiceNumber:I
    invoke-static {v1}, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->access$200(Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;)I

    move-result v1

    if-ne v1, v7, :cond_4

    .line 596
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.music.musicservicecommand.previous"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 597
    .restart local v0       #intent:Landroid/content/Intent;
    const-string v1, "musicplayer.from"

    const-string v1, "lockscreen"

    invoke-virtual {v0, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 598
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget$8;->this$0:Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;

    invoke-virtual {v1, p1, v0}, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->sendBroadcastAfterBooting(Landroid/view/View;Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 600
    .end local v0           #intent:Landroid/content/Intent;
    :cond_4
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.music.musicservicecommand.previous"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 601
    .restart local v0       #intent:Landroid/content/Intent;
    const-string v1, "musicplayer.from"

    const-string v1, "lockscreen"

    invoke-virtual {v0, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 602
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget$8;->this$0:Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;

    invoke-virtual {v1, p1, v0}, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->sendBroadcastAfterBooting(Landroid/view/View;Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 554
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
