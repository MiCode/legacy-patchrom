.class Lcom/android/internal/policy/impl/face/Preview$4;
.super Ljava/lang/Object;
.source "Preview.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/face/Preview;->StartPreview()V
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
    .line 267
    iput-object p1, p0, Lcom/android/internal/policy/impl/face/Preview$4;->this$0:Lcom/android/internal/policy/impl/face/Preview;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const-string v3, "FaceLockScreen"

    .line 271
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/face/Preview$4;->this$0:Lcom/android/internal/policy/impl/face/Preview;

    iget-object v1, v1, Lcom/android/internal/policy/impl/face/Preview;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v1}, Landroid/hardware/Camera;->startPreview()V

    .line 272
    const-string v1, "FaceLockScreen"

    const-string v2, "startPreview success ==="

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 273
    iget-object v1, p0, Lcom/android/internal/policy/impl/face/Preview$4;->this$0:Lcom/android/internal/policy/impl/face/Preview;

    #getter for: Lcom/android/internal/policy/impl/face/Preview;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/internal/policy/impl/face/Preview;->access$100(Lcom/android/internal/policy/impl/face/Preview;)Landroid/os/Handler;

    move-result-object v1

    const v2, 0xa001

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 280
    :goto_0
    return-void

    .line 274
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 275
    .local v0, exception:Ljava/lang/Exception;
    const-string v1, "FaceLockScreen"

    const-string v1, "startPreview fail ==="

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 276
    iget-object v1, p0, Lcom/android/internal/policy/impl/face/Preview$4;->this$0:Lcom/android/internal/policy/impl/face/Preview;

    iget-object v1, v1, Lcom/android/internal/policy/impl/face/Preview;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v1}, Landroid/hardware/Camera;->release()V

    .line 277
    iget-object v1, p0, Lcom/android/internal/policy/impl/face/Preview$4;->this$0:Lcom/android/internal/policy/impl/face/Preview;

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/android/internal/policy/impl/face/Preview;->mCamera:Landroid/hardware/Camera;

    .line 278
    iget-object v1, p0, Lcom/android/internal/policy/impl/face/Preview$4;->this$0:Lcom/android/internal/policy/impl/face/Preview;

    #getter for: Lcom/android/internal/policy/impl/face/Preview;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/internal/policy/impl/face/Preview;->access$100(Lcom/android/internal/policy/impl/face/Preview;)Landroid/os/Handler;

    move-result-object v1

    const v2, 0xa003

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method
