.class public abstract Lcom/android/phone/ContactPhotoCacheListAdapter;
.super Ljava/lang/Object;
.source "ContactPhotoCacheListAdapter.java"

# interfaces
.implements Landroid/widget/ListAdapter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/ContactPhotoCacheListAdapter$1;,
        Lcom/android/phone/ContactPhotoCacheListAdapter$MultipleContentObserver;,
        Lcom/android/phone/ContactPhotoCacheListAdapter$QueryData;,
        Lcom/android/phone/ContactPhotoCacheListAdapter$PhotoCookie;,
        Lcom/android/phone/ContactPhotoCacheListAdapter$PhotoCacheData;,
        Lcom/android/phone/ContactPhotoCacheListAdapter$PhotoObserver;,
        Lcom/android/phone/ContactPhotoCacheListAdapter$ContactCookie;,
        Lcom/android/phone/ContactPhotoCacheListAdapter$ContactCacheData;,
        Lcom/android/phone/ContactPhotoCacheListAdapter$ContactObserver;,
        Lcom/android/phone/ContactPhotoCacheListAdapter$QueryHandler;
    }
.end annotation


# static fields
.field private static final PHOTO_PROJECTION:[Ljava/lang/String; = null

.field private static final QUERY_CONTACT:I = 0x3e9

.field private static final QUERY_PHOTO:I = 0x3ea


# instance fields
.field private mContactCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/phone/ContactPhotoCacheListAdapter$ContactCacheData;",
            ">;"
        }
    .end annotation
.end field

.field private mContactObserver:Lcom/android/phone/ContactPhotoCacheListAdapter$ContactObserver;

.field private mContactViewMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/view/View;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected mContext:Landroid/content/Context;

.field private mPhotoCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Lcom/android/phone/ContactPhotoCacheListAdapter$PhotoCacheData;",
            ">;"
        }
    .end annotation
.end field

.field private mPhotoObserver:Lcom/android/phone/ContactPhotoCacheListAdapter$PhotoObserver;

.field private mPhotoViewMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/view/View;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mQueryHandler:Lcom/android/phone/ContactPhotoCacheListAdapter$QueryHandler;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 39
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "data15"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/phone/ContactPhotoCacheListAdapter;->PHOTO_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    const/4 v1, 0x0

    .line 258
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 242
    iput-object v1, p0, Lcom/android/phone/ContactPhotoCacheListAdapter;->mQueryHandler:Lcom/android/phone/ContactPhotoCacheListAdapter$QueryHandler;

    .line 243
    new-instance v0, Lcom/android/phone/ContactPhotoCacheListAdapter$ContactObserver;

    invoke-direct {v0, p0, v1}, Lcom/android/phone/ContactPhotoCacheListAdapter$ContactObserver;-><init>(Lcom/android/phone/ContactPhotoCacheListAdapter;Lcom/android/phone/ContactPhotoCacheListAdapter$1;)V

    iput-object v0, p0, Lcom/android/phone/ContactPhotoCacheListAdapter;->mContactObserver:Lcom/android/phone/ContactPhotoCacheListAdapter$ContactObserver;

    .line 244
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/phone/ContactPhotoCacheListAdapter;->mContactViewMap:Ljava/util/HashMap;

    .line 245
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/phone/ContactPhotoCacheListAdapter;->mContactCache:Ljava/util/HashMap;

    .line 246
    new-instance v0, Lcom/android/phone/ContactPhotoCacheListAdapter$PhotoObserver;

    invoke-direct {v0, p0, v1}, Lcom/android/phone/ContactPhotoCacheListAdapter$PhotoObserver;-><init>(Lcom/android/phone/ContactPhotoCacheListAdapter;Lcom/android/phone/ContactPhotoCacheListAdapter$1;)V

    iput-object v0, p0, Lcom/android/phone/ContactPhotoCacheListAdapter;->mPhotoObserver:Lcom/android/phone/ContactPhotoCacheListAdapter$PhotoObserver;

    .line 247
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/phone/ContactPhotoCacheListAdapter;->mPhotoViewMap:Ljava/util/HashMap;

    .line 248
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/phone/ContactPhotoCacheListAdapter;->mPhotoCache:Ljava/util/HashMap;

    .line 250
    iput-object v1, p0, Lcom/android/phone/ContactPhotoCacheListAdapter;->mContext:Landroid/content/Context;

    .line 259
    if-nez p1, :cond_0

    .line 260
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Context cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 263
    :cond_0
    iput-object p1, p0, Lcom/android/phone/ContactPhotoCacheListAdapter;->mContext:Landroid/content/Context;

    .line 264
    new-instance v0, Lcom/android/phone/ContactPhotoCacheListAdapter$QueryHandler;

    iget-object v1, p0, Lcom/android/phone/ContactPhotoCacheListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/phone/ContactPhotoCacheListAdapter$QueryHandler;-><init>(Lcom/android/phone/ContactPhotoCacheListAdapter;Landroid/content/ContentResolver;)V

    iput-object v0, p0, Lcom/android/phone/ContactPhotoCacheListAdapter;->mQueryHandler:Lcom/android/phone/ContactPhotoCacheListAdapter$QueryHandler;

    .line 265
    return-void
