.class public final Lcom/motorola/android/provider/MediaStoreExt$TagInfoVisual;
.super Ljava/lang/Object;
.source "MediaStoreExt.java"

# interfaces
.implements Lcom/motorola/android/provider/MediaStoreExt$VisualColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/android/provider/MediaStoreExt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "TagInfoVisual"
.end annotation


# static fields
.field public static final BUCKETID:Ljava/lang/String; = "bucketid"

.field public static final EXTERNAL_CONTENT_URI:Landroid/net/Uri; = null

.field public static final INTERNAL_CONTENT_URI:Landroid/net/Uri; = null

.field public static final TAG_DATA:Ljava/lang/String; = "tag_data"

.field public static final TAG_ID:Ljava/lang/String; = "tag_id"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const-string v0, "content://com.motorola.media.extensions/internal/taginfo_visual"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/motorola/android/provider/MediaStoreExt$TagInfoVisual;->INTERNAL_CONTENT_URI:Landroid/net/Uri;

    const-string v0, "content://com.motorola.media.extensions/external/taginfo_visual"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/motorola/android/provider/MediaStoreExt$TagInfoVisual;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
