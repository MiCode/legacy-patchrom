.class Lcom/android/phone/sip/SipSettings$4;
.super Ljava/lang/Object;
.source "SipSettings.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/sip/SipSettings;->updateProfilesStatus()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/sip/SipSettings;


# direct methods
.method constructor <init>(Lcom/android/phone/sip/SipSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 260
    iput-object p1, p0, Lcom/android/phone/sip/SipSettings$4;->this$0:Lcom/android/phone/sip/SipSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 263
    :try_start_0
    iget-object v1, p0, Lcom/android/phone/sip/SipSettings$4;->this$0:Lcom/android/phone/sip/SipSettings;

    #calls: Lcom/android/phone/sip/SipSettings;->retrieveSipLists()V
    invoke-static {v1}, Lcom/android/phone/sip/SipSettings;->access$800(Lcom/android/phone/sip/SipSettings;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 267
    :goto_0
    return-void

    .line 264
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 265
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "SipSettings"

    const-string v2, "isRegistered"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
