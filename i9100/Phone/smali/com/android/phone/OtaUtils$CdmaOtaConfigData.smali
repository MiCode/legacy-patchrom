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

    .line 947
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 948
    const-string v0, "CdmaOtaConfigData constructor!"

    #calls: Lcom/android/phone/OtaUtils;->log(Ljava/lang/String;)V
    invoke-static {v0}, Lcom/android/phone/OtaUtils;->access$100(Ljava/lang/String;)V

    .line 949
    iput v1, p0, Lcom/android/phone/OtaUtils$CdmaOtaConfigData;->otaShowActivationScreen:I

    .line 950
    iput v1, p0, Lcom/android/phone/OtaUtils$CdmaOtaConfigData;->otaShowListeningScreen:I

    .line 951
    iput v1, p0, Lcom/android/phone/OtaUtils$CdmaOtaConfigData;->otaShowActivateFailTimes:I

    .line 952
    iput v1, p0, Lcom/android/phone/OtaUtils$CdmaOtaConfigData;->otaPlaySuccessFailureTone:I

    .line 953
    return-void
.end method
