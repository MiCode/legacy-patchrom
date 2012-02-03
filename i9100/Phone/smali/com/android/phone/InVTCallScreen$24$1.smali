.class Lcom/android/phone/InVTCallScreen$24$1;
.super Ljava/lang/Object;
.source "InVTCallScreen.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/InVTCallScreen$24;->surfaceCreated(Landroid/view/SurfaceHolder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/phone/InVTCallScreen$24;


# direct methods
.method constructor <init>(Lcom/android/phone/InVTCallScreen$24;)V
    .locals 0
    .parameter

    .prologue
    .line 8271
    iput-object p1, p0, Lcom/android/phone/InVTCallScreen$24$1;->this$1:Lcom/android/phone/InVTCallScreen$24;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 8273
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$24$1;->this$1:Lcom/android/phone/InVTCallScreen$24;

    iget-object v0, v0, Lcom/android/phone/InVTCallScreen$24;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mVTManager:Lsiso/vt/VTManager;
    invoke-static {v0}, Lcom/android/phone/InVTCallScreen;->access$2400(Lcom/android/phone/InVTCallScreen;)Lsiso/vt/VTManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/InVTCallScreen$24$1;->this$1:Lcom/android/phone/InVTCallScreen$24;

    iget-object v1, v1, Lcom/android/phone/InVTCallScreen$24;->this$0:Lcom/android/phone/InVTCallScreen;

    iget-object v1, v1, Lcom/android/phone/InVTCallScreen;->near_endsurhldr:Landroid/view/SurfaceHolder;

    invoke-interface {v1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/InVTCallScreen$24$1;->this$1:Lcom/android/phone/InVTCallScreen$24;

    iget-object v2, v2, Lcom/android/phone/InVTCallScreen$24;->this$0:Lcom/android/phone/InVTCallScreen;

    iget-object v2, v2, Lcom/android/phone/InVTCallScreen;->near_endsurhldr:Landroid/view/SurfaceHolder;

    invoke-interface {v2}, Landroid/view/SurfaceHolder;->getSurfaceFrame()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    iget-object v3, p0, Lcom/android/phone/InVTCallScreen$24$1;->this$1:Lcom/android/phone/InVTCallScreen$24;

    iget-object v3, v3, Lcom/android/phone/InVTCallScreen$24;->this$0:Lcom/android/phone/InVTCallScreen;

    iget-object v3, v3, Lcom/android/phone/InVTCallScreen;->near_endsurhldr:Landroid/view/SurfaceHolder;

    invoke-interface {v3}, Landroid/view/SurfaceHolder;->getSurfaceFrame()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lsiso/vt/VTManager;->startCamera(Landroid/view/Surface;II)V

    .line 8277
    return-void
.end method
