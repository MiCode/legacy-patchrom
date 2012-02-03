.class public final Lcom/broadcom/bt/service/bpp/Bip$TRANSFORM;
.super Ljava/lang/Object;
.source "Bip.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/broadcom/bt/service/bpp/Bip;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "TRANSFORM"
.end annotation


# static fields
.field public static final CROP:I = 0x3

.field public static final FILL:I = 0x2

.field public static final NONE:I = 0x0

.field public static final STRETCH:I = 0x1

.field private static final prettyText:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 31
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "NONE"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "STRETCH"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "FILL"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "CROP"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "N/A"

    aput-object v2, v0, v1

    sput-object v0, Lcom/broadcom/bt/service/bpp/Bip$TRANSFORM;->prettyText:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getText(I)Ljava/lang/String;
    .locals 3
    .parameter "index"

    .prologue
    const/4 v2, 0x1

    .line 49
    if-ltz p0, :cond_0

    sget-object v0, Lcom/broadcom/bt/service/bpp/Bip$TRANSFORM;->prettyText:[Ljava/lang/String;

    array-length v0, v0

    sub-int/2addr v0, v2

    if-ge p0, v0, :cond_0

    .line 50
    sget-object v0, Lcom/broadcom/bt/service/bpp/Bip$TRANSFORM;->prettyText:[Ljava/lang/String;

    aget-object v0, v0, p0

    .line 52
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/broadcom/bt/service/bpp/Bip$TRANSFORM;->prettyText:[Ljava/lang/String;

    sget-object v1, Lcom/broadcom/bt/service/bpp/Bip$TRANSFORM;->prettyText:[Ljava/lang/String;

    array-length v1, v1

    sub-int/2addr v1, v2

    aget-object v0, v0, v1

    goto :goto_0
.end method
