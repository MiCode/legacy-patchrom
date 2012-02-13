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

    move-result-object v1

    .line 30
    .local v1, phoneContext:Landroid/content/Context;
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/android/phone/SipBroadcastReceiver;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 31
    .local v0, intent:Landroid/content/Intent;
    const-string v2, "com.android.phone.SIP_INCOMING_CALL"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 32
    const/4 v2, 0x0

    const/high16 v3, 0x800

    invoke-static {v1, v2, v0, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    return-object v2
.end method
