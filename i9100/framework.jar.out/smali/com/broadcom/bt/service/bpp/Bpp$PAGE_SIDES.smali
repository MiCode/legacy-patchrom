.class public Lcom/broadcom/bt/service/bpp/Bpp$PAGE_SIDES;
.super Ljava/lang/Object;
.source "Bpp.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/broadcom/bt/service/bpp/Bpp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PAGE_SIDES"
.end annotation


# static fields
.field public static final ONE_SIDED:I = 0x10

.field public static final TWO_SIDED_LONG_EDGE:I = 0x20

.field public static final TWO_SIDED_SHORT_EDGE:I = 0x40

.field private static final prettyText:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 274
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "ONE SIDED"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "TWO SIDED (LONG EDGE)"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "TWO SIDED (SHORT EDGE)"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "N/A"

    aput-object v2, v0, v1

    sput-object v0, Lcom/broadcom/bt/service/bpp/Bpp$PAGE_SIDES;->prettyText:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 271
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getText(I)Ljava/lang/String;
    .locals 3
    .parameter "index"

    .prologue
    const/4 v2, 0x1

    .line 290
    sparse-switch p0, :sswitch_data_0

    .line 294
    sget-object v0, Lcom/broadcom/bt/service/bpp/Bpp$PAGE_SIDES;->prettyText:[Ljava/lang/String;

    sget-object v1, Lcom/broadcom/bt/service/bpp/Bpp$PAGE_SIDES;->prettyText:[Ljava/lang/String;

    array-length v1, v1

    sub-int/2addr v1, v2

    aget-object v0, v0, v1

    :goto_0
    return-object v0

    .line 291
    :sswitch_0
    sget-object v0, Lcom/broadcom/bt/service/bpp/Bpp$PAGE_SIDES;->prettyText:[Ljava/lang/String;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    goto :goto_0

    .line 292
    :sswitch_1
    sget-object v0, Lcom/broadcom/bt/service/bpp/Bpp$PAGE_SIDES;->prettyText:[Ljava/lang/String;

    aget-object v0, v0, v2

    goto :goto_0

    .line 293
    :sswitch_2
    sget-object v0, Lcom/broadcom/bt/service/bpp/Bpp$PAGE_SIDES;->prettyText:[Ljava/lang/String;

    const/4 v1, 0x2

    aget-object v0, v0, v1

    goto :goto_0

    .line 290
    :sswitch_data_0
    .sparse-switch
        0x10 -> :sswitch_0
        0x20 -> :sswitch_1
        0x40 -> :sswitch_2
    .end sparse-switch
.end method
