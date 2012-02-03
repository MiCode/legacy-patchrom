.class Lcom/android/phone/InVTCallScreen$21;
.super Ljava/lang/Object;
.source "InVTCallScreen.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/InVTCallScreen;->surfaceview_initialize()V
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
    .line 7884
    iput-object p1, p0, Lcom/android/phone/InVTCallScreen$21;->this$0:Lcom/android/phone/InVTCallScreen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 6
    .parameter "v"
    .parameter "event"

    .prologue
    const/16 v1, 0x28

    const/high16 v5, 0x4120

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 7886
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$21;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->isFarEndRecord:Z
    invoke-static {v0}, Lcom/android/phone/InVTCallScreen;->access$900(Lcom/android/phone/InVTCallScreen;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 7887
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    move v0, v3

    .line 8021
    :goto_1
    return v0

    .line 7889
    :pswitch_0
    const-string v0, "InVTCallScreen"

    const-string v1, "Action Move got fired so no context Menu created "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7892
    invoke-static {}, Lcom/android/phone/InVTCallScreen;->access$6008()I

    .line 7893
    invoke-static {}, Lcom/android/phone/InVTCallScreen;->access$6000()I

    move-result v0

    const/16 v1, 0xf

    if-le v0, v1, :cond_1

    .line 7894
    invoke-static {v3}, Lcom/android/phone/InVTCallScreen;->access$6102(Z)Z

    :cond_1
    move v0, v3

    .line 7896
    goto :goto_1

    .line 7898
    :pswitch_1
    invoke-static {v4}, Lcom/android/phone/InVTCallScreen;->access$6102(Z)Z

    .line 7899
    invoke-static {v3}, Lcom/android/phone/InVTCallScreen;->access$6002(I)I

    .line 7965
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$21;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mFirstFarEndViewClicked:Z
    invoke-static {v0}, Lcom/android/phone/InVTCallScreen;->access$5800(Lcom/android/phone/InVTCallScreen;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 7966
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$21;->this$0:Lcom/android/phone/InVTCallScreen;

    #setter for: Lcom/android/phone/InVTCallScreen;->svTopYPos:I
    invoke-static {v0, v1}, Lcom/android/phone/InVTCallScreen;->access$6202(Lcom/android/phone/InVTCallScreen;I)I

    .line 7967
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$21;->this$0:Lcom/android/phone/InVTCallScreen;

    iget-object v1, p0, Lcom/android/phone/InVTCallScreen$21;->this$0:Lcom/android/phone/InVTCallScreen;

    iget-object v1, v1, Lcom/android/phone/InVTCallScreen;->far_endsurview:Landroid/view/SurfaceView;

    invoke-virtual {v1}, Landroid/view/SurfaceView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget v1, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v2, p0, Lcom/android/phone/InVTCallScreen$21;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->svTopYPos:I
    invoke-static {v2}, Lcom/android/phone/InVTCallScreen;->access$6200(Lcom/android/phone/InVTCallScreen;)I

    move-result v2

    add-int/2addr v1, v2

    #setter for: Lcom/android/phone/InVTCallScreen;->svBottomYPos:I
    invoke-static {v0, v1}, Lcom/android/phone/InVTCallScreen;->access$6302(Lcom/android/phone/InVTCallScreen;I)I

    .line 7969
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$21;->this$0:Lcom/android/phone/InVTCallScreen;

    iget-object v1, p0, Lcom/android/phone/InVTCallScreen$21;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->svBottomYPos:I
    invoke-static {v1}, Lcom/android/phone/InVTCallScreen;->access$6300(Lcom/android/phone/InVTCallScreen;)I

    move-result v1

    add-int/lit8 v1, v1, 0x5

    #setter for: Lcom/android/phone/InVTCallScreen;->nvTopYPos:I
    invoke-static {v0, v1}, Lcom/android/phone/InVTCallScreen;->access$6402(Lcom/android/phone/InVTCallScreen;I)I

    .line 7970
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$21;->this$0:Lcom/android/phone/InVTCallScreen;

    iget-object v1, p0, Lcom/android/phone/InVTCallScreen$21;->this$0:Lcom/android/phone/InVTCallScreen;

    iget-object v1, v1, Lcom/android/phone/InVTCallScreen;->near_endsurview:Landroid/view/SurfaceView;

    invoke-virtual {v1}, Landroid/view/SurfaceView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget v1, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v2, p0, Lcom/android/phone/InVTCallScreen$21;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->nvTopYPos:I
    invoke-static {v2}, Lcom/android/phone/InVTCallScreen;->access$6400(Lcom/android/phone/InVTCallScreen;)I

    move-result v2

    add-int/2addr v1, v2

    #setter for: Lcom/android/phone/InVTCallScreen;->nvBottomYPos:I
    invoke-static {v0, v1}, Lcom/android/phone/InVTCallScreen;->access$6502(Lcom/android/phone/InVTCallScreen;I)I

    .line 7973
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    cmpl-float v0, v0, v5

    if-lez v0, :cond_2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget-object v1, p0, Lcom/android/phone/InVTCallScreen$21;->this$0:Lcom/android/phone/InVTCallScreen;

    iget-object v1, v1, Lcom/android/phone/InVTCallScreen;->near_endsurview:Landroid/view/SurfaceView;

    invoke-virtual {v1}, Landroid/view/SurfaceView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget v1, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    add-int/lit8 v1, v1, 0xa

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iget-object v1, p0, Lcom/android/phone/InVTCallScreen$21;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->nvTopYPos:I
    invoke-static {v1}, Lcom/android/phone/InVTCallScreen;->access$6400(Lcom/android/phone/InVTCallScreen;)I

    move-result v1

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iget-object v1, p0, Lcom/android/phone/InVTCallScreen$21;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->nvBottomYPos:I
    invoke-static {v1}, Lcom/android/phone/InVTCallScreen;->access$6500(Lcom/android/phone/InVTCallScreen;)I

    move-result v1

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_2

    .line 7980
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$21;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->isSurfaceViewSwipe:Z
    invoke-static {v0}, Lcom/android/phone/InVTCallScreen;->access$4500(Lcom/android/phone/InVTCallScreen;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 7981
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$21;->this$0:Lcom/android/phone/InVTCallScreen;

    #setter for: Lcom/android/phone/InVTCallScreen;->isSurfaceViewSwipe:Z
    invoke-static {v0, v3}, Lcom/android/phone/InVTCallScreen;->access$4502(Lcom/android/phone/InVTCallScreen;Z)Z

    .line 7988
    :goto_2
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$21;->this$0:Lcom/android/phone/InVTCallScreen;

    #calls: Lcom/android/phone/InVTCallScreen;->swipeSurfaceView()V
    invoke-static {v0}, Lcom/android/phone/InVTCallScreen;->access$6600(Lcom/android/phone/InVTCallScreen;)V

    .line 8016
    :cond_2
    :goto_3
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$21;->this$0:Lcom/android/phone/InVTCallScreen;

    #setter for: Lcom/android/phone/InVTCallScreen;->mFirstFarEndViewClicked:Z
    invoke-static {v0, v3}, Lcom/android/phone/InVTCallScreen;->access$5802(Lcom/android/phone/InVTCallScreen;Z)Z

    .line 8017
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$21;->this$0:Lcom/android/phone/InVTCallScreen;

    #setter for: Lcom/android/phone/InVTCallScreen;->mFirstNearEndViewClicked:Z
    invoke-static {v0, v3}, Lcom/android/phone/InVTCallScreen;->access$5902(Lcom/android/phone/InVTCallScreen;Z)Z

    goto/16 :goto_0

    .line 7983
    :cond_3
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$21;->this$0:Lcom/android/phone/InVTCallScreen;

    #setter for: Lcom/android/phone/InVTCallScreen;->isSurfaceViewSwipe:Z
    invoke-static {v0, v4}, Lcom/android/phone/InVTCallScreen;->access$4502(Lcom/android/phone/InVTCallScreen;Z)Z

    goto :goto_2

    .line 7993
    :cond_4
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$21;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mFirstNearEndViewClicked:Z
    invoke-static {v0}, Lcom/android/phone/InVTCallScreen;->access$5900(Lcom/android/phone/InVTCallScreen;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 7994
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$21;->this$0:Lcom/android/phone/InVTCallScreen;

    #setter for: Lcom/android/phone/InVTCallScreen;->svTopYPos:I
    invoke-static {v0, v1}, Lcom/android/phone/InVTCallScreen;->access$6202(Lcom/android/phone/InVTCallScreen;I)I

    .line 7995
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$21;->this$0:Lcom/android/phone/InVTCallScreen;

    iget-object v1, p0, Lcom/android/phone/InVTCallScreen$21;->this$0:Lcom/android/phone/InVTCallScreen;

    iget-object v1, v1, Lcom/android/phone/InVTCallScreen;->far_endsurview:Landroid/view/SurfaceView;

    invoke-virtual {v1}, Landroid/view/SurfaceView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget v1, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v2, p0, Lcom/android/phone/InVTCallScreen$21;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->svTopYPos:I
    invoke-static {v2}, Lcom/android/phone/InVTCallScreen;->access$6200(Lcom/android/phone/InVTCallScreen;)I

    move-result v2

    add-int/2addr v1, v2

    #setter for: Lcom/android/phone/InVTCallScreen;->svBottomYPos:I
    invoke-static {v0, v1}, Lcom/android/phone/InVTCallScreen;->access$6302(Lcom/android/phone/InVTCallScreen;I)I

    .line 7997
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    cmpl-float v0, v0, v5

    if-lez v0, :cond_2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget-object v1, p0, Lcom/android/phone/InVTCallScreen$21;->this$0:Lcom/android/phone/InVTCallScreen;

    iget-object v1, v1, Lcom/android/phone/InVTCallScreen;->far_endsurview:Landroid/view/SurfaceView;

    invoke-virtual {v1}, Landroid/view/SurfaceView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget v1, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    add-int/lit8 v1, v1, 0xa

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iget-object v1, p0, Lcom/android/phone/InVTCallScreen$21;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->svTopYPos:I
    invoke-static {v1}, Lcom/android/phone/InVTCallScreen;->access$6200(Lcom/android/phone/InVTCallScreen;)I

    move-result v1

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iget-object v1, p0, Lcom/android/phone/InVTCallScreen$21;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->svBottomYPos:I
    invoke-static {v1}, Lcom/android/phone/InVTCallScreen;->access$6300(Lcom/android/phone/InVTCallScreen;)I

    move-result v1

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_2

    .line 8004
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$21;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->isSurfaceViewSwipe:Z
    invoke-static {v0}, Lcom/android/phone/InVTCallScreen;->access$4500(Lcom/android/phone/InVTCallScreen;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 8005
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$21;->this$0:Lcom/android/phone/InVTCallScreen;

    #setter for: Lcom/android/phone/InVTCallScreen;->isSurfaceViewSwipe:Z
    invoke-static {v0, v3}, Lcom/android/phone/InVTCallScreen;->access$4502(Lcom/android/phone/InVTCallScreen;Z)Z

    .line 8012
    :goto_4
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$21;->this$0:Lcom/android/phone/InVTCallScreen;

    #calls: Lcom/android/phone/InVTCallScreen;->swipeSurfaceView()V
    invoke-static {v0}, Lcom/android/phone/InVTCallScreen;->access$6600(Lcom/android/phone/InVTCallScreen;)V

    goto/16 :goto_3

    .line 8007
    :cond_5
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$21;->this$0:Lcom/android/phone/InVTCallScreen;

    #setter for: Lcom/android/phone/InVTCallScreen;->isSurfaceViewSwipe:Z
    invoke-static {v0, v4}, Lcom/android/phone/InVTCallScreen;->access$4502(Lcom/android/phone/InVTCallScreen;Z)Z

    goto :goto_4

    .line 7887
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
