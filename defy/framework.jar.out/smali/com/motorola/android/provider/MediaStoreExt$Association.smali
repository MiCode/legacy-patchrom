.class public interface abstract Lcom/motorola/android/provider/MediaStoreExt$Association;
.super Ljava/lang/Object;
.source "MediaStoreExt.java"

# interfaces
.implements Lcom/motorola/android/provider/MediaStoreExt$AssociationColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/android/provider/MediaStoreExt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Association"
.end annotation


# static fields
.field public static final EXTERNAL_CONTENT_URI:Landroid/net/Uri;

.field public static final INTERNAL_CONTENT_URI:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const-string v0, "content://com.motorola.media.extensions/internal/association"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/motorola/android/provider/MediaStoreExt$Association;->INTERNAL_CONTENT_URI:Landroid/net/Uri;

    const-string v0, "content://com.motorola.media.extensions/external/association"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/motorola/android/provider/MediaStoreExt$Association;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    return-void
.end method
