.class Lcom/android/phone/OtaUtils$OtaWidgetData;
.super Ljava/lang/Object;
.source "OtaUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/OtaUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "OtaWidgetData"
.end annotation


# instance fields
.field public callCardOtaButtonsActivate:Landroid/view/View;

.field public callCardOtaButtonsFailSuccess:Landroid/view/View;

.field public callCardOtaButtonsListenProgress:Landroid/view/View;

.field public callCardOtaProgramming:Landroid/view/View;

.field public dialer:Lcom/android/phone/DTMFTwelveKeyDialer;

.field public otaActivateButton:Landroid/widget/Button;

.field public otaCallCardBase:Landroid/view/View;

.field public otaCancelButton:Landroid/widget/Button;

.field public otaDtmfDialerView:Lcom/android/phone/DTMFTwelveKeyDialerView;

.field public otaEmcButton:Landroid/widget/Button;

.field public otaEndButton:Landroid/widget/Button;

.field public otaFailureDialog:Landroid/app/AlertDialog;

.field public otaNextButton:Landroid/widget/Button;

.field public otaSkipConfirmationDialog:Landroid/app/AlertDialog;

.field public otaSpeakerButton:Landroid/widget/ToggleButton;

.field public otaTextActivate:Landroid/widget/TextView;

.field public otaTextListenProgress:Landroid/widget/TextView;

.field public otaTextListenProgressContainer:Landroid/widget/ScrollView;

.field public otaTextSimMissing:Landroid/widget/TextView;

.field public otaTextSuccessFail:Landroid/widget/TextView;

.field public otaTitle:Landroid/widget/TextView;

.field public otaTryAgainButton:Landroid/widget/Button;

.field public spcErrorDialog:Landroid/app/AlertDialog;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/phone/OtaUtils$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 97
    invoke-direct {p0}, Lcom/android/phone/OtaUtils$OtaWidgetData;-><init>()V

    return-void
.end method
