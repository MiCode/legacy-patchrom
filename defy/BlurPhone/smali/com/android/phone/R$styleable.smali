.class public final Lcom/android/phone/R$styleable;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "styleable"
.end annotation


# static fields
.field public static final CallForwardEditPreference:[I = null

.field public static final CallForwardEditPreference_reason:I = 0x1

.field public static final CallForwardEditPreference_serviceClass:I = 0x0

.field public static final EditPhoneNumberPreference:[I = null

.field public static final EditPhoneNumberPreference_changeNumButtonText:I = 0x2

.field public static final EditPhoneNumberPreference_confirmMode:I = 0x3

.field public static final EditPhoneNumberPreference_disableButtonText:I = 0x1

.field public static final EditPhoneNumberPreference_enableButtonText:I = 0x0

.field public static final SlideButton:[I = null

.field public static final SlideButton_buttonImage:I = 0x3

.field public static final SlideButton_buttonImageHeight:I = 0x14

.field public static final SlideButton_buttonImagePaddingBottom:I = 0x7

.field public static final SlideButton_buttonImagePaddingLeft:I = 0x4

.field public static final SlideButton_buttonImagePaddingRight:I = 0x5

.field public static final SlideButton_buttonImagePaddingTop:I = 0x6

.field public static final SlideButton_buttonImageWidth:I = 0x13

.field public static final SlideButton_buttonText:I = 0x12

.field public static final SlideButton_dataIcon:I = 0x9

.field public static final SlideButton_dataIconX:I = 0xa

.field public static final SlideButton_dataIconY:I = 0xb

.field public static final SlideButton_dataImage:I = 0x8

.field public static final SlideButton_dataSubText:I = 0xf

.field public static final SlideButton_dataSubTextX:I = 0x10

.field public static final SlideButton_dataSubTextY:I = 0x11

.field public static final SlideButton_dataText:I = 0xc

.field public static final SlideButton_dataTextX:I = 0xd

.field public static final SlideButton_dataTextY:I = 0xe

.field public static final SlideButton_sliderAlign:I = 0x1

.field public static final SlideButton_sliderOrientation:I = 0x2

.field public static final SlideButton_sliderType:I

.field public static final Theme:[I

.field public static final Theme_slideButtonStyle:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 3962
    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/phone/R$styleable;->CallForwardEditPreference:[I

    .line 4017
    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/android/phone/R$styleable;->EditPhoneNumberPreference:[I

    .line 4137
    const/16 v0, 0x15

    new-array v0, v0, [I

    fill-array-data v0, :array_2

    sput-object v0, Lcom/android/phone/R$styleable;->SlideButton:[I

    .line 4472
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x7f010004

    aput v2, v0, v1

    sput-object v0, Lcom/android/phone/R$styleable;->Theme:[I

    return-void

    .line 3962
    nop

    :array_0
    .array-data 0x4
        0x1at 0x0t 0x1t 0x7ft
        0x1bt 0x0t 0x1t 0x7ft
    .end array-data

    .line 4017
    :array_1
    .array-data 0x4
        0x0t 0x0t 0x1t 0x7ft
        0x1t 0x0t 0x1t 0x7ft
        0x2t 0x0t 0x1t 0x7ft
        0x3t 0x0t 0x1t 0x7ft
    .end array-data

    .line 4137
    :array_2
    .array-data 0x4
        0x5t 0x0t 0x1t 0x7ft
        0x6t 0x0t 0x1t 0x7ft
        0x7t 0x0t 0x1t 0x7ft
        0x8t 0x0t 0x1t 0x7ft
        0x9t 0x0t 0x1t 0x7ft
        0xat 0x0t 0x1t 0x7ft
        0xbt 0x0t 0x1t 0x7ft
        0xct 0x0t 0x1t 0x7ft
        0xdt 0x0t 0x1t 0x7ft
        0xet 0x0t 0x1t 0x7ft
        0xft 0x0t 0x1t 0x7ft
        0x10t 0x0t 0x1t 0x7ft
        0x11t 0x0t 0x1t 0x7ft
        0x12t 0x0t 0x1t 0x7ft
        0x13t 0x0t 0x1t 0x7ft
        0x14t 0x0t 0x1t 0x7ft
        0x15t 0x0t 0x1t 0x7ft
        0x16t 0x0t 0x1t 0x7ft
        0x17t 0x0t 0x1t 0x7ft
        0x18t 0x0t 0x1t 0x7ft
        0x19t 0x0t 0x1t 0x7ft
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3949
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
