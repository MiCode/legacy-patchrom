.class Lcom/android/phone/ListContactPhotoManager;
.super Ljava/lang/Object;
.source "ListContactPhotoManager.java"

# interfaces
.implements Lcom/android/phone/AsyncIdentityPhotoLoader$OnImageLoadCompleteListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/ListContactPhotoManager$MyCookie;,
        Lcom/android/phone/ListContactPhotoManager$CacheRecord;
    }
.end annotation


# static fields
#the value of this static final field might be set in the static constructor
.field private static final DBG:Z = false

.field private static final TAG:Ljava/lang/String; = "LstContactPhotoMgr"

.field private static final VDBG:Z


# instance fields
.field private mAsyncImageLoader:Lcom/android/phone/AsyncIdentityPhotoLoader;

.field private mCacheSize:I

.field private mContext:Landroid/content/Context;

.field private mDefaultPhoto:Landroid/graphics/Bitmap;

.field private mPhotoMap:Lcom/motorola/blur/util/cache/LeastRecentlyUsedCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/motorola/blur/util/cache/LeastRecentlyUsedCache",
            "<",
            "Ljava/lang/Long;",
            "Lcom/android/phone/ListContactPhotoManager$CacheRecord;",
            ">;"
        }
    .end annotation
.end field

.field private mRequests:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Ljava/util/HashSet",
            "<",
            "Landroid/widget/ImageView;",
            ">;>;"
        }
    .end annotation
.end field

.field private mToken:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    sget-boolean v0, Lcom/android/phone/PhoneApp;->DBG:Z

    sput-boolean v0, Lcom/android/phone/ListContactPhotoManager;->DBG:Z

    .line 24
    sget-boolean v0, Lcom/android/phone/PhoneApp;->VDBG:Z

    sput-boolean v0, Lcom/android/phone/ListContactPhotoManager;->VDBG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;II)V
    .locals 2
    .parameter "context"
    .parameter "token"
    .parameter "cacheSize"

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Lcom/android/phone/ListContactPhotoManager;->mContext:Landroid/content/Context;

    .line 42
    iput p2, p0, Lcom/android/phone/ListContactPhotoManager;->mToken:I

    .line 43
    iput p3, p0, Lcom/android/phone/ListContactPhotoManager;->mCacheSize:I

    .line 44
    new-instance v0, Lcom/motorola/blur/util/cache/LeastRecentlyUsedCache;

    iget v1, p0, Lcom/android/phone/ListContactPhotoManager;->mCacheSize:I

    invoke-direct {v0, v1}, Lcom/motorola/blur/util/cache/LeastRecentlyUsedCache;-><init>(I)V

    iput-object v0, p0, Lcom/android/phone/ListContactPhotoManager;->mPhotoMap:Lcom/motorola/blur/util/cache/LeastRecentlyUsedCache;

    .line 45
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/phone/ListContactPhotoManager;->mRequests:Ljava/util/HashMap;

    .line 46
    new-instance v0, Lcom/android/phone/AsyncIdentityPhotoLoader;

    invoke-direct {v0}, Lcom/android/phone/AsyncIdentityPhotoLoader;-><init>()V

    iput-object v0, p0, Lcom/android/phone/ListContactPhotoManager;->mAsyncImageLoader:Lcom/android/phone/AsyncIdentityPhotoLoader;

    .line 47
    return-void
.end method

