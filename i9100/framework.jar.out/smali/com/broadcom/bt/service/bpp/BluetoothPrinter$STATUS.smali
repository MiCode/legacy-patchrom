.class public Lcom/broadcom/bt/service/bpp/BluetoothPrinter$STATUS;
.super Ljava/lang/Object;
.source "BluetoothPrinter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/broadcom/bt/service/bpp/BluetoothPrinter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "STATUS"
.end annotation


# static fields
.field public static final ERROR:I = 0x1

.field public static final ERROR_DOCUMENT_FORMAT:I = 0x9

.field public static final ERROR_FILE:I = 0x2

.field public static final ERROR_FORBIDDEN:I = 0x6

.field public static final ERROR_JOB_FAILED:I = 0x8

.field public static final ERROR_MEMORY:I = 0x4

.field public static final ERROR_OBJECT:I = 0x7

.field public static final ERROR_PERMISSION:I = 0x3

.field public static final ERROR_SDP:I = 0x5

.field public static final ERROR_UNAUTHORIZED:I = 0xa

.field public static final OK:I

.field private static final prettyText:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 249
    const/16 v0, 0xc

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "OK"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "ERROR"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "FILE ERROR"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "PERMISSION ERROR"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "MEMORY ERROR"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "SDP ERROR"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "FORBIDDEN ERROR"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "OBJECT ERROR"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "JOB FAILED ERROR"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "DOCUMENT FORMAT ERROR"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "UNAUTHORIZED ERROR"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "N/A"

    aput-object v2, v0, v1

    sput-object v0, Lcom/broadcom/bt/service/bpp/BluetoothPrinter$STATUS;->prettyText:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 246
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getText(I)Ljava/lang/String;
    .locals 3
    .parameter "index"

    .prologue
    const/4 v2, 0x1

    .line 284
    if-ltz p0, :cond_0

    sget-object v0, Lcom/broadcom/bt/service/bpp/BluetoothPrinter$STATUS;->prettyText:[Ljava/lang/String;

    array-length v0, v0

    sub-int/2addr v0, v2

    if-ge p0, v0, :cond_0

    .line 285
    sget-object v0, Lcom/broadcom/bt/service/bpp/BluetoothPrinter$STATUS;->prettyText:[Ljava/lang/String;

    aget-object v0, v0, p0

    .line 287
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/broadcom/bt/service/bpp/BluetoothPrinter$STATUS;->prettyText:[Ljava/lang/String;

    sget-object v1, Lcom/broadcom/bt/service/bpp/BluetoothPrinter$STATUS;->prettyText:[Ljava/lang/String;

    array-length v1, v1

    sub-int/2addr v1, v2

    aget-object v0, v0, v1

    goto :goto_0
.end method
