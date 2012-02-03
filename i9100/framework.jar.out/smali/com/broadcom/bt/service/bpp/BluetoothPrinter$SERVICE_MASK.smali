.class public Lcom/broadcom/bt/service/bpp/BluetoothPrinter$SERVICE_MASK;
.super Ljava/lang/Object;
.source "BluetoothPrinter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/broadcom/bt/service/bpp/BluetoothPrinter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SERVICE_MASK"
.end annotation


# static fields
.field public static final BIP:I = 0x2000

.field public static final BPP:I = 0x1000

.field public static final NONE:I = 0x0

.field public static final OPP:I = 0x80

.field private static final prettyText:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 299
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "NONE"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "OPP"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "BPP"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "BIP"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "N/A"

    aput-object v2, v0, v1

    sput-object v0, Lcom/broadcom/bt/service/bpp/BluetoothPrinter$SERVICE_MASK;->prettyText:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 296
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getText(I)Ljava/lang/String;
    .locals 3
    .parameter "index"

    .prologue
    const/4 v2, 0x1

    .line 318
    sparse-switch p0, :sswitch_data_0

    .line 328
    sget-object v0, Lcom/broadcom/bt/service/bpp/BluetoothPrinter$SERVICE_MASK;->prettyText:[Ljava/lang/String;

    sget-object v1, Lcom/broadcom/bt/service/bpp/BluetoothPrinter$SERVICE_MASK;->prettyText:[Ljava/lang/String;

    array-length v1, v1

    sub-int/2addr v1, v2

    aget-object v0, v0, v1

    :goto_0
    return-object v0

    .line 320
    :sswitch_0
    sget-object v0, Lcom/broadcom/bt/service/bpp/BluetoothPrinter$SERVICE_MASK;->prettyText:[Ljava/lang/String;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    goto :goto_0

    .line 322
    :sswitch_1
    sget-object v0, Lcom/broadcom/bt/service/bpp/BluetoothPrinter$SERVICE_MASK;->prettyText:[Ljava/lang/String;

    aget-object v0, v0, v2

    goto :goto_0

    .line 324
    :sswitch_2
    sget-object v0, Lcom/broadcom/bt/service/bpp/BluetoothPrinter$SERVICE_MASK;->prettyText:[Ljava/lang/String;

    const/4 v1, 0x2

    aget-object v0, v0, v1

    goto :goto_0

    .line 326
    :sswitch_3
    sget-object v0, Lcom/broadcom/bt/service/bpp/BluetoothPrinter$SERVICE_MASK;->prettyText:[Ljava/lang/String;

    const/4 v1, 0x3

    aget-object v0, v0, v1

    goto :goto_0

    .line 318
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x80 -> :sswitch_1
        0x1000 -> :sswitch_2
        0x2000 -> :sswitch_3
    .end sparse-switch
.end method
