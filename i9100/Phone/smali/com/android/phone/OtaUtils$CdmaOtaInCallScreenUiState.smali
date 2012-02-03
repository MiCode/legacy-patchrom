.class public Lcom/android/phone/OtaUtils$CdmaOtaInCallScreenUiState;
.super Ljava/lang/Object;
.source "OtaUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/OtaUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CdmaOtaInCallScreenUiState"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/OtaUtils$CdmaOtaInCallScreenUiState$State;
    }
.end annotation


# instance fields
.field public reportSkipPendingIntent:Landroid/app/PendingIntent;

.field public state:Lcom/android/phone/OtaUtils$CdmaOtaInCallScreenUiState$State;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 968
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 969
    const-string v0, "CdmaOtaInCallScreenState: constructor init to UNDEFINED"

    #calls: Lcom/android/phone/OtaUtils;->log(Ljava/lang/String;)V
    invoke-static {v0}, Lcom/android/phone/OtaUtils;->access$100(Ljava/lang/String;)V

    .line 970
    sget-object v0, Lcom/android/phone/OtaUtils$CdmaOtaInCallScreenUiState$State;->UNDEFINED:Lcom/android/phone/OtaUtils$CdmaOtaInCallScreenUiState$State;

    iput-object v0, p0, Lcom/android/phone/OtaUtils$CdmaOtaInCallScreenUiState;->state:Lcom/android/phone/OtaUtils$CdmaOtaInCallScreenUiState$State;

    .line 971
    return-void
.end method
