.class public Lcom/broadcom/bt/service/bpp/Bpp$QUALITY;
.super Ljava/lang/Object;
.source "Bpp.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/broadcom/bt/service/bpp/Bpp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "QUALITY"
.end annotation


# static fields
.field public static final DRAFT:I = 0x10

.field public static final HIGH:I = 0x40

.field public static final NORMAL:I = 0x20

.field private static final prettyText:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 303
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "DRAFT"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "NORMAL"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "HIGH"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "N/A"

    aput-object v2, v0, v1

    sput-object v0, Lcom/broadcom/bt/service/bpp/Bpp$QUALITY;->prettyText:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 300
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getText(I)Ljava/lang/String;
    .locals 3
    .parameter "index"

    .prologue
    const/4 v2, 0x1

    .line 319
    sparse-switch p0, :sswitch_data_0

    .line 323
    sget-object v0, Lcom/broadcom/bt/service/bpp/Bpp$QUALITY;->prettyText:[Ljava/lang/String;

    sget-object v1, Lcom/broadcom/bt/service/bpp/Bpp$QUALITY;->prettyText:[Ljava/lang/String;

    array-length v1, v1

    sub-int/2addr v1, v2

    aget-object v0, v0, v1

    :goto_0
    return-object v0

    .line 320
    :sswitch_0
    sget-object v0, Lcom/broadcom/bt/service/bpp/Bpp$QUALITY;->prettyText:[Ljava/lang/String;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    goto :goto_0

    .line 321
    :sswitch_1
    sget-object v0, Lcom/broadcom/bt/service/bpp/Bpp$QUALITY;->prettyText:[Ljava/lang/String;

    aget-object v0, v0, v2

    goto :goto_0

    .line 322
    :sswitch_2
    sget-object v0, Lcom/broadcom/bt/service/bpp/Bpp$QUALITY;->prettyText:[Ljava/lang/String;

    const/4 v1, 0x2

    aget-object v0, v0, v1

    goto :goto_0

    .line 319
    :sswitch_data_0
    .sparse-switch
        0x10 -> :sswitch_0
        0x20 -> :sswitch_1
        0x40 -> :sswitch_2
    .end sparse-switch
.end method