.method static log(Ljava/lang/String;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 146
    const-string v0, "LstContactPhotoMgr"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ":=:=:=:=:=:=:=:=:=:=:=:=:=:=:=:=:=:=:=:=:=:=:=:=:=:=:=:=:=:=:=:=:=:=:=:=:=:=:=:=> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    return-void
.end method


# virtual methods
.method clear()V
    .locals 2

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/phone/ListContactPhotoManager;->mPhotoMap:Lcom/motorola/blur/util/cache/LeastRecentlyUsedCache;

    invoke-virtual {v0}, Lcom/motorola/blur/util/cache/LeastRecentlyUsedCache;->clear()V

    .line 51
    iget-object v0, p0, Lcom/android/phone/ListContactPhotoManager;->mRequests:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 52
    iget-object v0, p0, Lcom/android/phone/ListContactPhotoManager;->mAsyncImageLoader:Lcom/android/phone/AsyncIdentityPhotoLoader;

    iget v1, p0, Lcom/android/phone/ListContactPhotoManager;->mToken:I

    invoke-virtual {v0, v1}, Lcom/android/phone/AsyncIdentityPhotoLoader;->clear(I)V

    .line 53
    return-void
.end method

.method invalidateCache()V
    .locals 3

    .prologue
    .line 56
    iget-object v2, p0, Lcom/android/phone/ListContactPhotoManager;->mPhotoMap:Lcom/motorola/blur/util/cache/LeastRecentlyUsedCache;

    invoke-virtual {v2}, Lcom/motorola/blur/util/cache/LeastRecentlyUsedCache;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/phone/ListContactPhotoManager$CacheRecord;

    .line 57
    .local v0, cr:Lcom/android/phone/ListContactPhotoManager$CacheRecord;
    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/android/phone/ListContactPhotoManager$CacheRecord;->isDirty:Z

    goto :goto_0

    .line 59
    .end local v0           #cr:Lcom/android/phone/ListContactPhotoManager$CacheRecord;
    :cond_0
    return-void
.end method

.method public onImageLoadComplete(ILandroid/graphics/Bitmap;Ljava/lang/Object;Landroid/net/Uri;)V
    .locals 13
    .parameter "token"
    .parameter "result"
    .parameter "cookie"
    .parameter "iUri"

    .prologue
    .line 113
    move-object v6, p2

    .line 114
    .local v6, photo:Landroid/graphics/Bitmap;
    if-nez v6, :cond_0

    .line 115
    invoke-static {}, Lcom/android/phone/Utils;->getDefaultContactPhoto()Landroid/graphics/Bitmap;

    move-result-object v6

    .line 117
    :cond_0
    move-object/from16 v0, p3

    check-cast v0, Lcom/android/phone/ListContactPhotoManager$MyCookie;

    move-object v5, v0

    .line 118
    .local v5, myCookie:Lcom/android/phone/ListContactPhotoManager$MyCookie;
    new-instance v1, Lcom/android/phone/ListContactPhotoManager$CacheRecord;

    invoke-direct {v1}, Lcom/android/phone/ListContactPhotoManager$CacheRecord;-><init>()V

    .line 119
    .local v1, cr:Lcom/android/phone/ListContactPhotoManager$CacheRecord;
    iput-object v6, v1, Lcom/android/phone/ListContactPhotoManager$CacheRecord;->photo:Landroid/graphics/Bitmap;

    .line 120
    iget-object v10, p0, Lcom/android/phone/ListContactPhotoManager;->mPhotoMap:Lcom/motorola/blur/util/cache/LeastRecentlyUsedCache;

    iget-wide v11, v5, Lcom/android/phone/ListContactPhotoManager$MyCookie;->identityId:J

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v10, v11, v1}, Lcom/motorola/blur/util/cache/LeastRecentlyUsedCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    iget-wide v3, v5, Lcom/android/phone/ListContactPhotoManager$MyCookie;->identityId:J

    .line 123
    .local v3, identityId:J
    iget-object v10, p0, Lcom/android/phone/ListContactPhotoManager;->mRequests:Ljava/util/HashMap;

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/HashSet;

    .line 124
    .local v9, viewsToUpdate:Ljava/util/HashSet;,"Ljava/util/HashSet<Landroid/widget/ImageView;>;"
    if-eqz v9, :cond_6

    .line 125
    sget-boolean v10, Lcom/android/phone/ListContactPhotoManager;->VDBG:Z

    if-eqz v10, :cond_1

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "onImageLoadComplete "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v9}, Ljava/util/HashSet;->size()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/android/phone/ListContactPhotoManager;->log(Ljava/lang/String;)V

    .line 126
    :cond_1
    iget-object v10, p0, Lcom/android/phone/ListContactPhotoManager;->mRequests:Ljava/util/HashMap;

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .end local p1
    check-cast p1, Ljava/util/HashSet;

    invoke-virtual {p1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    .line 127
    .local v7, v:Landroid/widget/ImageView;
    if-eqz v7, :cond_2

    .line 128
    invoke-virtual {v7}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Long;

    .line 129
    .local v8, viewIdentityId:Ljava/lang/Long;
    if-nez v8, :cond_3

    .line 130
    const-string v10, "LstContactPhotoMgr"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "tag is null for ImageView "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 133
    :cond_3
    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    cmp-long v10, v10, v3

    if-nez v10, :cond_4

    .line 134
    invoke-virtual {v7, v6}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 135
    sget-boolean v10, Lcom/android/phone/ListContactPhotoManager;->VDBG:Z

    if-eqz v10, :cond_2

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "setting image for view "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v7}, Landroid/widget/ImageView;->getVisibility()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/android/phone/ListContactPhotoManager;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 137
    :cond_4
    sget-boolean v10, Lcom/android/phone/ListContactPhotoManager;->VDBG:Z

    if-eqz v10, :cond_2

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "skipping image for view "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/android/phone/ListContactPhotoManager;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 141
    .end local v7           #v:Landroid/widget/ImageView;
    .end local v8           #viewIdentityId:Ljava/lang/Long;
    :cond_5
    iget-object v10, p0, Lcom/android/phone/ListContactPhotoManager;->mRequests:Ljava/util/HashMap;

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    .end local v2           #i$:Ljava/util/Iterator;
    :cond_6
    return-void
.end method

.method removeAllRequests()V
    .locals 2

    .prologue
    .line 62
    iget-object v0, p0, Lcom/android/phone/ListContactPhotoManager;->mRequests:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 63
    iget-object v0, p0, Lcom/android/phone/ListContactPhotoManager;->mAsyncImageLoader:Lcom/android/phone/AsyncIdentityPhotoLoader;

    iget v1, p0, Lcom/android/phone/ListContactPhotoManager;->mToken:I

    invoke-virtual {v0, v1}, Lcom/android/phone/AsyncIdentityPhotoLoader;->clear(I)V

    .line 64
    return-void
