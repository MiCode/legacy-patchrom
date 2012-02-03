.class public Lcom/broadcom/bt/service/bpp/BluetoothPrinter$STATE_REASON;
.super Ljava/lang/Object;
.source "BluetoothPrinter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/broadcom/bt/service/bpp/BluetoothPrinter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "STATE_REASON"
.end annotation


# static fields
.field public static final ATTENTION_REQUIRED:I = 0x2

.field public static final DOOR_OPEN:I = 0x5

.field public static final MARKER_E:I = 0xb

.field public static final MARKER_F:I = 0xc

.field public static final MARKER_L:I = 0xa

.field public static final MEDIA_EMPTY:I = 0x7

.field public static final MEDIA_JAM:I = 0x3

.field public static final MEDIA_LOW:I = 0x6

.field public static final NONE:I = 0x1

.field public static final OUTPUT_ALMOST_FULL:I = 0x8

.field public static final OUTPUT_FULL:I = 0x9

.field public static final PAUSED:I = 0x4

.field public static final UNDEFINED:I

.field private static final prettyText:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 154
    const/16 v0, 0xe

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "UNDEFINED"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "NONE"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "ATTENTION REQUIRED"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "MEDIA JAM"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "PAUSED"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "DOOR OPEN"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "MEDIA LOW"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "MEDIA EMPTY"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "OUTPUT ALMOST FULL"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "OUTPUT FULL"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "MARKER L"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "MARKER E"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "MARKER F"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "N/A"

    aput-object v2, v0, v1

    sput-object v0, Lcom/broadcom/bt/service/bpp/BluetoothPrinter$STATE_REASON;->prettyText:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 151
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getText(I)Ljava/lang/String;
    .locals 3
    .parameter "index"

    .prologue
    const/4 v2, 0x1

    .line 193
    if-ltz p0, :cond_0

    sget-object v0, Lcom/broadcom/bt/service/bpp/BluetoothPrinter$STATE_REASON;->prettyText:[Ljava/lang/String;

    array-length v0, v0

    sub-int/2addr v0, v2

    if-ge p0, v0, :cond_0

    .line 194
    sget-object v0, Lcom/broadcom/bt/service/bpp/BluetoothPrinter$STATE_REASON;->prettyText:[Ljava/lang/String;

    aget-object v0, v0, p0

    .line 196
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/broadcom/bt/service/bpp/BluetoothPrinter$STATE_REASON;->prettyText:[Ljava/lang/String;

    sget-object v1, Lcom/broadcom/bt/service/bpp/BluetoothPrinter$STATE_REASON;->prettyText:[Ljava/lang/String;

    array-length v1, v1

    sub-int/2addr v1, v2

    aget-object v0, v0, v1

    goto :goto_0
.end method
