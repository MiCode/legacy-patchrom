.class Lcom/android/phone/SipBroadcastReceiver$1;
.super Ljava/lang/Object;
.source "SipBroadcastReceiver.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/SipBroadcastReceiver;->registerAllProfiles()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/SipBroadcastReceiver;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/android/phone/SipBroadcastReceiver;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 111
    iput-object p1, p0, Lcom/android/phone/SipBroadcastReceiver$1;->this$0:Lcom/android/phone/SipBroadcastReceiver;

    iput-object p2, p0, Lcom/android/phone/SipBroadcastReceiver$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    .line 113
    iget-object v6, p0, Lcom/android/phone/SipBroadcastReceiver$1;->val$context:Landroid/content/Context;

    invoke-static {v6}, Landroid/net/sip/SipManager;->newInstance(Landroid/content/Context;)Landroid/net/sip/SipManager;

    move-result-object v4

    .line 114
    .local v4, sipManager:Landroid/net/sip/SipManager;
    new-instance v3, Lcom/android/phone/sip/SipProfileDb;

    iget-object v6, p0, Lcom/android/phone/SipBroadcastReceiver$1;->val$context:Landroid/content/Context;

    invoke-direct {v3, v6}, Lcom/android/phone/sip/SipProfileDb;-><init>(Landroid/content/Context;)V

    .line 115
    .local v3, profileDb:Lcom/android/phone/sip/SipProfileDb;
    invoke-virtual {v3}, Lcom/android/phone/sip/SipProfileDb;->retrieveSipProfileList()Ljava/util/List;

    move-result-object v5

    .line 117
    .local v5, sipProfileList:Ljava/util/List;,"Ljava/util/List<Landroid/net/sip/SipProfile;>;"
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/sip/SipProfile;

    .line 119
    .local v2, profile:Landroid/net/sip/SipProfile;
    :try_start_0
    invoke-virtual {v2}, Landroid/net/sip/SipProfile;->getAutoRegistration()Z

    move-result v6

    if-nez v6, :cond_1

    invoke-virtual {v2}, Landroid/net/sip/SipProfile;->getUriString()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/android/phone/SipBroadcastReceiver$1;->this$0:Lcom/android/phone/SipBroadcastReceiver;

    #getter for: Lcom/android/phone/SipBroadcastReceiver;->mSipSharedPreferences:Lcom/android/phone/sip/SipSharedPreferences;
    invoke-static {v7}, Lcom/android/phone/SipBroadcastReceiver;->access$000(Lcom/android/phone/SipBroadcastReceiver;)Lcom/android/phone/sip/SipSharedPreferences;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/phone/sip/SipSharedPreferences;->getPrimaryAccount()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 124
    :cond_1
    invoke-static {}, Lcom/android/phone/SipUtil;->createIncomingCallPendingIntent()Landroid/app/PendingIntent;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v4, v2, v6, v7}, Landroid/net/sip/SipManager;->open(Landroid/net/sip/SipProfile;Landroid/app/PendingIntent;Landroid/net/sip/SipRegistrationListener;)V
    :try_end_0
    .catch Landroid/net/sip/SipException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 127
    :catch_0
    move-exception v6

    move-object v0, v6

    .line 128
    .local v0, e:Landroid/net/sip/SipException;
    invoke-static {}, Lcom/android/phone/SipBroadcastReceiver;->access$100()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "failed"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v2}, Landroid/net/sip/SipProfile;->getProfileName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 131
    .end local v0           #e:Landroid/net/sip/SipException;
    .end local v2           #profile:Landroid/net/sip/SipProfile;
    :cond_2
    return-void
.end method
