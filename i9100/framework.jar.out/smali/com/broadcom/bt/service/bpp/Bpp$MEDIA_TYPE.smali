.class public Lcom/broadcom/bt/service/bpp/Bpp$MEDIA_TYPE;
.super Ljava/lang/Object;
.source "Bpp.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/broadcom/bt/service/bpp/Bpp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MEDIA_TYPE"
.end annotation


# static fields
.field public static final BACK_PRINT_FILM:I = 0x20

.field public static final CARDSTOCK:I = 0x21

.field public static final CONTINUOUS:I = 0xe

.field public static final CONTINUOUS_LONG:I = 0xf

.field public static final CONTINUOUS_SHORT:I = 0x10

.field public static final ENVELOPE:I = 0xb

.field public static final ENVELOPE_PLAIN:I = 0xc

.field public static final ENVELOPE_WINDOW:I = 0xd

.field public static final FULL_CUT_TABS:I = 0x13

.field public static final LABELS:I = 0x15

.field public static final MULTI_LAYER:I = 0x16

.field public static final MULTI_PART_FORM:I = 0x14

.field public static final PHOTOGRAPHIC:I = 0x19

.field public static final PHOTOGRAPHIC_FILM:I = 0x1f

.field public static final PHOTOGRAPHIC_GLOSSY:I = 0x1a

.field public static final PHOTOGRAPHIC_HIGH_GLOSS:I = 0x1b

.field public static final PHOTOGRAPHIC_MATTE:I = 0x1e

.field public static final PHOTOGRAPHIC_SATIN:I = 0x1d

.field public static final PHOTOGRAPHIC_SEMI_GLOSS:I = 0x1c

.field public static final PRE_CUT_TABS:I = 0x12

.field public static final ROLL:I = 0x22

.field public static final SCREEN:I = 0x17

.field public static final SCREEN_PAGED:I = 0x18

.field public static final STATIONERY:I = 0x1

.field public static final STATIONERY_COATED:I = 0x2

.field public static final STATIONERY_FINE:I = 0x7

.field public static final STATIONERY_HEAVYWEIGHT:I = 0x8

.field public static final STATIONERY_INKJET:I = 0x3

.field public static final STATIONERY_LETTERHEAD:I = 0x5

.field public static final STATIONERY_LIGHTWEIGHT:I = 0x9

.field public static final STATIONERY_PREPRINTED:I = 0x4

.field public static final STATIONERY_PREPUNCHED:I = 0x6

.field public static final TAB_STOCK:I = 0x11

.field public static final TRANSPARENCY:I = 0xa

.field public static final UNDEFINED:I

.field private static final prettyText:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 182
    const/16 v0, 0x24

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "UNDEFINED"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "STATIONERY"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "STATIONERY COATED"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "STATIONERY INKJET"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "STATIONERY PREPRINTED"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "STATIONERY LETTERHEAD"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "STATIONERY PREPUNCHED"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "STATIONERY FINE"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "STATIONERY HEAVYWEIGHT"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "STATIONERY LIGHTWEIGHT"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "TRANSPARENCY"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "ENVELOPE"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "ENVELOPE PLAIN"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "ENVELOPE WINDOW"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "CONTINUOUS"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "CONTINUOUS LONG"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "CONTINUOUS SHORT"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "TAB STOCK"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "PRE CUT TABS"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "FULL CUT TABS"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "MULTI PART FORM"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "LABELS"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "MULTI LAYER"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "SCREEN"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "SCREEN PAGED"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "PHOTOGRAPHIC"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "PHOTOGRAPHIC GLOSSY"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string v2, "PHOTOGRAPHIC HIGH GLOSS"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string v2, "PHOTOGRAPHIC SEMI GLOSS"

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-string v2, "PHOTOGRAPHIC SATIN"

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const-string v2, "PHOTOGRAPHIC MATTE"

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    const-string v2, "PHOTOGRAPHIC FILM"

    aput-object v2, v0, v1

    const/16 v1, 0x20

    const-string v2, "BACK PRINT FILM"

    aput-object v2, v0, v1

    const/16 v1, 0x21

    const-string v2, "CARDSTOCK"

    aput-object v2, v0, v1

    const/16 v1, 0x22

    const-string v2, "ROLL"

    aput-object v2, v0, v1

    const/16 v1, 0x23

    const-string v2, "N/A"

    aput-object v2, v0, v1

    sput-object v0, Lcom/broadcom/bt/service/bpp/Bpp$MEDIA_TYPE;->prettyText:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 179
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getText(I)Ljava/lang/String;
    .locals 3
    .parameter "index"

    .prologue
    const/4 v2, 0x1

    .line 262
    if-ltz p0, :cond_0

    sget-object v0, Lcom/broadcom/bt/service/bpp/Bpp$MEDIA_TYPE;->prettyText:[Ljava/lang/String;

    array-length v0, v0

    sub-int/2addr v0, v2

    if-ge p0, v0, :cond_0

    .line 263
    sget-object v0, Lcom/broadcom/bt/service/bpp/Bpp$MEDIA_TYPE;->prettyText:[Ljava/lang/String;

    aget-object v0, v0, p0

    .line 265
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/broadcom/bt/service/bpp/Bpp$MEDIA_TYPE;->prettyText:[Ljava/lang/String;

    sget-object v1, Lcom/broadcom/bt/service/bpp/Bpp$MEDIA_TYPE;->prettyText:[Ljava/lang/String;

    array-length v1, v1

    sub-int/2addr v1, v2

    aget-object v0, v0, v1

    goto :goto_0
.end method
