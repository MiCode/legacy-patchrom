.class Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget$1;
.super Landroid/os/Handler;
.source "GlassLockScreenMusicWidget.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;
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
    .line 126
    iput-object p1, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget$1;->this$0:Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .parameter "msg"

    .prologue
    .line 129
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 143
    .end local p0
    :goto_0
    return-void

    .line 131
    .restart local p0
    :pswitch_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget$1;->this$0:Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;

    #calls: Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->setMinLayout()V
    invoke-static {v0}, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->access$000(Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;)V

    goto :goto_0

    .line 134
    :pswitch_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget$1;->this$0:Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget v2, p1, Landroid/os/Message;->arg2:I

    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .end local p0
    check-cast p0, Landroid/net/Uri;

    invoke-virtual {v0, v1, v2, p0}, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->handleMediaUpdate(IILandroid/net/Uri;)V

    goto :goto_0

    .line 137
    .restart local p0
    :pswitch_2
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget$1;->this$0:Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget v2, p1, Landroid/os/Message;->arg2:I

    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .end local p0
    check-cast p0, [Ljava/lang/String;

    check-cast p0, [Ljava/lang/String;

    const/4 v3, 0x0

    aget-object v3, p0, v3

    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p0, [Ljava/lang/String;

    check-cast p0, [Ljava/lang/String;

    const/4 v4, 0x1

    aget-object v4, p0, v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->handleMediaUpdate(IILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 140
    .restart local p0
    :pswitch_3
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget$1;->this$0:Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->handleStopMarquee()V

    goto :goto_0

    .line 129
    :pswitch_data_0
    .packed-switch 0x12c1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
