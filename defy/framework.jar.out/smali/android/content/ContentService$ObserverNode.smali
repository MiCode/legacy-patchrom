.class public final Landroid/content/ContentService$ObserverNode;
.super Ljava/lang/Object;
.source "ContentService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/ContentService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ObserverNode"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/ContentService$ObserverNode$ObserverEntry;
    }
.end annotation


# static fields
.field public static final DELETE_TYPE:I = 0x2

.field public static final INSERT_TYPE:I = 0x0

.field public static final UPDATE_TYPE:I = 0x1


# instance fields
.field private mChildren:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentService$ObserverNode;",
            ">;"
        }
    .end annotation
.end field

.field private mName:Ljava/lang/String;

.field private mObservers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentService$ObserverNode$ObserverEntry;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .parameter "name"

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/content/ContentService$ObserverNode;->mChildren:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/content/ContentService$ObserverNode;->mObservers:Ljava/util/ArrayList;

    iput-object p1, p0, Landroid/content/ContentService$ObserverNode;->mName:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Landroid/content/ContentService$ObserverNode;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Landroid/content/ContentService$ObserverNode;->mObservers:Ljava/util/ArrayList;

    return-object v0
.end method

.method private addObserverLocked(Landroid/net/Uri;ILandroid/database/IContentObserver;ZLjava/lang/Object;)V
    .locals 9
    .parameter "uri"
    .parameter "index"
    .parameter "observer"
    .parameter "notifyForDescendents"
    .parameter "observersLock"

    .prologue
    invoke-direct {p0, p1}, Landroid/content/ContentService$ObserverNode;->countUriSegments(Landroid/net/Uri;)I

    move-result v1

    if-ne p2, v1, :cond_0

    iget-object v1, p0, Landroid/content/ContentService$ObserverNode;->mObservers:Ljava/util/ArrayList;

    new-instance v2, Landroid/content/ContentService$ObserverNode$ObserverEntry;

    invoke-direct {v2, p0, p3, p4, p5}, Landroid/content/ContentService$ObserverNode$ObserverEntry;-><init>(Landroid/content/ContentService$ObserverNode;Landroid/database/IContentObserver;ZLjava/lang/Object;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0, p1, p2}, Landroid/content/ContentService$ObserverNode;->getUriSegment(Landroid/net/Uri;I)Ljava/lang/String;

    move-result-object v8

    .local v8, segment:Ljava/lang/String;
    if-nez v8, :cond_1

    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid Uri ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") used for observer"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    iget-object v1, p0, Landroid/content/ContentService$ObserverNode;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v6

    .local v6, N:I
    const/4 v7, 0x0

    .local v7, i:I
    :goto_1
    if-ge v7, v6, :cond_3

    iget-object v1, p0, Landroid/content/ContentService$ObserverNode;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ContentService$ObserverNode;

    .local v0, node:Landroid/content/ContentService$ObserverNode;
    iget-object v1, v0, Landroid/content/ContentService$ObserverNode;->mName:Ljava/lang/String;

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    add-int/lit8 v2, p2, 0x1

    move-object v1, p1

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Landroid/content/ContentService$ObserverNode;->addObserverLocked(Landroid/net/Uri;ILandroid/database/IContentObserver;ZLjava/lang/Object;)V

    goto :goto_0

    :cond_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .end local v0           #node:Landroid/content/ContentService$ObserverNode;
    :cond_3
    new-instance v0, Landroid/content/ContentService$ObserverNode;

    invoke-direct {v0, v8}, Landroid/content/ContentService$ObserverNode;-><init>(Ljava/lang/String;)V

    .restart local v0       #node:Landroid/content/ContentService$ObserverNode;
    iget-object v1, p0, Landroid/content/ContentService$ObserverNode;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, p2, 0x1

    move-object v1, p1

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Landroid/content/ContentService$ObserverNode;->addObserverLocked(Landroid/net/Uri;ILandroid/database/IContentObserver;ZLjava/lang/Object;)V

    goto :goto_0
.end method

