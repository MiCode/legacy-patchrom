.class public Lcom/motorola/android/provider/MediaStoreExtensions$Video;
.super Ljava/lang/Object;
.source "MediaStoreExtensions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/android/provider/MediaStoreExtensions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Video"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/android/provider/MediaStoreExtensions$Video$Media;
    }
.end annotation


# static fields
.field public static final TYPE:Ljava/lang/String; = null

.field public static final URI_TYPE:Ljava/lang/String; = "video"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x2

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/motorola/android/provider/MediaStoreExtensions$Video;->TYPE:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
