.class public Landroid/database/AbstractCursor$SelfContentObserver;
.super Landroid/database/ContentObserver;
.source "AbstractCursor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/database/AbstractCursor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "SelfContentObserver"
.end annotation


# instance fields
.field mCursor:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/database/AbstractCursor;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/database/AbstractCursor;)V
    .locals 1
    .parameter "cursor"

    .prologue
    .line 598
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 599
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroid/database/AbstractCursor$SelfContentObserver;->mCursor:Ljava/lang/ref/WeakReference;

    .line 600
    return-void
.end method


# virtual methods
.method public deliverSelfNotifications()Z
    .locals 1

    .prologue
    .line 604
    const/4 v0, 0x0

    return v0
.end method

.method public onChange(Z)V
    .locals 2
    .parameter "selfChange"

    .prologue
    .line 609
    iget-object v1, p0, Landroid/database/AbstractCursor$SelfContentObserver;->mCursor:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/AbstractCursor;

    .line 610
    .local v0, cursor:Landroid/database/AbstractCursor;
    if-eqz v0, :cond_0

    .line 611
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/database/AbstractCursor;->onChange(Z)V

    .line 613
    :cond_0
    return-void
.end method
