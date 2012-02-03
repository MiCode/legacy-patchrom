.class Lcom/android/internal/policy/impl/face/Preview$2;
.super Ljava/lang/Object;
.source "Preview.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/face/Preview;->surfaceDestroyed(Landroid/view/SurfaceHolder;)V
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
    .line 194
    iput-object p1, p0, Lcom/android/internal/policy/impl/face/Preview$2;->this$0:Lcom/android/internal/policy/impl/face/Preview;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 197
    iget-object v0, p0, Lcom/android/internal/policy/impl/face/Preview$2;->this$0:Lcom/android/internal/policy/impl/face/Preview;

    iget-object v0, v0, Lcom/android/internal/policy/impl/face/Preview;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->stopPreview()V

    .line 198
    iget-object v0, p0, Lcom/android/internal/policy/impl/face/Preview$2;->this$0:Lcom/android/internal/policy/impl/face/Preview;

    iget-object v0, v0, Lcom/android/internal/policy/impl/face/Preview;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->setPreviewCallback(Landroid/hardware/Camera$PreviewCallback;)V

    .line 199
    iget-object v0, p0, Lcom/android/internal/policy/impl/face/Preview$2;->this$0:Lcom/android/internal/policy/impl/face/Preview;

    iget-object v0, v0, Lcom/android/internal/policy/impl/face/Preview;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->release()V

    .line 200
    iget-object v0, p0, Lcom/android/internal/policy/impl/face/Preview$2;->this$0:Lcom/android/internal/policy/impl/face/Preview;

    iput-object v1, v0, Lcom/android/internal/policy/impl/face/Preview;->mCamera:Landroid/hardware/Camera;

    .line 201
    iget-object v0, p0, Lcom/android/internal/policy/impl/face/Preview$2;->this$0:Lcom/android/internal/policy/impl/face/Preview;

    #getter for: Lcom/android/internal/policy/impl/face/Preview;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/internal/policy/impl/face/Preview;->access$100(Lcom/android/internal/policy/impl/face/Preview;)Landroid/os/Handler;

    move-result-object v0

    const v1, 0xa002

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 202
    return-void
.end method
