.class public Lcom/android/phone/PhoneInfoSKT;
.super Ljava/lang/Object;
.source "PhoneInfoSKT.java"


# static fields
.field private static final DBG:Z

.field private static final VDBG:Z

.field public static mCANPToggleTimer:Landroid/os/CountDownTimer;

.field public static mContactName:Ljava/lang/String;

.field public static mDisplayName:Ljava/lang/String;

.field public static mIsCMFCall:Z

.field public static mIsMessageCall:Z

.field public static mIsWzoneCall:Z

.field private static mOpticsCallHistoryShow:Z

.field private static mSKTCallHistoryShow:Z

.field private static mSKTRADDialingToKoreaEnabled:Z

.field private static mSKTTMapIncomingSPKOn:Z

.field private static mSKTTMapOutgoingSPKOn:Z

.field public static mWzoneprefix:Ljava/lang/String;

.field private static sMe:Lcom/android/phone/PhoneInfoSKT;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 91
    const-string v0, "ro.debuggable"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v2, :cond_0

    move v0, v2

    :goto_0
    sput-boolean v0, Lcom/android/phone/PhoneInfoSKT;->DBG:Z

    .line 96
    sget-boolean v0, Lcom/android/phone/PhoneInfoSKT;->DBG:Z

    sput-boolean v0, Lcom/android/phone/PhoneInfoSKT;->VDBG:Z

    .line 149
    sput-boolean v2, Lcom/android/phone/PhoneInfoSKT;->mOpticsCallHistoryShow:Z

    .line 152
    sput-boolean v1, Lcom/android/phone/PhoneInfoSKT;->mIsCMFCall:Z

    .line 153
    sput-boolean v1, Lcom/android/phone/PhoneInfoSKT;->mIsMessageCall:Z

    .line 155
    sput-boolean v1, Lcom/android/phone/PhoneInfoSKT;->mIsWzoneCall:Z

    .line 158
    sput-boolean v2, Lcom/android/phone/PhoneInfoSKT;->mSKTCallHistoryShow:Z

    .line 160
    sput-boolean v1, Lcom/android/phone/PhoneInfoSKT;->mSKTTMapOutgoingSPKOn:Z

    .line 161
    sput-boolean v1, Lcom/android/phone/PhoneInfoSKT;->mSKTTMapIncomingSPKOn:Z

    .line 167
    sput-object v3, Lcom/android/phone/PhoneInfoSKT;->mCANPToggleTimer:Landroid/os/CountDownTimer;

    .line 169
    sput-object v3, Lcom/android/phone/PhoneInfoSKT;->mDisplayName:Ljava/lang/String;

    .line 170
    sput-object v3, Lcom/android/phone/PhoneInfoSKT;->mContactName:Ljava/lang/String;

    .line 174
    sput-object v3, Lcom/android/phone/PhoneInfoSKT;->mWzoneprefix:Ljava/lang/String;

    return-void

    :cond_0
    move v0, v1

    .line 91
    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 176
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 177
    sput-object p0, Lcom/android/phone/PhoneInfoSKT;->sMe:Lcom/android/phone/PhoneInfoSKT;

    .line 179
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/phone/PhoneInfoSKT;->mSKTRADDialingToKoreaEnabled:Z

    .line 180
    return-void
.end method

.method public static getSKTCallLogNumber(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "number"

    .prologue
    const-string v2, "***"

    const-string v1, "#"

    .line 492
    if-nez p0, :cond_0

    .line 493
    const/4 v0, 0x0

    .line 510
    :goto_0
    return-object v0

    .line 496
    :cond_0
    sget-boolean v0, Lcom/android/phone/PhoneInfoSKT;->mIsWzoneCall:Z

    if-eqz v0, :cond_1

    sget-object v0, Lcom/android/phone/PhoneInfoSKT;->mWzoneprefix:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 497
    sget-object v0, Lcom/android/phone/PhoneInfoSKT;->mWzoneprefix:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 501
    :cond_1
    sget-boolean v0, Lcom/android/phone/PhoneInfoSKT;->mIsCMFCall:Z

    if-nez v0, :cond_2

    sget-boolean v0, Lcom/android/phone/PhoneInfoSKT;->mIsMessageCall:Z

    if-eqz v0, :cond_4

    .line 503
    :cond_2
    const-string v0, "***"

    invoke-virtual {p0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 504
    const-string v0, "***"

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 505
    :cond_3
    const-string v0, "#"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 506
    const-string v0, "#"

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_4
    move-object v0, p0

    .line 510
    goto :goto_0
.end method

.method public static setSKTTMapIncomingSPKOn(Z)V
    .locals 0
    .parameter "set"

    .prologue
    .line 210
    sput-boolean p0, Lcom/android/phone/PhoneInfoSKT;->mSKTTMapIncomingSPKOn:Z

    .line 211
    return-void
.end method
