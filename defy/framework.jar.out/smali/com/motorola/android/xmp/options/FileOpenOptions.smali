.class public final Lcom/motorola/android/xmp/options/FileOpenOptions;
.super Lcom/motorola/android/xmp/options/Options;
.source "FileOpenOptions.java"


# static fields
.field public static final kXMPFiles_OpenForRead:I = 0x1

.field public static final kXMPFiles_OpenForUpdate:I = 0x2

.field public static final kXMPFiles_OpenLimitedScanning:I = 0x80

.field public static final kXMPFiles_OpenOnlyXMP:I = 0x4

.field public static final kXMPFiles_OpenStrictly:I = 0x10

.field public static final kXMPFiles_OpenUsePacketScanning:I = 0x40

.field public static final kXMPFiles_OpenUseSmartHandler:I = 0x20


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
