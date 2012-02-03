.class public final Landroid/view/ViewTreeObserver;
.super Ljava/lang/Object;
.source "ViewTreeObserver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/ViewTreeObserver$OnComputeInternalInsetsListener;,
        Landroid/view/ViewTreeObserver$InternalInsetsInfo;,
        Landroid/view/ViewTreeObserver$OnScrollChangedListener;,
        Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;,
        Landroid/view/ViewTreeObserver$OnPreDrawListener;,
        Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;,
        Landroid/view/ViewTreeObserver$OnGlobalFocusChangeListener;
    }
.end annotation


# instance fields
.field private mAlive:Z

.field private mOnComputeInternalInsetsListeners:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Landroid/view/ViewTreeObserver$OnComputeInternalInsetsListener;",
            ">;"
        }
    .end annotation
.end field

.field private mOnGlobalFocusListeners:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Landroid/view/ViewTreeObserver$OnGlobalFocusChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field private mOnGlobalLayoutListeners:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;",
            ">;"
        }
    .end annotation
.end field

.field private mOnPreDrawListeners:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Landroid/view/ViewTreeObserver$OnPreDrawListener;",
            ">;"
        }
    .end annotation
.end field

.field private mOnScrollChangedListeners:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Landroid/view/ViewTreeObserver$OnScrollChangedListener;",
            ">;"
        }
    .end annotation
.end field

.field private mOnTouchModeChangeListeners:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 223
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/ViewTreeObserver;->mAlive:Z

    .line 224
    return-void
.end method

.method private checkIsAlive()V
    .locals 2

    .prologue
    .line 491
    iget-boolean v0, p0, Landroid/view/ViewTreeObserver;->mAlive:Z

    if-nez v0, :cond_0

    .line 492
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "This ViewTreeObserver is not alive, call getViewTreeObserver() again"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 495
    :cond_0
    return-void
.end method

.method private kill()V
    .locals 1

    .prologue
    .line 517
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/view/ViewTreeObserver;->mAlive:Z

    .line 518
    return-void
.end method


