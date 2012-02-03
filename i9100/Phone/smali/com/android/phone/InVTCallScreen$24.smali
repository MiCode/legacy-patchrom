.class Lcom/android/phone/InVTCallScreen$24;
.super Ljava/lang/Object;
.source "InVTCallScreen.java"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/InVTCallScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/InVTCallScreen;


# direct methods
.method constructor <init>(Lcom/android/phone/InVTCallScreen;)V
    .locals 0
    .parameter

    .prologue
    .line 8180
    iput-object p1, p0, Lcom/android/phone/InVTCallScreen$24;->this$0:Lcom/android/phone/InVTCallScreen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 2
    .parameter "holder"
    .parameter "format"
    .parameter "width"
    .parameter "height"

    .prologue
    const-string v1, "InVTCallScreen"

    .line 8183
    const-string v0, "InVTCallScreen"

    const-string v0, "IN SURFACECHANGED method under surfaceCallback ===========================>"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8203
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$24;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mHideCheck:Z
    invoke-static {v0}, Lcom/android/phone/InVTCallScreen;->access$3700(Lcom/android/phone/InVTCallScreen;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$24;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mVTManager:Lsiso/vt/VTManager;
    invoke-static {v0}, Lcom/android/phone/InVTCallScreen;->access$2400(Lcom/android/phone/InVTCallScreen;)Lsiso/vt/VTManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 8205
    const-string v0, "InVTCallScreen"

    const-string v0, "Inside surfaceChanged: Send Live Video"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8206
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$24;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mVTManager:Lsiso/vt/VTManager;
    invoke-static {v0}, Lcom/android/phone/InVTCallScreen;->access$2400(Lcom/android/phone/InVTCallScreen;)Lsiso/vt/VTManager;

    move-result-object v0

    invoke-virtual {v0}, Lsiso/vt/VTManager;->sendLiveVideo()V

    .line 8209
    :cond_0
    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 11
    .parameter "holder"

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x4

    const-string v10, "VTManager.Log.d(LOG_TAG, VTManager.VT_ORIENTATION_PORTAIT_TOP"

    const-string v6, "mCurrentOrientation"

    const-string v7, "InVTCallScreen"

    .line 8212
    const-string v3, "InVTCallScreen"

    const-string v3, "Inside Surface Create."

    invoke-static {v7, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8213
    iget-object v3, p0, Lcom/android/phone/InVTCallScreen$24;->this$0:Lcom/android/phone/InVTCallScreen;

    iget-object v3, v3, Lcom/android/phone/InVTCallScreen;->near_endsurhldr:Landroid/view/SurfaceHolder;

    if-ne p1, v3, :cond_5

    .line 8214
    const-string v3, "InVTCallScreen"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "This is inside near_endsurhldr surfaceCreated : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/phone/InVTCallScreen$24;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->isSurfaceViewSwipe:Z
    invoke-static {v4}, Lcom/android/phone/InVTCallScreen;->access$4500(Lcom/android/phone/InVTCallScreen;)Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v7, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8217
    iget-object v3, p0, Lcom/android/phone/InVTCallScreen$24;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->isSurfaceViewSwipe:Z
    invoke-static {v3}, Lcom/android/phone/InVTCallScreen;->access$4500(Lcom/android/phone/InVTCallScreen;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 8219
    iget-object v3, p0, Lcom/android/phone/InVTCallScreen$24;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mVTManager:Lsiso/vt/VTManager;
    invoke-static {v3}, Lcom/android/phone/InVTCallScreen;->access$2400(Lcom/android/phone/InVTCallScreen;)Lsiso/vt/VTManager;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 8220
    iget-object v3, p0, Lcom/android/phone/InVTCallScreen$24;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mVTManager:Lsiso/vt/VTManager;
    invoke-static {v3}, Lcom/android/phone/InVTCallScreen;->access$2400(Lcom/android/phone/InVTCallScreen;)Lsiso/vt/VTManager;

    move-result-object v3

    iget-object v4, p0, Lcom/android/phone/InVTCallScreen$24;->this$0:Lcom/android/phone/InVTCallScreen;

    iget-object v4, v4, Lcom/android/phone/InVTCallScreen;->near_endsurhldr:Landroid/view/SurfaceHolder;

    invoke-interface {v4}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v4

    iget-object v5, p0, Lcom/android/phone/InVTCallScreen$24;->this$0:Lcom/android/phone/InVTCallScreen;

    iget-object v5, v5, Lcom/android/phone/InVTCallScreen;->near_endsurhldr:Landroid/view/SurfaceHolder;

    invoke-interface {v5}, Landroid/view/SurfaceHolder;->getSurfaceFrame()Landroid/graphics/Rect;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v5

    iget-object v6, p0, Lcom/android/phone/InVTCallScreen$24;->this$0:Lcom/android/phone/InVTCallScreen;

    iget-object v6, v6, Lcom/android/phone/InVTCallScreen;->near_endsurhldr:Landroid/view/SurfaceHolder;

    invoke-interface {v6}, Landroid/view/SurfaceHolder;->getSurfaceFrame()Landroid/graphics/Rect;

    move-result-object v6

    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v6

    invoke-virtual {v3, v4, v5, v6}, Lsiso/vt/VTManager;->setPreviewDisplay(Landroid/view/Surface;II)V

    .line 8224
    :cond_0
    iget-object v3, p0, Lcom/android/phone/InVTCallScreen$24;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->isFarEndRecord:Z
    invoke-static {v3}, Lcom/android/phone/InVTCallScreen;->access$900(Lcom/android/phone/InVTCallScreen;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 8225
    iget-object v3, p0, Lcom/android/phone/InVTCallScreen$24;->this$0:Lcom/android/phone/InVTCallScreen;

    iget-object v3, v3, Lcom/android/phone/InVTCallScreen;->mRecordNearEndView:Landroid/widget/ImageView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 8283
    :cond_1
    :goto_0
    iget-object v3, p0, Lcom/android/phone/InVTCallScreen$24;->this$0:Lcom/android/phone/InVTCallScreen;

    iget-object v3, v3, Lcom/android/phone/InVTCallScreen;->near_endsurview:Landroid/view/SurfaceView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/view/SurfaceView;->setBackgroundColor(I)V

    .line 8284
    const-string v3, "InVTCallScreen"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Width"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/phone/InVTCallScreen$24;->this$0:Lcom/android/phone/InVTCallScreen;

    iget-object v4, v4, Lcom/android/phone/InVTCallScreen;->near_endsurhldr:Landroid/view/SurfaceHolder;

    invoke-interface {v4}, Landroid/view/SurfaceHolder;->getSurfaceFrame()Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "Height"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/phone/InVTCallScreen$24;->this$0:Lcom/android/phone/InVTCallScreen;

    iget-object v4, v4, Lcom/android/phone/InVTCallScreen;->near_endsurhldr:Landroid/view/SurfaceHolder;

    invoke-interface {v4}, Landroid/view/SurfaceHolder;->getSurfaceFrame()Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v7, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8411
    :cond_2
    :goto_1
    return-void

    .line 8227
    :cond_3
    iget-object v3, p0, Lcom/android/phone/InVTCallScreen$24;->this$0:Lcom/android/phone/InVTCallScreen;

    iget-object v3, v3, Lcom/android/phone/InVTCallScreen;->mRecordFarEndView:Landroid/widget/ImageView;

    invoke-virtual {v3, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 8228
    iget-object v3, p0, Lcom/android/phone/InVTCallScreen$24;->this$0:Lcom/android/phone/InVTCallScreen;

    iget-object v3, v3, Lcom/android/phone/InVTCallScreen;->mRecordNearEndView:Landroid/widget/ImageView;

    invoke-virtual {v3, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 8232
    :cond_4
    const-string v3, "InVTCallScreen"

    const-string v3, "VTManager.StartCamera for Near end View"

    invoke-static {v7, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8233
    iget-object v3, p0, Lcom/android/phone/InVTCallScreen$24;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mVTManager:Lsiso/vt/VTManager;
    invoke-static {v3}, Lcom/android/phone/InVTCallScreen;->access$2400(Lcom/android/phone/InVTCallScreen;)Lsiso/vt/VTManager;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 8234
    iget-object v3, p0, Lcom/android/phone/InVTCallScreen$24;->this$0:Lcom/android/phone/InVTCallScreen;

    const-string v4, "window"

    invoke-virtual {v3, v4}, Lcom/android/phone/InVTCallScreen;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/WindowManager;

    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 8235
    .local v0, display:Landroid/view/Display;
    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v1

    .line 8236
    .local v1, mCurrentOrientation:I
    iget-object v3, p0, Lcom/android/phone/InVTCallScreen$24;->this$0:Lcom/android/phone/InVTCallScreen;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "checking orientation value orientationVal"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    #calls: Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V
    invoke-static {v3, v4}, Lcom/android/phone/InVTCallScreen;->access$500(Lcom/android/phone/InVTCallScreen;Ljava/lang/String;)V

    .line 8237
    packed-switch v1, :pswitch_data_0

    .line 8261
    iget-object v3, p0, Lcom/android/phone/InVTCallScreen$24;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mVTManager:Lsiso/vt/VTManager;
    invoke-static {v3}, Lcom/android/phone/InVTCallScreen;->access$2400(Lcom/android/phone/InVTCallScreen;)Lsiso/vt/VTManager;

    move-result-object v3

    invoke-virtual {v3, v9}, Lsiso/vt/VTManager;->setOrientation(I)V

    .line 8262
    const-string v3, "InVTCallScreen"

    const-string v3, "VTManager.Log.d(LOG_TAG, VTManager.VT_ORIENTATION_PORTAIT_TOP"

    invoke-static {v7, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8263
    iget-object v3, p0, Lcom/android/phone/InVTCallScreen$24;->this$0:Lcom/android/phone/InVTCallScreen;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mCurrentOrientation"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    #calls: Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V
    invoke-static {v3, v4}, Lcom/android/phone/InVTCallScreen;->access$500(Lcom/android/phone/InVTCallScreen;Ljava/lang/String;)V

    .line 8271
    :goto_2
    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Lcom/android/phone/InVTCallScreen$24$1;

    invoke-direct {v3, p0}, Lcom/android/phone/InVTCallScreen$24$1;-><init>(Lcom/android/phone/InVTCallScreen$24;)V

    invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 8279
    .local v2, myThread:Ljava/lang/Thread;
    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    goto/16 :goto_0

    .line 8239
    .end local v2           #myThread:Ljava/lang/Thread;
    :pswitch_0
    iget-object v3, p0, Lcom/android/phone/InVTCallScreen$24;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mVTManager:Lsiso/vt/VTManager;
    invoke-static {v3}, Lcom/android/phone/InVTCallScreen;->access$2400(Lcom/android/phone/InVTCallScreen;)Lsiso/vt/VTManager;

    move-result-object v3

    invoke-virtual {v3, v9}, Lsiso/vt/VTManager;->setOrientation(I)V

    .line 8240
    const-string v3, "InVTCallScreen"

    const-string v3, "VTManager.Log.d(LOG_TAG, VTManager.VT_ORIENTATION_PORTAIT_TOP"

    invoke-static {v7, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8241
    iget-object v3, p0, Lcom/android/phone/InVTCallScreen$24;->this$0:Lcom/android/phone/InVTCallScreen;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mCurrentOrientation"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    #calls: Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V
    invoke-static {v3, v4}, Lcom/android/phone/InVTCallScreen;->access$500(Lcom/android/phone/InVTCallScreen;Ljava/lang/String;)V

    goto :goto_2

    .line 8244
    :pswitch_1
    iget-object v3, p0, Lcom/android/phone/InVTCallScreen$24;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mVTManager:Lsiso/vt/VTManager;
    invoke-static {v3}, Lcom/android/phone/InVTCallScreen;->access$2400(Lcom/android/phone/InVTCallScreen;)Lsiso/vt/VTManager;

    move-result-object v3

    invoke-virtual {v3, v8}, Lsiso/vt/VTManager;->setOrientation(I)V

    .line 8246
    const-string v3, "InVTCallScreen"

    const-string v3, "VTManager.Log.d(LOG_TAG, VTManager.VT_ORIENTATION_LANDSCAPE_BOTTOM"

    invoke-static {v7, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8247
    iget-object v3, p0, Lcom/android/phone/InVTCallScreen$24;->this$0:Lcom/android/phone/InVTCallScreen;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mCurrentOrientation"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    #calls: Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V
    invoke-static {v3, v4}, Lcom/android/phone/InVTCallScreen;->access$500(Lcom/android/phone/InVTCallScreen;Ljava/lang/String;)V

    goto :goto_2

    .line 8250
    :pswitch_2
    iget-object v3, p0, Lcom/android/phone/InVTCallScreen$24;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mVTManager:Lsiso/vt/VTManager;
    invoke-static {v3}, Lcom/android/phone/InVTCallScreen;->access$2400(Lcom/android/phone/InVTCallScreen;)Lsiso/vt/VTManager;

    move-result-object v3

    const/4 v4, 0x3

    invoke-virtual {v3, v4}, Lsiso/vt/VTManager;->setOrientation(I)V

    .line 8251
    const-string v3, "InVTCallScreen"

    const-string v3, "VTManager.Log.d(LOG_TAG, VTManager.VT_ORIENTATION_PORTAIT_BOTTOM"

    invoke-static {v7, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8252
    iget-object v3, p0, Lcom/android/phone/InVTCallScreen$24;->this$0:Lcom/android/phone/InVTCallScreen;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mCurrentOrientation"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    #calls: Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V
    invoke-static {v3, v4}, Lcom/android/phone/InVTCallScreen;->access$500(Lcom/android/phone/InVTCallScreen;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 8256
    :pswitch_3
    iget-object v3, p0, Lcom/android/phone/InVTCallScreen$24;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mVTManager:Lsiso/vt/VTManager;
    invoke-static {v3}, Lcom/android/phone/InVTCallScreen;->access$2400(Lcom/android/phone/InVTCallScreen;)Lsiso/vt/VTManager;

    move-result-object v3

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Lsiso/vt/VTManager;->setOrientation(I)V

    .line 8257
    const-string v3, "InVTCallScreen"

    const-string v3, "VTManager.Log.d(LOG_TAG, VTManager.VT_ORIENTATION_LANDSCAPE_TOP"

    invoke-static {v7, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8258
    iget-object v3, p0, Lcom/android/phone/InVTCallScreen$24;->this$0:Lcom/android/phone/InVTCallScreen;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mCurrentOrientation"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    #calls: Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V
    invoke-static {v3, v4}, Lcom/android/phone/InVTCallScreen;->access$500(Lcom/android/phone/InVTCallScreen;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 8287
    .end local v0           #display:Landroid/view/Display;
    .end local v1           #mCurrentOrientation:I
    :cond_5
    iget-object v3, p0, Lcom/android/phone/InVTCallScreen$24;->this$0:Lcom/android/phone/InVTCallScreen;

    iget-object v3, v3, Lcom/android/phone/InVTCallScreen;->far_endsurhldr:Landroid/view/SurfaceHolder;

    if-ne p1, v3, :cond_2

    .line 8288
    const-string v3, "InVTCallScreen"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "This is inside far_endsurhldr surfaceCreated : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/phone/InVTCallScreen$24;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->isSurfaceViewSwipe:Z
    invoke-static {v4}, Lcom/android/phone/InVTCallScreen;->access$4500(Lcom/android/phone/InVTCallScreen;)Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v7, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8291
    iget-object v3, p0, Lcom/android/phone/InVTCallScreen$24;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mVTcalltype:I
    invoke-static {v3}, Lcom/android/phone/InVTCallScreen;->access$1800(Lcom/android/phone/InVTCallScreen;)I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_6

    .line 8292
    const-string v3, "InVTCallScreen"

    const-string v3, "VTManager.StartCamera for Far end View"

    invoke-static {v7, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8293
    iget-object v3, p0, Lcom/android/phone/InVTCallScreen$24;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mVTManager:Lsiso/vt/VTManager;
    invoke-static {v3}, Lcom/android/phone/InVTCallScreen;->access$2400(Lcom/android/phone/InVTCallScreen;)Lsiso/vt/VTManager;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 8299
    iget-object v3, p0, Lcom/android/phone/InVTCallScreen$24;->this$0:Lcom/android/phone/InVTCallScreen;

    const-string v4, "window"

    invoke-virtual {v3, v4}, Lcom/android/phone/InVTCallScreen;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/WindowManager;

    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 8300
    .restart local v0       #display:Landroid/view/Display;
    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v1

    .line 8301
    .restart local v1       #mCurrentOrientation:I
    iget-object v3, p0, Lcom/android/phone/InVTCallScreen$24;->this$0:Lcom/android/phone/InVTCallScreen;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "checking orientation value orientationVal"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    #calls: Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V
    invoke-static {v3, v4}, Lcom/android/phone/InVTCallScreen;->access$500(Lcom/android/phone/InVTCallScreen;Ljava/lang/String;)V

    .line 8302
    packed-switch v1, :pswitch_data_1

    .line 8326
    iget-object v3, p0, Lcom/android/phone/InVTCallScreen$24;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mVTManager:Lsiso/vt/VTManager;
    invoke-static {v3}, Lcom/android/phone/InVTCallScreen;->access$2400(Lcom/android/phone/InVTCallScreen;)Lsiso/vt/VTManager;

    move-result-object v3

    invoke-virtual {v3, v9}, Lsiso/vt/VTManager;->setOrientation(I)V

    .line 8327
    const-string v3, "InVTCallScreen"

    const-string v3, "VTManager.Log.d(LOG_TAG, VTManager.VT_ORIENTATION_PORTAIT_TOP"

    invoke-static {v7, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8328
    iget-object v3, p0, Lcom/android/phone/InVTCallScreen$24;->this$0:Lcom/android/phone/InVTCallScreen;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mCurrentOrientation"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    #calls: Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V
    invoke-static {v3, v4}, Lcom/android/phone/InVTCallScreen;->access$500(Lcom/android/phone/InVTCallScreen;Ljava/lang/String;)V

    .line 8331
    :goto_3
    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Lcom/android/phone/InVTCallScreen$24$2;

    invoke-direct {v3, p0}, Lcom/android/phone/InVTCallScreen$24$2;-><init>(Lcom/android/phone/InVTCallScreen$24;)V

    invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 8339
    .restart local v2       #myThread:Ljava/lang/Thread;
    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    goto/16 :goto_1

    .line 8304
    .end local v2           #myThread:Ljava/lang/Thread;
    :pswitch_4
    iget-object v3, p0, Lcom/android/phone/InVTCallScreen$24;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mVTManager:Lsiso/vt/VTManager;
    invoke-static {v3}, Lcom/android/phone/InVTCallScreen;->access$2400(Lcom/android/phone/InVTCallScreen;)Lsiso/vt/VTManager;

    move-result-object v3

    invoke-virtual {v3, v9}, Lsiso/vt/VTManager;->setOrientation(I)V

    .line 8305
    const-string v3, "InVTCallScreen"

    const-string v3, "VTManager.Log.d(LOG_TAG, VTManager.VT_ORIENTATION_PORTAIT_TOP"

    invoke-static {v7, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8306
    iget-object v3, p0, Lcom/android/phone/InVTCallScreen$24;->this$0:Lcom/android/phone/InVTCallScreen;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mCurrentOrientation"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    #calls: Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V
    invoke-static {v3, v4}, Lcom/android/phone/InVTCallScreen;->access$500(Lcom/android/phone/InVTCallScreen;Ljava/lang/String;)V

    goto :goto_3

    .line 8309
    :pswitch_5
    iget-object v3, p0, Lcom/android/phone/InVTCallScreen$24;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mVTManager:Lsiso/vt/VTManager;
    invoke-static {v3}, Lcom/android/phone/InVTCallScreen;->access$2400(Lcom/android/phone/InVTCallScreen;)Lsiso/vt/VTManager;

    move-result-object v3

    invoke-virtual {v3, v8}, Lsiso/vt/VTManager;->setOrientation(I)V

    .line 8311
    const-string v3, "InVTCallScreen"

    const-string v3, "VTManager.Log.d(LOG_TAG, VTManager.VT_ORIENTATION_LANDSCAPE_BOTTOM"

    invoke-static {v7, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8312
    iget-object v3, p0, Lcom/android/phone/InVTCallScreen$24;->this$0:Lcom/android/phone/InVTCallScreen;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mCurrentOrientation"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    #calls: Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V
    invoke-static {v3, v4}, Lcom/android/phone/InVTCallScreen;->access$500(Lcom/android/phone/InVTCallScreen;Ljava/lang/String;)V

    goto :goto_3

    .line 8315
    :pswitch_6
    iget-object v3, p0, Lcom/android/phone/InVTCallScreen$24;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mVTManager:Lsiso/vt/VTManager;
    invoke-static {v3}, Lcom/android/phone/InVTCallScreen;->access$2400(Lcom/android/phone/InVTCallScreen;)Lsiso/vt/VTManager;

    move-result-object v3

    const/4 v4, 0x3

    invoke-virtual {v3, v4}, Lsiso/vt/VTManager;->setOrientation(I)V

    .line 8316
    const-string v3, "InVTCallScreen"

    const-string v3, "VTManager.Log.d(LOG_TAG, VTManager.VT_ORIENTATION_PORTAIT_BOTTOM"

    invoke-static {v7, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8317
    iget-object v3, p0, Lcom/android/phone/InVTCallScreen$24;->this$0:Lcom/android/phone/InVTCallScreen;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mCurrentOrientation"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    #calls: Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V
    invoke-static {v3, v4}, Lcom/android/phone/InVTCallScreen;->access$500(Lcom/android/phone/InVTCallScreen;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 8321
    :pswitch_7
    iget-object v3, p0, Lcom/android/phone/InVTCallScreen$24;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mVTManager:Lsiso/vt/VTManager;
    invoke-static {v3}, Lcom/android/phone/InVTCallScreen;->access$2400(Lcom/android/phone/InVTCallScreen;)Lsiso/vt/VTManager;

    move-result-object v3

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Lsiso/vt/VTManager;->setOrientation(I)V

    .line 8322
    const-string v3, "InVTCallScreen"

    const-string v3, "VTManager.Log.d(LOG_TAG, VTManager.VT_ORIENTATION_LANDSCAPE_TOP"

    invoke-static {v7, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8323
    iget-object v3, p0, Lcom/android/phone/InVTCallScreen$24;->this$0:Lcom/android/phone/InVTCallScreen;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mCurrentOrientation"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    #calls: Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V
    invoke-static {v3, v4}, Lcom/android/phone/InVTCallScreen;->access$500(Lcom/android/phone/InVTCallScreen;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 8343
    .end local v0           #display:Landroid/view/Display;
    .end local v1           #mCurrentOrientation:I
    :cond_6
    iget-object v3, p0, Lcom/android/phone/InVTCallScreen$24;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->isSurfaceViewSwipe:Z
    invoke-static {v3}, Lcom/android/phone/InVTCallScreen;->access$4500(Lcom/android/phone/InVTCallScreen;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 8344
    iget-object v3, p0, Lcom/android/phone/InVTCallScreen$24;->this$0:Lcom/android/phone/InVTCallScreen;

    iget-object v3, v3, Lcom/android/phone/InVTCallScreen;->far_endsurview:Landroid/view/SurfaceView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/view/SurfaceView;->setBackgroundColor(I)V

    .line 8345
    iget-object v3, p0, Lcom/android/phone/InVTCallScreen$24;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mVTManager:Lsiso/vt/VTManager;
    invoke-static {v3}, Lcom/android/phone/InVTCallScreen;->access$2400(Lcom/android/phone/InVTCallScreen;)Lsiso/vt/VTManager;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 8351
    iget-object v3, p0, Lcom/android/phone/InVTCallScreen$24;->this$0:Lcom/android/phone/InVTCallScreen;

    const-string v4, "window"

    invoke-virtual {v3, v4}, Lcom/android/phone/InVTCallScreen;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/WindowManager;

    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 8352
    .restart local v0       #display:Landroid/view/Display;
    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v1

    .line 8353
    .restart local v1       #mCurrentOrientation:I
    iget-object v3, p0, Lcom/android/phone/InVTCallScreen$24;->this$0:Lcom/android/phone/InVTCallScreen;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "checking orientation value orientationVal"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    #calls: Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V
    invoke-static {v3, v4}, Lcom/android/phone/InVTCallScreen;->access$500(Lcom/android/phone/InVTCallScreen;Ljava/lang/String;)V

    .line 8354
    packed-switch v1, :pswitch_data_2

    .line 8378
    iget-object v3, p0, Lcom/android/phone/InVTCallScreen$24;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mVTManager:Lsiso/vt/VTManager;
    invoke-static {v3}, Lcom/android/phone/InVTCallScreen;->access$2400(Lcom/android/phone/InVTCallScreen;)Lsiso/vt/VTManager;

    move-result-object v3

    invoke-virtual {v3, v9}, Lsiso/vt/VTManager;->setOrientation(I)V

    .line 8379
    const-string v3, "InVTCallScreen"

    const-string v3, "VTManager.Log.d(LOG_TAG, VTManager.VT_ORIENTATION_PORTAIT_TOP"

    invoke-static {v7, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8380
    iget-object v3, p0, Lcom/android/phone/InVTCallScreen$24;->this$0:Lcom/android/phone/InVTCallScreen;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mCurrentOrientation"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    #calls: Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V
    invoke-static {v3, v4}, Lcom/android/phone/InVTCallScreen;->access$500(Lcom/android/phone/InVTCallScreen;Ljava/lang/String;)V

    .line 8383
    :goto_4
    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Lcom/android/phone/InVTCallScreen$24$3;

    invoke-direct {v3, p0}, Lcom/android/phone/InVTCallScreen$24$3;-><init>(Lcom/android/phone/InVTCallScreen$24;)V

    invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 8391
    .restart local v2       #myThread:Ljava/lang/Thread;
    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    goto/16 :goto_1

    .line 8356
    .end local v2           #myThread:Ljava/lang/Thread;
    :pswitch_8
    iget-object v3, p0, Lcom/android/phone/InVTCallScreen$24;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mVTManager:Lsiso/vt/VTManager;
    invoke-static {v3}, Lcom/android/phone/InVTCallScreen;->access$2400(Lcom/android/phone/InVTCallScreen;)Lsiso/vt/VTManager;

    move-result-object v3

    invoke-virtual {v3, v9}, Lsiso/vt/VTManager;->setOrientation(I)V

    .line 8357
    const-string v3, "InVTCallScreen"

    const-string v3, "VTManager.Log.d(LOG_TAG, VTManager.VT_ORIENTATION_PORTAIT_TOP"

    invoke-static {v7, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8358
    iget-object v3, p0, Lcom/android/phone/InVTCallScreen$24;->this$0:Lcom/android/phone/InVTCallScreen;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mCurrentOrientation"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    #calls: Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V
    invoke-static {v3, v4}, Lcom/android/phone/InVTCallScreen;->access$500(Lcom/android/phone/InVTCallScreen;Ljava/lang/String;)V

    goto :goto_4

    .line 8361
    :pswitch_9
    iget-object v3, p0, Lcom/android/phone/InVTCallScreen$24;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mVTManager:Lsiso/vt/VTManager;
    invoke-static {v3}, Lcom/android/phone/InVTCallScreen;->access$2400(Lcom/android/phone/InVTCallScreen;)Lsiso/vt/VTManager;

    move-result-object v3

    invoke-virtual {v3, v8}, Lsiso/vt/VTManager;->setOrientation(I)V

    .line 8363
    const-string v3, "InVTCallScreen"

    const-string v3, "VTManager.Log.d(LOG_TAG, VTManager.VT_ORIENTATION_LANDSCAPE_BOTTOM"

    invoke-static {v7, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8364
    iget-object v3, p0, Lcom/android/phone/InVTCallScreen$24;->this$0:Lcom/android/phone/InVTCallScreen;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mCurrentOrientation"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    #calls: Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V
    invoke-static {v3, v4}, Lcom/android/phone/InVTCallScreen;->access$500(Lcom/android/phone/InVTCallScreen;Ljava/lang/String;)V

    goto :goto_4

    .line 8367
    :pswitch_a
    iget-object v3, p0, Lcom/android/phone/InVTCallScreen$24;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mVTManager:Lsiso/vt/VTManager;
    invoke-static {v3}, Lcom/android/phone/InVTCallScreen;->access$2400(Lcom/android/phone/InVTCallScreen;)Lsiso/vt/VTManager;

    move-result-object v3

    const/4 v4, 0x3

    invoke-virtual {v3, v4}, Lsiso/vt/VTManager;->setOrientation(I)V

    .line 8368
    const-string v3, "InVTCallScreen"

    const-string v3, "VTManager.Log.d(LOG_TAG, VTManager.VT_ORIENTATION_PORTAIT_BOTTOM"

    invoke-static {v7, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8369
    iget-object v3, p0, Lcom/android/phone/InVTCallScreen$24;->this$0:Lcom/android/phone/InVTCallScreen;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mCurrentOrientation"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    #calls: Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V
    invoke-static {v3, v4}, Lcom/android/phone/InVTCallScreen;->access$500(Lcom/android/phone/InVTCallScreen;Ljava/lang/String;)V

    goto/16 :goto_4

    .line 8373
    :pswitch_b
    iget-object v3, p0, Lcom/android/phone/InVTCallScreen$24;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mVTManager:Lsiso/vt/VTManager;
    invoke-static {v3}, Lcom/android/phone/InVTCallScreen;->access$2400(Lcom/android/phone/InVTCallScreen;)Lsiso/vt/VTManager;

    move-result-object v3

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Lsiso/vt/VTManager;->setOrientation(I)V

    .line 8374
    const-string v3, "InVTCallScreen"

    const-string v3, "VTManager.Log.d(LOG_TAG, VTManager.VT_ORIENTATION_LANDSCAPE_TOP"

    invoke-static {v7, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8375
    iget-object v3, p0, Lcom/android/phone/InVTCallScreen$24;->this$0:Lcom/android/phone/InVTCallScreen;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mCurrentOrientation"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    #calls: Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V
    invoke-static {v3, v4}, Lcom/android/phone/InVTCallScreen;->access$500(Lcom/android/phone/InVTCallScreen;Ljava/lang/String;)V

    goto/16 :goto_4

    .line 8395
    .end local v0           #display:Landroid/view/Display;
    .end local v1           #mCurrentOrientation:I
    :cond_7
    const-string v3, "InVTCallScreen"

    const-string v3, "VTManager.SetPreviewDisplay for Far end View"

    invoke-static {v7, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8397
    iget-object v3, p0, Lcom/android/phone/InVTCallScreen$24;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mVTManager:Lsiso/vt/VTManager;
    invoke-static {v3}, Lcom/android/phone/InVTCallScreen;->access$2400(Lcom/android/phone/InVTCallScreen;)Lsiso/vt/VTManager;

    move-result-object v3

    if-eqz v3, :cond_8

    .line 8398
    iget-object v3, p0, Lcom/android/phone/InVTCallScreen$24;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mVTManager:Lsiso/vt/VTManager;
    invoke-static {v3}, Lcom/android/phone/InVTCallScreen;->access$2400(Lcom/android/phone/InVTCallScreen;)Lsiso/vt/VTManager;

    move-result-object v3

    iget-object v4, p0, Lcom/android/phone/InVTCallScreen$24;->this$0:Lcom/android/phone/InVTCallScreen;

    iget-object v4, v4, Lcom/android/phone/InVTCallScreen;->far_endsurhldr:Landroid/view/SurfaceHolder;

    invoke-interface {v4}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v4

    iget-object v5, p0, Lcom/android/phone/InVTCallScreen$24;->this$0:Lcom/android/phone/InVTCallScreen;

    iget-object v5, v5, Lcom/android/phone/InVTCallScreen;->far_endsurhldr:Landroid/view/SurfaceHolder;

    invoke-interface {v5}, Landroid/view/SurfaceHolder;->getSurfaceFrame()Landroid/graphics/Rect;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v5

    iget-object v6, p0, Lcom/android/phone/InVTCallScreen$24;->this$0:Lcom/android/phone/InVTCallScreen;

    iget-object v6, v6, Lcom/android/phone/InVTCallScreen;->far_endsurhldr:Landroid/view/SurfaceHolder;

    invoke-interface {v6}, Landroid/view/SurfaceHolder;->getSurfaceFrame()Landroid/graphics/Rect;

    move-result-object v6

    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v6

    invoke-virtual {v3, v4, v5, v6}, Lsiso/vt/VTManager;->setPreviewDisplay(Landroid/view/Surface;II)V

    .line 8402
    :cond_8
    iget-object v3, p0, Lcom/android/phone/InVTCallScreen$24;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->isFarEndRecord:Z
    invoke-static {v3}, Lcom/android/phone/InVTCallScreen;->access$900(Lcom/android/phone/InVTCallScreen;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 8403
    iget-object v3, p0, Lcom/android/phone/InVTCallScreen$24;->this$0:Lcom/android/phone/InVTCallScreen;

    iget-object v3, v3, Lcom/android/phone/InVTCallScreen;->mRecordFarEndView:Landroid/widget/ImageView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_1

    .line 8405
    :cond_9
    iget-object v3, p0, Lcom/android/phone/InVTCallScreen$24;->this$0:Lcom/android/phone/InVTCallScreen;

    iget-object v3, v3, Lcom/android/phone/InVTCallScreen;->mRecordFarEndView:Landroid/widget/ImageView;

    invoke-virtual {v3, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 8406
    iget-object v3, p0, Lcom/android/phone/InVTCallScreen$24;->this$0:Lcom/android/phone/InVTCallScreen;

    iget-object v3, v3, Lcom/android/phone/InVTCallScreen;->mRecordNearEndView:Landroid/widget/ImageView;

    invoke-virtual {v3, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_1

    .line 8237
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch

    .line 8302
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_4
        :pswitch_7
        :pswitch_6
        :pswitch_5
    .end packed-switch

    .line 8354
    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_8
        :pswitch_b
        :pswitch_a
        :pswitch_9
    .end packed-switch
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 2
    .parameter "holder"

    .prologue
    .line 8414
    const-string v0, "InVTCallScreen"

    const-string v1, "Into Surface Destroyed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8416
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$24;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mVTManager:Lsiso/vt/VTManager;
    invoke-static {v0}, Lcom/android/phone/InVTCallScreen;->access$2400(Lcom/android/phone/InVTCallScreen;)Lsiso/vt/VTManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 8418
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$24;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mVTManager:Lsiso/vt/VTManager;
    invoke-static {v0}, Lcom/android/phone/InVTCallScreen;->access$2400(Lcom/android/phone/InVTCallScreen;)Lsiso/vt/VTManager;

    move-result-object v0

    invoke-virtual {v0}, Lsiso/vt/VTManager;->ResetNearEndDisplay()V

    .line 8419
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$24;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mVTManager:Lsiso/vt/VTManager;
    invoke-static {v0}, Lcom/android/phone/InVTCallScreen;->access$2400(Lcom/android/phone/InVTCallScreen;)Lsiso/vt/VTManager;

    move-result-object v0

    invoke-virtual {v0}, Lsiso/vt/VTManager;->ResetPreviewDisplay()V

    .line 8421
    :cond_0
    return-void
.end method
