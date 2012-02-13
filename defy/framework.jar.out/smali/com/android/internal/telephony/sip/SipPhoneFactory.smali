.class public Lcom/android/internal/telephony/sip/SipPhoneFactory;
.super Ljava/lang/Object;
.source "SipPhoneFactory.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static makePhone(Ljava/lang/String;Landroid/content/Context;Lcom/android/internal/telephony/PhoneNotifier;)Lcom/android/internal/telephony/sip/SipPhone;
    .locals 4
    .parameter "sipUri"
    .parameter "context"
    .parameter "phoneNotifier"

    .prologue
    :try_start_0
    new-instance v2, Landroid/net/sip/SipProfile$Builder;

    invoke-direct {v2, p0}, Landroid/net/sip/SipProfile$Builder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/net/sip/SipProfile$Builder;->build()Landroid/net/sip/SipProfile;

    move-result-object v1

    .local v1, profile:Landroid/net/sip/SipProfile;
    new-instance v2, Lcom/android/internal/telephony/sip/SipPhone;

    invoke-direct {v2, p1, p2, v1}, Lcom/android/internal/telephony/sip/SipPhone;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/PhoneNotifier;Landroid/net/sip/SipProfile;)V
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v1           #profile:Landroid/net/sip/SipProfile;
    :goto_0
    return-object v2

    :catch_0
    move-exception v2

    move-object v0, v2

    .local v0, e:Ljava/text/ParseException;
    const-string v2, "SipPhoneFactory"

    const-string v3, "makePhone"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v2, 0x0

    goto :goto_0
.end method
