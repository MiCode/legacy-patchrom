.class public Lcom/android/phone/SipUtil;
.super Ljava/lang/Object;
.source "SipUtil.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    return-void
.end method

.method public static createIncomingCallPendingIntent()Landroid/app/PendingIntent;
    .locals 4

    .prologue
    .line 29
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    .line 30
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/android/phone/SipBroadcastReceiver;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 31
    const-string v2, "com.android.phone.SIP_INCOMING_CALL"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 32
    const/4 v2, 0x0

    const/high16 v3, 0x800

    invoke-static {v0, v2, v1, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0
.end method
