.class public final Lcom/motorola/android/xmp/options/FileCloseOptions;
.super Lcom/motorola/android/xmp/options/Options;
.source "FileCloseOptions.java"


# static fields
.field public static final kXMPFiles_UpdateSafely:I = 0x1


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
