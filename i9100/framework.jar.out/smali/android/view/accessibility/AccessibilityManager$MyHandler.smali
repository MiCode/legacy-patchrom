.class Landroid/view/accessibility/AccessibilityManager$MyHandler;
.super Landroid/os/Handler;
.source "AccessibilityManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/accessibility/AccessibilityManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MyHandler"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/view/accessibility/AccessibilityManager;


# direct methods
.method constructor <init>(Landroid/view/accessibility/AccessibilityManager;Landroid/os/Looper;)V
    .locals 0
    .parameter
    .parameter "mainLooper"

    .prologue
    .line 71
    iput-object p1, p0, Landroid/view/accessibility/AccessibilityManager$MyHandler;->this$0:Landroid/view/accessibility/AccessibilityManager;

    .line 72
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 73
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .parameter "message"

    .prologue
    const/4 v3, 0x1

    .line 77
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 84
    const-string v0, "AccessibilityManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown message type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    :goto_0
    return-void

    .line 79
    :pswitch_0
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityManager$MyHandler;->this$0:Landroid/view/accessibility/AccessibilityManager;

    iget-object v0, v0, Landroid/view/accessibility/AccessibilityManager;->mHandler:Landroid/os/Handler;

    monitor-enter v0

    .line 80
    :try_start_0
    iget-object v1, p0, Landroid/view/accessibility/AccessibilityManager$MyHandler;->this$0:Landroid/view/accessibility/AccessibilityManager;

    iget v2, p1, Landroid/os/Message;->arg1:I

    if-ne v2, v3, :cond_0

    move v2, v3

    :goto_1
    iput-boolean v2, v1, Landroid/view/accessibility/AccessibilityManager;->mIsEnabled:Z

    .line 81
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 80
    :cond_0
    const/4 v2, 0x0

    goto :goto_1

    .line 77
    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_0
    .end packed-switch
.end method
