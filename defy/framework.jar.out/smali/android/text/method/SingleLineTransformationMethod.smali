.class public Landroid/text/method/SingleLineTransformationMethod;
.super Landroid/text/method/ReplacementTransformationMethod;
.source "SingleLineTransformationMethod.java"


# static fields
.field private static ORIGINAL:[C

.field private static REPLACEMENT:[C

.field private static sInstance:Landroid/text/method/SingleLineTransformationMethod;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x2

    new-array v0, v1, [C

    fill-array-data v0, :array_0

    sput-object v0, Landroid/text/method/SingleLineTransformationMethod;->ORIGINAL:[C

    new-array v0, v1, [C

    fill-array-data v0, :array_1

    sput-object v0, Landroid/text/method/SingleLineTransformationMethod;->REPLACEMENT:[C

    return-void

    :array_0
    .array-data 0x2
        0xat 0x0t
        0xdt 0x0t
    .end array-data

    :array_1
    .array-data 0x2
        0x20t 0x0t
        0xfft 0xfet
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Landroid/text/method/ReplacementTransformationMethod;-><init>()V

    return-void
.end method

.method public static getInstance()Landroid/text/method/SingleLineTransformationMethod;
    .locals 1

    .prologue
    sget-object v0, Landroid/text/method/SingleLineTransformationMethod;->sInstance:Landroid/text/method/SingleLineTransformationMethod;

    if-eqz v0, :cond_0

    sget-object v0, Landroid/text/method/SingleLineTransformationMethod;->sInstance:Landroid/text/method/SingleLineTransformationMethod;

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Landroid/text/method/SingleLineTransformationMethod;

    invoke-direct {v0}, Landroid/text/method/SingleLineTransformationMethod;-><init>()V

    sput-object v0, Landroid/text/method/SingleLineTransformationMethod;->sInstance:Landroid/text/method/SingleLineTransformationMethod;

    sget-object v0, Landroid/text/method/SingleLineTransformationMethod;->sInstance:Landroid/text/method/SingleLineTransformationMethod;

    goto :goto_0
.end method


# virtual methods
.method protected getOriginal()[C
    .locals 1

    .prologue
    sget-object v0, Landroid/text/method/SingleLineTransformationMethod;->ORIGINAL:[C

    return-object v0
.end method

.method protected getReplacement()[C
    .locals 1

    .prologue
    sget-object v0, Landroid/text/method/SingleLineTransformationMethod;->REPLACEMENT:[C

    return-object v0
.end method
