.class Lcom/android/phone/ContactPhotoCacheListAdapter$ContactObserver;
.super Lcom/android/phone/ContactPhotoCacheListAdapter$MultipleContentObserver;
.source "ContactPhotoCacheListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/ContactPhotoCacheListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ContactObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/ContactPhotoCacheListAdapter;


# direct methods
.method private constructor <init>(Lcom/android/phone/ContactPhotoCacheListAdapter;)V
    .locals 0
    .parameter

    .prologue
    .line 106
    iput-object p1, p0, Lcom/android/phone/ContactPhotoCacheListAdapter$ContactObserver;->this$0:Lcom/android/phone/ContactPhotoCacheListAdapter;

    invoke-direct {p0}, Lcom/android/phone/ContactPhotoCacheListAdapter$MultipleContentObserver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/phone/ContactPhotoCacheListAdapter;Lcom/android/phone/ContactPhotoCacheListAdapter$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 106
    invoke-direct {p0, p1}, Lcom/android/phone/ContactPhotoCacheListAdapter$ContactObserver;-><init>(Lcom/android/phone/ContactPhotoCacheListAdapter;)V

    return-void
.end method


# virtual methods
.method protected onContentChange(Landroid/database/Cursor;)V
    .locals 5
    .parameter "cursor"

    .prologue
    .line 110
    if-nez p1, :cond_1

    .line 126
    :cond_0
    :goto_0
    return-void

    .line 113
    :cond_1
    iget-object v4, p0, Lcom/android/phone/ContactPhotoCacheListAdapter$ContactObserver;->this$0:Lcom/android/phone/ContactPhotoCacheListAdapter;

    #getter for: Lcom/android/phone/ContactPhotoCacheListAdapter;->mContactCache:Ljava/util/HashMap;
    invoke-static {v4}, Lcom/android/phone/ContactPhotoCacheListAdapter;->access$000(Lcom/android/phone/ContactPhotoCacheListAdapter;)Ljava/util/HashMap;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 114
    .local v2, key:Ljava/lang/String;
    iget-object v4, p0, Lcom/android/phone/ContactPhotoCacheListAdapter$ContactObserver;->this$0:Lcom/android/phone/ContactPhotoCacheListAdapter;

    #getter for: Lcom/android/phone/ContactPhotoCacheListAdapter;->mContactCache:Ljava/util/HashMap;
    invoke-static {v4}, Lcom/android/phone/ContactPhotoCacheListAdapter;->access$000(Lcom/android/phone/ContactPhotoCacheListAdapter;)Ljava/util/HashMap;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/phone/ContactPhotoCacheListAdapter$ContactCacheData;

    .line 115
    .local v0, data:Lcom/android/phone/ContactPhotoCacheListAdapter$ContactCacheData;
    iget-object v4, v0, Lcom/android/phone/ContactPhotoCacheListAdapter$ContactCacheData;->cursor:Landroid/database/Cursor;

    invoke-virtual {p1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 116
    invoke-interface {p1}, Landroid/database/Cursor;->isClosed()Z

    move-result v4

    if-nez v4, :cond_3

    invoke-interface {p1}, Landroid/database/Cursor;->requery()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 117
    iget-object v4, v0, Lcom/android/phone/ContactPhotoCacheListAdapter$ContactCacheData;->views:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    .line 118
    .local v3, view:Landroid/view/View;
    iget-object v4, p0, Lcom/android/phone/ContactPhotoCacheListAdapter$ContactObserver;->this$0:Lcom/android/phone/ContactPhotoCacheListAdapter;

    #calls: Lcom/android/phone/ContactPhotoCacheListAdapter;->updateViewForContactInfo(Ljava/lang/String;Landroid/view/View;Landroid/database/Cursor;)V
    invoke-static {v4, v2, v3, p1}, Lcom/android/phone/ContactPhotoCacheListAdapter;->access$400(Lcom/android/phone/ContactPhotoCacheListAdapter;Ljava/lang/String;Landroid/view/View;Landroid/database/Cursor;)V

    goto :goto_1

    .line 121
    .end local v3           #view:Landroid/view/View;
    :cond_3
    iget-object v4, p0, Lcom/android/phone/ContactPhotoCacheListAdapter$ContactObserver;->this$0:Lcom/android/phone/ContactPhotoCacheListAdapter;

    #getter for: Lcom/android/phone/ContactPhotoCacheListAdapter;->mContactCache:Ljava/util/HashMap;
    invoke-static {v4}, Lcom/android/phone/ContactPhotoCacheListAdapter;->access$000(Lcom/android/phone/ContactPhotoCacheListAdapter;)Ljava/util/HashMap;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method