.end method

.method static synthetic access$000(Lcom/android/phone/ContactPhotoCacheListAdapter;)Ljava/util/HashMap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    iget-object v0, p0, Lcom/android/phone/ContactPhotoCacheListAdapter;->mContactCache:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/phone/ContactPhotoCacheListAdapter;)Lcom/android/phone/ContactPhotoCacheListAdapter$ContactObserver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    iget-object v0, p0, Lcom/android/phone/ContactPhotoCacheListAdapter;->mContactObserver:Lcom/android/phone/ContactPhotoCacheListAdapter$ContactObserver;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/phone/ContactPhotoCacheListAdapter;Ljava/lang/String;Landroid/view/View;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 34
    invoke-direct {p0, p1, p2}, Lcom/android/phone/ContactPhotoCacheListAdapter;->addViewToContactCache(Ljava/lang/String;Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/phone/ContactPhotoCacheListAdapter;Ljava/lang/String;Landroid/view/View;Landroid/database/Cursor;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 34
    invoke-direct {p0, p1, p2, p3}, Lcom/android/phone/ContactPhotoCacheListAdapter;->updateViewForContactInfo(Ljava/lang/String;Landroid/view/View;Landroid/database/Cursor;)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/phone/ContactPhotoCacheListAdapter;)Ljava/util/HashMap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    iget-object v0, p0, Lcom/android/phone/ContactPhotoCacheListAdapter;->mPhotoCache:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/phone/ContactPhotoCacheListAdapter;)Lcom/android/phone/ContactPhotoCacheListAdapter$PhotoObserver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    iget-object v0, p0, Lcom/android/phone/ContactPhotoCacheListAdapter;->mPhotoObserver:Lcom/android/phone/ContactPhotoCacheListAdapter$PhotoObserver;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/phone/ContactPhotoCacheListAdapter;JLandroid/view/View;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 34
    invoke-direct {p0, p1, p2, p3}, Lcom/android/phone/ContactPhotoCacheListAdapter;->addViewToPhotoCache(JLandroid/view/View;)V

    return-void
.end method