# virtual methods
.method public addOnComputeInternalInsetsListener(Landroid/view/ViewTreeObserver$OnComputeInternalInsetsListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 460
    invoke-direct {p0}, Landroid/view/ViewTreeObserver;->checkIsAlive()V

    .line 462
    iget-object v0, p0, Landroid/view/ViewTreeObserver;->mOnComputeInternalInsetsListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-nez v0, :cond_0

    .line 463
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Landroid/view/ViewTreeObserver;->mOnComputeInternalInsetsListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 467
    :cond_0
    iget-object v0, p0, Landroid/view/ViewTreeObserver;->mOnComputeInternalInsetsListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 468
    return-void
.end method

.method public addOnGlobalFocusChangeListener(Landroid/view/ViewTreeObserver$OnGlobalFocusChangeListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 285
    invoke-direct {p0}, Landroid/view/ViewTreeObserver;->checkIsAlive()V

    .line 287
    iget-object v0, p0, Landroid/view/ViewTreeObserver;->mOnGlobalFocusListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-nez v0, :cond_0

    .line 288
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Landroid/view/ViewTreeObserver;->mOnGlobalFocusListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 291
    :cond_0
    iget-object v0, p0, Landroid/view/ViewTreeObserver;->mOnGlobalFocusListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 292
    return-void
.end method

.method public addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 320
    invoke-direct {p0}, Landroid/view/ViewTreeObserver;->checkIsAlive()V

    .line 322
    iget-object v0, p0, Landroid/view/ViewTreeObserver;->mOnGlobalLayoutListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-nez v0, :cond_0

    .line 323
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Landroid/view/ViewTreeObserver;->mOnGlobalLayoutListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 326
    :cond_0
    iget-object v0, p0, Landroid/view/ViewTreeObserver;->mOnGlobalLayoutListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 327
    return-void
.end method

.method public addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 354
    invoke-direct {p0}, Landroid/view/ViewTreeObserver;->checkIsAlive()V

    .line 356
    iget-object v0, p0, Landroid/view/ViewTreeObserver;->mOnPreDrawListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-nez v0, :cond_0

    .line 357
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Landroid/view/ViewTreeObserver;->mOnPreDrawListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 360
    :cond_0
    iget-object v0, p0, Landroid/view/ViewTreeObserver;->mOnPreDrawListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 361
    return-void
.end method

.method public addOnScrollChangedListener(Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 388
    invoke-direct {p0}, Landroid/view/ViewTreeObserver;->checkIsAlive()V

    .line 390
    iget-object v0, p0, Landroid/view/ViewTreeObserver;->mOnScrollChangedListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-nez v0, :cond_0

    .line 391
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Landroid/view/ViewTreeObserver;->mOnScrollChangedListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 394
    :cond_0
    iget-object v0, p0, Landroid/view/ViewTreeObserver;->mOnScrollChangedListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 395
    return-void
.end method

.method public addOnTouchModeChangeListener(Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 422
    invoke-direct {p0}, Landroid/view/ViewTreeObserver;->checkIsAlive()V

    .line 424
    iget-object v0, p0, Landroid/view/ViewTreeObserver;->mOnTouchModeChangeListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-nez v0, :cond_0

    .line 425
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Landroid/view/ViewTreeObserver;->mOnTouchModeChangeListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 428
    :cond_0
    iget-object v0, p0, Landroid/view/ViewTreeObserver;->mOnTouchModeChangeListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 429
    return-void
.end method

.method final dispatchOnComputeInternalInsets(Landroid/view/ViewTreeObserver$InternalInsetsInfo;)V
    .locals 4
    .parameter "inoutInfo"

    .prologue
    .line 629
    iget-object v2, p0, Landroid/view/ViewTreeObserver;->mOnComputeInternalInsetsListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 631
    .local v2, listeners:Ljava/util/concurrent/CopyOnWriteArrayList;,"Ljava/util/concurrent/CopyOnWriteArrayList<Landroid/view/ViewTreeObserver$OnComputeInternalInsetsListener;>;"
    if-eqz v2, :cond_0

    .line 632
    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/ViewTreeObserver$OnComputeInternalInsetsListener;

    .line 633
    .local v1, listener:Landroid/view/ViewTreeObserver$OnComputeInternalInsetsListener;
    invoke-interface {v1, p1}, Landroid/view/ViewTreeObserver$OnComputeInternalInsetsListener;->onComputeInternalInsets(Landroid/view/ViewTreeObserver$InternalInsetsInfo;)V

    goto :goto_0

    .line 636
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #listener:Landroid/view/ViewTreeObserver$OnComputeInternalInsetsListener;
    :cond_0
    return-void
.end method

.method final dispatchOnGlobalFocusChange(Landroid/view/View;Landroid/view/View;)V
    .locals 4
    .parameter "oldFocus"
    .parameter "newFocus"

    .prologue
    .line 528
    iget-object v2, p0, Landroid/view/ViewTreeObserver;->mOnGlobalFocusListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 529
    .local v2, listeners:Ljava/util/concurrent/CopyOnWriteArrayList;,"Ljava/util/concurrent/CopyOnWriteArrayList<Landroid/view/ViewTreeObserver$OnGlobalFocusChangeListener;>;"
    if-eqz v2, :cond_0

    .line 530
    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/ViewTreeObserver$OnGlobalFocusChangeListener;

    .line 531
    .local v1, listener:Landroid/view/ViewTreeObserver$OnGlobalFocusChangeListener;
    invoke-interface {v1, p1, p2}, Landroid/view/ViewTreeObserver$OnGlobalFocusChangeListener;->onGlobalFocusChanged(Landroid/view/View;Landroid/view/View;)V

    goto :goto_0

    .line 534
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #listener:Landroid/view/ViewTreeObserver$OnGlobalFocusChangeListener;
    :cond_0
    return-void
.end method

.method public final dispatchOnGlobalLayout()V
    .locals 4

    .prologue
    .line 546
    iget-object v2, p0, Landroid/view/ViewTreeObserver;->mOnGlobalLayoutListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 547
    .local v2, listeners:Ljava/util/concurrent/CopyOnWriteArrayList;,"Ljava/util/concurrent/CopyOnWriteArrayList<Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;>;"
    if-eqz v2, :cond_0

    .line 548
    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    .line 549
    .local v1, listener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;
    invoke-interface {v1}, Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;->onGlobalLayout()V

    goto :goto_0

    .line 552
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #listener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;
    :cond_0
    return-void
.end method

.method public final dispatchOnPreDraw()Z
    .locals 5

    .prologue
    .line 567
    const/4 v0, 0x0

    .line 568
    .local v0, cancelDraw:Z
    iget-object v3, p0, Landroid/view/ViewTreeObserver;->mOnPreDrawListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 569
    .local v3, listeners:Ljava/util/concurrent/CopyOnWriteArrayList;,"Ljava/util/concurrent/CopyOnWriteArrayList<Landroid/view/ViewTreeObserver$OnPreDrawListener;>;"
    if-eqz v3, :cond_1

    .line 570
    invoke-virtual {v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/ViewTreeObserver$OnPreDrawListener;

    .line 571
    .local v2, listener:Landroid/view/ViewTreeObserver$OnPreDrawListener;
    invoke-interface {v2}, Landroid/view/ViewTreeObserver$OnPreDrawListener;->onPreDraw()Z

    move-result v4

    if-nez v4, :cond_0

    const/4 v4, 0x1

    :goto_1
    or-int/2addr v0, v4

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    goto :goto_1

    .line 574
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #listener:Landroid/view/ViewTreeObserver$OnPreDrawListener;
    :cond_1
    return v0
.end method

.method final dispatchOnScrollChanged()V
    .locals 4

    .prologue
    .line 604
    iget-object v2, p0, Landroid/view/ViewTreeObserver;->mOnScrollChangedListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 605
    .local v2, listeners:Ljava/util/concurrent/CopyOnWriteArrayList;,"Ljava/util/concurrent/CopyOnWriteArrayList<Landroid/view/ViewTreeObserver$OnScrollChangedListener;>;"
    if-eqz v2, :cond_0

    .line 606
    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    .line 607
    .local v1, listener:Landroid/view/ViewTreeObserver$OnScrollChangedListener;
    invoke-interface {v1}, Landroid/view/ViewTreeObserver$OnScrollChangedListener;->onScrollChanged()V

    goto :goto_0

    .line 610
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #listener:Landroid/view/ViewTreeObserver$OnScrollChangedListener;
    :cond_0
    return-void
.end method

.method final dispatchOnTouchModeChanged(Z)V
    .locals 4
    .parameter "inTouchMode"

    .prologue
    .line 587
    iget-object v2, p0, Landroid/view/ViewTreeObserver;->mOnTouchModeChangeListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 589
    .local v2, listeners:Ljava/util/concurrent/CopyOnWriteArrayList;,"Ljava/util/concurrent/CopyOnWriteArrayList<Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;>;"
    if-eqz v2, :cond_0

    .line 590
    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;

    .line 591
    .local v1, listener:Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;
    invoke-interface {v1, p1}, Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;->onTouchModeChanged(Z)V

    goto :goto_0

    .line 594
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #listener:Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;
    :cond_0
    return-void
.end method

.method final hasComputeInternalInsetsListeners()Z
    .locals 2

    .prologue
    .line 616
    iget-object v0, p0, Landroid/view/ViewTreeObserver;->mOnComputeInternalInsetsListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 618
    .local v0, listeners:Ljava/util/concurrent/CopyOnWriteArrayList;,"Ljava/util/concurrent/CopyOnWriteArrayList<Landroid/view/ViewTreeObserver$OnComputeInternalInsetsListener;>;"
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isAlive()Z
    .locals 1

    .prologue
    .line 507
    iget-boolean v0, p0, Landroid/view/ViewTreeObserver;->mAlive:Z

    return v0
.end method

.method merge(Landroid/view/ViewTreeObserver;)V
    .locals 2
    .parameter "observer"

    .prologue
    .line 234
    iget-object v0, p1, Landroid/view/ViewTreeObserver;->mOnGlobalFocusListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-eqz v0, :cond_0

    .line 235
    iget-object v0, p0, Landroid/view/ViewTreeObserver;->mOnGlobalFocusListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-eqz v0, :cond_5

    .line 236
    iget-object v0, p0, Landroid/view/ViewTreeObserver;->mOnGlobalFocusListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    iget-object v1, p1, Landroid/view/ViewTreeObserver;->mOnGlobalFocusListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->addAll(Ljava/util/Collection;)Z

    .line 242
    :cond_0
    :goto_0
    iget-object v0, p1, Landroid/view/ViewTreeObserver;->mOnGlobalLayoutListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-eqz v0, :cond_1

    .line 243
    iget-object v0, p0, Landroid/view/ViewTreeObserver;->mOnGlobalLayoutListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-eqz v0, :cond_6

    .line 244
    iget-object v0, p0, Landroid/view/ViewTreeObserver;->mOnGlobalLayoutListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    iget-object v1, p1, Landroid/view/ViewTreeObserver;->mOnGlobalLayoutListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->addAll(Ljava/util/Collection;)Z

    .line 250
    :cond_1
    :goto_1
    iget-object v0, p1, Landroid/view/ViewTreeObserver;->mOnPreDrawListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-eqz v0, :cond_2

    .line 251
    iget-object v0, p0, Landroid/view/ViewTreeObserver;->mOnPreDrawListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-eqz v0, :cond_7

    .line 252
    iget-object v0, p0, Landroid/view/ViewTreeObserver;->mOnPreDrawListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    iget-object v1, p1, Landroid/view/ViewTreeObserver;->mOnPreDrawListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->addAll(Ljava/util/Collection;)Z

    .line 258
    :cond_2
    :goto_2
    iget-object v0, p1, Landroid/view/ViewTreeObserver;->mOnTouchModeChangeListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-eqz v0, :cond_3

    .line 259
    iget-object v0, p0, Landroid/view/ViewTreeObserver;->mOnTouchModeChangeListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-eqz v0, :cond_8

    .line 260
    iget-object v0, p0, Landroid/view/ViewTreeObserver;->mOnTouchModeChangeListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    iget-object v1, p1, Landroid/view/ViewTreeObserver;->mOnTouchModeChangeListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->addAll(Ljava/util/Collection;)Z

    .line 266
    :cond_3
    :goto_3
    iget-object v0, p1, Landroid/view/ViewTreeObserver;->mOnComputeInternalInsetsListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-eqz v0, :cond_4

    .line 267
    iget-object v0, p0, Landroid/view/ViewTreeObserver;->mOnComputeInternalInsetsListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-eqz v0, :cond_9

    .line 268
    iget-object v0, p0, Landroid/view/ViewTreeObserver;->mOnComputeInternalInsetsListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    iget-object v1, p1, Landroid/view/ViewTreeObserver;->mOnComputeInternalInsetsListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->addAll(Ljava/util/Collection;)Z

    .line 274
    :cond_4
    :goto_4
    invoke-direct {p1}, Landroid/view/ViewTreeObserver;->kill()V

    .line 275
    return-void

    .line 238
    :cond_5
    iget-object v0, p1, Landroid/view/ViewTreeObserver;->mOnGlobalFocusListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    iput-object v0, p0, Landroid/view/ViewTreeObserver;->mOnGlobalFocusListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    goto :goto_0

    .line 246
    :cond_6
    iget-object v0, p1, Landroid/view/ViewTreeObserver;->mOnGlobalLayoutListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    iput-object v0, p0, Landroid/view/ViewTreeObserver;->mOnGlobalLayoutListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    goto :goto_1

    .line 254
    :cond_7
    iget-object v0, p1, Landroid/view/ViewTreeObserver;->mOnPreDrawListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    iput-object v0, p0, Landroid/view/ViewTreeObserver;->mOnPreDrawListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    goto :goto_2

    .line 262
    :cond_8
    iget-object v0, p1, Landroid/view/ViewTreeObserver;->mOnTouchModeChangeListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    iput-object v0, p0, Landroid/view/ViewTreeObserver;->mOnTouchModeChangeListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    goto :goto_3

    .line 270
    :cond_9
    iget-object v0, p1, Landroid/view/ViewTreeObserver;->mOnComputeInternalInsetsListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    iput-object v0, p0, Landroid/view/ViewTreeObserver;->mOnComputeInternalInsetsListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    goto :goto_4
.end method

.method public removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V
    .locals 1
    .parameter "victim"

    .prologue
    .line 339
    invoke-direct {p0}, Landroid/view/ViewTreeObserver;->checkIsAlive()V

    .line 340
    iget-object v0, p0, Landroid/view/ViewTreeObserver;->mOnGlobalLayoutListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-nez v0, :cond_0

    .line 344
    :goto_0
    return-void

    .line 343
    :cond_0
    iget-object v0, p0, Landroid/view/ViewTreeObserver;->mOnGlobalLayoutListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public removeOnComputeInternalInsetsListener(Landroid/view/ViewTreeObserver$OnComputeInternalInsetsListener;)V
    .locals 1
    .parameter "victim"

    .prologue
    .line 483
    invoke-direct {p0}, Landroid/view/ViewTreeObserver;->checkIsAlive()V

    .line 484
    iget-object v0, p0, Landroid/view/ViewTreeObserver;->mOnComputeInternalInsetsListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-nez v0, :cond_0

    .line 488
    :goto_0
    return-void

    .line 487
    :cond_0
    iget-object v0, p0, Landroid/view/ViewTreeObserver;->mOnComputeInternalInsetsListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public removeOnGlobalFocusChangeListener(Landroid/view/ViewTreeObserver$OnGlobalFocusChangeListener;)V
    .locals 1
    .parameter "victim"

    .prologue
    .line 304
    invoke-direct {p0}, Landroid/view/ViewTreeObserver;->checkIsAlive()V

    .line 305
    iget-object v0, p0, Landroid/view/ViewTreeObserver;->mOnGlobalFocusListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-nez v0, :cond_0

    .line 309
    :goto_0
    return-void

    .line 308
    :cond_0
    iget-object v0, p0, Landroid/view/ViewTreeObserver;->mOnGlobalFocusListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V
    .locals 1
    .parameter "victim"

    .prologue
    .line 373
    invoke-direct {p0}, Landroid/view/ViewTreeObserver;->checkIsAlive()V

    .line 374
    iget-object v0, p0, Landroid/view/ViewTreeObserver;->mOnPreDrawListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-nez v0, :cond_0

    .line 378
    :goto_0
    return-void

    .line 377
    :cond_0
    iget-object v0, p0, Landroid/view/ViewTreeObserver;->mOnPreDrawListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public removeOnScrollChangedListener(Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V
    .locals 1
    .parameter "victim"

    .prologue
    .line 407
    invoke-direct {p0}, Landroid/view/ViewTreeObserver;->checkIsAlive()V

    .line 408
    iget-object v0, p0, Landroid/view/ViewTreeObserver;->mOnScrollChangedListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-nez v0, :cond_0

    .line 412
    :goto_0
    return-void

    .line 411
    :cond_0
    iget-object v0, p0, Landroid/view/ViewTreeObserver;->mOnScrollChangedListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public removeOnTouchModeChangeListener(Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;)V
    .locals 1
    .parameter "victim"

    .prologue
    .line 441
    invoke-direct {p0}, Landroid/view/ViewTreeObserver;->checkIsAlive()V

    .line 442
    iget-object v0, p0, Landroid/view/ViewTreeObserver;->mOnTouchModeChangeListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-nez v0, :cond_0

    .line 446
    :goto_0
    return-void

    .line 445
    :cond_0
    iget-object v0, p0, Landroid/view/ViewTreeObserver;->mOnTouchModeChangeListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0
.end method
