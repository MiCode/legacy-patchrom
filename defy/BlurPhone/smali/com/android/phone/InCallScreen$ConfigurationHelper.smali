.class Lcom/android/phone/InCallScreen$ConfigurationHelper;
.super Ljava/lang/Object;
.source "InCallScreen.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/InCallScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ConfigurationHelper"
.end annotation


# static fields
.field static sHardKeyboardHidden:I

.field static sKeyBoard:I

.field static sOrientation:I

.field static sTouchScreen:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 7746
    sput v0, Lcom/android/phone/InCallScreen$ConfigurationHelper;->sOrientation:I

    .line 7748
    sput v0, Lcom/android/phone/InCallScreen$ConfigurationHelper;->sTouchScreen:I

    .line 7749
    sput v0, Lcom/android/phone/InCallScreen$ConfigurationHelper;->sKeyBoard:I

    .line 7750
    sput v0, Lcom/android/phone/InCallScreen$ConfigurationHelper;->sHardKeyboardHidden:I

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 7742
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7743
    return-void
.end method

.method static applyConfigurationToLayout(Lcom/android/phone/InCallScreen;)V
    .locals 2
    .parameter "inCallScreen"

    .prologue
    .line 7794
    sget v0, Lcom/android/phone/InCallScreen$ConfigurationHelper;->sOrientation:I

    if-nez v0, :cond_0

    .line 7795
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "need to call initConfiguration first"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 7799
    :cond_0
    const v0, 0x7f0700d2

    invoke-virtual {p0, v0}, Lcom/android/phone/InCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    #setter for: Lcom/android/phone/InCallScreen;->mDTMFDisplay:Landroid/widget/EditText;
    invoke-static {p0, v0}, Lcom/android/phone/InCallScreen;->access$5402(Lcom/android/phone/InCallScreen;Landroid/widget/EditText;)Landroid/widget/EditText;

    .line 7806
    invoke-static {}, Lcom/android/phone/InCallScreen$ConfigurationHelper;->isLandscape()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 7808
    #getter for: Lcom/android/phone/InCallScreen;->mCallCard:Lcom/android/phone/CallCard;
    invoke-static {p0}, Lcom/android/phone/InCallScreen;->access$1400(Lcom/android/phone/InCallScreen;)Lcom/android/phone/CallCard;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/phone/CallCard;->updateForLandscapeMode()V

    .line 7814
    :cond_1
    return-void
.end method

.method static hasKeyBoard()Z
    .locals 2

    .prologue
    .line 7763
    sget v0, Lcom/android/phone/InCallScreen$ConfigurationHelper;->sKeyBoard:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    sget v0, Lcom/android/phone/InCallScreen$ConfigurationHelper;->sKeyBoard:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 7764
    :cond_0
    const/4 v0, 0x1

    .line 7766
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static initConfiguration(Landroid/content/res/Configuration;)V
    .locals 3
    .parameter "config"

    .prologue
    .line 7779
    invoke-static {}, Lcom/android/phone/InCallScreen;->access$2200()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "InCallScreen"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[InCallScreen.ConfigurationHelper] initConfiguration("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")..."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7781
    :cond_0
    iget v0, p0, Landroid/content/res/Configuration;->orientation:I

    sput v0, Lcom/android/phone/InCallScreen$ConfigurationHelper;->sOrientation:I

    .line 7783
    iget v0, p0, Landroid/content/res/Configuration;->touchscreen:I

    sput v0, Lcom/android/phone/InCallScreen$ConfigurationHelper;->sTouchScreen:I

    .line 7784
    iget v0, p0, Landroid/content/res/Configuration;->keyboard:I

    sput v0, Lcom/android/phone/InCallScreen$ConfigurationHelper;->sKeyBoard:I

    .line 7785
    iget v0, p0, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    sput v0, Lcom/android/phone/InCallScreen$ConfigurationHelper;->sHardKeyboardHidden:I

    .line 7787
    return-void
.end method

.method static isHardKeyboardHidden()Z
    .locals 2

    .prologue
    .line 7770
    sget v0, Lcom/android/phone/InCallScreen$ConfigurationHelper;->sHardKeyboardHidden:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static isLandscape()Z
    .locals 2

    .prologue
    .line 7754
    sget v0, Lcom/android/phone/InCallScreen$ConfigurationHelper;->sOrientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static isTouchPhone()Z
    .locals 2

    .prologue
    .line 7759
    sget v0, Lcom/android/phone/InCallScreen$ConfigurationHelper;->sTouchScreen:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