.method private addViewToContactCache(Ljava/lang/String;Landroid/view/View;)V
    .locals 2
    .parameter "key"
    .parameter "view"

    .prologue
    .line 377
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 386
    :cond_0
    :goto_0
    return-void

    .line 380
    :cond_1
    iget-object v1, p0, Lcom/android/phone/ContactPhotoCacheListAdapter;->mContactCache:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/phone/ContactPhotoCacheListAdapter$ContactCacheData;

    .line 381
    .local v0, data:Lcom/android/phone/ContactPhotoCacheListAdapter$ContactCacheData;
    if-eqz v0, :cond_0

    .line 384
    iget-object v1, v0, Lcom/android/phone/ContactPhotoCacheListAdapter$ContactCacheData;->views:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 385
    iget-object v1, p0, Lcom/android/phone/ContactPhotoCacheListAdapter;->mContactViewMap:Ljava/util/HashMap;

    invoke-virtual {v1, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method private addViewToPhotoCache(JLandroid/view/View;)V
    .locals 3
    .parameter "id"
    .parameter "view"

    .prologue
    .line 410
    if-nez p3, :cond_1

    .line 419
    :cond_0
    :goto_0
    return-void

    .line 413
    :cond_1
    iget-object v1, p0, Lcom/android/phone/ContactPhotoCacheListAdapter;->mPhotoCache:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/phone/ContactPhotoCacheListAdapter$PhotoCacheData;

    .line 414
    .local v0, data:Lcom/android/phone/ContactPhotoCacheListAdapter$PhotoCacheData;
    if-eqz v0, :cond_0

    .line 417
    iget-object v1, v0, Lcom/android/phone/ContactPhotoCacheListAdapter$PhotoCacheData;->views:Ljava/util/ArrayList;

    invoke-virtual {v1, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 418
    iget-object v1, p0, Lcom/android/phone/ContactPhotoCacheListAdapter;->mPhotoViewMap:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, p3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method private removeViewFromContactCache(Landroid/view/View;)V
    .locals 5
    .parameter "view"

    .prologue
    .line 389
    if-nez p1, :cond_1

    .line 407
    :cond_0
    :goto_0
    return-void

    .line 392
    :cond_1
    iget-object v4, p0, Lcom/android/phone/ContactPhotoCacheListAdapter;->mContactViewMap:Ljava/util/HashMap;

    invoke-virtual {v4, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 393
    .local v2, number:Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 396
    iget-object v4, p0, Lcom/android/phone/ContactPhotoCacheListAdapter;->mContactViewMap:Ljava/util/HashMap;

    invoke-virtual {v4, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 397
    iget-object v4, p0, Lcom/android/phone/ContactPhotoCacheListAdapter;->mContactCache:Ljava/util/HashMap;

    invoke-virtual {v4, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/phone/ContactPhotoCacheListAdapter$ContactCacheData;

    .line 398
    .local v0, data:Lcom/android/phone/ContactPhotoCacheListAdapter$ContactCacheData;
    if-eqz v0, :cond_0

    .line 401
    iget-object v4, v0, Lcom/android/phone/ContactPhotoCacheListAdapter$ContactCacheData;->views:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    .line 402
    .local v3, v:Landroid/view/View;
    invoke-virtual {v3, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 403
    iget-object v4, v0, Lcom/android/phone/ContactPhotoCacheListAdapter$ContactCacheData;->views:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private removeViewFromPhotoCache(Landroid/view/View;)V
    .locals 5
    .parameter "view"

    .prologue
    .line 422
    if-nez p1, :cond_1

    .line 440
    :cond_0
    :goto_0
    return-void

    .line 425
    :cond_1
    iget-object v4, p0, Lcom/android/phone/ContactPhotoCacheListAdapter;->mPhotoViewMap:Ljava/util/HashMap;

    invoke-virtual {v4, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    .line 426
    .local v2, id:Ljava/lang/Long;
    if-eqz v2, :cond_0

    .line 429
    iget-object v4, p0, Lcom/android/phone/ContactPhotoCacheListAdapter;->mPhotoViewMap:Ljava/util/HashMap;

    invoke-virtual {v4, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 430
    iget-object v4, p0, Lcom/android/phone/ContactPhotoCacheListAdapter;->mPhotoCache:Ljava/util/HashMap;

    invoke-virtual {v4, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/phone/ContactPhotoCacheListAdapter$PhotoCacheData;

    .line 431
    .local v0, data:Lcom/android/phone/ContactPhotoCacheListAdapter$PhotoCacheData;
    if-eqz v0, :cond_0

    .line 434
    iget-object v4, v0, Lcom/android/phone/ContactPhotoCacheListAdapter$PhotoCacheData;->views:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    .line 435
    .local v3, v:Landroid/view/View;
    invoke-virtual {v3, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 436
    iget-object v4, v0, Lcom/android/phone/ContactPhotoCacheListAdapter$PhotoCacheData;->views:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private updateViewForContactInfo(Ljava/lang/String;Landroid/view/View;Landroid/database/Cursor;)V
    .locals 12
    .parameter "key"
    .parameter "view"
    .parameter "cursor"

    .prologue
    .line 343
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/phone/ContactPhotoCacheListAdapter;->updateViewForContact(Ljava/lang/String;Landroid/view/View;Landroid/database/Cursor;)V

    .line 345
    if-eqz p3, :cond_0

    invoke-interface {p3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 346
    invoke-direct {p0, p2}, Lcom/android/phone/ContactPhotoCacheListAdapter;->removeViewFromPhotoCache(Landroid/view/View;)V

    .line 348
    :try_start_0
    const-string v0, "photo_id"

    invoke-interface {p3, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p3, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    .line 349
    .local v10, photoId:J
    const-wide/16 v0, 0x0

    cmp-long v0, v0, v10

    if-nez v0, :cond_1

    .line 350
    const/4 v0, 0x0

    invoke-virtual {p0, p2, v0}, Lcom/android/phone/ContactPhotoCacheListAdapter;->updateViewForPhoto(Landroid/view/View;Landroid/graphics/Bitmap;)V

    .line 374
    .end local v10           #photoId:J
    :cond_0
    :goto_0
    return-void

    .line 351
    .restart local v10       #photoId:J
    :cond_1
    iget-object v0, p0, Lcom/android/phone/ContactPhotoCacheListAdapter;->mPhotoCache:Ljava/util/HashMap;

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 352
    iget-object v0, p0, Lcom/android/phone/ContactPhotoCacheListAdapter;->mPhotoCache:Ljava/util/HashMap;

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/phone/ContactPhotoCacheListAdapter$PhotoCacheData;

    .line 353
    .local v8, data:Lcom/android/phone/ContactPhotoCacheListAdapter$PhotoCacheData;
    iget-object v0, v8, Lcom/android/phone/ContactPhotoCacheListAdapter$PhotoCacheData;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p0, p2, v0}, Lcom/android/phone/ContactPhotoCacheListAdapter;->updateViewForPhoto(Landroid/view/View;Landroid/graphics/Bitmap;)V

    .line 354
    invoke-direct {p0, v10, v11, p2}, Lcom/android/phone/ContactPhotoCacheListAdapter;->addViewToPhotoCache(JLandroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 368
    .end local v8           #data:Lcom/android/phone/ContactPhotoCacheListAdapter$PhotoCacheData;
    .end local v10           #photoId:J
    :catch_0
    move-exception v0

    move-object v9, v0

    .line 369
    .local v9, e:Ljava/lang/IllegalArgumentException;
    const/4 v0, 0x0

    invoke-virtual {p0, p2, v0}, Lcom/android/phone/ContactPhotoCacheListAdapter;->updateViewForPhoto(Landroid/view/View;Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 356
    .end local v9           #e:Ljava/lang/IllegalArgumentException;
    .restart local v10       #photoId:J
    :cond_2
    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {p0, p2, v0}, Lcom/android/phone/ContactPhotoCacheListAdapter;->updateViewForPhoto(Landroid/view/View;Landroid/graphics/Bitmap;)V

    .line 357
    new-instance v2, Lcom/android/phone/ContactPhotoCacheListAdapter$PhotoCookie;

    const/4 v0, 0x0

    invoke-direct {v2, p0, v0}, Lcom/android/phone/ContactPhotoCacheListAdapter$PhotoCookie;-><init>(Lcom/android/phone/ContactPhotoCacheListAdapter;Lcom/android/phone/ContactPhotoCacheListAdapter$1;)V

    .line 358
    .local v2, cookie:Lcom/android/phone/ContactPhotoCacheListAdapter$PhotoCookie;
    iput-wide v10, v2, Lcom/android/phone/ContactPhotoCacheListAdapter$PhotoCookie;->id:J

    .line 359
    iput-object p2, v2, Lcom/android/phone/ContactPhotoCacheListAdapter$PhotoCookie;->view:Landroid/view/View;

    .line 360
    iget-object v0, p0, Lcom/android/phone/ContactPhotoCacheListAdapter;->mQueryHandler:Lcom/android/phone/ContactPhotoCacheListAdapter$QueryHandler;

    const/16 v1, 0x3ea

    sget-object v3, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v3, v10, v11}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    sget-object v4, Lcom/android/phone/ContactPhotoCacheListAdapter;->PHOTO_PROJECTION:[Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Lcom/android/phone/ContactPhotoCacheListAdapter$QueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method


# virtual methods
.method public final clearCache()V
    .locals 6

    .prologue
    .line 316
    iget-object v4, p0, Lcom/android/phone/ContactPhotoCacheListAdapter;->mContactCache:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 317
    .local v2, key:Ljava/lang/String;
    iget-object v4, p0, Lcom/android/phone/ContactPhotoCacheListAdapter;->mContactCache:Ljava/util/HashMap;

    invoke-virtual {v4, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/phone/ContactPhotoCacheListAdapter$ContactCacheData;

    .line 318
    .local v0, data:Lcom/android/phone/ContactPhotoCacheListAdapter$ContactCacheData;
    iget-object v4, p0, Lcom/android/phone/ContactPhotoCacheListAdapter;->mContactObserver:Lcom/android/phone/ContactPhotoCacheListAdapter$ContactObserver;

    iget-object v5, v0, Lcom/android/phone/ContactPhotoCacheListAdapter$ContactCacheData;->cursor:Landroid/database/Cursor;

    invoke-virtual {v4, v5}, Lcom/android/phone/ContactPhotoCacheListAdapter$ContactObserver;->unregisterCursor(Landroid/database/Cursor;)V

    .line 319
    iget-object v4, v0, Lcom/android/phone/ContactPhotoCacheListAdapter$ContactCacheData;->cursor:Landroid/database/Cursor;

    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 321
    .end local v0           #data:Lcom/android/phone/ContactPhotoCacheListAdapter$ContactCacheData;
    .end local v2           #key:Ljava/lang/String;
    :cond_0
    iget-object v4, p0, Lcom/android/phone/ContactPhotoCacheListAdapter;->mContactCache:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->clear()V

    .line 322
    iget-object v4, p0, Lcom/android/phone/ContactPhotoCacheListAdapter;->mContactViewMap:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->clear()V

    .line 324
    iget-object v4, p0, Lcom/android/phone/ContactPhotoCacheListAdapter;->mPhotoCache:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 325
    .local v2, key:J
    iget-object v4, p0, Lcom/android/phone/ContactPhotoCacheListAdapter;->mPhotoCache:Ljava/util/HashMap;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/phone/ContactPhotoCacheListAdapter$PhotoCacheData;

    .line 326
    .local v0, data:Lcom/android/phone/ContactPhotoCacheListAdapter$PhotoCacheData;
    iget-object v4, p0, Lcom/android/phone/ContactPhotoCacheListAdapter;->mPhotoObserver:Lcom/android/phone/ContactPhotoCacheListAdapter$PhotoObserver;

    iget-object v5, v0, Lcom/android/phone/ContactPhotoCacheListAdapter$PhotoCacheData;->cursor:Landroid/database/Cursor;

    invoke-virtual {v4, v5}, Lcom/android/phone/ContactPhotoCacheListAdapter$PhotoObserver;->unregisterCursor(Landroid/database/Cursor;)V

    .line 327
    iget-object v4, v0, Lcom/android/phone/ContactPhotoCacheListAdapter$PhotoCacheData;->cursor:Landroid/database/Cursor;

    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 329
    .end local v0           #data:Lcom/android/phone/ContactPhotoCacheListAdapter$PhotoCacheData;
    .end local v2           #key:J
    :cond_1
    iget-object v4, p0, Lcom/android/phone/ContactPhotoCacheListAdapter;->mPhotoCache:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->clear()V

    .line 330
    iget-object v4, p0, Lcom/android/phone/ContactPhotoCacheListAdapter;->mPhotoViewMap:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->clear()V

    .line 331
    return-void
.end method

.method protected abstract createItemView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end method

.method protected abstract getContactQueryData(I)Lcom/android/phone/ContactPhotoCacheListAdapter$QueryData;
.end method

.method protected getItemConvertNumber(I)Ljava/lang/String;
    .locals 1
    .parameter "position"

    .prologue
    .line 336
    const-string v0, ""

    .line 337
    .local v0, tmpNumber:Ljava/lang/String;
    return-object v0
.end method

.method protected abstract getItemKey(I)Ljava/lang/String;
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 13
    .parameter "i"
    .parameter "view"
    .parameter "vg"

    .prologue
    .line 269
    if-eqz p2, :cond_0

    .line 271
    invoke-direct {p0, p2}, Lcom/android/phone/ContactPhotoCacheListAdapter;->removeViewFromContactCache(Landroid/view/View;)V

    .line 272
    invoke-direct {p0, p2}, Lcom/android/phone/ContactPhotoCacheListAdapter;->removeViewFromPhotoCache(Landroid/view/View;)V

    .line 275
    :cond_0
    invoke-virtual/range {p0 .. p3}, Lcom/android/phone/ContactPhotoCacheListAdapter;->createItemView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v10

    .line 276
    .local v10, itemView:Landroid/view/View;
    invoke-virtual {p0, p1}, Lcom/android/phone/ContactPhotoCacheListAdapter;->getItemKey(I)Ljava/lang/String;

    move-result-object v11

    .line 277
    .local v11, key:Ljava/lang/String;
    invoke-virtual {p0, p1}, Lcom/android/phone/ContactPhotoCacheListAdapter;->getItemConvertNumber(I)Ljava/lang/String;

    move-result-object v8

    .line 278
    .local v8, convertNumber:Ljava/lang/String;
    const-string v0, "ContactPhotoCacheListAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "enter getView.convertNumber:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 280
    iget-object v0, p0, Lcom/android/phone/ContactPhotoCacheListAdapter;->mContactCache:Ljava/util/HashMap;

    invoke-virtual {v0, v11}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 281
    iget-object v0, p0, Lcom/android/phone/ContactPhotoCacheListAdapter;->mContactCache:Ljava/util/HashMap;

    invoke-virtual {v0, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/phone/ContactPhotoCacheListAdapter$ContactCacheData;

    .line 283
    .local v9, data:Lcom/android/phone/ContactPhotoCacheListAdapter$ContactCacheData;
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 284
    iget-object v0, v9, Lcom/android/phone/ContactPhotoCacheListAdapter$ContactCacheData;->cursor:Landroid/database/Cursor;

    invoke-direct {p0, v8, v10, v0}, Lcom/android/phone/ContactPhotoCacheListAdapter;->updateViewForContactInfo(Ljava/lang/String;Landroid/view/View;Landroid/database/Cursor;)V

    .line 289
    :goto_0
    invoke-direct {p0, v11, v10}, Lcom/android/phone/ContactPhotoCacheListAdapter;->addViewToContactCache(Ljava/lang/String;Landroid/view/View;)V

    .line 312
    .end local v9           #data:Lcom/android/phone/ContactPhotoCacheListAdapter$ContactCacheData;
    :cond_1
    :goto_1
    return-object v10

    .line 287
    .restart local v9       #data:Lcom/android/phone/ContactPhotoCacheListAdapter$ContactCacheData;
    :cond_2
    iget-object v0, v9, Lcom/android/phone/ContactPhotoCacheListAdapter$ContactCacheData;->cursor:Landroid/database/Cursor;

    invoke-direct {p0, v11, v10, v0}, Lcom/android/phone/ContactPhotoCacheListAdapter;->updateViewForContactInfo(Ljava/lang/String;Landroid/view/View;Landroid/database/Cursor;)V

    goto :goto_0

    .line 291
    .end local v9           #data:Lcom/android/phone/ContactPhotoCacheListAdapter$ContactCacheData;
    :cond_3
    invoke-virtual {p0, p1}, Lcom/android/phone/ContactPhotoCacheListAdapter;->getContactQueryData(I)Lcom/android/phone/ContactPhotoCacheListAdapter$QueryData;

    move-result-object v12

    .line 292
    .local v12, queryData:Lcom/android/phone/ContactPhotoCacheListAdapter$QueryData;
    if-eqz v12, :cond_1

    .line 293
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 294
    const/4 v0, 0x0

    invoke-direct {p0, v8, v10, v0}, Lcom/android/phone/ContactPhotoCacheListAdapter;->updateViewForContactInfo(Ljava/lang/String;Landroid/view/View;Landroid/database/Cursor;)V

    .line 298
    :goto_2
    new-instance v2, Lcom/android/phone/ContactPhotoCacheListAdapter$ContactCookie;

    const/4 v0, 0x0

    invoke-direct {v2, p0, v0}, Lcom/android/phone/ContactPhotoCacheListAdapter$ContactCookie;-><init>(Lcom/android/phone/ContactPhotoCacheListAdapter;Lcom/android/phone/ContactPhotoCacheListAdapter$1;)V

    .line 299
    .local v2, cookie:Lcom/android/phone/ContactPhotoCacheListAdapter$ContactCookie;
    iput-object v11, v2, Lcom/android/phone/ContactPhotoCacheListAdapter$ContactCookie;->key:Ljava/lang/String;

    .line 300
    iput-object v10, v2, Lcom/android/phone/ContactPhotoCacheListAdapter$ContactCookie;->view:Landroid/view/View;

    .line 301
    iget-object v0, p0, Lcom/android/phone/ContactPhotoCacheListAdapter;->mQueryHandler:Lcom/android/phone/ContactPhotoCacheListAdapter$QueryHandler;

    const/16 v1, 0x3e9

    iget-object v3, v12, Lcom/android/phone/ContactPhotoCacheListAdapter$QueryData;->uri:Landroid/net/Uri;

    iget-object v4, v12, Lcom/android/phone/ContactPhotoCacheListAdapter$QueryData;->projection:[Ljava/lang/String;

    iget-object v5, v12, Lcom/android/phone/ContactPhotoCacheListAdapter$QueryData;->selection:Ljava/lang/String;

    iget-object v6, v12, Lcom/android/phone/ContactPhotoCacheListAdapter$QueryData;->selectionArgs:[Ljava/lang/String;

    iget-object v7, v12, Lcom/android/phone/ContactPhotoCacheListAdapter$QueryData;->orderBy:Ljava/lang/String;

    invoke-virtual/range {v0 .. v7}, Lcom/android/phone/ContactPhotoCacheListAdapter$QueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 296
    .end local v2           #cookie:Lcom/android/phone/ContactPhotoCacheListAdapter$ContactCookie;
    :cond_4
    const/4 v0, 0x0

    invoke-direct {p0, v11, v10, v0}, Lcom/android/phone/ContactPhotoCacheListAdapter;->updateViewForContactInfo(Ljava/lang/String;Landroid/view/View;Landroid/database/Cursor;)V

    goto :goto_2
.end method

.method protected abstract updateViewForContact(Ljava/lang/String;Landroid/view/View;Landroid/database/Cursor;)V
.end method

.method protected abstract updateViewForPhoto(Landroid/view/View;Landroid/graphics/Bitmap;)V
.end method
