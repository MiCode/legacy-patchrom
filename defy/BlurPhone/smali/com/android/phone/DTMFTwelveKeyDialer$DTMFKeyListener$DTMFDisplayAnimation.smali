.class Lcom/android/phone/DTMFTwelveKeyDialer$DTMFKeyListener$DTMFDisplayAnimation;
.super Landroid/os/Handler;
.source "DTMFTwelveKeyDialer.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/DTMFTwelveKeyDialer$DTMFKeyListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DTMFDisplayAnimation"
.end annotation


# static fields
.field private static final EVENT_FADE_IN:I = -0x1

.field private static final EVENT_FADE_OUT:I = -0x2

.field private static final FADE_IN_ANIMATION_TIME:I = 0x1f4

.field private static final FADE_OUT_ANIMATION_TIME:I = 0x3e8

.field private static final FADE_OUT_TIMEOUT:I = 0x1770

.field private static final WAIT_FOR_USER_INPUT:J = 0x7fffffffffffffffL


# instance fields
.field private mDTMFDisplay:Landroid/view/View;

.field private mFadeIn:Landroid/view/animation/AlphaAnimation;

.field private mFadeOut:Landroid/view/animation/AlphaAnimation;

.field final synthetic this$1:Lcom/android/phone/DTMFTwelveKeyDialer$DTMFKeyListener;


# direct methods
.method constructor <init>(Lcom/android/phone/DTMFTwelveKeyDialer$DTMFKeyListener;Landroid/widget/EditText;)V
    .locals 6
    .parameter
    .parameter "display"

    .prologue
    const/4 v5, 0x1

    const/high16 v4, 0x3f80

    const/4 v3, 0x0

    .line 295
    iput-object p1, p0, Lcom/android/phone/DTMFTwelveKeyDialer$DTMFKeyListener$DTMFDisplayAnimation;->this$1:Lcom/android/phone/DTMFTwelveKeyDialer$DTMFKeyListener;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 296
    iput-object p2, p0, Lcom/android/phone/DTMFTwelveKeyDialer$DTMFKeyListener$DTMFDisplayAnimation;->mDTMFDisplay:Landroid/view/View;

    .line 299
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v0, v3, v4}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    iput-object v0, p0, Lcom/android/phone/DTMFTwelveKeyDialer$DTMFKeyListener$DTMFDisplayAnimation;->mFadeIn:Landroid/view/animation/AlphaAnimation;

    .line 300
    iget-object v0, p0, Lcom/android/phone/DTMFTwelveKeyDialer$DTMFKeyListener$DTMFDisplayAnimation;->mFadeIn:Landroid/view/animation/AlphaAnimation;

    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 301
    iget-object v0, p0, Lcom/android/phone/DTMFTwelveKeyDialer$DTMFKeyListener$DTMFDisplayAnimation;->mFadeIn:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v0, p0}, Landroid/view/animation/AlphaAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 302
    iget-object v0, p0, Lcom/android/phone/DTMFTwelveKeyDialer$DTMFKeyListener$DTMFDisplayAnimation;->mFadeIn:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v0, v5}, Landroid/view/animation/AlphaAnimation;->setFillBefore(Z)V

    .line 305
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v0, v4, v3}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    iput-object v0, p0, Lcom/android/phone/DTMFTwelveKeyDialer$DTMFKeyListener$DTMFDisplayAnimation;->mFadeOut:Landroid/view/animation/AlphaAnimation;

    .line 306
    iget-object v0, p0, Lcom/android/phone/DTMFTwelveKeyDialer$DTMFKeyListener$DTMFDisplayAnimation;->mFadeOut:Landroid/view/animation/AlphaAnimation;

    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 307
    iget-object v0, p0, Lcom/android/phone/DTMFTwelveKeyDialer$DTMFKeyListener$DTMFDisplayAnimation;->mFadeOut:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v0, p0}, Landroid/view/animation/AlphaAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 308
    iget-object v0, p0, Lcom/android/phone/DTMFTwelveKeyDialer$DTMFKeyListener$DTMFDisplayAnimation;->mFadeOut:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v0, v5}, Landroid/view/animation/AlphaAnimation;->setFillBefore(Z)V

    .line 309
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 282
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 290
    iget-object v0, p0, Lcom/android/phone/DTMFTwelveKeyDialer$DTMFKeyListener$DTMFDisplayAnimation;->mDTMFDisplay:Landroid/view/View;

    iget-object v1, p0, Lcom/android/phone/DTMFTwelveKeyDialer$DTMFKeyListener$DTMFDisplayAnimation;->mFadeOut:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v0, v1}, Landroid/view/View;->setAnimation(Landroid/view/animation/Animation;)V

    .line 293
    :goto_0
    return-void

    .line 285
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/phone/DTMFTwelveKeyDialer$DTMFKeyListener$DTMFDisplayAnimation;->prepareFadeIn()V

    goto :goto_0

    .line 282
    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 1
    .parameter "animation"

    .prologue
    .line 269
    iget-object v0, p0, Lcom/android/phone/DTMFTwelveKeyDialer$DTMFKeyListener$DTMFDisplayAnimation;->mFadeOut:Landroid/view/animation/AlphaAnimation;

    if-ne p1, v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/phone/DTMFTwelveKeyDialer$DTMFKeyListener$DTMFDisplayAnimation;->sendEmptyMessage(I)Z

    .line 270
    return-void

    .line 269
    :cond_0
    const/4 v0, -0x2

    goto :goto_0
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 275
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 262
    return-void
