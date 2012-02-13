.class Lcom/motorola/CameraF/View/Control/OnScreenControllerPremium$1;
.super Ljava/lang/Object;
.source "OnScreenControllerPremium.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/CameraF/View/Control/OnScreenControllerPremium;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/motorola/CameraF/View/Control/OnScreenControllerPremium;


# direct methods
.method constructor <init>(Lcom/motorola/CameraF/View/Control/OnScreenControllerPremium;)V
    .locals 0
    .parameter

    .prologue
    .line 508
    iput-object p1, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerPremium$1;->this$0:Lcom/motorola/CameraF/View/Control/OnScreenControllerPremium;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 4
    .parameter "animation"

    .prologue
    const/4 v3, 0x1

    const-string v1, "MotoOnScreenControllerPremium"

    .line 490
    iget-object v0, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerPremium$1;->this$0:Lcom/motorola/CameraF/View/Control/OnScreenControllerPremium;

    #getter for: Lcom/motorola/CameraF/View/Control/OnScreenControllerPremium;->mStatus:I
    invoke-static {v0}, Lcom/motorola/CameraF/View/Control/OnScreenControllerPremium;->access$000(Lcom/motorola/CameraF/View/Control/OnScreenControllerPremium;)I

    move-result v0

    if-eq v0, v3, :cond_0

    .line 502
    :goto_0
    return-void

    .line 491
    :cond_0
    iget-object v0, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerPremium$1;->this$0:Lcom/motorola/CameraF/View/Control/OnScreenControllerPremium;

    #getter for: Lcom/motorola/CameraF/View/Control/OnScreenControllerPremium;->mIsPre:Z
    invoke-static {v0}, Lcom/motorola/CameraF/View/Control/OnScreenControllerPremium;->access$100(Lcom/motorola/CameraF/View/Control/OnScreenControllerPremium;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 492
    const-string v0, "MotoOnScreenControllerPremium"

    const-string v0, "Scenes right/pre animation finished"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 493
    iget-object v0, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerPremium$1;->this$0:Lcom/motorola/CameraF/View/Control/OnScreenControllerPremium;

    iget-object v1, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerPremium$1;->this$0:Lcom/motorola/CameraF/View/Control/OnScreenControllerPremium;

    #getter for: Lcom/motorola/CameraF/View/Control/OnScreenControllerPremium;->mScenesIndicator:Lcom/motorola/CameraF/View/IndicatorView;
    invoke-static {v1}, Lcom/motorola/CameraF/View/Control/OnScreenControllerPremium;->access$300(Lcom/motorola/CameraF/View/Control/OnScreenControllerPremium;)Lcom/motorola/CameraF/View/IndicatorView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/motorola/CameraF/View/IndicatorView;->next()I

    move-result v1

    #setter for: Lcom/motorola/CameraF/View/Control/OnScreenControllerPremium;->mCurrentScenes:I
    invoke-static {v0, v1}, Lcom/motorola/CameraF/View/Control/OnScreenControllerPremium;->access$202(Lcom/motorola/CameraF/View/Control/OnScreenControllerPremium;I)I

    .line 494
    iget-object v1, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerPremium$1;->this$0:Lcom/motorola/CameraF/View/Control/OnScreenControllerPremium;

    iget-object v0, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerPremium$1;->this$0:Lcom/motorola/CameraF/View/Control/OnScreenControllerPremium;

    #getter for: Lcom/motorola/CameraF/View/Control/OnScreenControllerPremium;->mSceneItemList:Ljava/util/List;
    invoke-static {v0}, Lcom/motorola/CameraF/View/Control/OnScreenControllerPremium;->access$400(Lcom/motorola/CameraF/View/Control/OnScreenControllerPremium;)Ljava/util/List;

    move-result-object v0

    iget-object v2, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerPremium$1;->this$0:Lcom/motorola/CameraF/View/Control/OnScreenControllerPremium;

    #getter for: Lcom/motorola/CameraF/View/Control/OnScreenControllerPremium;->mCurrentScenes:I
    invoke-static {v2}, Lcom/motorola/CameraF/View/Control/OnScreenControllerPremium;->access$200(Lcom/motorola/CameraF/View/Control/OnScreenControllerPremium;)I

    move-result v2

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    #setter for: Lcom/motorola/CameraF/View/Control/OnScreenControllerPremium;->mCurrentScenes:I
    invoke-static {v1, v0}, Lcom/motorola/CameraF/View/Control/OnScreenControllerPremium;->access$202(Lcom/motorola/CameraF/View/Control/OnScreenControllerPremium;I)I

    .line 495
    iget-object v0, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerPremium$1;->this$0:Lcom/motorola/CameraF/View/Control/OnScreenControllerPremium;

    iget-object v1, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerPremium$1;->this$0:Lcom/motorola/CameraF/View/Control/OnScreenControllerPremium;

    #getter for: Lcom/motorola/CameraF/View/Control/OnScreenControllerPremium;->mCurrentScenes:I
    invoke-static {v1}, Lcom/motorola/CameraF/View/Control/OnScreenControllerPremium;->access$200(Lcom/motorola/CameraF/View/Control/OnScreenControllerPremium;)I

    move-result v1

    #calls: Lcom/motorola/CameraF/View/Control/OnScreenControllerPremium;->changeCurrentScenes(IZ)V
    invoke-static {v0, v1, v3}, Lcom/motorola/CameraF/View/Control/OnScreenControllerPremium;->access$500(Lcom/motorola/CameraF/View/Control/OnScreenControllerPremium;IZ)V

    goto :goto_0

    .line 497
    :cond_1
    const-string v0, "MotoOnScreenControllerPremium"

    const-string v0, "Scenes left/next animation finished"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 498
    iget-object v0, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerPremium$1;->this$0:Lcom/motorola/CameraF/View/Control/OnScreenControllerPremium;

    iget-object v1, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerPremium$1;->this$0:Lcom/motorola/CameraF/View/Control/OnScreenControllerPremium;

    #getter for: Lcom/motorola/CameraF/View/Control/OnScreenControllerPremium;->mScenesIndicator:Lcom/motorola/CameraF/View/IndicatorView;
    invoke-static {v1}, Lcom/motorola/CameraF/View/Control/OnScreenControllerPremium;->access$300(Lcom/motorola/CameraF/View/Control/OnScreenControllerPremium;)Lcom/motorola/CameraF/View/IndicatorView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/motorola/CameraF/View/IndicatorView;->previous()I

    move-result v1

    #setter for: Lcom/motorola/CameraF/View/Control/OnScreenControllerPremium;->mCurrentScenes:I
    invoke-static {v0, v1}, Lcom/motorola/CameraF/View/Control/OnScreenControllerPremium;->access$202(Lcom/motorola/CameraF/View/Control/OnScreenControllerPremium;I)I

    .line 499
    iget-object v1, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerPremium$1;->this$0:Lcom/motorola/CameraF/View/Control/OnScreenControllerPremium;

    iget-object v0, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerPremium$1;->this$0:Lcom/motorola/CameraF/View/Control/OnScreenControllerPremium;

    #getter for: Lcom/motorola/CameraF/View/Control/OnScreenControllerPremium;->mSceneItemList:Ljava/util/List;
    invoke-static {v0}, Lcom/motorola/CameraF/View/Control/OnScreenControllerPremium;->access$400(Lcom/motorola/CameraF/View/Control/OnScreenControllerPremium;)Ljava/util/List;

    move-result-object v0

    iget-object v2, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerPremium$1;->this$0:Lcom/motorola/CameraF/View/Control/OnScreenControllerPremium;

    #getter for: Lcom/motorola/CameraF/View/Control/OnScreenControllerPremium;->mCurrentScenes:I
    invoke-static {v2}, Lcom/motorola/CameraF/View/Control/OnScreenControllerPremium;->access$200(Lcom/motorola/CameraF/View/Control/OnScreenControllerPremium;)I

    move-result v2

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    #setter for: Lcom/motorola/CameraF/View/Control/OnScreenControllerPremium;->mCurrentScenes:I
    invoke-static {v1, v0}, Lcom/motorola/CameraF/View/Control/OnScreenControllerPremium;->access$202(Lcom/motorola/CameraF/View/Control/OnScreenControllerPremium;I)I

    .line 500
    iget-object v0, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerPremium$1;->this$0:Lcom/motorola/CameraF/View/Control/OnScreenControllerPremium;

    iget-object v1, p0, Lcom/motorola/CameraF/View/Control/OnScreenControllerPremium$1;->this$0:Lcom/motorola/CameraF/View/Control/OnScreenControllerPremium;

    #getter for: Lcom/motorola/CameraF/View/Control/OnScreenControllerPremium;->mCurrentScenes:I
    invoke-static {v1}, Lcom/motorola/CameraF/View/Control/OnScreenControllerPremium;->access$200(Lcom/motorola/CameraF/View/Control/OnScreenControllerPremium;)I

    move-result v1

    #calls: Lcom/motorola/CameraF/View/Control/OnScreenControllerPremium;->changeCurrentScenes(IZ)V
    invoke-static {v0, v1, v3}, Lcom/motorola/CameraF/View/Control/OnScreenControllerPremium;->access$500(Lcom/motorola/CameraF/View/Control/OnScreenControllerPremium;IZ)V

    goto/16 :goto_0
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 506
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 2
    .parameter "animation"

    .prologue
    .line 509
    invoke-static {}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getCamSetting()Lcom/motorola/CameraF/CamSetting/CamSetting;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/motorola/CameraF/CamSetting/CamSetting;->setInScroll(Z)V

    .line 510
    return-void
.end method