.method private collectMyObserversLocked(ZLandroid/database/IContentObserver;ZLjava/util/ArrayList;)V
    .locals 6
    .parameter "leaf"
    .parameter "observer"
    .parameter "selfNotify"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Landroid/database/IContentObserver;",
            "Z",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentService$ObserverCall;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p4, calls:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentService$ObserverCall;>;"
    iget-object v4, p0, Landroid/content/ContentService$ObserverNode;->mObservers:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    .local v0, N:I
    if-nez p2, :cond_1

    const/4 v4, 0x0

    move-object v3, v4

    .local v3, observerBinder:Landroid/os/IBinder;
    :goto_0
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    if-ge v2, v0, :cond_4

    iget-object v4, p0, Landroid/content/ContentService$ObserverNode;->mObservers:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ContentService$ObserverNode$ObserverEntry;

    .local v1, entry:Landroid/content/ContentService$ObserverNode$ObserverEntry;
    if-eqz v1, :cond_0

    iget-object v4, v1, Landroid/content/ContentService$ObserverNode$ObserverEntry;->observer:Landroid/database/IContentObserver;

    if-eqz v4, :cond_0

    iget-object v4, v1, Landroid/content/ContentService$ObserverNode$ObserverEntry;->observer:Landroid/database/IContentObserver;

    invoke-interface {v4}, Landroid/database/IContentObserver;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    if-nez p3, :cond_2

    :cond_0
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .end local v1           #entry:Landroid/content/ContentService$ObserverNode$ObserverEntry;
    .end local v2           #i:I
    .end local v3           #observerBinder:Landroid/os/IBinder;
    :cond_1
    invoke-interface {p2}, Landroid/database/IContentObserver;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    move-object v3, v4

    goto :goto_0

    .restart local v1       #entry:Landroid/content/ContentService$ObserverNode$ObserverEntry;
    .restart local v2       #i:I
    .restart local v3       #observerBinder:Landroid/os/IBinder;
    :cond_2
    if-nez p1, :cond_3

    if-nez p1, :cond_0

    iget-boolean v4, v1, Landroid/content/ContentService$ObserverNode$ObserverEntry;->notifyForDescendents:Z

    if-eqz v4, :cond_0

    :cond_3
    new-instance v4, Landroid/content/ContentService$ObserverCall;

    iget-object v5, v1, Landroid/content/ContentService$ObserverNode$ObserverEntry;->observer:Landroid/database/IContentObserver;

    invoke-direct {v4, p0, v5, p3}, Landroid/content/ContentService$ObserverCall;-><init>(Landroid/content/ContentService$ObserverNode;Landroid/database/IContentObserver;Z)V

    invoke-virtual {p4, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .end local v1           #entry:Landroid/content/ContentService$ObserverNode$ObserverEntry;
    :cond_4
    return-void
.end method

.method private countUriSegments(Landroid/net/Uri;)I
    .locals 1
    .parameter "uri"

    .prologue
    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private getUriSegment(Landroid/net/Uri;I)Ljava/lang/String;
    .locals 2
    .parameter "uri"
    .parameter "index"

    .prologue
    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    invoke-virtual {p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v0

    .end local p0
    :goto_0
    return-object v0

    .restart local p0
    :cond_0
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x1

    sub-int v1, p2, v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/String;

    move-object v0, p0

    goto :goto_0

    .restart local p0
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public addObserverLocked(Landroid/net/Uri;Landroid/database/IContentObserver;ZLjava/lang/Object;)V
    .locals 6
    .parameter "uri"
    .parameter "observer"
    .parameter "notifyForDescendents"
    .parameter "observersLock"

    .prologue
    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Landroid/content/ContentService$ObserverNode;->addObserverLocked(Landroid/net/Uri;ILandroid/database/IContentObserver;ZLjava/lang/Object;)V

    return-void
.end method

.method public collectObserversLocked(Landroid/net/Uri;ILandroid/database/IContentObserver;ZLjava/util/ArrayList;)V
    .locals 10
    .parameter "uri"
    .parameter "index"
    .parameter "observer"
    .parameter "selfNotify"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "I",
            "Landroid/database/IContentObserver;",
            "Z",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentService$ObserverCall;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p5, calls:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentService$ObserverCall;>;"
    const/4 v8, 0x0

    .local v8, segment:Ljava/lang/String;
    invoke-direct {p0, p1}, Landroid/content/ContentService$ObserverNode;->countUriSegments(Landroid/net/Uri;)I

    move-result v9

    .local v9, segmentCount:I
    if-lt p2, v9, :cond_3

    const/4 v1, 0x1

    invoke-direct {p0, v1, p3, p4, p5}, Landroid/content/ContentService$ObserverNode;->collectMyObserversLocked(ZLandroid/database/IContentObserver;ZLjava/util/ArrayList;)V

    :cond_0
    :goto_0
    iget-object v1, p0, Landroid/content/ContentService$ObserverNode;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v6

    .local v6, N:I
    const/4 v7, 0x0

    .local v7, i:I
    :goto_1
    if-ge v7, v6, :cond_2

    iget-object v1, p0, Landroid/content/ContentService$ObserverNode;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ContentService$ObserverNode;

    .local v0, node:Landroid/content/ContentService$ObserverNode;
    if-eqz v8, :cond_1

    iget-object v1, v0, Landroid/content/ContentService$ObserverNode;->mName:Ljava/lang/String;

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    :cond_1
    add-int/lit8 v2, p2, 0x1

    move-object v1, p1

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentService$ObserverNode;->collectObserversLocked(Landroid/net/Uri;ILandroid/database/IContentObserver;ZLjava/util/ArrayList;)V

    if-eqz v8, :cond_4

    .end local v0           #node:Landroid/content/ContentService$ObserverNode;
    :cond_2
    return-void

    .end local v6           #N:I
    .end local v7           #i:I
    :cond_3
    if-ge p2, v9, :cond_0

    invoke-direct {p0, p1, p2}, Landroid/content/ContentService$ObserverNode;->getUriSegment(Landroid/net/Uri;I)Ljava/lang/String;

    move-result-object v8

    const/4 v1, 0x0

    invoke-direct {p0, v1, p3, p4, p5}, Landroid/content/ContentService$ObserverNode;->collectMyObserversLocked(ZLandroid/database/IContentObserver;ZLjava/util/ArrayList;)V

    goto :goto_0

    .restart local v0       #node:Landroid/content/ContentService$ObserverNode;
    .restart local v6       #N:I
    .restart local v7       #i:I
    :cond_4
    add-int/lit8 v7, v7, 0x1

    goto :goto_1
.end method

.method public removeObserverLocked(Landroid/database/IContentObserver;)Z
    .locals 7
    .parameter "observer"

    .prologue
    const/4 v6, 0x0

    iget-object v5, p0, Landroid/content/ContentService$ObserverNode;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v4

    .local v4, size:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v4, :cond_1

    iget-object v5, p0, Landroid/content/ContentService$ObserverNode;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ContentService$ObserverNode;

    invoke-virtual {v5, p1}, Landroid/content/ContentService$ObserverNode;->removeObserverLocked(Landroid/database/IContentObserver;)Z

    move-result v0

    .local v0, empty:Z
    if-eqz v0, :cond_0

    iget-object v5, p0, Landroid/content/ContentService$ObserverNode;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    add-int/lit8 v2, v2, -0x1

    add-int/lit8 v4, v4, -0x1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .end local v0           #empty:Z
    :cond_1
    invoke-interface {p1}, Landroid/database/IContentObserver;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    .local v3, observerBinder:Landroid/os/IBinder;
    iget-object v5, p0, Landroid/content/ContentService$ObserverNode;->mObservers:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v4, :cond_2

    iget-object v5, p0, Landroid/content/ContentService$ObserverNode;->mObservers:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ContentService$ObserverNode$ObserverEntry;

    .local v1, entry:Landroid/content/ContentService$ObserverNode$ObserverEntry;
    iget-object v5, v1, Landroid/content/ContentService$ObserverNode$ObserverEntry;->observer:Landroid/database/IContentObserver;

    invoke-interface {v5}, Landroid/database/IContentObserver;->asBinder()Landroid/os/IBinder;

    move-result-object v5

    if-ne v5, v3, :cond_3

    iget-object v5, p0, Landroid/content/ContentService$ObserverNode;->mObservers:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    invoke-interface {v3, v1, v6}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .end local v1           #entry:Landroid/content/ContentService$ObserverNode$ObserverEntry;
    :cond_2
    iget-object v5, p0, Landroid/content/ContentService$ObserverNode;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-nez v5, :cond_4

    iget-object v5, p0, Landroid/content/ContentService$ObserverNode;->mObservers:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-nez v5, :cond_4

    const/4 v5, 0x1

    :goto_2
    return v5

    .restart local v1       #entry:Landroid/content/ContentService$ObserverNode$ObserverEntry;
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .end local v1           #entry:Landroid/content/ContentService$ObserverNode$ObserverEntry;
    :cond_4
    move v5, v6

    goto :goto_2
.end method
