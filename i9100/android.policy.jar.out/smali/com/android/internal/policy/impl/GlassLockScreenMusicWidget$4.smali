.class Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget$4;
.super Ljava/lang/Object;
.source "GlassLockScreenMusicWidget.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mMusicMovingBoxCurrentMarginBottom:I

.field private mMusicMovingBoxCurrentMarginTop:I

.field private mMusicMovingBoxOffset:I

.field private mMusicMovingBoxOrinalY:I

.field private mTextBottom:I

.field private mTextLeft:I

.field private mTextRight:I

.field private mTextTop:I

.field final synthetic this$0:Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;)V
    .locals 1
    .parameter

    .prologue
    .line 350
    iput-object p1, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget$4;->this$0:Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 357
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget$4;->this$0:Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;

    #getter for: Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mHeightDifference:I
    invoke-static {v0}, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->access$600(Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;)I

    move-result v0

    neg-int v0, v0

    iput v0, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget$4;->mMusicMovingBoxCurrentMarginTop:I

    .line 358
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget$4;->this$0:Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;

    #getter for: Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mHeightDifference:I
    invoke-static {v0}, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->access$600(Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;)I

    move-result v0

    iput v0, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget$4;->mMusicMovingBoxCurrentMarginBottom:I

    .line 360
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget$4;->mMusicMovingBoxOffset:I

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 8
    .parameter "v"
    .parameter "event"

    .prologue
    const/16 v4, 0xc8

    const/16 v5, 0x32

    const/4 v7, 0x0

    .line 364
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v0, v1

    .line 366
    .local v0, rawY:I
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget$4;->this$0:Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;

    #getter for: Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;
    invoke-static {v1}, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->access$400(Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;)Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->pokeWakelock()V

    .line 368
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 439
    :cond_0
    :goto_0
    const/4 v1, 0x1

    return v1

    .line 370
    :pswitch_0
    iput v0, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget$4;->mMusicMovingBoxOrinalY:I

    .line 371
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget$4;->this$0:Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;

    #getter for: Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mMusicInfoTextInMin:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->access$700(Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getTop()I

    move-result v1

    iput v1, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget$4;->mTextTop:I

    .line 372
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget$4;->this$0:Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;

    #getter for: Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mMusicInfoTextInMin:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->access$700(Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getLeft()I

    move-result v1

    iput v1, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget$4;->mTextLeft:I

    .line 373
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget$4;->this$0:Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;

    #getter for: Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mMusicInfoTextInMin:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->access$700(Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getRight()I

    move-result v1

    iput v1, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget$4;->mTextRight:I

    .line 374
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget$4;->this$0:Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;

    #getter for: Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mMusicInfoTextInMin:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->access$700(Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getBottom()I

    move-result v1

    iput v1, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget$4;->mTextBottom:I

    goto :goto_0

    .line 378
    :pswitch_1
    iget v1, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget$4;->mMusicMovingBoxOrinalY:I

    sub-int v1, v0, v1

    iput v1, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget$4;->mMusicMovingBoxOffset:I

    .line 379
    const-string v1, "GlassLockScreenMusicWidget"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mMusicMovingBoxOffset = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget$4;->mMusicMovingBoxOffset:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 380
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget$4;->this$0:Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;

    #getter for: Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->isTopLayout:Z
    invoke-static {v1}, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->access$800(Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 381
    iget v1, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget$4;->mMusicMovingBoxOffset:I

    if-lez v1, :cond_1

    iget v1, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget$4;->mMusicMovingBoxOffset:I

    iget-object v2, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget$4;->this$0:Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;

    #getter for: Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mHeightDifference:I
    invoke-static {v2}, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->access$600(Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;)I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 383
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget$4;->this$0:Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;

    iget v2, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget$4;->mMusicMovingBoxCurrentMarginTop:I

    iget-object v3, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget$4;->this$0:Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;

    #getter for: Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mHeightDifference:I
    invoke-static {v3}, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->access$600(Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;)I

    move-result v3

    neg-int v3, v3

    iget v4, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget$4;->mMusicMovingBoxOffset:I

    add-int/2addr v3, v4

    #calls: Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->startTranslateAnimation(III)V
    invoke-static {v1, v2, v3, v5}, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->access$900(Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;III)V

    .line 385
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget$4;->this$0:Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;

    #getter for: Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mMusicInfoTextInMin:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->access$700(Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;)Landroid/widget/TextView;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget$4;->mTextLeft:I

    iget v3, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget$4;->mTextTop:I

    iget v4, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget$4;->mMusicMovingBoxOffset:I

    add-int/2addr v3, v4

    iget v4, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget$4;->mTextRight:I

    iget v5, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget$4;->mTextBottom:I

    iget v6, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget$4;->mMusicMovingBoxOffset:I

    add-int/2addr v5, v6

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/widget/TextView;->layout(IIII)V

    .line 386
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget$4;->this$0:Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;

    #getter for: Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mHeightDifference:I
    invoke-static {v1}, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->access$600(Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;)I

    move-result v1

    neg-int v1, v1

    iget v2, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget$4;->mMusicMovingBoxOffset:I

    add-int/2addr v1, v2

    iput v1, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget$4;->mMusicMovingBoxCurrentMarginTop:I

    goto/16 :goto_0

    .line 387
    :cond_1
    iget v1, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget$4;->mMusicMovingBoxOffset:I

    iget-object v2, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget$4;->this$0:Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;

    #getter for: Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mHeightDifference:I
    invoke-static {v2}, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->access$600(Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;)I

    move-result v2

    if-lt v1, v2, :cond_0

    .line 389
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget$4;->this$0:Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;

    iget v2, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget$4;->mMusicMovingBoxCurrentMarginTop:I

    #calls: Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->startTranslateAnimation(III)V
    invoke-static {v1, v2, v7, v5}, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->access$900(Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;III)V

    .line 391
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget$4;->this$0:Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;

    #getter for: Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mMusicInfoTextInMin:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->access$700(Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;)Landroid/widget/TextView;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget$4;->mTextLeft:I

    iget v3, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget$4;->mTextTop:I

    iget-object v4, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget$4;->this$0:Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;

    #getter for: Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mHeightDifference:I
    invoke-static {v4}, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->access$600(Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;)I

    move-result v4

    add-int/2addr v3, v4

    iget v4, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget$4;->mTextRight:I

    iget v5, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget$4;->mTextBottom:I

    iget-object v6, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget$4;->this$0:Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;

    #getter for: Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mHeightDifference:I
    invoke-static {v6}, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->access$600(Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;)I

    move-result v6

    add-int/2addr v5, v6

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/widget/TextView;->layout(IIII)V

    .line 392
    iput v7, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget$4;->mMusicMovingBoxCurrentMarginTop:I

    goto/16 :goto_0

    .line 396
    :cond_2
    iget v1, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget$4;->mMusicMovingBoxOffset:I

    if-gez v1, :cond_3

    iget v1, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget$4;->mMusicMovingBoxOffset:I

    iget-object v2, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget$4;->this$0:Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;

    #getter for: Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mHeightDifference:I
    invoke-static {v2}, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->access$600(Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;)I

    move-result v2

    neg-int v2, v2

    if-le v1, v2, :cond_3

    .line 398
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget$4;->this$0:Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;

    iget v2, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget$4;->mMusicMovingBoxCurrentMarginBottom:I

    iget-object v3, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget$4;->this$0:Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;

    #getter for: Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mHeightDifference:I
    invoke-static {v3}, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->access$600(Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;)I

    move-result v3

    iget v4, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget$4;->mMusicMovingBoxOffset:I

    add-int/2addr v3, v4

    #calls: Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->startTranslateAnimation(III)V
    invoke-static {v1, v2, v3, v5}, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->access$900(Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;III)V

    .line 400
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget$4;->this$0:Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;

    #getter for: Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mMusicInfoTextInMin:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->access$700(Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;)Landroid/widget/TextView;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget$4;->mTextLeft:I

    iget v3, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget$4;->mTextTop:I

    iget v4, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget$4;->mMusicMovingBoxOffset:I

    add-int/2addr v3, v4

    iget v4, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget$4;->mTextRight:I

    iget v5, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget$4;->mTextBottom:I

    iget v6, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget$4;->mMusicMovingBoxOffset:I

    add-int/2addr v5, v6

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/widget/TextView;->layout(IIII)V

    .line 401
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget$4;->this$0:Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;

    #getter for: Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mHeightDifference:I
    invoke-static {v1}, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->access$600(Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;)I

    move-result v1

    iget v2, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget$4;->mMusicMovingBoxOffset:I

    add-int/2addr v1, v2

    iput v1, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget$4;->mMusicMovingBoxCurrentMarginBottom:I

    goto/16 :goto_0

    .line 402
    :cond_3
    iget v1, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget$4;->mMusicMovingBoxOffset:I

    iget-object v2, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget$4;->this$0:Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;

    #getter for: Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mHeightDifference:I
    invoke-static {v2}, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->access$600(Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;)I

    move-result v2

    neg-int v2, v2

    if-gt v1, v2, :cond_0

    .line 404
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget$4;->this$0:Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;

    iget v2, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget$4;->mMusicMovingBoxCurrentMarginBottom:I

    #calls: Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->startTranslateAnimation(III)V
    invoke-static {v1, v2, v7, v5}, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->access$900(Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;III)V

    .line 406
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget$4;->this$0:Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;

    #getter for: Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mMusicInfoTextInMin:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->access$700(Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;)Landroid/widget/TextView;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget$4;->mTextLeft:I

    iget v3, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget$4;->mTextTop:I

    iget-object v4, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget$4;->this$0:Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;

    #getter for: Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mHeightDifference:I
    invoke-static {v4}, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->access$600(Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;)I

    move-result v4

    sub-int/2addr v3, v4

    iget v4, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget$4;->mTextRight:I

    iget v5, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget$4;->mTextBottom:I

    iget-object v6, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget$4;->this$0:Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;

    #getter for: Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mHeightDifference:I
    invoke-static {v6}, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->access$600(Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;)I

    move-result v6

    sub-int/2addr v5, v6

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/widget/TextView;->layout(IIII)V

    .line 407
    iput v7, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget$4;->mMusicMovingBoxCurrentMarginBottom:I

    goto/16 :goto_0

    .line 413
    :pswitch_2
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget$4;->this$0:Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;

    #getter for: Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->isTopLayout:Z
    invoke-static {v1}, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->access$800(Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 414
    iget v1, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget$4;->mMusicMovingBoxCurrentMarginTop:I

    iget-object v2, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget$4;->this$0:Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;

    #getter for: Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mHeightDifference:I
    invoke-static {v2}, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->access$600(Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;)I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    neg-int v2, v2

    if-ge v1, v2, :cond_4

    .line 416
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget$4;->this$0:Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;

    iget v2, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget$4;->mMusicMovingBoxCurrentMarginTop:I

    iget-object v3, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget$4;->this$0:Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;

    #getter for: Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mHeightDifference:I
    invoke-static {v3}, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->access$600(Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;)I

    move-result v3

    neg-int v3, v3

    #calls: Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->startTranslateAnimation(III)V
    invoke-static {v1, v2, v3, v4}, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->access$900(Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;III)V

    .line 418
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget$4;->this$0:Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;

    #getter for: Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mMusicInfoTextInMin:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->access$700(Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;)Landroid/widget/TextView;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget$4;->mTextLeft:I

    iget v3, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget$4;->mTextTop:I

    iget v4, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget$4;->mTextRight:I

    iget v5, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget$4;->mTextBottom:I

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/widget/TextView;->layout(IIII)V

    .line 423
    :goto_1
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget$4;->this$0:Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;

    #getter for: Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mHeightDifference:I
    invoke-static {v1}, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->access$600(Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;)I

    move-result v1

    neg-int v1, v1

    iput v1, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget$4;->mMusicMovingBoxCurrentMarginTop:I

    goto/16 :goto_0

    .line 421
    :cond_4
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget$4;->this$0:Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;

    iget v2, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget$4;->mMusicMovingBoxCurrentMarginTop:I

    #calls: Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->setMaxLayout(I)V
    invoke-static {v1, v2}, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->access$1000(Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;I)V

    goto :goto_1

    .line 426
    :cond_5
    iget v1, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget$4;->mMusicMovingBoxCurrentMarginBottom:I

    iget-object v2, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget$4;->this$0:Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;

    #getter for: Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mHeightDifference:I
    invoke-static {v2}, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->access$600(Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;)I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    if-le v1, v2, :cond_6

    .line 428
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget$4;->this$0:Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;

    iget v2, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget$4;->mMusicMovingBoxCurrentMarginBottom:I

    iget-object v3, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget$4;->this$0:Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;

    #getter for: Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mHeightDifference:I
    invoke-static {v3}, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->access$600(Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;)I

    move-result v3

    #calls: Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->startTranslateAnimation(III)V
    invoke-static {v1, v2, v3, v4}, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->access$900(Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;III)V

    .line 430
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget$4;->this$0:Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;

    #getter for: Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mMusicInfoTextInMin:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->access$700(Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;)Landroid/widget/TextView;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget$4;->mTextLeft:I

    iget v3, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget$4;->mTextTop:I

    iget v4, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget$4;->mTextRight:I

    iget v5, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget$4;->mTextBottom:I

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/widget/TextView;->layout(IIII)V

    .line 435
    :goto_2
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget$4;->this$0:Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;

    #getter for: Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mHeightDifference:I
    invoke-static {v1}, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->access$600(Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;)I

    move-result v1

    iput v1, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget$4;->mMusicMovingBoxCurrentMarginBottom:I

    goto/16 :goto_0

    .line 433
    :cond_6
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget$4;->this$0:Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;

    iget v2, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget$4;->mMusicMovingBoxCurrentMarginBottom:I

    #calls: Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->setMaxLayout(I)V
    invoke-static {v1, v2}, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->access$1000(Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;I)V

    goto :goto_2

    .line 368
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
