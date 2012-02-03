.class Landroid/widget/TextView$Blink;
.super Landroid/os/Handler;
.source "TextView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/TextView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Blink"
.end annotation


# instance fields
.field private mCancelled:Z

.field private final mView:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/widget/TextView;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/widget/TextView;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 7252
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 7253
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroid/widget/TextView$Blink;->mView:Ljava/lang/ref/WeakReference;

    .line 7254
    return-void
.end method


# virtual methods
.method cancel()V
    .locals 1

    .prologue
    .line 7288
    iget-boolean v0, p0, Landroid/widget/TextView$Blink;->mCancelled:Z

    if-nez v0, :cond_0

    .line 7289
    invoke-virtual {p0, p0}, Landroid/widget/TextView$Blink;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 7290
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/TextView$Blink;->mCancelled:Z

    .line 7292
    :cond_0
    return-void
.end method

.method public run()V
    .locals 7

    .prologue
    const-wide/16 v5, 0x1f4

    .line 7257
    iget-boolean v3, p0, Landroid/widget/TextView$Blink;->mCancelled:Z

    if-eqz v3, :cond_1

    .line 7285
    :cond_0
    :goto_0
    return-void

    .line 7261
    :cond_1
    invoke-virtual {p0, p0}, Landroid/widget/TextView$Blink;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 7263
    iget-object v3, p0, Landroid/widget/TextView$Blink;->mView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 7265
    .local v2, tv:Landroid/widget/TextView;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/widget/TextView;->isFocused()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 7266
    invoke-virtual {v2}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v1

    .line 7267
    .local v1, st:I
    invoke-virtual {v2}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v0

    .line 7269
    .local v0, en:I
    if-ne v1, v0, :cond_3

    if-ltz v1, :cond_3

    if-ltz v0, :cond_3

    .line 7270
    #getter for: Landroid/widget/TextView;->mLayout:Landroid/text/Layout;
    invoke-static {v2}, Landroid/widget/TextView;->access$400(Landroid/widget/TextView;)Landroid/text/Layout;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 7271
    #calls: Landroid/widget/TextView;->invalidateCursorPath()V
    invoke-static {v2}, Landroid/widget/TextView;->access$1400(Landroid/widget/TextView;)V

    .line 7274
    :cond_2
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    add-long/2addr v3, v5

    invoke-virtual {p0, p0, v3, v4}, Landroid/widget/TextView$Blink;->postAtTime(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 7278
    :cond_3
    #getter for: Landroid/widget/TextView;->mLayout:Landroid/text/Layout;
    invoke-static {v2}, Landroid/widget/TextView;->access$400(Landroid/widget/TextView;)Landroid/text/Layout;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v3, v2, Landroid/widget/TextView;->mCursorControllerMenu:Landroid/widget/TextView$CursorControllerMenu;

    if-eqz v3, :cond_0

    iget-object v3, v2, Landroid/widget/TextView;->mCursorControllerMenu:Landroid/widget/TextView$CursorControllerMenu;

    invoke-virtual {v3}, Landroid/widget/TextView$CursorControllerMenu;->getLife()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 7279
    invoke-virtual {v2}, Landroid/widget/TextView;->updateCursorControllerPositions()V

    .line 7280
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    add-long/2addr v3, v5

    invoke-virtual {p0, p0, v3, v4}, Landroid/widget/TextView$Blink;->postAtTime(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method uncancel()V
    .locals 1

    .prologue
    .line 7295
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/TextView$Blink;->mCancelled:Z

    .line 7296
    return-void
.end method
