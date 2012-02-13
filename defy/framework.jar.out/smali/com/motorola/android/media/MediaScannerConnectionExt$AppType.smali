.class public final enum Lcom/motorola/android/media/MediaScannerConnectionExt$AppType;
.super Ljava/lang/Enum;
.source "MediaScannerConnectionExt.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/android/media/MediaScannerConnectionExt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "AppType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/motorola/android/media/MediaScannerConnectionExt$AppType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/motorola/android/media/MediaScannerConnectionExt$AppType;

.field public static final enum APP_CAMERA:Lcom/motorola/android/media/MediaScannerConnectionExt$AppType;

.field public static final enum APP_MTP:Lcom/motorola/android/media/MediaScannerConnectionExt$AppType;

.field public static final enum DUMMY:Lcom/motorola/android/media/MediaScannerConnectionExt$AppType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/motorola/android/media/MediaScannerConnectionExt$AppType;

    const-string v1, "DUMMY"

    invoke-direct {v0, v1, v2}, Lcom/motorola/android/media/MediaScannerConnectionExt$AppType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/motorola/android/media/MediaScannerConnectionExt$AppType;->DUMMY:Lcom/motorola/android/media/MediaScannerConnectionExt$AppType;

    new-instance v0, Lcom/motorola/android/media/MediaScannerConnectionExt$AppType;

    const-string v1, "APP_MTP"

    invoke-direct {v0, v1, v3}, Lcom/motorola/android/media/MediaScannerConnectionExt$AppType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/motorola/android/media/MediaScannerConnectionExt$AppType;->APP_MTP:Lcom/motorola/android/media/MediaScannerConnectionExt$AppType;

    new-instance v0, Lcom/motorola/android/media/MediaScannerConnectionExt$AppType;

    const-string v1, "APP_CAMERA"

    invoke-direct {v0, v1, v4}, Lcom/motorola/android/media/MediaScannerConnectionExt$AppType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/motorola/android/media/MediaScannerConnectionExt$AppType;->APP_CAMERA:Lcom/motorola/android/media/MediaScannerConnectionExt$AppType;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/motorola/android/media/MediaScannerConnectionExt$AppType;

    sget-object v1, Lcom/motorola/android/media/MediaScannerConnectionExt$AppType;->DUMMY:Lcom/motorola/android/media/MediaScannerConnectionExt$AppType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/motorola/android/media/MediaScannerConnectionExt$AppType;->APP_MTP:Lcom/motorola/android/media/MediaScannerConnectionExt$AppType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/motorola/android/media/MediaScannerConnectionExt$AppType;->APP_CAMERA:Lcom/motorola/android/media/MediaScannerConnectionExt$AppType;

    aput-object v1, v0, v4

    sput-object v0, Lcom/motorola/android/media/MediaScannerConnectionExt$AppType;->$VALUES:[Lcom/motorola/android/media/MediaScannerConnectionExt$AppType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/motorola/android/media/MediaScannerConnectionExt$AppType;
    .locals 1
    .parameter "name"

    .prologue
    const-class v0, Lcom/motorola/android/media/MediaScannerConnectionExt$AppType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/motorola/android/media/MediaScannerConnectionExt$AppType;

    return-object p0
.end method

.method public static values()[Lcom/motorola/android/media/MediaScannerConnectionExt$AppType;
    .locals 1

    .prologue
    sget-object v0, Lcom/motorola/android/media/MediaScannerConnectionExt$AppType;->$VALUES:[Lcom/motorola/android/media/MediaScannerConnectionExt$AppType;

    invoke-virtual {v0}, [Lcom/motorola/android/media/MediaScannerConnectionExt$AppType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/motorola/android/media/MediaScannerConnectionExt$AppType;

    return-object v0
.end method
