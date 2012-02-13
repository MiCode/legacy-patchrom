.class public abstract Lcom/android/phone/ContactPhotoCacheListAdapter$MultipleContentObserver;
.super Ljava/lang/Object;
.source "ContactPhotoCacheListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/ContactPhotoCacheListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "MultipleContentObserver"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/ContactPhotoCacheListAdapter$MultipleContentObserver$Observer;
    }
.end annotation


# instance fields
.field mObservables:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/android/phone/ContactPhotoCacheListAdapter$MultipleContentObserver$Observer;",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/database/Cursor;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 190
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 208
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/phone/ContactPhotoCacheListAdapter$MultipleContentObserver;->mObservables:Ljava/util/HashMap;

    return-void
.end method


# virtual methods
.method protected abstract onContentChange(Landroid/database/Cursor;)V
.end method

.method public registerCursor(Landroid/database/Cursor;)V
    .locals 6
    .parameter "cursor"

    .prologue
    .line 211
    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroid/database/Cursor;->isClosed()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 223
    :cond_0
    :goto_0
    return-void

    .line 214
    :cond_1
    iget-object v4, p0, Lcom/android/phone/ContactPhotoCacheListAdapter$MultipleContentObserver;->mObservables:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/phone/ContactPhotoCacheListAdapter$MultipleContentObserver$Observer;

    .line 215
    .local v1, key:Lcom/android/phone/ContactPhotoCacheListAdapter$MultipleContentObserver$Observer;
    iget-object v4, p0, Lcom/android/phone/ContactPhotoCacheListAdapter$MultipleContentObserver;->mObservables:Ljava/util/HashMap;

    invoke-virtual {v4, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/ref/WeakReference;

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/database/Cursor;

    .line 216
    .local v3, value:Landroid/database/Cursor;
    if-eqz v3, :cond_2

    invoke-virtual {v3, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    goto :goto_0

    .line 220
    .end local v1           #key:Lcom/android/phone/ContactPhotoCacheListAdapter$MultipleContentObserver$Observer;
    .end local v3           #value:Landroid/database/Cursor;
    :cond_3
    new-instance v2, Lcom/android/phone/ContactPhotoCacheListAdapter$MultipleContentObserver$Observer;

    invoke-direct {v2, p0}, Lcom/android/phone/ContactPhotoCacheListAdapter$MultipleContentObserver$Observer;-><init>(Lcom/android/phone/ContactPhotoCacheListAdapter$MultipleContentObserver;)V

    .line 221
    .local v2, observer:Lcom/android/phone/ContactPhotoCacheListAdapter$MultipleContentObserver$Observer;
    invoke-interface {p1, v2}, Landroid/database/Cursor;->registerContentObserver(Landroid/database/ContentObserver;)V

    .line 222
    iget-object v4, p0, Lcom/android/phone/ContactPhotoCacheListAdapter$MultipleContentObserver;->mObservables:Ljava/util/HashMap;

    new-instance v5, Ljava/lang/ref/WeakReference;

    invoke-direct {v5, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v4, v2, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public unregisterCursor(Landroid/database/Cursor;)V
    .locals 4
    .parameter "cursor"

    .prologue
    .line 226
    if-nez p1, :cond_1

    .line 237
    :cond_0
    :goto_0
    return-void

    .line 229
    :cond_1
    iget-object v3, p0, Lcom/android/phone/ContactPhotoCacheListAdapter$MultipleContentObserver;->mObservables:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/phone/ContactPhotoCacheListAdapter$MultipleContentObserver$Observer;

    .line 230
    .local v1, key:Lcom/android/phone/ContactPhotoCacheListAdapter$MultipleContentObserver$Observer;
    iget-object v3, p0, Lcom/android/phone/ContactPhotoCacheListAdapter$MultipleContentObserver;->mObservables:Ljava/util/HashMap;

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/database/Cursor;

    .line 231
    .local v2, value:Landroid/database/Cursor;
    if-eqz v2, :cond_2

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 232
    invoke-interface {v2, v1}, Landroid/database/Cursor;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 233
    iget-object v3, p0, Lcom/android/phone/ContactPhotoCacheListAdapter$MultipleContentObserver;->mObservables:Ljava/util/HashMap;

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method