.end method

.method setCallerImage(JLandroid/widget/ImageView;)V
    .locals 8
    .parameter "identityId"
    .parameter "view"

    .prologue
    .line 72
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gtz v0, :cond_1

    .line 110
    :cond_0
    :goto_0
    return-void

    .line 74
    :cond_1
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 76
    sget-boolean v0, Lcom/android/phone/ListContactPhotoManager;->VDBG:Z

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setCallerImage "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/ListContactPhotoManager;->log(Ljava/lang/String;)V

    .line 79
    :cond_2
    iget-object v0, p0, Lcom/android/phone/ListContactPhotoManager;->mPhotoMap:Lcom/motorola/blur/util/cache/LeastRecentlyUsedCache;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/motorola/blur/util/cache/LeastRecentlyUsedCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/phone/ListContactPhotoManager$CacheRecord;

    .line 80
    .local v6, cr:Lcom/android/phone/ListContactPhotoManager$CacheRecord;
    if-eqz v6, :cond_5

    .line 81
    iget-object v0, v6, Lcom/android/phone/ListContactPhotoManager$CacheRecord;->photo:Landroid/graphics/Bitmap;

    invoke-virtual {p3, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 86
    :goto_1
    if-eqz v6, :cond_3

    iget-boolean v0, v6, Lcom/android/phone/ListContactPhotoManager$CacheRecord;->isDirty:Z

    if-eqz v0, :cond_0

    .line 87
    :cond_3
    iget-object v0, p0, Lcom/android/phone/ListContactPhotoManager;->mRequests:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/HashSet;

    .line 88
    .local v7, requestsForIdentity:Ljava/util/HashSet;,"Ljava/util/HashSet<Landroid/widget/ImageView;>;"
    if-nez v7, :cond_6

    .line 89
    sget-boolean v0, Lcom/android/phone/ListContactPhotoManager;->VDBG:Z

    if-eqz v0, :cond_4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "fresh request "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/ListContactPhotoManager;->log(Ljava/lang/String;)V

    .line 90
    :cond_4
    new-instance v7, Ljava/util/HashSet;

    .end local v7           #requestsForIdentity:Ljava/util/HashSet;,"Ljava/util/HashSet<Landroid/widget/ImageView;>;"
    invoke-direct {v7}, Ljava/util/HashSet;-><init>()V

    .line 91
    .restart local v7       #requestsForIdentity:Ljava/util/HashSet;,"Ljava/util/HashSet<Landroid/widget/ImageView;>;"
    invoke-virtual {v7, p3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 92
    iget-object v0, p0, Lcom/android/phone/ListContactPhotoManager;->mRequests:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    new-instance v4, Lcom/android/phone/ListContactPhotoManager$MyCookie;

    invoke-direct {v4}, Lcom/android/phone/ListContactPhotoManager$MyCookie;-><init>()V

    .line 101
    .local v4, cookie:Lcom/android/phone/ListContactPhotoManager$MyCookie;
    iput-object p3, v4, Lcom/android/phone/ListContactPhotoManager$MyCookie;->imageView:Landroid/widget/ImageView;

    .line 102
    iput-wide p1, v4, Lcom/android/phone/ListContactPhotoManager$MyCookie;->identityId:J

    .line 104
    iget-object v0, p0, Lcom/android/phone/ListContactPhotoManager;->mAsyncImageLoader:Lcom/android/phone/AsyncIdentityPhotoLoader;

    iget-object v1, p0, Lcom/android/phone/ListContactPhotoManager;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v2, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    iget v5, p0, Lcom/android/phone/ListContactPhotoManager;->mToken:I

    move-object v3, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/phone/AsyncIdentityPhotoLoader;->startImageLoading(Landroid/content/Context;Landroid/net/Uri;Lcom/android/phone/AsyncIdentityPhotoLoader$OnImageLoadCompleteListener;Ljava/lang/Object;I)V

    goto/16 :goto_0

    .line 83
    .end local v4           #cookie:Lcom/android/phone/ListContactPhotoManager$MyCookie;
    .end local v7           #requestsForIdentity:Ljava/util/HashSet;,"Ljava/util/HashSet<Landroid/widget/ImageView;>;"
    :cond_5
    invoke-static {}, Lcom/android/phone/Utils;->getDefaultContactPhoto()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_1

    .line 95
    .restart local v7       #requestsForIdentity:Ljava/util/HashSet;,"Ljava/util/HashSet<Landroid/widget/ImageView;>;"
    :cond_6
    invoke-virtual {v7, p3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 96
    sget-boolean v0, Lcom/android/phone/ListContactPhotoManager;->VDBG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "add to request"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v7}, Ljava/util/HashSet;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/ListContactPhotoManager;->log(Ljava/lang/String;)V

    goto/16 :goto_0
.end method
