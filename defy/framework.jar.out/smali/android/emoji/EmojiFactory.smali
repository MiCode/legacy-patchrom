.class public final Landroid/emoji/EmojiFactory;
.super Ljava/lang/Object;
.source "EmojiFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/emoji/EmojiFactory$CustomLinkedHashMap;
    }
.end annotation


# instance fields
.field private mCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;>;"
        }
    .end annotation
.end field

.field private mName:Ljava/lang/String;

.field private mNativeEmojiFactory:I

.field private sCacheSize:I


# direct methods
.method private constructor <init>(ILjava/lang/String;)V
    .locals 1
    .parameter "nativeEmojiFactory"
    .parameter "name"

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x64

    iput v0, p0, Landroid/emoji/EmojiFactory;->sCacheSize:I

    iput p1, p0, Landroid/emoji/EmojiFactory;->mNativeEmojiFactory:I

    iput-object p2, p0, Landroid/emoji/EmojiFactory;->mName:Ljava/lang/String;

    new-instance v0, Landroid/emoji/EmojiFactory$CustomLinkedHashMap;

    invoke-direct {v0, p0}, Landroid/emoji/EmojiFactory$CustomLinkedHashMap;-><init>(Landroid/emoji/EmojiFactory;)V

    iput-object v0, p0, Landroid/emoji/EmojiFactory;->mCache:Ljava/util/Map;

    return-void
.end method

.method static synthetic access$000(Landroid/emoji/EmojiFactory;)I
    .locals 1
    .parameter "x0"

    .prologue
    iget v0, p0, Landroid/emoji/EmojiFactory;->sCacheSize:I

    return v0
.end method

.method private native nativeDestructor(I)V
.end method

.method private native nativeGetAndroidPuaFromVendorSpecificPua(II)I
.end method

.method private native nativeGetAndroidPuaFromVendorSpecificSjis(IC)I
.end method

.method private native nativeGetBitmapFromAndroidPua(II)Landroid/graphics/Bitmap;
.end method

.method private native nativeGetMaximumAndroidPua(I)I
.end method

.method private native nativeGetMaximumVendorSpecificPua(I)I
.end method

.method private native nativeGetMinimumAndroidPua(I)I
.end method

.method private native nativeGetMinimumVendorSpecificPua(I)I
.end method

.method private native nativeGetVendorSpecificPuaFromAndroidPua(II)I
.end method

.method private native nativeGetVendorSpecificSjisFromAndroidPua(II)I
.end method

.method public static native newAvailableInstance()Landroid/emoji/EmojiFactory;
.end method

.method public static native newInstance(Ljava/lang/String;)Landroid/emoji/EmojiFactory;
.end method


