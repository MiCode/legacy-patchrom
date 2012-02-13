.class Lcom/android/phone/ContactPhotoCacheListAdapter$QueryHandler;
.super Landroid/content/AsyncQueryHandler;
.source "ContactPhotoCacheListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/ContactPhotoCacheListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "QueryHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/ContactPhotoCacheListAdapter;


# direct methods
.method public constructor <init>(Lcom/android/phone/ContactPhotoCacheListAdapter;Landroid/content/ContentResolver;)V
    .locals 0
    .parameter
    .parameter "cr"

    .prologue
    .line 45
    iput-object p1, p0, Lcom/android/phone/ContactPhotoCacheListAdapter$QueryHandler;->this$0:Lcom/android/phone/ContactPhotoCacheListAdapter;

    .line 46
    invoke-direct {p0, p2}, Landroid/content/AsyncQueryHandler;-><init>(Landroid/content/ContentResolver;)V

    .line 47
    return-void
.end method


# virtual methods
.method protected onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .locals 11
    .parameter "token"
    .parameter "cookie"
    .parameter "cursor"

    .prologue
    const/4 v10, 0x0

    .line 51
    packed-switch p1, :pswitch_data_0

    .line 103
    :cond_0
    :goto_0
    return-void

    .line 53
    :pswitch_0
    if-eqz p3, :cond_0

    .line 54
    move-object v0, p2

    check-cast v0, Lcom/android/phone/ContactPhotoCacheListAdapter$ContactCookie;

    move-object v1, v0

    .line 57
    .local v1, contactCookie:Lcom/android/phone/ContactPhotoCacheListAdapter$ContactCookie;
    iget-object v7, p0, Lcom/android/phone/ContactPhotoCacheListAdapter$QueryHandler;->this$0:Lcom/android/phone/ContactPhotoCacheListAdapter;

    #getter for: Lcom/android/phone/ContactPhotoCacheListAdapter;->mContactCache:Ljava/util/HashMap;
    invoke-static {v7}, Lcom/android/phone/ContactPhotoCacheListAdapter;->access$000(Lcom/android/phone/ContactPhotoCacheListAdapter;)Ljava/util/HashMap;

    move-result-object v7

    iget-object v8, v1, Lcom/android/phone/ContactPhotoCacheListAdapter$ContactCookie;->key:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 58
    iget-object v7, p0, Lcom/android/phone/ContactPhotoCacheListAdapter$QueryHandler;->this$0:Lcom/android/phone/ContactPhotoCacheListAdapter;

    #getter for: Lcom/android/phone/ContactPhotoCacheListAdapter;->mContactCache:Ljava/util/HashMap;
    invoke-static {v7}, Lcom/android/phone/ContactPhotoCacheListAdapter;->access$000(Lcom/android/phone/ContactPhotoCacheListAdapter;)Ljava/util/HashMap;

    move-result-object v7

    iget-object v8, v1, Lcom/android/phone/ContactPhotoCacheListAdapter$ContactCookie;->key:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/phone/ContactPhotoCacheListAdapter$ContactCacheData;

    .line 59
    .local v2, data:Lcom/android/phone/ContactPhotoCacheListAdapter$ContactCacheData;
    iget-object v7, p0, Lcom/android/phone/ContactPhotoCacheListAdapter$QueryHandler;->this$0:Lcom/android/phone/ContactPhotoCacheListAdapter;

    #getter for: Lcom/android/phone/ContactPhotoCacheListAdapter;->mContactObserver:Lcom/android/phone/ContactPhotoCacheListAdapter$ContactObserver;
    invoke-static {v7}, Lcom/android/phone/ContactPhotoCacheListAdapter;->access$100(Lcom/android/phone/ContactPhotoCacheListAdapter;)Lcom/android/phone/ContactPhotoCacheListAdapter$ContactObserver;

    move-result-object v7

    iget-object v8, v2, Lcom/android/phone/ContactPhotoCacheListAdapter$ContactCacheData;->cursor:Landroid/database/Cursor;

    invoke-virtual {v7, v8}, Lcom/android/phone/ContactPhotoCacheListAdapter$ContactObserver;->unregisterCursor(Landroid/database/Cursor;)V

    .line 60
    iget-object v7, v2, Lcom/android/phone/ContactPhotoCacheListAdapter$ContactCacheData;->cursor:Landroid/database/Cursor;

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 66
    :goto_1
    iput-object p3, v2, Lcom/android/phone/ContactPhotoCacheListAdapter$ContactCacheData;->cursor:Landroid/database/Cursor;

    .line 67
    iget-object v7, p0, Lcom/android/phone/ContactPhotoCacheListAdapter$QueryHandler;->this$0:Lcom/android/phone/ContactPhotoCacheListAdapter;

    iget-object v8, v1, Lcom/android/phone/ContactPhotoCacheListAdapter$ContactCookie;->key:Ljava/lang/String;

    iget-object v9, v1, Lcom/android/phone/ContactPhotoCacheListAdapter$ContactCookie;->view:Landroid/view/View;

    #calls: Lcom/android/phone/ContactPhotoCacheListAdapter;->addViewToContactCache(Ljava/lang/String;Landroid/view/View;)V
    invoke-static {v7, v8, v9}, Lcom/android/phone/ContactPhotoCacheListAdapter;->access$300(Lcom/android/phone/ContactPhotoCacheListAdapter;Ljava/lang/String;Landroid/view/View;)V

    .line 68
    iget-object v7, v2, Lcom/android/phone/ContactPhotoCacheListAdapter$ContactCacheData;->views:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/View;

    .line 69
    .local v6, v:Landroid/view/View;
    iget-object v7, p0, Lcom/android/phone/ContactPhotoCacheListAdapter$QueryHandler;->this$0:Lcom/android/phone/ContactPhotoCacheListAdapter;

    iget-object v8, v1, Lcom/android/phone/ContactPhotoCacheListAdapter$ContactCookie;->key:Ljava/lang/String;

    #calls: Lcom/android/phone/ContactPhotoCacheListAdapter;->updateViewForContactInfo(Ljava/lang/String;Landroid/view/View;Landroid/database/Cursor;)V
    invoke-static {v7, v8, v6, p3}, Lcom/android/phone/ContactPhotoCacheListAdapter;->access$400(Lcom/android/phone/ContactPhotoCacheListAdapter;Ljava/lang/String;Landroid/view/View;Landroid/database/Cursor;)V

    goto :goto_2

    .line 62
    .end local v2           #data:Lcom/android/phone/ContactPhotoCacheListAdapter$ContactCacheData;
    .end local v3           #i$:Ljava/util/Iterator;
    .end local v6           #v:Landroid/view/View;
    :cond_1
    new-instance v2, Lcom/android/phone/ContactPhotoCacheListAdapter$ContactCacheData;

    iget-object v7, p0, Lcom/android/phone/ContactPhotoCacheListAdapter$QueryHandler;->this$0:Lcom/android/phone/ContactPhotoCacheListAdapter;

    invoke-direct {v2, v7, v10}, Lcom/android/phone/ContactPhotoCacheListAdapter$ContactCacheData;-><init>(Lcom/android/phone/ContactPhotoCacheListAdapter;Lcom/android/phone/ContactPhotoCacheListAdapter$1;)V

    .line 63
    .restart local v2       #data:Lcom/android/phone/ContactPhotoCacheListAdapter$ContactCacheData;
    iget-object v7, p0, Lcom/android/phone/ContactPhotoCacheListAdapter$QueryHandler;->this$0:Lcom/android/phone/ContactPhotoCacheListAdapter;

    #getter for: Lcom/android/phone/ContactPhotoCacheListAdapter;->mContactCache:Ljava/util/HashMap;
    invoke-static {v7}, Lcom/android/phone/ContactPhotoCacheListAdapter;->access$000(Lcom/android/phone/ContactPhotoCacheListAdapter;)Ljava/util/HashMap;

    move-result-object v7

    iget-object v8, v1, Lcom/android/phone/ContactPhotoCacheListAdapter$ContactCookie;->key:Ljava/lang/String;

    invoke-virtual {v7, v8, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 71
    .restart local v3       #i$:Ljava/util/Iterator;
    :cond_2
    iget-object v7, p0, Lcom/android/phone/ContactPhotoCacheListAdapter$QueryHandler;->this$0:Lcom/android/phone/ContactPhotoCacheListAdapter;

    #getter for: Lcom/android/phone/ContactPhotoCacheListAdapter;->mContactObserver:Lcom/android/phone/ContactPhotoCacheListAdapter$ContactObserver;
    invoke-static {v7}, Lcom/android/phone/ContactPhotoCacheListAdapter;->access$100(Lcom/android/phone/ContactPhotoCacheListAdapter;)Lcom/android/phone/ContactPhotoCacheListAdapter$ContactObserver;

    move-result-object v7

    invoke-virtual {v7, p3}, Lcom/android/phone/ContactPhotoCacheListAdapter$ContactObserver;->registerCursor(Landroid/database/Cursor;)V

    goto :goto_0

    .line 76
    .end local v1           #contactCookie:Lcom/android/phone/ContactPhotoCacheListAdapter$ContactCookie;
    .end local v2           #data:Lcom/android/phone/ContactPhotoCacheListAdapter$ContactCacheData;
    .end local v3           #i$:Ljava/util/Iterator;
    :pswitch_1
    if-eqz p3, :cond_0

    .line 77
    move-object v0, p2

    check-cast v0, Lcom/android/phone/ContactPhotoCacheListAdapter$PhotoCookie;

    move-object v4, v0

    .line 80
    .local v4, photoCookie:Lcom/android/phone/ContactPhotoCacheListAdapter$PhotoCookie;
    iget-object v7, p0, Lcom/android/phone/ContactPhotoCacheListAdapter$QueryHandler;->this$0:Lcom/android/phone/ContactPhotoCacheListAdapter;

    #getter for: Lcom/android/phone/ContactPhotoCacheListAdapter;->mPhotoCache:Ljava/util/HashMap;
    invoke-static {v7}, Lcom/android/phone/ContactPhotoCacheListAdapter;->access$500(Lcom/android/phone/ContactPhotoCacheListAdapter;)Ljava/util/HashMap;

    move-result-object v7

    iget-wide v8, v4, Lcom/android/phone/ContactPhotoCacheListAdapter$PhotoCookie;->id:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 81
    iget-object v7, p0, Lcom/android/phone/ContactPhotoCacheListAdapter$QueryHandler;->this$0:Lcom/android/phone/ContactPhotoCacheListAdapter;

    #getter for: Lcom/android/phone/ContactPhotoCacheListAdapter;->mPhotoCache:Ljava/util/HashMap;
    invoke-static {v7}, Lcom/android/phone/ContactPhotoCacheListAdapter;->access$500(Lcom/android/phone/ContactPhotoCacheListAdapter;)Ljava/util/HashMap;

    move-result-object v7

    iget-wide v8, v4, Lcom/android/phone/ContactPhotoCacheListAdapter$PhotoCookie;->id:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/phone/ContactPhotoCacheListAdapter$PhotoCacheData;

    .line 82
    .local v2, data:Lcom/android/phone/ContactPhotoCacheListAdapter$PhotoCacheData;
    iget-object v7, p0, Lcom/android/phone/ContactPhotoCacheListAdapter$QueryHandler;->this$0:Lcom/android/phone/ContactPhotoCacheListAdapter;

    #getter for: Lcom/android/phone/ContactPhotoCacheListAdapter;->mPhotoObserver:Lcom/android/phone/ContactPhotoCacheListAdapter$PhotoObserver;
    invoke-static {v7}, Lcom/android/phone/ContactPhotoCacheListAdapter;->access$600(Lcom/android/phone/ContactPhotoCacheListAdapter;)Lcom/android/phone/ContactPhotoCacheListAdapter$PhotoObserver;

    move-result-object v7

    iget-object v8, v2, Lcom/android/phone/ContactPhotoCacheListAdapter$PhotoCacheData;->cursor:Landroid/database/Cursor;

    invoke-virtual {v7, v8}, Lcom/android/phone/ContactPhotoCacheListAdapter$PhotoObserver;->unregisterCursor(Landroid/database/Cursor;)V

    .line 83
    iget-object v7, v2, Lcom/android/phone/ContactPhotoCacheListAdapter$PhotoCacheData;->cursor:Landroid/database/Cursor;

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 89
    :goto_3
    iput-object p3, v2, Lcom/android/phone/ContactPhotoCacheListAdapter$PhotoCacheData;->cursor:Landroid/database/Cursor;

    .line 90
    iput-object v10, v2, Lcom/android/phone/ContactPhotoCacheListAdapter$PhotoCacheData;->bitmap:Landroid/graphics/Bitmap;

    .line 91
    invoke-interface {p3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 92
    const-string v7, "data15"

    invoke-interface {p3, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {p3, v7}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v5

    .line 93
    .local v5, photoData:[B
    if-eqz v5, :cond_3

    .line 94
    const/4 v7, 0x0

    array-length v8, v5

    invoke-static {v5, v7, v8}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v7

    iput-object v7, v2, Lcom/android/phone/ContactPhotoCacheListAdapter$PhotoCacheData;->bitmap:Landroid/graphics/Bitmap;

    .line 96
    .end local v5           #photoData:[B
    :cond_3
    iget-object v7, p0, Lcom/android/phone/ContactPhotoCacheListAdapter$QueryHandler;->this$0:Lcom/android/phone/ContactPhotoCacheListAdapter;

    iget-wide v8, v4, Lcom/android/phone/ContactPhotoCacheListAdapter$PhotoCookie;->id:J

    iget-object v10, v4, Lcom/android/phone/ContactPhotoCacheListAdapter$PhotoCookie;->view:Landroid/view/View;

    #calls: Lcom/android/phone/ContactPhotoCacheListAdapter;->addViewToPhotoCache(JLandroid/view/View;)V
    invoke-static {v7, v8, v9, v10}, Lcom/android/phone/ContactPhotoCacheListAdapter;->access$800(Lcom/android/phone/ContactPhotoCacheListAdapter;JLandroid/view/View;)V

    .line 97
    iget-object v7, v2, Lcom/android/phone/ContactPhotoCacheListAdapter$PhotoCacheData;->views:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .restart local v3       #i$:Ljava/util/Iterator;
    :goto_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/View;

    .line 98
    .restart local v6       #v:Landroid/view/View;
    iget-object v7, p0, Lcom/android/phone/ContactPhotoCacheListAdapter$QueryHandler;->this$0:Lcom/android/phone/ContactPhotoCacheListAdapter;

    iget-object v8, v2, Lcom/android/phone/ContactPhotoCacheListAdapter$PhotoCacheData;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v7, v6, v8}, Lcom/android/phone/ContactPhotoCacheListAdapter;->updateViewForPhoto(Landroid/view/View;Landroid/graphics/Bitmap;)V

    goto :goto_4

    .line 85
    .end local v2           #data:Lcom/android/phone/ContactPhotoCacheListAdapter$PhotoCacheData;
    .end local v3           #i$:Ljava/util/Iterator;
    .end local v6           #v:Landroid/view/View;
    :cond_4
    new-instance v2, Lcom/android/phone/ContactPhotoCacheListAdapter$PhotoCacheData;

    iget-object v7, p0, Lcom/android/phone/ContactPhotoCacheListAdapter$QueryHandler;->this$0:Lcom/android/phone/ContactPhotoCacheListAdapter;

    invoke-direct {v2, v7, v10}, Lcom/android/phone/ContactPhotoCacheListAdapter$PhotoCacheData;-><init>(Lcom/android/phone/ContactPhotoCacheListAdapter;Lcom/android/phone/ContactPhotoCacheListAdapter$1;)V

    .line 86
    .restart local v2       #data:Lcom/android/phone/ContactPhotoCacheListAdapter$PhotoCacheData;
    iget-object v7, p0, Lcom/android/phone/ContactPhotoCacheListAdapter$QueryHandler;->this$0:Lcom/android/phone/ContactPhotoCacheListAdapter;

    #getter for: Lcom/android/phone/ContactPhotoCacheListAdapter;->mPhotoCache:Ljava/util/HashMap;
    invoke-static {v7}, Lcom/android/phone/ContactPhotoCacheListAdapter;->access$500(Lcom/android/phone/ContactPhotoCacheListAdapter;)Ljava/util/HashMap;

    move-result-object v7

    iget-wide v8, v4, Lcom/android/phone/ContactPhotoCacheListAdapter$PhotoCookie;->id:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v7, v8, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 99
    .restart local v3       #i$:Ljava/util/Iterator;
    :cond_5
    iget-object v7, p0, Lcom/android/phone/ContactPhotoCacheListAdapter$QueryHandler;->this$0:Lcom/android/phone/ContactPhotoCacheListAdapter;

    #getter for: Lcom/android/phone/ContactPhotoCacheListAdapter;->mPhotoObserver:Lcom/android/phone/ContactPhotoCacheListAdapter$PhotoObserver;
    invoke-static {v7}, Lcom/android/phone/ContactPhotoCacheListAdapter;->access$600(Lcom/android/phone/ContactPhotoCacheListAdapter;)Lcom/android/phone/ContactPhotoCacheListAdapter$PhotoObserver;

    move-result-object v7

    invoke-virtual {v7, p3}, Lcom/android/phone/ContactPhotoCacheListAdapter$PhotoObserver;->registerCursor(Landroid/database/Cursor;)V

    goto/16 :goto_0

    .line 51
    :pswitch_data_0
    .packed-switch 0x3e9
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
