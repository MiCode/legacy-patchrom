.class Lcom/android/phone/ContactPhotoCacheListAdapter$MultipleContentObserver$Observer;
.super Landroid/database/ContentObserver;
.source "ContactPhotoCacheListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/ContactPhotoCacheListAdapter$MultipleContentObserver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Observer"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/ContactPhotoCacheListAdapter$MultipleContentObserver;


# direct methods
.method public constructor <init>(Lcom/android/phone/ContactPhotoCacheListAdapter$MultipleContentObserver;)V
    .locals 1
    .parameter

    .prologue
    .line 194
    iput-object p1, p0, Lcom/android/phone/ContactPhotoCacheListAdapter$MultipleContentObserver$Observer;->this$0:Lcom/android/phone/ContactPhotoCacheListAdapter$MultipleContentObserver;

    .line 195
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 196
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 3
    .parameter "selfChange"

    .prologue
    .line 200
    const/4 v0, 0x0

    .line 201
    .local v0, cursor:Landroid/database/Cursor;
    iget-object v2, p0, Lcom/android/phone/ContactPhotoCacheListAdapter$MultipleContentObserver$Observer;->this$0:Lcom/android/phone/ContactPhotoCacheListAdapter$MultipleContentObserver;

    iget-object v2, v2, Lcom/android/phone/ContactPhotoCacheListAdapter$MultipleContentObserver;->mObservables:Ljava/util/HashMap;

    invoke-virtual {v2, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 202
    .local v1, ref:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Landroid/database/Cursor;>;"
    if-eqz v1, :cond_0

    .line 203
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    .end local v0           #cursor:Landroid/database/Cursor;
    check-cast v0, Landroid/database/Cursor;

    .line 204
    .restart local v0       #cursor:Landroid/database/Cursor;
    :cond_0
    iget-object v2, p0, Lcom/android/phone/ContactPhotoCacheListAdapter$MultipleContentObserver$Observer;->this$0:Lcom/android/phone/ContactPhotoCacheListAdapter$MultipleContentObserver;

    invoke-virtual {v2, v0}, Lcom/android/phone/ContactPhotoCacheListAdapter$MultipleContentObserver;->onContentChange(Landroid/database/Cursor;)V

    .line 205
    return-void
.end method
