.class public final Lcom/motorola/android/xmp/options/FileOptions;
.super Lcom/motorola/android/xmp/options/Options;
.source "FileOptions.java"


# static fields
.field public static final kXMPFiles_AllowsOnlyXMP:I = 0x20

.field public static final kXMPFiles_CanExpand:I = 0x2

.field public static final kXMPFiles_CanInjectXMP:I = 0x1

.field public static final kXMPFiles_CanReconcile:I = 0x10

.field public static final kXMPFiles_CanRewrite:I = 0x4

.field public static final kXMPFiles_HandlerOwnsFile:I = 0x100

.field public static final kXMPFiles_NeedsReadOnlyPacket:I = 0x400

.field public static final kXMPFiles_PrefersInPlace:I = 0x8

.field public static final kXMPFiles_ReturnsRawPacket:I = 0x40


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Lcom/motorola/android/xmp/options/Options;-><init>()V

    return-void
.end method


# virtual methods
.method protected defineOptionName(I)Ljava/lang/String;
    .locals 1
    .parameter "option"

    .prologue
    const/4 v0, 0x0

    return-object v0
.end method

.method protected getValidOptions()I
    .locals 1

    .prologue
    const/4 v0, 0x0

    return v0
.end method
