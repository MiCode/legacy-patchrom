.class Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget$7;
.super Ljava/lang/Object;
.source "GlassLockScreenMusicWidget.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


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
    .line 527
    iput-object p1, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget$7;->this$0:Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 5
    .parameter "v"

    .prologue
    const/4 v2, 0x1

    const-string v4, "musicplayer.from"

    const-string v3, "lockscreen"

    .line 530
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget$7;->this$0:Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;

    #getter for: Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;
    invoke-static {v1}, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->access$400(Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;)Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->pokeWakelock()V

    .line 532
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget$7;->this$0:Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;

    #setter for: Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mREWLongPressed:Z
    invoke-static {v1, v2}, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->access$1502(Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;Z)Z

    .line 533
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget$7;->this$0:Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;

    #getter for: Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mServiceNumber:I
    invoke-static {v1}, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->access$200(Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;)I

    move-result v1

    if-ne v1, v2, :cond_0

    .line 534
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.music.musicservicecommand.rew.down"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 535
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "musicplayer.from"

    const-string v1, "lockscreen"

    invoke-virtual {v0, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 536
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget$7;->this$0:Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;

    invoke-virtual {v1, p1, v0}, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->sendBroadcastAfterBooting(Landroid/view/View;Landroid/content/Intent;)V

    .line 542
    :goto_0
    const/4 v1, 0x0

    return v1

    .line 538
    .end local v0           #intent:Landroid/content/Intent;
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.music.musicservicecommand.rew.down"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 539
    .restart local v0       #intent:Landroid/content/Intent;
    const-string v1, "musicplayer.from"

    const-string v1, "lockscreen"

    invoke-virtual {v0, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 540
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget$7;->this$0:Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;

    invoke-virtual {v1, p1, v0}, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->sendBroadcastAfterBooting(Landroid/view/View;Landroid/content/Intent;)V

    goto :goto_0
.end method
