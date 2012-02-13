.class public Lcom/android/phone/OtaUtils$CdmaOtaConfigData;
.super Ljava/lang/Object;
.source "OtaUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/OtaUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CdmaOtaConfigData"
.end annotation


# instance fields
.field public configComplete:Z

.field public otaPlaySuccessFailureTone:I

.field public otaShowActivateFailTimes:I

.field public otaShowActivationScreen:I

.field public otaShowListeningScreen:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1085
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1086
    invoke-static {}, Lcom/android/phone/OtaUtils;->access$200()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "CdmaOtaConfigData constructor!"

    #calls: Lcom/android/phone/OtaUtils;->log(Ljava/lang/String;)V
    invoke-static {v0}, Lcom/android/phone/OtaUtils;->access$100(Ljava/lang/String;)V

    .line 1087
    :cond_0
    iput v1, p0, Lcom/android/phone/OtaUtils$CdmaOtaConfigData;->otaShowActivationScreen:I

    .line 1088
    iput v1, p0, Lcom/android/phone/OtaUtils$CdmaOtaConfigData;->otaShowListeningScreen:I

    .line 1089
    iput v1, p0, Lcom/android/phone/OtaUtils$CdmaOtaConfigData;->otaShowActivateFailTimes:I

    .line 1090
    iput v1, p0, Lcom/android/phone/OtaUtils$CdmaOtaConfigData;->otaPlaySuccessFailureTone:I

    .line 1091
    return-void
.end method
