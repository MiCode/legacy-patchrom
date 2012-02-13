.class Lcom/android/phone/ContactPhotoCacheListAdapter$PhotoObserver;
.super Lcom/android/phone/ContactPhotoCacheListAdapter$MultipleContentObserver;
.source "ContactPhotoCacheListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/ContactPhotoCacheListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PhotoObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/ContactPhotoCacheListAdapter;


# direct methods
.method private constructor <init>(Lcom/android/phone/ContactPhotoCacheListAdapter;)V
    .locals 0
    .parameter

    .prologue
    .line 139
    iput-object p1, p0, Lcom/android/phone/ContactPhotoCacheListAdapter$PhotoObserver;->this$0:Lcom/android/phone/ContactPhotoCacheListAdapter;

    invoke-direct {p0}, Lcom/android/phone/ContactPhotoCacheListAdapter$MultipleContentObserver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/phone/ContactPhotoCacheListAdapter;Lcom/android/phone/ContactPhotoCacheListAdapter$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 139
    invoke-direct {p0, p1}, Lcom/android/phone/ContactPhotoCacheListAdapter$PhotoObserver;-><init>(Lcom/android/phone/ContactPhotoCacheListAdapter;)V

    return-void
.end method


# virtual methods
.method protected onContentChange(Landroid/database/Cursor;)V
    .locals 8
    .parameter "cursor"

    .prologue
    .line 143
    if-nez p1, :cond_1

    .line 167
    :cond_0
    :goto_0
    return-void

    .line 146
    :cond_1
    iget-object v6, p0, Lcom/android/phone/ContactPhotoCacheListAdapter$PhotoObserver;->this$0:Lcom/android/phone/ContactPhotoCacheListAdapter;

    #getter for: Lcom/android/phone/ContactPhotoCacheListAdapter;->mPhotoCache:Ljava/util/HashMap;
    invoke-static {v6}, Lcom/android/phone/ContactPhotoCacheListAdapter;->access$500(Lcom/android/phone/ContactPhotoCacheListAdapter;)Ljava/util/HashMap;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 147
    .local v2, id:J
    iget-object v6, p0, Lcom/android/phone/ContactPhotoCacheListAdapter$PhotoObserver;->this$0:Lcom/android/phone/ContactPhotoCacheListAdapter;

    #getter for: Lcom/android/phone/ContactPhotoCacheListAdapter;->mPhotoCache:Ljava/util/HashMap;
    invoke-static {v6}, Lcom/android/phone/ContactPhotoCacheListAdapter;->access$500(Lcom/android/phone/ContactPhotoCacheListAdapter;)Ljava/util/HashMap;

    move-result-object v6

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/phone/ContactPhotoCacheListAdapter$PhotoCacheData;

    .line 148
    .local v0, data:Lcom/android/phone/ContactPhotoCacheListAdapter$PhotoCacheData;
    iget-object v6, v0, Lcom/android/phone/ContactPhotoCacheListAdapter$PhotoCacheData;->cursor:Landroid/database/Cursor;

    invoke-virtual {p1, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 149
    invoke-interface {p1}, Landroid/database/Cursor;->isClosed()Z

    move-result v6

    if-nez v6, :cond_4

    invoke-interface {p1}, Landroid/database/Cursor;->requery()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 150
    const/4 v6, 0x0

    iput-object v6, v0, Lcom/android/phone/ContactPhotoCacheListAdapter$PhotoCacheData;->bitmap:Landroid/graphics/Bitmap;

    .line 152
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 153
    const-string v6, "data15"

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v4

    .line 154
    .local v4, photoData:[B
    if-eqz v4, :cond_3

    .line 155
    const/4 v6, 0x0

    array-length v7, v4

    invoke-static {v4, v6, v7}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v6

    iput-object v6, v0, Lcom/android/phone/ContactPhotoCacheListAdapter$PhotoCacheData;->bitmap:Landroid/graphics/Bitmap;

    .line 158
    .end local v4           #photoData:[B
    :cond_3
    iget-object v6, v0, Lcom/android/phone/ContactPhotoCacheListAdapter$PhotoCacheData;->views:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    .line 159
    .local v5, v:Landroid/view/View;
    iget-object v6, p0, Lcom/android/phone/ContactPhotoCacheListAdapter$PhotoObserver;->this$0:Lcom/android/phone/ContactPhotoCacheListAdapter;

    iget-object v7, v0, Lcom/android/phone/ContactPhotoCacheListAdapter$PhotoCacheData;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v6, v5, v7}, Lcom/android/phone/ContactPhotoCacheListAdapter;->updateViewForPhoto(Landroid/view/View;Landroid/graphics/Bitmap;)V

    goto :goto_1

    .line 162
    .end local v5           #v:Landroid/view/View;
    :cond_4
    iget-object v6, p0, Lcom/android/phone/ContactPhotoCacheListAdapter$PhotoObserver;->this$0:Lcom/android/phone/ContactPhotoCacheListAdapter;

    #getter for: Lcom/android/phone/ContactPhotoCacheListAdapter;->mPhotoCache:Ljava/util/HashMap;
    invoke-static {v6}, Lcom/android/phone/ContactPhotoCacheListAdapter;->access$500(Lcom/android/phone/ContactPhotoCacheListAdapter;)Ljava/util/HashMap;

    move-result-object v6

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0
.end method
