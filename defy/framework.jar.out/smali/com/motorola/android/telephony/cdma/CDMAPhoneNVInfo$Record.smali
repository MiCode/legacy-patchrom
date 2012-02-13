.class Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$Record;
.super Ljava/lang/Object;
.source "CDMAPhoneNVInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Record"
.end annotation


# instance fields
.field binder:Landroid/os/IBinder;

.field callback:Lcom/motorola/android/telephony/IPhoneNVInfoObserver;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    invoke-direct {p0}, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$Record;-><init>()V

    return-void
.end method
