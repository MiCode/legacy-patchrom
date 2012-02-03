.class public Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
.super Ljava/lang/Object;
.source "SMSDispatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/SMSDispatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "SmsTracker"
.end annotation


# instance fields
.field public mData:Ljava/util/HashMap;

.field public mDeliveryIntent:Landroid/app/PendingIntent;

.field public mMessageRef:I

.field public mRetryCount:I

.field public mSentIntent:Landroid/app/PendingIntent;


# direct methods
.method constructor <init>(Ljava/util/HashMap;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)V
    .locals 1
    .parameter "data"
    .parameter "sentIntent"
    .parameter "deliveryIntent"

    .prologue
    .line 2341
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2342
    iput-object p1, p0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mData:Ljava/util/HashMap;

    .line 2343
    iput-object p2, p0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mSentIntent:Landroid/app/PendingIntent;

    .line 2344
    iput-object p3, p0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mDeliveryIntent:Landroid/app/PendingIntent;

    .line 2345
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mRetryCount:I

    .line 2346
    return-void
.end method
