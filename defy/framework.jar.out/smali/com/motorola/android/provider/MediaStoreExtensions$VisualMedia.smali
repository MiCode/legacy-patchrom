.class public Lcom/motorola/android/provider/MediaStoreExtensions$VisualMedia;
.super Ljava/lang/Object;
.source "MediaStoreExtensions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/android/provider/MediaStoreExtensions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "VisualMedia"
.end annotation


# static fields
.field public static final CONTENT_EXTERNAL_URI:Landroid/net/Uri; = null

.field public static final CONTENT_INTERNAL_URI:Landroid/net/Uri; = null

.field public static final TYPE:Ljava/lang/String; = "visual_media"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const-string v2, "visual_media"

    sget-object v0, Lcom/motorola/android/provider/MediaStoreExtensions;->AUTHORITY_EXTERNAL_URI:Landroid/net/Uri;

    const-string v1, "visual_media"

    invoke-static {v0, v2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/motorola/android/provider/MediaStoreExtensions$VisualMedia;->CONTENT_EXTERNAL_URI:Landroid/net/Uri;

    sget-object v0, Lcom/motorola/android/provider/MediaStoreExtensions;->AUTHORITY_INTERNAL_URI:Landroid/net/Uri;

    const-string v1, "visual_media"

    invoke-static {v0, v2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/motorola/android/provider/MediaStoreExtensions$VisualMedia;->CONTENT_INTERNAL_URI:Landroid/net/Uri;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
