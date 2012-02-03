.class public Landroid/text/method/DateKeyListener;
.super Landroid/text/method/NumberKeyListener;
.source "DateKeyListener.java"


# static fields
.field public static final CHARACTERS:[C

.field private static sInstance:Landroid/text/method/DateKeyListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 52
    const/16 v0, 0xd

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Landroid/text/method/DateKeyListener;->CHARACTERS:[C

    return-void

    :array_0
    .array-data 0x2
        0x30t 0x0t
        0x31t 0x0t
        0x32t 0x0t
        0x33t 0x0t
        0x34t 0x0t
        0x35t 0x0t
        0x36t 0x0t
        0x37t 0x0t
        0x38t 0x0t
        0x39t 0x0t
        0x2ft 0x0t
        0x2dt 0x0t
        0x2et 0x0t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Landroid/text/method/NumberKeyListener;-><init>()V

    return-void
.end method

.method public static getInstance()Landroid/text/method/DateKeyListener;
    .locals 1

    .prologue
    .line 39
    sget-object v0, Landroid/text/method/DateKeyListener;->sInstance:Landroid/text/method/DateKeyListener;

    if-eqz v0, :cond_0

    .line 40
    sget-object v0, Landroid/text/method/DateKeyListener;->sInstance:Landroid/text/method/DateKeyListener;

    .line 43
    :goto_0
    return-object v0

    .line 42
    :cond_0
    new-instance v0, Landroid/text/method/DateKeyListener;

    invoke-direct {v0}, Landroid/text/method/DateKeyListener;-><init>()V

    sput-object v0, Landroid/text/method/DateKeyListener;->sInstance:Landroid/text/method/DateKeyListener;

    .line 43
    sget-object v0, Landroid/text/method/DateKeyListener;->sInstance:Landroid/text/method/DateKeyListener;

    goto :goto_0
.end method


# virtual methods
.method protected getAcceptedChars()[C
    .locals 1

    .prologue
    .line 35
    sget-object v0, Landroid/text/method/DateKeyListener;->CHARACTERS:[C

    return-object v0
.end method

.method public getInputType()I
    .locals 1

    .prologue
    .line 28
    const/16 v0, 0x14

    return v0
.end method
