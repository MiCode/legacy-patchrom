.class final Landroid/database/ContentObserver$Transport;
.super Landroid/database/IContentObserver$Stub;
.source "ContentObserver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/database/ContentObserver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Transport"
.end annotation


# instance fields
.field mContentObserver:Landroid/database/ContentObserver;


# direct methods
.method public constructor <init>(Landroid/database/ContentObserver;)V
    .locals 0
    .parameter "contentObserver"

    .prologue
    .line 50
    invoke-direct {p0}, Landroid/database/IContentObserver$Stub;-><init>()V

    .line 51
    iput-object p1, p0, Landroid/database/ContentObserver$Transport;->mContentObserver:Landroid/database/ContentObserver;

    .line 52
    return-void
.end method


# virtual methods
.method public deliverSelfNotifications()Z
    .locals 2

    .prologue
    .line 55
    iget-object v0, p0, Landroid/database/ContentObserver$Transport;->mContentObserver:Landroid/database/ContentObserver;

    .line 56
    .local v0, contentObserver:Landroid/database/ContentObserver;
    if-eqz v0, :cond_0

    .line 57
    invoke-virtual {v0}, Landroid/database/ContentObserver;->deliverSelfNotifications()Z

    move-result v1

    .line 59
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onChange(Z)V
    .locals 1
    .parameter "selfChange"

    .prologue
    .line 63
    iget-object v0, p0, Landroid/database/ContentObserver$Transport;->mContentObserver:Landroid/database/ContentObserver;

    .line 64
    .local v0, contentObserver:Landroid/database/ContentObserver;
    if-eqz v0, :cond_0

    .line 65
    invoke-virtual {v0, p1}, Landroid/database/ContentObserver;->dispatchChange(Z)V

    .line 67
    :cond_0
    return-void
.end method

.method public releaseContentObserver()V
    .locals 1

    .prologue
    .line 70
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/database/ContentObserver$Transport;->mContentObserver:Landroid/database/ContentObserver;

    .line 71
    return-void
.end method