.end method

.method onKeyDown()V
    .locals 5

    .prologue
    .line 324
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    .line 326
    .local v0, currentAnimTime:J
    iget-object v2, p0, Lcom/android/phone/DTMFTwelveKeyDialer$DTMFKeyListener$DTMFDisplayAnimation;->mDTMFDisplay:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v2

    iget-object v3, p0, Lcom/android/phone/DTMFTwelveKeyDialer$DTMFKeyListener$DTMFDisplayAnimation;->mFadeOut:Landroid/view/animation/AlphaAnimation;

    if-ne v2, v3, :cond_1

    iget-object v2, p0, Lcom/android/phone/DTMFTwelveKeyDialer$DTMFKeyListener$DTMFDisplayAnimation;->mFadeOut:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v2}, Landroid/view/animation/AlphaAnimation;->getStartTime()J

    move-result-wide v2

    cmp-long v2, v2, v0

    if-gez v2, :cond_1

    .line 329
    iget-object v2, p0, Lcom/android/phone/DTMFTwelveKeyDialer$DTMFKeyListener$DTMFDisplayAnimation;->mFadeOut:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v2}, Landroid/view/animation/AlphaAnimation;->reset()V

    .line 336
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/android/phone/DTMFTwelveKeyDialer$DTMFKeyListener$DTMFDisplayAnimation;->mFadeOut:Landroid/view/animation/AlphaAnimation;

    const-wide v3, 0x7fffffffffffffffL

    invoke-virtual {v2, v3, v4}, Landroid/view/animation/AlphaAnimation;->setStartTime(J)V

    .line 337
    return-void

    .line 330
    :cond_1
    iget-object v2, p0, Lcom/android/phone/DTMFTwelveKeyDialer$DTMFKeyListener$DTMFDisplayAnimation;->mFadeIn:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v2}, Landroid/view/animation/AlphaAnimation;->getStartTime()J

    move-result-wide v2

    cmp-long v2, v2, v0

    if-lez v2, :cond_0

    .line 332
    iget-object v2, p0, Lcom/android/phone/DTMFTwelveKeyDialer$DTMFKeyListener$DTMFDisplayAnimation;->mFadeIn:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v2}, Landroid/view/animation/AlphaAnimation;->start()V

    goto :goto_0
.end method

.method onKeyUp()V
    .locals 5

    .prologue
    .line 344
    iget-object v0, p0, Lcom/android/phone/DTMFTwelveKeyDialer$DTMFKeyListener$DTMFDisplayAnimation;->mFadeOut:Landroid/view/animation/AlphaAnimation;

    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v1

    const-wide/16 v3, 0x1770

    add-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;->setStartTime(J)V

    .line 346
    return-void
.end method

.method prepareFadeIn()V
    .locals 3

    .prologue
    .line 315
    iget-object v0, p0, Lcom/android/phone/DTMFTwelveKeyDialer$DTMFKeyListener$DTMFDisplayAnimation;->mDTMFDisplay:Landroid/view/View;

    iget-object v1, p0, Lcom/android/phone/DTMFTwelveKeyDialer$DTMFKeyListener$DTMFDisplayAnimation;->mFadeIn:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v0, v1}, Landroid/view/View;->setAnimation(Landroid/view/animation/Animation;)V

    .line 316
    iget-object v0, p0, Lcom/android/phone/DTMFTwelveKeyDialer$DTMFKeyListener$DTMFDisplayAnimation;->mFadeIn:Landroid/view/animation/AlphaAnimation;

    const-wide v1, 0x7fffffffffffffffL

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;->setStartTime(J)V

    .line 317
    return-void
.end method
