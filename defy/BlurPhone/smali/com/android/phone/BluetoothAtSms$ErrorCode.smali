.class Lcom/android/phone/BluetoothAtSms$ErrorCode;
.super Ljava/lang/Object;
.source "BluetoothAtSms.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/BluetoothAtSms;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ErrorCode"
.end annotation


# static fields
.field public static final CMD_UNSUPPORTED:I = 0xa1

.field public static final INVALID_MEM_INDEX:I = 0x141

.field public static final MEMORY_FULL:I = 0x142

.field public static final OK:I = -0x1

.field public static final OPERATRION_NOT_ALLOWED:I = 0x12e

.field public static final OPERATRION_NOT_SUPPORTED:I = 0x12f

.field public static final SIM_SMS_STORAGE_FULL:I = 0xd0

.field public static final UNKNOWN:I = 0x1f4


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 644
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
