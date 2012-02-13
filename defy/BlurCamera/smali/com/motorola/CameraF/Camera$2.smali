.class Lcom/motorola/CameraF/Camera$2;
.super Landroid/view/OrientationEventListener;
.source "Camera.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/motorola/CameraF/Camera;->initializeFirstTime()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/motorola/CameraF/Camera;


# direct methods
.method constructor <init>(Lcom/motorola/CameraF/Camera;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 1112
    iput-object p1, p0, Lcom/motorola/CameraF/Camera$2;->this$0:Lcom/motorola/CameraF/Camera;

    invoke-direct {p0, p2}, Landroid/view/OrientationEventListener;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public onOrientationChanged(I)V
    .locals 1
    .parameter "orientation"

    .prologue
    .line 1114
    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    .line 1116
    iget-object v0, p0, Lcom/motorola/CameraF/Camera$2;->this$0:Lcom/motorola/CameraF/Camera;

    iput p1, v0, Lcom/motorola/CameraF/Camera;->mLastOrientation:I

    .line 1118
    :cond_0
    return-void
.end method
