.class public Lcom/broadcom/bt/service/bpp/BluetoothPrinter$PRINT_FORMAT;
.super Ljava/lang/Object;
.source "BluetoothPrinter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/broadcom/bt/service/bpp/BluetoothPrinter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PRINT_FORMAT"
.end annotation


# static fields
.field public static final DPOF:I = 0x17

.field public static final ICAL:I = 0x3

.field public static final IMAGE:I = 0x18

.field public static final OTHER:I = 0xb

.field public static final PCL:I = 0x8

.field public static final PDF:I = 0x7

.field public static final PLAIN_TEXT:I = 0x6

.field public static final POSTSCRIPT:I = 0xa

.field public static final VCAL:I = 0x2

.field public static final VCARD:I = 0x1

.field public static final VMSG:I = 0x5

.field public static final VNOTE:I = 0x4

.field public static final XHTML_MULTIPLEXED:I = 0x9

.field public static final XHTML_PRINT:I

.field private static final prettyText:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const-string v3, "N/A"

    .line 337
    const/16 v0, 0x1a

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "XHTML Print"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "vCard 2.1"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string/jumbo v2, "vCalendar 1.0"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "iCalendar 2.0"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string/jumbo v2, "vNote"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string/jumbo v2, "vMessage"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "Plain Text"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "Adobe PDF"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "HP PCL"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "XHTML Multiplexed"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "PostScript"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "Other Format"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "N/A"

    aput-object v3, v0, v1

    const/16 v1, 0xd

    const-string v2, "N/A"

    aput-object v3, v0, v1

    const/16 v1, 0xe

    const-string v2, "N/A"

    aput-object v3, v0, v1

    const/16 v1, 0xf

    const-string v2, "N/A"

    aput-object v3, v0, v1

    const/16 v1, 0x10

    const-string v2, "N/A"

    aput-object v3, v0, v1

    const/16 v1, 0x11

    const-string v2, "N/A"

    aput-object v3, v0, v1

    const/16 v1, 0x12

    const-string v2, "N/A"

    aput-object v3, v0, v1

    const/16 v1, 0x13

    const-string v2, "N/A"

    aput-object v3, v0, v1

    const/16 v1, 0x14

    const-string v2, "N/A"

    aput-object v3, v0, v1

    const/16 v1, 0x15

    const-string v2, "N/A"

    aput-object v3, v0, v1

    const/16 v1, 0x16

    const-string v2, "N/A"

    aput-object v3, v0, v1

    const/16 v1, 0x17

    const-string v2, "DPOF printing"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "Image"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "N/A"

    aput-object v3, v0, v1

    sput-object v0, Lcom/broadcom/bt/service/bpp/BluetoothPrinter$PRINT_FORMAT;->prettyText:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 334
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getText(I)Ljava/lang/String;
    .locals 3
    .parameter "index"

    .prologue
    const/4 v2, 0x1

    .line 380
    if-ltz p0, :cond_0

    sget-object v0, Lcom/broadcom/bt/service/bpp/BluetoothPrinter$PRINT_FORMAT;->prettyText:[Ljava/lang/String;

    array-length v0, v0

    sub-int/2addr v0, v2

    if-ge p0, v0, :cond_0

    .line 381
    sget-object v0, Lcom/broadcom/bt/service/bpp/BluetoothPrinter$PRINT_FORMAT;->prettyText:[Ljava/lang/String;

    aget-object v0, v0, p0

    .line 383
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/broadcom/bt/service/bpp/BluetoothPrinter$PRINT_FORMAT;->prettyText:[Ljava/lang/String;

    sget-object v1, Lcom/broadcom/bt/service/bpp/BluetoothPrinter$PRINT_FORMAT;->prettyText:[Ljava/lang/String;

    array-length v1, v1

    sub-int/2addr v1, v2

    aget-object v0, v0, v1

    goto :goto_0
.end method
