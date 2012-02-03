.class Lcom/android/internal/policy/impl/face/Preview$1;
.super Landroid/os/Handler;
.source "Preview.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/face/Preview;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/face/Preview;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/face/Preview;)V
    .locals 0
    .parameter

    .prologue
    .line 113
    iput-object p1, p0, Lcom/android/internal/policy/impl/face/Preview$1;->this$0:Lcom/android/internal/policy/impl/face/Preview;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .parameter "msg"

    .prologue
    const/4 v3, 0x0

    const-string v2, "FaceLockScreen"

    .line 116
    iget v0, p1, Landroid/os/Message;->what:I

    const v1, 0xa001

    if-ne v0, v1, :cond_1

    .line 117
    const-string v0, "FaceLockScreen"

    const-string v0, "Camera.start ==="

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    iget-object v0, p0, Lcom/android/internal/policy/impl/face/Preview$1;->this$0:Lcom/android/internal/policy/impl/face/Preview;

    iput-object v3, v0, Lcom/android/internal/policy/impl/face/Preview;->mStartPreviewThread:Ljava/lang/Thread;

    .line 128
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/face/Preview$1;->this$0:Lcom/android/internal/policy/impl/face/Preview;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/internal/policy/impl/face/Preview;->mCameraIng:Z

    .line 129
    const-string v0, "FaceLockScreen"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mCameraIng ==="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/policy/impl/face/Preview$1;->this$0:Lcom/android/internal/policy/impl/face/Preview;

    iget-boolean v1, v1, Lcom/android/internal/policy/impl/face/Preview;->mCameraIng:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    return-void

    .line 119
    :cond_1
    iget v0, p1, Landroid/os/Message;->what:I

    const v1, 0xa002

    if-ne v0, v1, :cond_2

    .line 120
    const-string v0, "FaceLockScreen"

    const-string v0, "Camera.stop ==="

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    iget-object v0, p0, Lcom/android/internal/policy/impl/face/Preview$1;->this$0:Lcom/android/internal/policy/impl/face/Preview;

    iput-object v3, v0, Lcom/android/internal/policy/impl/face/Preview;->mStopPreviewThread:Ljava/lang/Thread;

    goto :goto_0

    .line 122
    :cond_2
    iget v0, p1, Landroid/os/Message;->what:I

    const v1, 0xa003

    if-ne v0, v1, :cond_0

    .line 123
    const-string v0, "FaceLockScreen"

    const-string v0, "Preview start fail ==="

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    iget-object v0, p0, Lcom/android/internal/policy/impl/face/Preview$1;->this$0:Lcom/android/internal/policy/impl/face/Preview;

    const v1, 0x104047a

    #calls: Lcom/android/internal/policy/impl/face/Preview;->showDialog(I)V
    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/face/Preview;->access$000(Lcom/android/internal/policy/impl/face/Preview;I)V

    .line 125
    iget-object v0, p0, Lcom/android/internal/policy/impl/face/Preview$1;->this$0:Lcom/android/internal/policy/impl/face/Preview;

    iput-object v3, v0, Lcom/android/internal/policy/impl/face/Preview;->mStopPreviewThread:Ljava/lang/Thread;

    goto :goto_0
.end method