# virtual methods
.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    :try_start_0
    iget v0, p0, Landroid/emoji/EmojiFactory;->mNativeEmojiFactory:I

    invoke-direct {p0, v0}, Landroid/emoji/EmojiFactory;->nativeDestructor(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void

    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method public getAndroidPuaFromVendorSpecificPua(I)I
    .locals 1
    .parameter "vsp"

    .prologue
    iget v0, p0, Landroid/emoji/EmojiFactory;->mNativeEmojiFactory:I

    invoke-direct {p0, v0, p1}, Landroid/emoji/EmojiFactory;->nativeGetAndroidPuaFromVendorSpecificPua(II)I

    move-result v0

    return v0
.end method

.method public getAndroidPuaFromVendorSpecificPua(Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .parameter "vspString"

    .prologue
    const/4 v9, 0x0

    if-nez p1, :cond_0

    const/4 v8, 0x0

    :goto_0
    return-object v8

    :cond_0
    iget v8, p0, Landroid/emoji/EmojiFactory;->mNativeEmojiFactory:I

    invoke-direct {p0, v8}, Landroid/emoji/EmojiFactory;->nativeGetMinimumVendorSpecificPua(I)I

    move-result v5

    .local v5, minVsp:I
    iget v8, p0, Landroid/emoji/EmojiFactory;->mNativeEmojiFactory:I

    invoke-direct {p0, v8}, Landroid/emoji/EmojiFactory;->nativeGetMaximumVendorSpecificPua(I)I

    move-result v4

    .local v4, maxVsp:I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    .local v3, len:I
    invoke-virtual {p1, v9, v3}, Ljava/lang/String;->codePointCount(II)I

    move-result v8

    new-array v1, v8, [I

    .local v1, codePoints:[I
    const/4 v7, 0x0

    .local v7, new_len:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    if-ge v2, v3, :cond_2

    invoke-virtual {p1, v2}, Ljava/lang/String;->codePointAt(I)I

    move-result v0

    .local v0, codePoint:I
    if-gt v5, v0, :cond_1

    if-gt v0, v4, :cond_1

    invoke-virtual {p0, v0}, Landroid/emoji/EmojiFactory;->getAndroidPuaFromVendorSpecificPua(I)I

    move-result v6

    .local v6, newCodePoint:I
    if-lez v6, :cond_1

    aput v6, v1, v7

    .end local v6           #newCodePoint:I
    :goto_2
    const/4 v8, 0x1

    invoke-virtual {p1, v2, v8}, Ljava/lang/String;->offsetByCodePoints(II)I

    move-result v2

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_1
    aput v0, v1, v7

    goto :goto_2

    .end local v0           #codePoint:I
    :cond_2
    new-instance v8, Ljava/lang/String;

    invoke-direct {v8, v1, v9, v7}, Ljava/lang/String;-><init>([III)V

    goto :goto_0
.end method

.method public getAndroidPuaFromVendorSpecificSjis(C)I
    .locals 1
    .parameter "sjis"

    .prologue
    iget v0, p0, Landroid/emoji/EmojiFactory;->mNativeEmojiFactory:I

    invoke-direct {p0, v0, p1}, Landroid/emoji/EmojiFactory;->nativeGetAndroidPuaFromVendorSpecificSjis(IC)I

    move-result v0

    return v0
.end method

.method public declared-synchronized getBitmapFromAndroidPua(I)Landroid/graphics/Bitmap;
    .locals 6
    .parameter "pua"

    .prologue
    monitor-enter p0

    :try_start_0
    iget-object v3, p0, Landroid/emoji/EmojiFactory;->mCache:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    .local v0, cache:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Landroid/graphics/Bitmap;>;"
    if-nez v0, :cond_1

    iget v3, p0, Landroid/emoji/EmojiFactory;->mNativeEmojiFactory:I

    invoke-direct {p0, v3, p1}, Landroid/emoji/EmojiFactory;->nativeGetBitmapFromAndroidPua(II)Landroid/graphics/Bitmap;

    move-result-object v1

    .local v1, ret:Landroid/graphics/Bitmap;
    if-eqz v1, :cond_0

    iget-object v3, p0, Landroid/emoji/EmojiFactory;->mCache:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    new-instance v5, Ljava/lang/ref/WeakReference;

    invoke-direct {v5, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    move-object v3, v1

    .end local v1           #ret:Landroid/graphics/Bitmap;
    :goto_0
    monitor-exit p0

    return-object v3

    :cond_1
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Bitmap;

    .local v2, tmp:Landroid/graphics/Bitmap;
    if-nez v2, :cond_2

    iget v3, p0, Landroid/emoji/EmojiFactory;->mNativeEmojiFactory:I

    invoke-direct {p0, v3, p1}, Landroid/emoji/EmojiFactory;->nativeGetBitmapFromAndroidPua(II)Landroid/graphics/Bitmap;

    move-result-object v1

    .restart local v1       #ret:Landroid/graphics/Bitmap;
    iget-object v3, p0, Landroid/emoji/EmojiFactory;->mCache:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    new-instance v5, Ljava/lang/ref/WeakReference;

    invoke-direct {v5, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v3, v1

    goto :goto_0

    .end local v1           #ret:Landroid/graphics/Bitmap;
    :cond_2
    move-object v3, v2

    goto :goto_0

    .end local v0           #cache:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Landroid/graphics/Bitmap;>;"
    .end local v2           #tmp:Landroid/graphics/Bitmap;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public declared-synchronized getBitmapFromVendorSpecificPua(I)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "vsp"

    .prologue
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p1}, Landroid/emoji/EmojiFactory;->getAndroidPuaFromVendorSpecificPua(I)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/emoji/EmojiFactory;->getBitmapFromAndroidPua(I)Landroid/graphics/Bitmap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getBitmapFromVendorSpecificSjis(C)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "sjis"

    .prologue
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p1}, Landroid/emoji/EmojiFactory;->getAndroidPuaFromVendorSpecificSjis(C)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/emoji/EmojiFactory;->getBitmapFromAndroidPua(I)Landroid/graphics/Bitmap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getMaximumAndroidPua()I
    .locals 1

    .prologue
    iget v0, p0, Landroid/emoji/EmojiFactory;->mNativeEmojiFactory:I

    invoke-direct {p0, v0}, Landroid/emoji/EmojiFactory;->nativeGetMaximumAndroidPua(I)I

    move-result v0

    return v0
.end method

.method public getMinimumAndroidPua()I
    .locals 1

    .prologue
    iget v0, p0, Landroid/emoji/EmojiFactory;->mNativeEmojiFactory:I

    invoke-direct {p0, v0}, Landroid/emoji/EmojiFactory;->nativeGetMinimumAndroidPua(I)I

    move-result v0

    return v0
.end method

.method public getVendorSpecificPuaFromAndroidPua(I)I
    .locals 1
    .parameter "pua"

    .prologue
    iget v0, p0, Landroid/emoji/EmojiFactory;->mNativeEmojiFactory:I

    invoke-direct {p0, v0, p1}, Landroid/emoji/EmojiFactory;->nativeGetVendorSpecificPuaFromAndroidPua(II)I

    move-result v0

    return v0
.end method

.method public getVendorSpecificPuaFromAndroidPua(Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .parameter "puaString"

    .prologue
    const/4 v9, 0x0

    if-nez p1, :cond_0

    const/4 v8, 0x0

    :goto_0
    return-object v8

    :cond_0
    iget v8, p0, Landroid/emoji/EmojiFactory;->mNativeEmojiFactory:I

    invoke-direct {p0, v8}, Landroid/emoji/EmojiFactory;->nativeGetMinimumAndroidPua(I)I

    move-result v5

    .local v5, minVsp:I
    iget v8, p0, Landroid/emoji/EmojiFactory;->mNativeEmojiFactory:I

    invoke-direct {p0, v8}, Landroid/emoji/EmojiFactory;->nativeGetMaximumAndroidPua(I)I

    move-result v4

    .local v4, maxVsp:I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    .local v3, len:I
    invoke-virtual {p1, v9, v3}, Ljava/lang/String;->codePointCount(II)I

    move-result v8

    new-array v1, v8, [I

    .local v1, codePoints:[I
    const/4 v7, 0x0

    .local v7, new_len:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    if-ge v2, v3, :cond_2

    invoke-virtual {p1, v2}, Ljava/lang/String;->codePointAt(I)I

    move-result v0

    .local v0, codePoint:I
    if-gt v5, v0, :cond_1

    if-gt v0, v4, :cond_1

    invoke-virtual {p0, v0}, Landroid/emoji/EmojiFactory;->getVendorSpecificPuaFromAndroidPua(I)I

    move-result v6

    .local v6, newCodePoint:I
    if-lez v6, :cond_1

    aput v6, v1, v7

    .end local v6           #newCodePoint:I
    :goto_2
    const/4 v8, 0x1

    invoke-virtual {p1, v2, v8}, Ljava/lang/String;->offsetByCodePoints(II)I

    move-result v2

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_1
    aput v0, v1, v7

    goto :goto_2

    .end local v0           #codePoint:I
    :cond_2
    new-instance v8, Ljava/lang/String;

    invoke-direct {v8, v1, v9, v7}, Ljava/lang/String;-><init>([III)V

    goto :goto_0
.end method

.method public getVendorSpecificSjisFromAndroidPua(I)I
    .locals 1
    .parameter "pua"

    .prologue
    iget v0, p0, Landroid/emoji/EmojiFactory;->mNativeEmojiFactory:I

    invoke-direct {p0, v0, p1}, Landroid/emoji/EmojiFactory;->nativeGetVendorSpecificSjisFromAndroidPua(II)I

    move-result v0

    return v0
.end method

.method public name()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/emoji/EmojiFactory;->mName:Ljava/lang/String;

    return-object v0
.end method
