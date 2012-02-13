.class Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl$OnSelectedHandler;
.super Landroid/os/Handler;
.source "OnScreenControllerOpengl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OnSelectedHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;


# direct methods
.method private constructor <init>(Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;)V
    .locals 0
    .parameter

    .prologue
    .line 188
    iput-object p1, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl$OnSelectedHandler;->this$0:Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 188
    invoke-direct {p0, p1}, Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl$OnSelectedHandler;-><init>(Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7
    .parameter "msg"

    .prologue
    const/4 v5, 0x1

    const-string v6, "MotoOnScreenControllerOpenGL"

    .line 190
    const-string v3, "MotoOnScreenControllerOpenGL"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "OnSelectedHandler: msg="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p1, Landroid/os/Message;->what:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    iget v3, p1, Landroid/os/Message;->what:I

    packed-switch v3, :pswitch_data_0

    .line 235
    :cond_0
    :goto_0
    return-void

    .line 193
    :pswitch_0
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 194
    .local v0, scenenum:I
    iget-object v3, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl$OnSelectedHandler;->this$0:Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;

    #calls: Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;->changeCurrentScenes(IZ)V
    invoke-static {v3, v0, v5}, Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;->access$100(Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;IZ)V

    goto :goto_0

    .line 198
    .end local v0           #scenenum:I
    :pswitch_1
    iget v1, p1, Landroid/os/Message;->arg1:I

    .line 199
    .local v1, x:I
    iget v2, p1, Landroid/os/Message;->arg2:I

    .line 200
    .local v2, y:I
    const-string v3, "MotoOnScreenControllerOpenGL"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleMessage: CameraGlobalType.MSG_SCENECLICKED: x="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",y="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    iget-object v3, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl$OnSelectedHandler;->this$0:Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;

    #getter for: Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;->mStatus:I
    invoke-static {v3}, Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;->access$200(Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;)I

    move-result v3

    if-eq v3, v5, :cond_1

    iget-object v3, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl$OnSelectedHandler;->this$0:Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;

    #getter for: Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;->mStatus:I
    invoke-static {v3}, Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;->access$200(Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;)I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    :cond_1
    iget-object v3, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl$OnSelectedHandler;->this$0:Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;

    #getter for: Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;->mScenesGLView:Lcom/motorola/CameraF/View/Opengl/scenesSurfaceView;
    invoke-static {v3}, Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;->access$300(Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;)Lcom/motorola/CameraF/View/Opengl/scenesSurfaceView;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 203
    iget-object v3, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl$OnSelectedHandler;->this$0:Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;

    #getter for: Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;->mScenesGLView:Lcom/motorola/CameraF/View/Opengl/scenesSurfaceView;
    invoke-static {v3}, Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;->access$300(Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;)Lcom/motorola/CameraF/View/Opengl/scenesSurfaceView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/motorola/CameraF/View/Opengl/scenesSurfaceView;->getWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x6

    if-ge v1, v3, :cond_2

    iget-object v3, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl$OnSelectedHandler;->this$0:Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;

    #getter for: Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;->mScenesGLView:Lcom/motorola/CameraF/View/Opengl/scenesSurfaceView;
    invoke-static {v3}, Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;->access$300(Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;)Lcom/motorola/CameraF/View/Opengl/scenesSurfaceView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/motorola/CameraF/View/Opengl/scenesSurfaceView;->getHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x5

    if-le v2, v3, :cond_2

    iget-object v3, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl$OnSelectedHandler;->this$0:Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;

    #getter for: Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;->mScenesGLView:Lcom/motorola/CameraF/View/Opengl/scenesSurfaceView;
    invoke-static {v3}, Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;->access$300(Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;)Lcom/motorola/CameraF/View/Opengl/scenesSurfaceView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/motorola/CameraF/View/Opengl/scenesSurfaceView;->getHeight()I

    move-result v3

    mul-int/lit8 v3, v3, 0x4

    div-int/lit8 v3, v3, 0x5

    if-ge v2, v3, :cond_2

    .line 205
    iget-object v3, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl$OnSelectedHandler;->this$0:Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;

    invoke-virtual {v3}, Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;->onClickPre()V

    goto :goto_0

    .line 206
    :cond_2
    iget-object v3, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl$OnSelectedHandler;->this$0:Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;

    #getter for: Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;->mScenesGLView:Lcom/motorola/CameraF/View/Opengl/scenesSurfaceView;
    invoke-static {v3}, Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;->access$300(Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;)Lcom/motorola/CameraF/View/Opengl/scenesSurfaceView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/motorola/CameraF/View/Opengl/scenesSurfaceView;->getWidth()I

    move-result v3

    mul-int/lit8 v3, v3, 0x5

    div-int/lit8 v3, v3, 0x6

    if-le v1, v3, :cond_3

    iget-object v3, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl$OnSelectedHandler;->this$0:Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;

    #getter for: Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;->mScenesGLView:Lcom/motorola/CameraF/View/Opengl/scenesSurfaceView;
    invoke-static {v3}, Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;->access$300(Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;)Lcom/motorola/CameraF/View/Opengl/scenesSurfaceView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/motorola/CameraF/View/Opengl/scenesSurfaceView;->getHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x5

    if-le v2, v3, :cond_3

    iget-object v3, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl$OnSelectedHandler;->this$0:Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;

    #getter for: Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;->mScenesGLView:Lcom/motorola/CameraF/View/Opengl/scenesSurfaceView;
    invoke-static {v3}, Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;->access$300(Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;)Lcom/motorola/CameraF/View/Opengl/scenesSurfaceView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/motorola/CameraF/View/Opengl/scenesSurfaceView;->getHeight()I

    move-result v3

    mul-int/lit8 v3, v3, 0x4

    div-int/lit8 v3, v3, 0x5

    if-ge v2, v3, :cond_3

    .line 208
    iget-object v3, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl$OnSelectedHandler;->this$0:Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;

    invoke-virtual {v3}, Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;->onClickNext()V

    goto/16 :goto_0

    .line 209
    :cond_3
    iget-object v3, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl$OnSelectedHandler;->this$0:Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;

    #getter for: Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;->mScenesGLView:Lcom/motorola/CameraF/View/Opengl/scenesSurfaceView;
    invoke-static {v3}, Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;->access$300(Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;)Lcom/motorola/CameraF/View/Opengl/scenesSurfaceView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/motorola/CameraF/View/Opengl/scenesSurfaceView;->getWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x3

    if-le v1, v3, :cond_0

    iget-object v3, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl$OnSelectedHandler;->this$0:Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;

    #getter for: Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;->mScenesGLView:Lcom/motorola/CameraF/View/Opengl/scenesSurfaceView;
    invoke-static {v3}, Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;->access$300(Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;)Lcom/motorola/CameraF/View/Opengl/scenesSurfaceView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/motorola/CameraF/View/Opengl/scenesSurfaceView;->getWidth()I

    move-result v3

    mul-int/lit8 v3, v3, 0x2

    div-int/lit8 v3, v3, 0x3

    if-ge v1, v3, :cond_0

    iget-object v3, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl$OnSelectedHandler;->this$0:Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;

    #getter for: Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;->mScenesGLView:Lcom/motorola/CameraF/View/Opengl/scenesSurfaceView;
    invoke-static {v3}, Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;->access$300(Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;)Lcom/motorola/CameraF/View/Opengl/scenesSurfaceView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/motorola/CameraF/View/Opengl/scenesSurfaceView;->getHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x5

    if-le v2, v3, :cond_0

    iget-object v3, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl$OnSelectedHandler;->this$0:Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;

    #getter for: Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;->mScenesGLView:Lcom/motorola/CameraF/View/Opengl/scenesSurfaceView;
    invoke-static {v3}, Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;->access$300(Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;)Lcom/motorola/CameraF/View/Opengl/scenesSurfaceView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/motorola/CameraF/View/Opengl/scenesSurfaceView;->getHeight()I

    move-result v3

    mul-int/lit8 v3, v3, 0x4

    div-int/lit8 v3, v3, 0x5

    if-ge v2, v3, :cond_0

    .line 213
    iget-object v3, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl$OnSelectedHandler;->this$0:Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;

    invoke-virtual {v3, v5}, Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;->hideStatusSet(Z)V

    .line 215
    iget-object v3, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl$OnSelectedHandler;->this$0:Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;

    iget-object v3, v3, Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;->mMainHandler:Landroid/os/Handler;

    const/16 v4, 0xd

    iget-object v5, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl$OnSelectedHandler;->this$0:Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;

    #getter for: Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;->mSceneFadeoutTime:I
    invoke-static {v5}, Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;->access$400(Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;)I

    move-result v5

    int-to-long v5, v5

    invoke-virtual {v3, v4, v5, v6}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    .line 221
    .end local v1           #x:I
    .end local v2           #y:I
    :pswitch_2
    iget-object v3, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl$OnSelectedHandler;->this$0:Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;

    #getter for: Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;->mScenesGLView:Lcom/motorola/CameraF/View/Opengl/scenesSurfaceView;
    invoke-static {v3}, Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;->access$300(Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;)Lcom/motorola/CameraF/View/Opengl/scenesSurfaceView;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 222
    iget-object v3, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl$OnSelectedHandler;->this$0:Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;

    #getter for: Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;->mScenesGLView:Lcom/motorola/CameraF/View/Opengl/scenesSurfaceView;
    invoke-static {v3}, Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;->access$300(Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;)Lcom/motorola/CameraF/View/Opengl/scenesSurfaceView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/motorola/CameraF/View/Opengl/scenesSurfaceView;->onPause()V

    .line 223
    iget-object v3, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl$OnSelectedHandler;->this$0:Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;

    #getter for: Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;->mScenesGLView:Lcom/motorola/CameraF/View/Opengl/scenesSurfaceView;
    invoke-static {v3}, Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;->access$300(Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;)Lcom/motorola/CameraF/View/Opengl/scenesSurfaceView;

    move-result-object v3

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Lcom/motorola/CameraF/View/Opengl/scenesSurfaceView;->setVisibility(I)V

    .line 224
    iget-object v3, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl$OnSelectedHandler;->this$0:Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;

    #getter for: Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;->mScenesSet:Landroid/widget/RelativeLayout;
    invoke-static {v3}, Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;->access$500(Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;)Landroid/widget/RelativeLayout;

    move-result-object v3

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 225
    iget-object v3, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl$OnSelectedHandler;->this$0:Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;

    invoke-virtual {v3}, Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;->showRightSet()V

    goto/16 :goto_0

    .line 230
    :pswitch_3
    iget-object v3, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl$OnSelectedHandler;->this$0:Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;

    #getter for: Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;->mScenesGLView:Lcom/motorola/CameraF/View/Opengl/scenesSurfaceView;
    invoke-static {v3}, Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;->access$300(Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;)Lcom/motorola/CameraF/View/Opengl/scenesSurfaceView;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 231
    iget-object v3, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl$OnSelectedHandler;->this$0:Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;

    #getter for: Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;->mScenesGLView:Lcom/motorola/CameraF/View/Opengl/scenesSurfaceView;
    invoke-static {v3}, Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;->access$300(Lcom/motorola/CameraF/View/Control/OnScreenControllerOpengl;)Lcom/motorola/CameraF/View/Opengl/scenesSurfaceView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/motorola/CameraF/View/Opengl/scenesSurfaceView;->requestRender()V

    goto/16 :goto_0

    .line 191
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method
