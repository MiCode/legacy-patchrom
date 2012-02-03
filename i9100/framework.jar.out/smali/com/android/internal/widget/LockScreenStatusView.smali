.class public Lcom/android/internal/widget/LockScreenStatusView;
.super Landroid/widget/RelativeLayout;
.source "LockScreenStatusView.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "LockScreenStatusView"

.field private static final sDataNetType_1x:[I

.field private static final sDataNetType_3g:[I

.field private static final sDataNetType_e:[I

.field private static final sDataNetType_g:[I

.field private static final sDataNetType_h:[I

.field private static final sRoamingIndicatorImages_cdma:[I

.field private static final sSignalImages:[I

.field private static final sSignalImages_r:[I


# instance fields
.field private mBatteryFirst:Z

.field private mBatteryImage:Landroid/widget/ImageView;

.field private mBatteryLevel:I

.field private mBatteryLevelTextView:Landroid/widget/TextView;

.field private mBatteryPlugged:Z

.field private mBatteryStatus:I

.field private mCalendar:Ljava/util/Calendar;

.field private mCdmaRoamingIndicatorIcon:I

.field private mClockFormat:Ljava/text/SimpleDateFormat;

.field private mClockFormatString:Ljava/lang/String;

.field mCommand:Ljava/lang/Runnable;

.field private mContext:Landroid/content/Context;

.field mDataActivity:I

.field private mDataIcon:I

.field private mDataIconList:[I

.field mDataState:I

.field mHandler:Landroid/os/Handler;

.field private mHspaDataDistinguishable:Z

.field private mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mPhone:Landroid/telephony/TelephonyManager;

.field private mPhoneIcon:I

.field mPhoneState:I

.field private mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field mServiceState:Landroid/telephony/ServiceState;

.field private mSignalImage:Landroid/widget/ImageView;

.field mSignalStrength:Landroid/telephony/SignalStrength;

.field mSimState:Lcom/android/internal/telephony/IccCard$State;

.field private mStatusView:Landroid/view/View;

.field private mUpdating:Z

.field tm:Landroid/telephony/TelephonyManager;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x5

    const/4 v1, 0x4

    .line 88
    new-array v0, v2, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/internal/widget/LockScreenStatusView;->sSignalImages:[I

    .line 95
    new-array v0, v2, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/android/internal/widget/LockScreenStatusView;->sSignalImages_r:[I

    .line 103
    const/16 v0, 0x54

    new-array v0, v0, [I

    fill-array-data v0, :array_2

    sput-object v0, Lcom/android/internal/widget/LockScreenStatusView;->sRoamingIndicatorImages_cdma:[I

    .line 209
    new-array v0, v1, [I

    fill-array-data v0, :array_3

    sput-object v0, Lcom/android/internal/widget/LockScreenStatusView;->sDataNetType_g:[I

    .line 215
    new-array v0, v1, [I

    fill-array-data v0, :array_4

    sput-object v0, Lcom/android/internal/widget/LockScreenStatusView;->sDataNetType_3g:[I

    .line 221
    new-array v0, v1, [I

    fill-array-data v0, :array_5

    sput-object v0, Lcom/android/internal/widget/LockScreenStatusView;->sDataNetType_e:[I

    .line 228
    new-array v0, v1, [I

    fill-array-data v0, :array_6

    sput-object v0, Lcom/android/internal/widget/LockScreenStatusView;->sDataNetType_h:[I

    .line 237
    new-array v0, v1, [I

    fill-array-data v0, :array_7

    sput-object v0, Lcom/android/internal/widget/LockScreenStatusView;->sDataNetType_1x:[I

    return-void

    .line 88
    nop

    :array_0
    .array-data 0x4
        0x15t 0x3t 0x8t 0x1t
        0x17t 0x3t 0x8t 0x1t
        0x19t 0x3t 0x8t 0x1t
        0x1bt 0x3t 0x8t 0x1t
        0x1dt 0x3t 0x8t 0x1t
    .end array-data

    .line 95
    :array_1
    .array-data 0x4
        0x1t 0x3t 0x8t 0x1t
        0x3t 0x3t 0x8t 0x1t
        0x5t 0x3t 0x8t 0x1t
        0x7t 0x3t 0x8t 0x1t
        0x9t 0x3t 0x8t 0x1t
    .end array-data

    .line 103
    :array_2
    .array-data 0x4
        0x10t 0x3t 0x8t 0x1t
        0x10t 0x3t 0x8t 0x1t
        0x10t 0x3t 0x8t 0x1t
        0x10t 0x3t 0x8t 0x1t
        0x10t 0x3t 0x8t 0x1t
        0x10t 0x3t 0x8t 0x1t
        0x10t 0x3t 0x8t 0x1t
        0x10t 0x3t 0x8t 0x1t
        0x10t 0x3t 0x8t 0x1t
        0x10t 0x3t 0x8t 0x1t
        0x10t 0x3t 0x8t 0x1t
        0x10t 0x3t 0x8t 0x1t
        0x10t 0x3t 0x8t 0x1t
        0x10t 0x3t 0x8t 0x1t
        0x10t 0x3t 0x8t 0x1t
        0x10t 0x3t 0x8t 0x1t
        0x10t 0x3t 0x8t 0x1t
        0x10t 0x3t 0x8t 0x1t
        0x10t 0x3t 0x8t 0x1t
        0x10t 0x3t 0x8t 0x1t
        0x10t 0x3t 0x8t 0x1t
        0x10t 0x3t 0x8t 0x1t
        0x10t 0x3t 0x8t 0x1t
        0x10t 0x3t 0x8t 0x1t
        0x10t 0x3t 0x8t 0x1t
        0x10t 0x3t 0x8t 0x1t
        0x10t 0x3t 0x8t 0x1t
        0x10t 0x3t 0x8t 0x1t
        0x10t 0x3t 0x8t 0x1t
        0x10t 0x3t 0x8t 0x1t
        0x10t 0x3t 0x8t 0x1t
        0x10t 0x3t 0x8t 0x1t
        0x10t 0x3t 0x8t 0x1t
        0x10t 0x3t 0x8t 0x1t
        0x10t 0x3t 0x8t 0x1t
        0x10t 0x3t 0x8t 0x1t
        0x10t 0x3t 0x8t 0x1t
        0x10t 0x3t 0x8t 0x1t
        0x10t 0x3t 0x8t 0x1t
        0x10t 0x3t 0x8t 0x1t
        0x10t 0x3t 0x8t 0x1t
        0x10t 0x3t 0x8t 0x1t
        0x10t 0x3t 0x8t 0x1t
        0x10t 0x3t 0x8t 0x1t
        0x10t 0x3t 0x8t 0x1t
        0x10t 0x3t 0x8t 0x1t
        0x10t 0x3t 0x8t 0x1t
        0x10t 0x3t 0x8t 0x1t
        0x10t 0x3t 0x8t 0x1t
        0x10t 0x3t 0x8t 0x1t
        0x10t 0x3t 0x8t 0x1t
        0x10t 0x3t 0x8t 0x1t
        0x10t 0x3t 0x8t 0x1t
        0x10t 0x3t 0x8t 0x1t
        0x10t 0x3t 0x8t 0x1t
        0x10t 0x3t 0x8t 0x1t
        0x10t 0x3t 0x8t 0x1t
        0x10t 0x3t 0x8t 0x1t
        0x10t 0x3t 0x8t 0x1t
        0x10t 0x3t 0x8t 0x1t
        0x10t 0x3t 0x8t 0x1t
        0x10t 0x3t 0x8t 0x1t
        0x10t 0x3t 0x8t 0x1t
        0x10t 0x3t 0x8t 0x1t
        0x10t 0x3t 0x8t 0x1t
        0x10t 0x3t 0x8t 0x1t
        0x10t 0x3t 0x8t 0x1t
        0x10t 0x3t 0x8t 0x1t
        0x10t 0x3t 0x8t 0x1t
        0x10t 0x3t 0x8t 0x1t
        0x10t 0x3t 0x8t 0x1t
        0x10t 0x3t 0x8t 0x1t
        0x10t 0x3t 0x8t 0x1t
        0x10t 0x3t 0x8t 0x1t
        0x10t 0x3t 0x8t 0x1t
        0x10t 0x3t 0x8t 0x1t
        0x10t 0x3t 0x8t 0x1t
        0x10t 0x3t 0x8t 0x1t
        0x10t 0x3t 0x8t 0x1t
        0x10t 0x3t 0x8t 0x1t
        0x10t 0x3t 0x8t 0x1t
        0x10t 0x3t 0x8t 0x1t
        0x10t 0x3t 0x8t 0x1t
        0x10t 0x3t 0x8t 0x1t
    .end array-data

    .line 209
    :array_3
    .array-data 0x4
        0xe3t 0x2t 0x8t 0x1t
        0xe9t 0x2t 0x8t 0x1t
        0xf4t 0x2t 0x8t 0x1t
        0xeft 0x2t 0x8t 0x1t
    .end array-data

    .line 215
    :array_4
    .array-data 0x4
        0xe1t 0x2t 0x8t 0x1t
        0xe7t 0x2t 0x8t 0x1t
        0xf2t 0x2t 0x8t 0x1t
        0xect 0x2t 0x8t 0x1t
    .end array-data

    .line 221
    :array_5
    .array-data 0x4
        0xe2t 0x2t 0x8t 0x1t
        0xe8t 0x2t 0x8t 0x1t
        0xf3t 0x2t 0x8t 0x1t
        0xeet 0x2t 0x8t 0x1t
    .end array-data

    .line 228
    :array_6
    .array-data 0x4
        0xe4t 0x2t 0x8t 0x1t
        0xeat 0x2t 0x8t 0x1t
        0xf5t 0x2t 0x8t 0x1t
        0xf0t 0x2t 0x8t 0x1t
    .end array-data

    .line 237
    :array_7
    .array-data 0x4
        0xe0t 0x2t 0x8t 0x1t
        0xe6t 0x2t 0x8t 0x1t
        0xf1t 0x2t 0x8t 0x1t
        0xebt 0x2t 0x8t 0x1t
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 245
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 41
    iput-object v2, p0, Lcom/android/internal/widget/LockScreenStatusView;->mContext:Landroid/content/Context;

    .line 43
    iput-object v2, p0, Lcom/android/internal/widget/LockScreenStatusView;->mStatusView:Landroid/view/View;

    .line 44
    iput-object v2, p0, Lcom/android/internal/widget/LockScreenStatusView;->mSignalImage:Landroid/widget/ImageView;

    .line 45
    iput-object v2, p0, Lcom/android/internal/widget/LockScreenStatusView;->mBatteryImage:Landroid/widget/ImageView;

    .line 56
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/internal/widget/LockScreenStatusView;->mBatteryFirst:Z

    .line 63
    iput-boolean v3, p0, Lcom/android/internal/widget/LockScreenStatusView;->mUpdating:Z

    .line 72
    sget-object v1, Lcom/android/internal/telephony/IccCard$State;->READY:Lcom/android/internal/telephony/IccCard$State;

    iput-object v1, p0, Lcom/android/internal/widget/LockScreenStatusView;->mSimState:Lcom/android/internal/telephony/IccCard$State;

    .line 73
    iput v3, p0, Lcom/android/internal/widget/LockScreenStatusView;->mPhoneState:I

    .line 74
    iput v3, p0, Lcom/android/internal/widget/LockScreenStatusView;->mDataState:I

    .line 75
    iput v3, p0, Lcom/android/internal/widget/LockScreenStatusView;->mDataActivity:I

    .line 78
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/android/internal/widget/LockScreenStatusView;->mHandler:Landroid/os/Handler;

    .line 79
    iput-object v2, p0, Lcom/android/internal/widget/LockScreenStatusView;->mCommand:Ljava/lang/Runnable;

    .line 207
    sget-object v1, Lcom/android/internal/widget/LockScreenStatusView;->sDataNetType_g:[I

    iput-object v1, p0, Lcom/android/internal/widget/LockScreenStatusView;->mDataIconList:[I

    .line 767
    new-instance v1, Lcom/android/internal/widget/LockScreenStatusView$1;

    invoke-direct {v1, p0}, Lcom/android/internal/widget/LockScreenStatusView$1;-><init>(Lcom/android/internal/widget/LockScreenStatusView;)V

    iput-object v1, p0, Lcom/android/internal/widget/LockScreenStatusView;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 829
    iput-object v2, p0, Lcom/android/internal/widget/LockScreenStatusView;->tm:Landroid/telephony/TelephonyManager;

    .line 879
    new-instance v1, Lcom/android/internal/widget/LockScreenStatusView$2;

    invoke-direct {v1, p0}, Lcom/android/internal/widget/LockScreenStatusView$2;-><init>(Lcom/android/internal/widget/LockScreenStatusView;)V

    iput-object v1, p0, Lcom/android/internal/widget/LockScreenStatusView;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    .line 247
    iput-object p1, p0, Lcom/android/internal/widget/LockScreenStatusView;->mContext:Landroid/content/Context;

    .line 249
    new-instance v1, Landroid/telephony/SignalStrength;

    invoke-direct {v1}, Landroid/telephony/SignalStrength;-><init>()V

    iput-object v1, p0, Lcom/android/internal/widget/LockScreenStatusView;->mSignalStrength:Landroid/telephony/SignalStrength;

    .line 250
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/widget/LockScreenStatusView;->mCalendar:Ljava/util/Calendar;

    .line 252
    const-string/jumbo v1, "phone"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    iput-object v1, p0, Lcom/android/internal/widget/LockScreenStatusView;->mPhone:Landroid/telephony/TelephonyManager;

    .line 254
    invoke-direct {p0}, Lcom/android/internal/widget/LockScreenStatusView;->initView()V

    .line 259
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/widget/LockScreenStatusView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10d0017

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/internal/widget/LockScreenStatusView;->mHspaDataDistinguishable:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 264
    :goto_0
    return-void

    .line 261
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 262
    .local v0, e:Ljava/lang/Exception;
    iput-boolean v3, p0, Lcom/android/internal/widget/LockScreenStatusView;->mHspaDataDistinguishable:Z

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 273
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 41
    iput-object v2, p0, Lcom/android/internal/widget/LockScreenStatusView;->mContext:Landroid/content/Context;

    .line 43
    iput-object v2, p0, Lcom/android/internal/widget/LockScreenStatusView;->mStatusView:Landroid/view/View;

    .line 44
    iput-object v2, p0, Lcom/android/internal/widget/LockScreenStatusView;->mSignalImage:Landroid/widget/ImageView;

    .line 45
    iput-object v2, p0, Lcom/android/internal/widget/LockScreenStatusView;->mBatteryImage:Landroid/widget/ImageView;

    .line 56
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/internal/widget/LockScreenStatusView;->mBatteryFirst:Z

    .line 63
    iput-boolean v3, p0, Lcom/android/internal/widget/LockScreenStatusView;->mUpdating:Z

    .line 72
    sget-object v1, Lcom/android/internal/telephony/IccCard$State;->READY:Lcom/android/internal/telephony/IccCard$State;

    iput-object v1, p0, Lcom/android/internal/widget/LockScreenStatusView;->mSimState:Lcom/android/internal/telephony/IccCard$State;

    .line 73
    iput v3, p0, Lcom/android/internal/widget/LockScreenStatusView;->mPhoneState:I

    .line 74
    iput v3, p0, Lcom/android/internal/widget/LockScreenStatusView;->mDataState:I

    .line 75
    iput v3, p0, Lcom/android/internal/widget/LockScreenStatusView;->mDataActivity:I

    .line 78
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/android/internal/widget/LockScreenStatusView;->mHandler:Landroid/os/Handler;

    .line 79
    iput-object v2, p0, Lcom/android/internal/widget/LockScreenStatusView;->mCommand:Ljava/lang/Runnable;

    .line 207
    sget-object v1, Lcom/android/internal/widget/LockScreenStatusView;->sDataNetType_g:[I

    iput-object v1, p0, Lcom/android/internal/widget/LockScreenStatusView;->mDataIconList:[I

    .line 767
    new-instance v1, Lcom/android/internal/widget/LockScreenStatusView$1;

    invoke-direct {v1, p0}, Lcom/android/internal/widget/LockScreenStatusView$1;-><init>(Lcom/android/internal/widget/LockScreenStatusView;)V

    iput-object v1, p0, Lcom/android/internal/widget/LockScreenStatusView;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 829
    iput-object v2, p0, Lcom/android/internal/widget/LockScreenStatusView;->tm:Landroid/telephony/TelephonyManager;

    .line 879
    new-instance v1, Lcom/android/internal/widget/LockScreenStatusView$2;

    invoke-direct {v1, p0}, Lcom/android/internal/widget/LockScreenStatusView$2;-><init>(Lcom/android/internal/widget/LockScreenStatusView;)V

    iput-object v1, p0, Lcom/android/internal/widget/LockScreenStatusView;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    .line 275
    iput-object p1, p0, Lcom/android/internal/widget/LockScreenStatusView;->mContext:Landroid/content/Context;

    .line 277
    new-instance v1, Landroid/telephony/SignalStrength;

    invoke-direct {v1}, Landroid/telephony/SignalStrength;-><init>()V

    iput-object v1, p0, Lcom/android/internal/widget/LockScreenStatusView;->mSignalStrength:Landroid/telephony/SignalStrength;

    .line 278
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/widget/LockScreenStatusView;->mCalendar:Ljava/util/Calendar;

    .line 280
    const-string/jumbo v1, "phone"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    iput-object v1, p0, Lcom/android/internal/widget/LockScreenStatusView;->mPhone:Landroid/telephony/TelephonyManager;

    .line 282
    invoke-direct {p0}, Lcom/android/internal/widget/LockScreenStatusView;->initView()V

    .line 286
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/widget/LockScreenStatusView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10d0017

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/internal/widget/LockScreenStatusView;->mHspaDataDistinguishable:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 291
    :goto_0
    return-void

    .line 288
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 289
    .local v0, e:Ljava/lang/Exception;
    iput-boolean v3, p0, Lcom/android/internal/widget/LockScreenStatusView;->mHspaDataDistinguishable:Z

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/android/internal/widget/LockScreenStatusView;)Ljava/util/Calendar;
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    iget-object v0, p0, Lcom/android/internal/widget/LockScreenStatusView;->mCalendar:Ljava/util/Calendar;

    return-object v0
.end method

.method static synthetic access$002(Lcom/android/internal/widget/LockScreenStatusView;Ljava/util/Calendar;)Ljava/util/Calendar;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 37
    iput-object p1, p0, Lcom/android/internal/widget/LockScreenStatusView;->mCalendar:Ljava/util/Calendar;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/internal/widget/LockScreenStatusView;)Ljava/text/SimpleDateFormat;
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    iget-object v0, p0, Lcom/android/internal/widget/LockScreenStatusView;->mClockFormat:Ljava/text/SimpleDateFormat;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/internal/widget/LockScreenStatusView;Landroid/content/Intent;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lcom/android/internal/widget/LockScreenStatusView;->updateBattery(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/internal/widget/LockScreenStatusView;Landroid/content/Intent;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lcom/android/internal/widget/LockScreenStatusView;->updateSimState(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/internal/widget/LockScreenStatusView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/android/internal/widget/LockScreenStatusView;->updateSignalStrength()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/internal/widget/LockScreenStatusView;Landroid/telephony/ServiceState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lcom/android/internal/widget/LockScreenStatusView;->updateCdmaRoamingIcon(Landroid/telephony/ServiceState;)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/internal/widget/LockScreenStatusView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/android/internal/widget/LockScreenStatusView;->updateDataIcon()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/internal/widget/LockScreenStatusView;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lcom/android/internal/widget/LockScreenStatusView;->updateCallState(I)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/internal/widget/LockScreenStatusView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/android/internal/widget/LockScreenStatusView;->isCdma()Z

    move-result v0

    return v0
.end method

.method static synthetic access$900(Lcom/android/internal/widget/LockScreenStatusView;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lcom/android/internal/widget/LockScreenStatusView;->updateDataNetType(I)V

    return-void
.end method

.method private final getBatteryIcon(I)I
    .locals 2
    .parameter "level"

    .prologue
    .line 447
    iget v0, p0, Lcom/android/internal/widget/LockScreenStatusView;->mBatteryStatus:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 448
    const v0, 0x1080406

    .line 456
    :goto_0
    return v0

    .line 450
    :cond_0
    iget v0, p0, Lcom/android/internal/widget/LockScreenStatusView;->mBatteryStatus:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    iget v0, p0, Lcom/android/internal/widget/LockScreenStatusView;->mBatteryStatus:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    iget v0, p0, Lcom/android/internal/widget/LockScreenStatusView;->mBatteryStatus:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_2

    .line 453
    :cond_1
    const v0, 0x1080405

    goto :goto_0

    .line 456
    :cond_2
    const v0, 0x10802df

    goto :goto_0
.end method

.method private getCdmaLevel()I
    .locals 5

    .prologue
    .line 578
    iget-object v4, p0, Lcom/android/internal/widget/LockScreenStatusView;->mSignalStrength:Landroid/telephony/SignalStrength;

    invoke-virtual {v4}, Landroid/telephony/SignalStrength;->getCdmaDbm()I

    move-result v0

    .line 579
    .local v0, cdmaDbm:I
    iget-object v4, p0, Lcom/android/internal/widget/LockScreenStatusView;->mSignalStrength:Landroid/telephony/SignalStrength;

    invoke-virtual {v4}, Landroid/telephony/SignalStrength;->getCdmaEcio()I

    move-result v1

    .line 580
    .local v1, cdmaEcio:I
    const/4 v2, 0x0

    .line 581
    .local v2, levelDbm:I
    const/4 v3, 0x0

    .line 583
    .local v3, levelEcio:I
    const/16 v4, -0x4b

    if-lt v0, v4, :cond_0

    const/4 v2, 0x4

    .line 590
    :goto_0
    const/16 v4, -0x5a

    if-lt v1, v4, :cond_4

    const/4 v3, 0x4

    .line 596
    :goto_1
    if-ge v2, v3, :cond_8

    move v4, v2

    :goto_2
    return v4

    .line 584
    :cond_0
    const/16 v4, -0x55

    if-lt v0, v4, :cond_1

    const/4 v2, 0x3

    goto :goto_0

    .line 585
    :cond_1
    const/16 v4, -0x5f

    if-lt v0, v4, :cond_2

    const/4 v2, 0x2

    goto :goto_0

    .line 586
    :cond_2
    const/16 v4, -0x64

    if-lt v0, v4, :cond_3

    const/4 v2, 0x1

    goto :goto_0

    .line 587
    :cond_3
    const/4 v2, 0x0

    goto :goto_0

    .line 591
    :cond_4
    const/16 v4, -0x6e

    if-lt v1, v4, :cond_5

    const/4 v3, 0x3

    goto :goto_1

    .line 592
    :cond_5
    const/16 v4, -0x82

    if-lt v1, v4, :cond_6

    const/4 v3, 0x2

    goto :goto_1

    .line 593
    :cond_6
    const/16 v4, -0x96

    if-lt v1, v4, :cond_7

    const/4 v3, 0x1

    goto :goto_1

    .line 594
    :cond_7
    const/4 v3, 0x0

    goto :goto_1

    :cond_8
    move v4, v3

    .line 596
    goto :goto_2
.end method

.method private getEvdoLevel()I
    .locals 5

    .prologue
    .line 600
    iget-object v4, p0, Lcom/android/internal/widget/LockScreenStatusView;->mSignalStrength:Landroid/telephony/SignalStrength;

    invoke-virtual {v4}, Landroid/telephony/SignalStrength;->getEvdoDbm()I

    move-result v0

    .line 601
    .local v0, evdoDbm:I
    iget-object v4, p0, Lcom/android/internal/widget/LockScreenStatusView;->mSignalStrength:Landroid/telephony/SignalStrength;

    invoke-virtual {v4}, Landroid/telephony/SignalStrength;->getEvdoSnr()I

    move-result v1

    .line 602
    .local v1, evdoSnr:I
    const/4 v2, 0x0

    .line 603
    .local v2, levelEvdoDbm:I
    const/4 v3, 0x0

    .line 605
    .local v3, levelEvdoSnr:I
    const/16 v4, -0x41

    if-lt v0, v4, :cond_0

    const/4 v2, 0x4

    .line 611
    :goto_0
    const/4 v4, 0x7

    if-lt v1, v4, :cond_4

    const/4 v3, 0x4

    .line 617
    :goto_1
    if-ge v2, v3, :cond_8

    move v4, v2

    :goto_2
    return v4

    .line 606
    :cond_0
    const/16 v4, -0x4b

    if-lt v0, v4, :cond_1

    const/4 v2, 0x3

    goto :goto_0

    .line 607
    :cond_1
    const/16 v4, -0x5a

    if-lt v0, v4, :cond_2

    const/4 v2, 0x2

    goto :goto_0

    .line 608
    :cond_2
    const/16 v4, -0x69

    if-lt v0, v4, :cond_3

    const/4 v2, 0x1

    goto :goto_0

    .line 609
    :cond_3
    const/4 v2, 0x0

    goto :goto_0

    .line 612
    :cond_4
    const/4 v4, 0x5

    if-lt v1, v4, :cond_5

    const/4 v3, 0x3

    goto :goto_1

    .line 613
    :cond_5
    const/4 v4, 0x3

    if-lt v1, v4, :cond_6

    const/4 v3, 0x2

    goto :goto_1

    .line 614
    :cond_6
    const/4 v4, 0x1

    if-lt v1, v4, :cond_7

    const/4 v3, 0x1

    goto :goto_1

    .line 615
    :cond_7
    const/4 v3, 0x0

    goto :goto_1

    :cond_8
    move v4, v3

    .line 617
    goto :goto_2
.end method

.method private final getSmallTime()Ljava/lang/CharSequence;
    .locals 22

    .prologue
    .line 352
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/LockScreenStatusView;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v9

    .line 355
    .local v9, b24:Z
    if-eqz v9, :cond_2

    .line 356
    const v17, 0x1040078

    .line 361
    .local v17, res:I
    :goto_0
    const v5, 0xef00

    .line 362
    .local v5, MAGIC1:C
    const v6, 0xef01

    .line 365
    .local v6, MAGIC2:C
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/LockScreenStatusView;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 366
    .local v11, format:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/LockScreenStatusView;->mClockFormatString:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object v0, v11

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-nez v20, :cond_7

    .line 372
    const/4 v7, -0x1

    .line 373
    .local v7, a:I
    const/16 v16, 0x0

    .line 374
    .local v16, quoted:Z
    const/4 v13, 0x0

    .local v13, i:I
    :goto_1
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v20

    move v0, v13

    move/from16 v1, v20

    if-ge v0, v1, :cond_1

    .line 375
    invoke-virtual {v11, v13}, Ljava/lang/String;->charAt(I)C

    move-result v10

    .line 377
    .local v10, c:C
    const/16 v20, 0x27

    move v0, v10

    move/from16 v1, v20

    if-ne v0, v1, :cond_0

    .line 378
    if-nez v16, :cond_3

    const/16 v20, 0x1

    move/from16 v16, v20

    .line 381
    :cond_0
    :goto_2
    if-nez v16, :cond_4

    const/16 v20, 0x61

    move v0, v10

    move/from16 v1, v20

    if-ne v0, v1, :cond_4

    .line 382
    move v7, v13

    .line 387
    .end local v10           #c:C
    :cond_1
    if-ltz v7, :cond_6

    .line 389
    move v8, v7

    .line 390
    .local v8, b:I
    :goto_3
    if-lez v7, :cond_5

    const/16 v20, 0x1

    sub-int v20, v7, v20

    move-object v0, v11

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v20

    invoke-static/range {v20 .. v20}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v20

    if-eqz v20, :cond_5

    .line 391
    add-int/lit8 v7, v7, -0x1

    goto :goto_3

    .line 358
    .end local v5           #MAGIC1:C
    .end local v6           #MAGIC2:C
    .end local v7           #a:I
    .end local v8           #b:I
    .end local v11           #format:Ljava/lang/String;
    .end local v13           #i:I
    .end local v16           #quoted:Z
    .end local v17           #res:I
    :cond_2
    const v17, 0x1040077

    .restart local v17       #res:I
    goto :goto_0

    .line 378
    .restart local v5       #MAGIC1:C
    .restart local v6       #MAGIC2:C
    .restart local v7       #a:I
    .restart local v10       #c:C
    .restart local v11       #format:Ljava/lang/String;
    .restart local v13       #i:I
    .restart local v16       #quoted:Z
    :cond_3
    const/16 v20, 0x0

    move/from16 v16, v20

    goto :goto_2

    .line 374
    :cond_4
    add-int/lit8 v13, v13, 0x1

    goto :goto_1

    .line 393
    .end local v10           #c:C
    .restart local v8       #b:I
    :cond_5
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v21, 0x0

    move-object v0, v11

    move/from16 v1, v21

    move v2, v7

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const v21, 0xef00

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual {v11, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "a"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const v21, 0xef01

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v20

    add-int/lit8 v21, v8, 0x1

    move-object v0, v11

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 397
    .end local v8           #b:I
    :cond_6
    new-instance v19, Ljava/text/SimpleDateFormat;

    move-object/from16 v0, v19

    move-object v1, v11

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .local v19, sdf:Ljava/text/SimpleDateFormat;
    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/widget/LockScreenStatusView;->mClockFormat:Ljava/text/SimpleDateFormat;

    .line 398
    move-object v0, v11

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/widget/LockScreenStatusView;->mClockFormatString:Ljava/lang/String;

    .line 402
    .end local v7           #a:I
    .end local v13           #i:I
    .end local v16           #quoted:Z
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/LockScreenStatusView;->mCalendar:Ljava/util/Calendar;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v18

    .line 404
    .local v18, result:Ljava/lang/String;
    const v20, 0xef00

    move-object/from16 v0, v18

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v14

    .line 405
    .local v14, magic1:I
    const v20, 0xef01

    move-object/from16 v0, v18

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v15

    .line 407
    .local v15, magic2:I
    if-ltz v14, :cond_8

    if-le v15, v14, :cond_8

    .line 408
    new-instance v12, Landroid/text/SpannableStringBuilder;

    move-object v0, v12

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 410
    .local v12, formatted:Landroid/text/SpannableStringBuilder;
    new-instance v20, Landroid/text/style/RelativeSizeSpan;

    const v21, 0x3f333333

    invoke-direct/range {v20 .. v21}, Landroid/text/style/RelativeSizeSpan;-><init>(F)V

    const/16 v21, 0x22

    move-object v0, v12

    move-object/from16 v1, v20

    move v2, v14

    move v3, v15

    move/from16 v4, v21

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 413
    add-int/lit8 v20, v15, 0x1

    move-object v0, v12

    move v1, v15

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/text/SpannableStringBuilder;->delete(II)Landroid/text/SpannableStringBuilder;

    .line 414
    add-int/lit8 v20, v14, 0x1

    move-object v0, v12

    move v1, v14

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/text/SpannableStringBuilder;->delete(II)Landroid/text/SpannableStringBuilder;

    move-object/from16 v20, v12

    .line 418
    .end local v12           #formatted:Landroid/text/SpannableStringBuilder;
    :goto_5
    return-object v20

    .line 400
    .end local v14           #magic1:I
    .end local v15           #magic2:I
    .end local v18           #result:Ljava/lang/String;
    .end local v19           #sdf:Ljava/text/SimpleDateFormat;
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/LockScreenStatusView;->mClockFormat:Ljava/text/SimpleDateFormat;

    move-object/from16 v19, v0

    .restart local v19       #sdf:Ljava/text/SimpleDateFormat;
    goto :goto_4

    .restart local v14       #magic1:I
    .restart local v15       #magic2:I
    .restart local v18       #result:Ljava/lang/String;
    :cond_8
    move-object/from16 v20, v18

    .line 418
    goto :goto_5
.end method

.method private hasService()Z
    .locals 2

    .prologue
    .line 546
    const/4 v0, 0x0

    .line 548
    .local v0, returnValue:Z
    iget-object v1, p0, Lcom/android/internal/widget/LockScreenStatusView;->mServiceState:Landroid/telephony/ServiceState;

    if-eqz v1, :cond_0

    .line 549
    iget-object v1, p0, Lcom/android/internal/widget/LockScreenStatusView;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getState()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 555
    :pswitch_0
    const/4 v0, 0x1

    .line 562
    :goto_0
    return v0

    .line 552
    :pswitch_1
    const/4 v0, 0x0

    .line 553
    goto :goto_0

    .line 559
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 549
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private initView()V
    .locals 4

    .prologue
    .line 294
    invoke-virtual {p0}, Lcom/android/internal/widget/LockScreenStatusView;->removeAllViews()V

    .line 296
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-direct {v0, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 301
    .local v0, params:Landroid/widget/RelativeLayout$LayoutParams;
    invoke-direct {p0}, Lcom/android/internal/widget/LockScreenStatusView;->makeView()Landroid/view/View;

    move-result-object v1

    .line 302
    .local v1, view:Landroid/view/View;
    invoke-virtual {p0, v1}, Lcom/android/internal/widget/LockScreenStatusView;->addView(Landroid/view/View;)V

    .line 303
    invoke-virtual {p0, v0}, Lcom/android/internal/widget/LockScreenStatusView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 306
    return-void
.end method

.method private isCdma()Z
    .locals 1

    .prologue
    .line 534
    iget-object v0, p0, Lcom/android/internal/widget/LockScreenStatusView;->mSignalStrength:Landroid/telephony/SignalStrength;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/widget/LockScreenStatusView;->mSignalStrength:Landroid/telephony/SignalStrength;

    invoke-virtual {v0}, Landroid/telephony/SignalStrength;->isGsm()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isEvdo()Z
    .locals 2

    .prologue
    .line 538
    iget-object v0, p0, Lcom/android/internal/widget/LockScreenStatusView;->mServiceState:Landroid/telephony/ServiceState;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/widget/LockScreenStatusView;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getRadioTechnology()I

    move-result v0

    const/4 v1, 0x7

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/internal/widget/LockScreenStatusView;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getRadioTechnology()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private makeView()Landroid/view/View;
    .locals 3

    .prologue
    .line 309
    iget-object v1, p0, Lcom/android/internal/widget/LockScreenStatusView;->mContext:Landroid/content/Context;

    const-string v2, "layout_inflater"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 310
    .local v0, inflate:Landroid/view/LayoutInflater;
    const v1, 0x1090082

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/widget/LockScreenStatusView;->mStatusView:Landroid/view/View;

    .line 311
    iget-object v1, p0, Lcom/android/internal/widget/LockScreenStatusView;->mStatusView:Landroid/view/View;

    const v2, 0x102029b

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/internal/widget/LockScreenStatusView;->mSignalImage:Landroid/widget/ImageView;

    .line 313
    iget-object v1, p0, Lcom/android/internal/widget/LockScreenStatusView;->mSignalImage:Landroid/widget/ImageView;

    const v2, 0x1080325

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 314
    iget-object v1, p0, Lcom/android/internal/widget/LockScreenStatusView;->mStatusView:Landroid/view/View;

    const v2, 0x102029c

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/internal/widget/LockScreenStatusView;->mBatteryImage:Landroid/widget/ImageView;

    .line 316
    iget-object v1, p0, Lcom/android/internal/widget/LockScreenStatusView;->mBatteryImage:Landroid/widget/ImageView;

    const v2, 0x10802df

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 319
    iget-object v1, p0, Lcom/android/internal/widget/LockScreenStatusView;->mStatusView:Landroid/view/View;

    return-object v1
.end method

.method private setUpdates(Z)V
    .locals 5
    .parameter "update"

    .prologue
    const/4 v4, 0x0

    .line 832
    iget-boolean v2, p0, Lcom/android/internal/widget/LockScreenStatusView;->mUpdating:Z

    if-eq p1, v2, :cond_1

    .line 833
    iput-boolean p1, p0, Lcom/android/internal/widget/LockScreenStatusView;->mUpdating:Z

    .line 834
    if-eqz p1, :cond_2

    .line 836
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 838
    .local v1, filter:Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.TIME_TICK"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 839
    const-string v2, "android.intent.action.TIME_SET"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 840
    const-string v2, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 841
    const-string v2, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 843
    const-string v2, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 844
    const-string v2, "android.intent.action.BATTERY_LOW"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 845
    const-string v2, "android.intent.action.BATTERY_OKAY"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 849
    iget-object v2, p0, Lcom/android/internal/widget/LockScreenStatusView;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/internal/widget/LockScreenStatusView;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v1, v4, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 850
    iget-object v2, p0, Lcom/android/internal/widget/LockScreenStatusView;->tm:Landroid/telephony/TelephonyManager;

    if-nez v2, :cond_0

    .line 851
    iget-object v2, p0, Lcom/android/internal/widget/LockScreenStatusView;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "phone"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    iput-object v2, p0, Lcom/android/internal/widget/LockScreenStatusView;->tm:Landroid/telephony/TelephonyManager;

    .line 861
    :cond_0
    iget-object v2, p0, Lcom/android/internal/widget/LockScreenStatusView;->tm:Landroid/telephony/TelephonyManager;

    iget-object v3, p0, Lcom/android/internal/widget/LockScreenStatusView;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/16 v4, 0x1e1

    invoke-virtual {v2, v3, v4}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 868
    invoke-direct {p0}, Lcom/android/internal/widget/LockScreenStatusView;->updateClock()V

    .line 877
    .end local v1           #filter:Landroid/content/IntentFilter;
    :cond_1
    :goto_0
    return-void

    .line 871
    :cond_2
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/widget/LockScreenStatusView;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/internal/widget/LockScreenStatusView;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 872
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 873
    .local v0, e:Ljava/lang/IllegalArgumentException;
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->toString()Ljava/lang/String;

    goto :goto_0
.end method

.method private final updateBattery(Landroid/content/Intent;)V
    .locals 3
    .parameter "intent"

    .prologue
    const/4 v2, 0x0

    .line 424
    const-string v1, "level"

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 426
    .local v0, battreyLevel:I
    const-string/jumbo v1, "status"

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/internal/widget/LockScreenStatusView;->mBatteryStatus:I

    .line 442
    iget-object v1, p0, Lcom/android/internal/widget/LockScreenStatusView;->mBatteryImage:Landroid/widget/ImageView;

    invoke-direct {p0, v0}, Lcom/android/internal/widget/LockScreenStatusView;->getBatteryIcon(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 443
    iget-object v1, p0, Lcom/android/internal/widget/LockScreenStatusView;->mBatteryImage:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageLevel(I)V

    .line 444
    return-void
.end method

.method private final updateCallState(I)V
    .locals 0
    .parameter "state"

    .prologue
    .line 764
    iput p1, p0, Lcom/android/internal/widget/LockScreenStatusView;->mPhoneState:I

    .line 765
    return-void
.end method

.method private final updateCdmaRoamingIcon(Landroid/telephony/ServiceState;)V
    .locals 6
    .parameter "state"

    .prologue
    const/4 v4, -0x1

    const-string v5, "LockScreenStatusView"

    .line 716
    invoke-direct {p0}, Lcom/android/internal/widget/LockScreenStatusView;->hasService()Z

    move-result v3

    if-nez v3, :cond_1

    .line 761
    :cond_0
    :goto_0
    return-void

    .line 721
    :cond_1
    invoke-direct {p0}, Lcom/android/internal/widget/LockScreenStatusView;->isCdma()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 726
    sget-object v1, Lcom/android/internal/widget/LockScreenStatusView;->sRoamingIndicatorImages_cdma:[I

    .line 727
    .local v1, iconList:[I
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getCdmaEriIconIndex()I

    move-result v0

    .line 728
    .local v0, iconIndex:I
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getCdmaEriIconMode()I

    move-result v2

    .line 730
    .local v2, iconMode:I
    if-ne v0, v4, :cond_2

    .line 731
    const-string v3, "LockScreenStatusView"

    const-string v3, "getCdmaEriIconIndex returned null, skipping ERI icon update"

    invoke-static {v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 735
    :cond_2
    if-ne v2, v4, :cond_3

    .line 736
    const-string v3, "LockScreenStatusView"

    const-string v3, "getCdmeEriIconMode returned null, skipping ERI icon update"

    invoke-static {v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 740
    :cond_3
    const/4 v3, 0x1

    if-ne v0, v3, :cond_4

    .line 741
    const-string v3, "LockScreenStatusView"

    const-string v3, "Cdma ROAMING_INDICATOR_OFF, removing ERI icon"

    invoke-static {v5, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 746
    :cond_4
    packed-switch v2, :pswitch_data_0

    .line 760
    :goto_1
    iget v3, p0, Lcom/android/internal/widget/LockScreenStatusView;->mPhoneIcon:I

    invoke-virtual {p0, v3, v4}, Lcom/android/internal/widget/LockScreenStatusView;->updateIcon(II)V

    goto :goto_0

    .line 748
    :pswitch_0
    aget v3, v1, v0

    iput v3, p0, Lcom/android/internal/widget/LockScreenStatusView;->mCdmaRoamingIndicatorIcon:I

    .line 749
    iget v3, p0, Lcom/android/internal/widget/LockScreenStatusView;->mCdmaRoamingIndicatorIcon:I

    invoke-virtual {p0, v3, v4}, Lcom/android/internal/widget/LockScreenStatusView;->updateIcon(II)V

    goto :goto_1

    .line 753
    :pswitch_1
    const v3, 0x1080311

    iput v3, p0, Lcom/android/internal/widget/LockScreenStatusView;->mCdmaRoamingIndicatorIcon:I

    .line 754
    iget v3, p0, Lcom/android/internal/widget/LockScreenStatusView;->mCdmaRoamingIndicatorIcon:I

    invoke-virtual {p0, v3, v4}, Lcom/android/internal/widget/LockScreenStatusView;->updateIcon(II)V

    goto :goto_1

    .line 746
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private final updateClock()V
    .locals 3

    .prologue
    .line 346
    iget-object v0, p0, Lcom/android/internal/widget/LockScreenStatusView;->mCalendar:Ljava/util/Calendar;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 347
    const-string v0, "LockScreenStatusView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mTimeText : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/android/internal/widget/LockScreenStatusView;->getSmallTime()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 349
    return-void
.end method

.method private final updateDataIcon()V
    .locals 10

    .prologue
    const/4 v9, 0x3

    const/4 v8, 0x1

    const/4 v7, 0x0

    const/4 v5, 0x2

    const/4 v6, -0x1

    .line 649
    const/4 v2, 0x1

    .line 651
    .local v2, visible:Z
    const/4 v0, 0x1

    .line 652
    .local v0, bShowOnlyRSSI:Z
    if-eqz v0, :cond_1

    .line 653
    iget-object v3, p0, Lcom/android/internal/widget/LockScreenStatusView;->mSimState:Lcom/android/internal/telephony/IccCard$State;

    sget-object v4, Lcom/android/internal/telephony/IccCard$State;->READY:Lcom/android/internal/telephony/IccCard$State;

    if-eq v3, v4, :cond_0

    iget-object v3, p0, Lcom/android/internal/widget/LockScreenStatusView;->mSimState:Lcom/android/internal/telephony/IccCard$State;

    sget-object v4, Lcom/android/internal/telephony/IccCard$State;->UNKNOWN:Lcom/android/internal/telephony/IccCard$State;

    if-eq v3, v4, :cond_0

    .line 654
    const-string v3, "LockScreenStatusView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "updateDataIcon() : mSimState="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/widget/LockScreenStatusView;->mSimState:Lcom/android/internal/telephony/IccCard$State;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 655
    const v3, 0x1080300

    iput v3, p0, Lcom/android/internal/widget/LockScreenStatusView;->mDataIcon:I

    .line 656
    iget v3, p0, Lcom/android/internal/widget/LockScreenStatusView;->mDataIcon:I

    invoke-virtual {p0, v3, v6}, Lcom/android/internal/widget/LockScreenStatusView;->updateIcon(II)V

    .line 713
    :cond_0
    :goto_0
    return-void

    .line 661
    :cond_1
    invoke-direct {p0}, Lcom/android/internal/widget/LockScreenStatusView;->isCdma()Z

    move-result v3

    if-nez v3, :cond_5

    .line 663
    iget-object v3, p0, Lcom/android/internal/widget/LockScreenStatusView;->mSimState:Lcom/android/internal/telephony/IccCard$State;

    sget-object v4, Lcom/android/internal/telephony/IccCard$State;->READY:Lcom/android/internal/telephony/IccCard$State;

    if-eq v3, v4, :cond_2

    iget-object v3, p0, Lcom/android/internal/widget/LockScreenStatusView;->mSimState:Lcom/android/internal/telephony/IccCard$State;

    sget-object v4, Lcom/android/internal/telephony/IccCard$State;->UNKNOWN:Lcom/android/internal/telephony/IccCard$State;

    if-ne v3, v4, :cond_4

    .line 664
    :cond_2
    invoke-direct {p0}, Lcom/android/internal/widget/LockScreenStatusView;->hasService()Z

    move-result v3

    if-eqz v3, :cond_3

    iget v3, p0, Lcom/android/internal/widget/LockScreenStatusView;->mDataState:I

    if-ne v3, v5, :cond_3

    .line 665
    iget v3, p0, Lcom/android/internal/widget/LockScreenStatusView;->mDataActivity:I

    packed-switch v3, :pswitch_data_0

    .line 676
    iget-object v3, p0, Lcom/android/internal/widget/LockScreenStatusView;->mDataIconList:[I

    aget v1, v3, v7

    .line 679
    .local v1, iconId:I
    :goto_1
    iput v1, p0, Lcom/android/internal/widget/LockScreenStatusView;->mDataIcon:I

    .line 680
    iget v3, p0, Lcom/android/internal/widget/LockScreenStatusView;->mDataIcon:I

    invoke-virtual {p0, v3, v6}, Lcom/android/internal/widget/LockScreenStatusView;->updateIcon(II)V

    goto :goto_0

    .line 667
    .end local v1           #iconId:I
    :pswitch_0
    iget-object v3, p0, Lcom/android/internal/widget/LockScreenStatusView;->mDataIconList:[I

    aget v1, v3, v8

    .line 668
    .restart local v1       #iconId:I
    goto :goto_1

    .line 670
    .end local v1           #iconId:I
    :pswitch_1
    iget-object v3, p0, Lcom/android/internal/widget/LockScreenStatusView;->mDataIconList:[I

    aget v1, v3, v5

    .line 671
    .restart local v1       #iconId:I
    goto :goto_1

    .line 673
    .end local v1           #iconId:I
    :pswitch_2
    iget-object v3, p0, Lcom/android/internal/widget/LockScreenStatusView;->mDataIconList:[I

    aget v1, v3, v9

    .line 674
    .restart local v1       #iconId:I
    goto :goto_1

    .line 682
    .end local v1           #iconId:I
    :cond_3
    const/4 v2, 0x0

    goto :goto_0

    .line 685
    :cond_4
    const v3, 0x1080300

    iput v3, p0, Lcom/android/internal/widget/LockScreenStatusView;->mDataIcon:I

    .line 686
    iget v3, p0, Lcom/android/internal/widget/LockScreenStatusView;->mDataIcon:I

    invoke-virtual {p0, v3, v6}, Lcom/android/internal/widget/LockScreenStatusView;->updateIcon(II)V

    goto :goto_0

    .line 690
    :cond_5
    invoke-direct {p0}, Lcom/android/internal/widget/LockScreenStatusView;->hasService()Z

    move-result v3

    if-eqz v3, :cond_6

    iget v3, p0, Lcom/android/internal/widget/LockScreenStatusView;->mDataState:I

    if-ne v3, v5, :cond_6

    .line 691
    iget v3, p0, Lcom/android/internal/widget/LockScreenStatusView;->mDataActivity:I

    packed-switch v3, :pswitch_data_1

    .line 703
    iget-object v3, p0, Lcom/android/internal/widget/LockScreenStatusView;->mDataIconList:[I

    aget v1, v3, v7

    .line 706
    .restart local v1       #iconId:I
    :goto_2
    iput v1, p0, Lcom/android/internal/widget/LockScreenStatusView;->mDataIcon:I

    .line 707
    iget v3, p0, Lcom/android/internal/widget/LockScreenStatusView;->mDataIcon:I

    invoke-virtual {p0, v3, v6}, Lcom/android/internal/widget/LockScreenStatusView;->updateIcon(II)V

    goto :goto_0

    .line 693
    .end local v1           #iconId:I
    :pswitch_3
    iget-object v3, p0, Lcom/android/internal/widget/LockScreenStatusView;->mDataIconList:[I

    aget v1, v3, v8

    .line 694
    .restart local v1       #iconId:I
    goto :goto_2

    .line 696
    .end local v1           #iconId:I
    :pswitch_4
    iget-object v3, p0, Lcom/android/internal/widget/LockScreenStatusView;->mDataIconList:[I

    aget v1, v3, v5

    .line 697
    .restart local v1       #iconId:I
    goto :goto_2

    .line 699
    .end local v1           #iconId:I
    :pswitch_5
    iget-object v3, p0, Lcom/android/internal/widget/LockScreenStatusView;->mDataIconList:[I

    aget v1, v3, v9

    .line 700
    .restart local v1       #iconId:I
    goto :goto_2

    .line 709
    .end local v1           #iconId:I
    :cond_6
    const/4 v2, 0x0

    goto :goto_0

    .line 665
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch

    .line 691
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method private final updateDataNetType(I)V
    .locals 1
    .parameter "net"

    .prologue
    .line 924
    packed-switch p1, :pswitch_data_0

    .line 952
    sget-object v0, Lcom/android/internal/widget/LockScreenStatusView;->sDataNetType_g:[I

    iput-object v0, p0, Lcom/android/internal/widget/LockScreenStatusView;->mDataIconList:[I

    .line 955
    :goto_0
    return-void

    .line 926
    :pswitch_0
    sget-object v0, Lcom/android/internal/widget/LockScreenStatusView;->sDataNetType_e:[I

    iput-object v0, p0, Lcom/android/internal/widget/LockScreenStatusView;->mDataIconList:[I

    goto :goto_0

    .line 929
    :pswitch_1
    sget-object v0, Lcom/android/internal/widget/LockScreenStatusView;->sDataNetType_3g:[I

    iput-object v0, p0, Lcom/android/internal/widget/LockScreenStatusView;->mDataIconList:[I

    goto :goto_0

    .line 934
    :pswitch_2
    iget-boolean v0, p0, Lcom/android/internal/widget/LockScreenStatusView;->mHspaDataDistinguishable:Z

    if-eqz v0, :cond_0

    .line 935
    sget-object v0, Lcom/android/internal/widget/LockScreenStatusView;->sDataNetType_h:[I

    iput-object v0, p0, Lcom/android/internal/widget/LockScreenStatusView;->mDataIconList:[I

    goto :goto_0

    .line 937
    :cond_0
    sget-object v0, Lcom/android/internal/widget/LockScreenStatusView;->sDataNetType_3g:[I

    iput-object v0, p0, Lcom/android/internal/widget/LockScreenStatusView;->mDataIconList:[I

    goto :goto_0

    .line 942
    :pswitch_3
    sget-object v0, Lcom/android/internal/widget/LockScreenStatusView;->sDataNetType_1x:[I

    iput-object v0, p0, Lcom/android/internal/widget/LockScreenStatusView;->mDataIconList:[I

    goto :goto_0

    .line 945
    :pswitch_4
    sget-object v0, Lcom/android/internal/widget/LockScreenStatusView;->sDataNetType_1x:[I

    iput-object v0, p0, Lcom/android/internal/widget/LockScreenStatusView;->mDataIconList:[I

    goto :goto_0

    .line 949
    :pswitch_5
    sget-object v0, Lcom/android/internal/widget/LockScreenStatusView;->sDataNetType_3g:[I

    iput-object v0, p0, Lcom/android/internal/widget/LockScreenStatusView;->mDataIconList:[I

    goto :goto_0

    .line 924
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method private final updateSignalStrength()V
    .locals 5

    .prologue
    const-string v4, "LockScreenStatusView"

    .line 462
    const/4 v0, -0x1

    .line 466
    .local v0, iconLevel:I
    invoke-direct {p0}, Lcom/android/internal/widget/LockScreenStatusView;->hasService()Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/android/internal/widget/LockScreenStatusView;->mServiceState:Landroid/telephony/ServiceState;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/internal/widget/LockScreenStatusView;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v2}, Landroid/telephony/ServiceState;->isEmergencyOnly()Z

    move-result v2

    if-nez v2, :cond_1

    .line 467
    const-string v2, "LockScreenStatusView"

    const-string/jumbo v2, "updateSignalStrength: no service"

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 468
    iget-object v2, p0, Lcom/android/internal/widget/LockScreenStatusView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "airplane_mode_on"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 470
    const v2, 0x1080324

    iput v2, p0, Lcom/android/internal/widget/LockScreenStatusView;->mPhoneIcon:I

    .line 474
    :goto_0
    iget v2, p0, Lcom/android/internal/widget/LockScreenStatusView;->mPhoneIcon:I

    const/4 v3, -0x1

    invoke-virtual {p0, v2, v3}, Lcom/android/internal/widget/LockScreenStatusView;->updateIcon(II)V

    .line 531
    :goto_1
    return-void

    .line 472
    :cond_0
    const v2, 0x1080325

    iput v2, p0, Lcom/android/internal/widget/LockScreenStatusView;->mPhoneIcon:I

    goto :goto_0

    .line 478
    :cond_1
    invoke-direct {p0}, Lcom/android/internal/widget/LockScreenStatusView;->isCdma()Z

    move-result v2

    if-nez v2, :cond_3

    .line 481
    iget-object v2, p0, Lcom/android/internal/widget/LockScreenStatusView;->mSignalStrength:Landroid/telephony/SignalStrength;

    invoke-virtual {v2}, Landroid/telephony/SignalStrength;->getGsmSignalBar()I

    move-result v0

    .line 511
    iget-object v2, p0, Lcom/android/internal/widget/LockScreenStatusView;->mPhone:Landroid/telephony/TelephonyManager;

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->isNetworkRoaming()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 512
    sget-object v1, Lcom/android/internal/widget/LockScreenStatusView;->sSignalImages_r:[I

    .line 529
    .local v1, iconList:[I
    :goto_2
    aget v2, v1, v0

    iput v2, p0, Lcom/android/internal/widget/LockScreenStatusView;->mPhoneIcon:I

    .line 530
    iget v2, p0, Lcom/android/internal/widget/LockScreenStatusView;->mPhoneIcon:I

    invoke-virtual {p0, v2, v0}, Lcom/android/internal/widget/LockScreenStatusView;->updateIcon(II)V

    goto :goto_1

    .line 514
    .end local v1           #iconList:[I
    :cond_2
    sget-object v1, Lcom/android/internal/widget/LockScreenStatusView;->sSignalImages:[I

    .restart local v1       #iconList:[I
    goto :goto_2

    .line 517
    .end local v1           #iconList:[I
    :cond_3
    sget-object v1, Lcom/android/internal/widget/LockScreenStatusView;->sSignalImages:[I

    .line 522
    .restart local v1       #iconList:[I
    iget v2, p0, Lcom/android/internal/widget/LockScreenStatusView;->mPhoneState:I

    if-nez v2, :cond_4

    invoke-direct {p0}, Lcom/android/internal/widget/LockScreenStatusView;->isEvdo()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 523
    invoke-direct {p0}, Lcom/android/internal/widget/LockScreenStatusView;->getEvdoLevel()I

    move-result v0

    .line 524
    const-string v2, "LockScreenStatusView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "use Evdo level="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " to replace Cdma Level="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0}, Lcom/android/internal/widget/LockScreenStatusView;->getCdmaLevel()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 526
    :cond_4
    invoke-direct {p0}, Lcom/android/internal/widget/LockScreenStatusView;->getCdmaLevel()I

    move-result v0

    goto :goto_2
.end method

.method private final updateSimState(Landroid/content/Intent;)V
    .locals 5
    .parameter "intent"

    .prologue
    .line 621
    const-string v2, "LockScreenStatusView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "updateSimState() : intent="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 622
    const-string/jumbo v2, "ss"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 623
    .local v1, stateExtra:Ljava/lang/String;
    const-string v2, "ABSENT"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 624
    sget-object v2, Lcom/android/internal/telephony/IccCard$State;->ABSENT:Lcom/android/internal/telephony/IccCard$State;

    iput-object v2, p0, Lcom/android/internal/widget/LockScreenStatusView;->mSimState:Lcom/android/internal/telephony/IccCard$State;

    .line 625
    invoke-virtual {p0}, Lcom/android/internal/widget/LockScreenStatusView;->unregisterPhoneListener()V

    .line 644
    :goto_0
    invoke-direct {p0}, Lcom/android/internal/widget/LockScreenStatusView;->updateDataIcon()V

    .line 645
    return-void

    .line 627
    :cond_0
    const-string v2, "READY"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 628
    sget-object v2, Lcom/android/internal/telephony/IccCard$State;->READY:Lcom/android/internal/telephony/IccCard$State;

    iput-object v2, p0, Lcom/android/internal/widget/LockScreenStatusView;->mSimState:Lcom/android/internal/telephony/IccCard$State;

    goto :goto_0

    .line 630
    :cond_1
    const-string v2, "LOCKED"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 631
    const-string/jumbo v2, "reason"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 632
    .local v0, lockedReason:Ljava/lang/String;
    const-string v2, "PIN"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 633
    sget-object v2, Lcom/android/internal/telephony/IccCard$State;->PIN_REQUIRED:Lcom/android/internal/telephony/IccCard$State;

    iput-object v2, p0, Lcom/android/internal/widget/LockScreenStatusView;->mSimState:Lcom/android/internal/telephony/IccCard$State;

    goto :goto_0

    .line 635
    :cond_2
    const-string v2, "PUK"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 636
    sget-object v2, Lcom/android/internal/telephony/IccCard$State;->PUK_REQUIRED:Lcom/android/internal/telephony/IccCard$State;

    iput-object v2, p0, Lcom/android/internal/widget/LockScreenStatusView;->mSimState:Lcom/android/internal/telephony/IccCard$State;

    goto :goto_0

    .line 639
    :cond_3
    sget-object v2, Lcom/android/internal/telephony/IccCard$State;->NETWORK_LOCKED:Lcom/android/internal/telephony/IccCard$State;

    iput-object v2, p0, Lcom/android/internal/widget/LockScreenStatusView;->mSimState:Lcom/android/internal/telephony/IccCard$State;

    goto :goto_0

    .line 642
    .end local v0           #lockedReason:Ljava/lang/String;
    :cond_4
    sget-object v2, Lcom/android/internal/telephony/IccCard$State;->UNKNOWN:Lcom/android/internal/telephony/IccCard$State;

    iput-object v2, p0, Lcom/android/internal/widget/LockScreenStatusView;->mSimState:Lcom/android/internal/telephony/IccCard$State;

    goto :goto_0
.end method


# virtual methods
.method protected getSuggestedMinimumWidth()I
    .locals 1

    .prologue
    .line 339
    const/4 v0, 0x0

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .prologue
    .line 324
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onAttachedToWindow()V

    .line 325
    const-string v0, "LockScreenStatusView"

    const-string/jumbo v1, "onAttachedToWindow"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 326
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/internal/widget/LockScreenStatusView;->setUpdates(Z)V

    .line 327
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 331
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onDetachedFromWindow()V

    .line 332
    const-string v0, "LockScreenStatusView"

    const-string/jumbo v1, "onDetachedFromWindow"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 333
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/internal/widget/LockScreenStatusView;->setUpdates(Z)V

    .line 334
    return-void
.end method

.method public onSimAbsent()V
    .locals 2

    .prologue
    .line 816
    const-string v0, "LockScreenStatusView"

    const-string/jumbo v1, "unregisterPhoneListener()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 817
    invoke-virtual {p0}, Lcom/android/internal/widget/LockScreenStatusView;->unregisterPhoneListener()V

    .line 818
    sget-object v0, Lcom/android/internal/telephony/IccCard$State;->ABSENT:Lcom/android/internal/telephony/IccCard$State;

    iput-object v0, p0, Lcom/android/internal/widget/LockScreenStatusView;->mSimState:Lcom/android/internal/telephony/IccCard$State;

    .line 819
    invoke-direct {p0}, Lcom/android/internal/widget/LockScreenStatusView;->updateDataIcon()V

    .line 820
    return-void
.end method

.method public unregisterPhoneListener()V
    .locals 3

    .prologue
    .line 824
    const-string v0, "LockScreenStatusView"

    const-string/jumbo v1, "unregisterPhoneListener()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 825
    iget-object v0, p0, Lcom/android/internal/widget/LockScreenStatusView;->tm:Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_0

    .line 826
    iget-object v0, p0, Lcom/android/internal/widget/LockScreenStatusView;->tm:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/android/internal/widget/LockScreenStatusView;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 827
    :cond_0
    return-void
.end method

.method public updateIcon(II)V
    .locals 1
    .parameter "iconId"
    .parameter "iconLevel"

    .prologue
    .line 571
    iget-object v0, p0, Lcom/android/internal/widget/LockScreenStatusView;->mSignalImage:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 572
    const/4 v0, -0x1

    if-eq p2, v0, :cond_0

    .line 573
    iget-object v0, p0, Lcom/android/internal/widget/LockScreenStatusView;->mSignalImage:Landroid/widget/ImageView;

    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setImageLevel(I)V

    .line 575
    :cond_0
    return-void
.end method
