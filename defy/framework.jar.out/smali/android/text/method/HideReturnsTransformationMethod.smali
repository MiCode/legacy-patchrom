.class public Landroid/text/method/HideReturnsTransformationMethod;
.super Landroid/text/method/ReplacementTransformationMethod;
.source "HideReturnsTransformationMethod.java"


# static fields
.field private static ORIGINAL:[C

.field private static REPLACEMENT:[C

.field private static sInstance:Landroid/text/method/HideReturnsTransformationMethod;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    new-array v0, v3, [C

    const/16 v1, 0xd

    aput-char v1, v0, v2

    sput-object v0, Landroid/text/method/HideReturnsTransformationMethod;->ORIGINAL:[C

    new-array v0, v3, [C

    const v1, 0xfeff

    aput-char v1, v0, v2

    sput-object v0, Landroid/text/method/HideReturnsTransformationMethod;->REPLACEMENT:[C

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Landroid/text/method/ReplacementTransformationMethod;-><init>()V

    return-void
.end method

.method public static getInstance()Landroid/text/method/HideReturnsTransformationMethod;
    .locals 1

    .prologue
    sget-object v0, Landroid/text/method/HideReturnsTransformationMethod;->sInstance:Landroid/text/method/HideReturnsTransformationMethod;

    if-eqz v0, :cond_0

    sget-object v0, Landroid/text/method/HideReturnsTransformationMethod;->sInstance:Landroid/text/method/HideReturnsTransformationMethod;

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Landroid/text/method/HideReturnsTransformationMethod;

    invoke-direct {v0}, Landroid/text/method/HideReturnsTransformationMethod;-><init>()V

    sput-object v0, Landroid/text/method/HideReturnsTransformationMethod;->sInstance:Landroid/text/method/HideReturnsTransformationMethod;

    sget-object v0, Landroid/text/method/HideReturnsTransformationMethod;->sInstance:Landroid/text/method/HideReturnsTransformationMethod;

    goto :goto_0
.end method


# virtual methods
.method protected getOriginal()[C
    .locals 1

    .prologue
    sget-object v0, Landroid/text/method/HideReturnsTransformationMethod;->ORIGINAL:[C

    return-object v0
.end method

.method protected getReplacement()[C
    .locals 1

    .prologue
    sget-object v0, Landroid/text/method/HideReturnsTransformationMethod;->REPLACEMENT:[C

    return-object v0
.end method
