.class public Lcom/android/phone/OtaUtils$CdmaOtaProvisionData;
.super Ljava/lang/Object;
.source "OtaUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/OtaUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CdmaOtaProvisionData"
.end annotation


# instance fields
.field public activationCount:I

.field public inOtaSpcState:Z

.field public isOtaCallCommitted:Z

.field public isOtaCallIntentProcessed:Z

.field public otaSpcUptime:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 1067
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
