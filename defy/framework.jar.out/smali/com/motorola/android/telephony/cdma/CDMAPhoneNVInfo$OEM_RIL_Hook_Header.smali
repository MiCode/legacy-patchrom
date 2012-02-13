.class Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_Hook_Header;
.super Ljava/lang/Object;
.source "CDMAPhoneNVInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "OEM_RIL_Hook_Header"
.end annotation


# static fields
.field public static final OEM_RIL_CDMA_SPC_LOCK_CODE_LENGTH:I = 0x6

.field public static final SIZE:I = 0x90


# instance fields
.field public error:I

.field public msgId:I

.field public msgLength:I

.field public spcLockCode:[B


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
