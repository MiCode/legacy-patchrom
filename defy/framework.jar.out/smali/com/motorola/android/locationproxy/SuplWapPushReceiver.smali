.class public Lcom/motorola/android/locationproxy/SuplWapPushReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SuplWapPushReceiver.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "LocationProxyService"

.field private static final WAPPUSH_APPID:Ljava/lang/String; = "x-oma-application:ulp.ua"

.field private static final WAPPUSH_CONTENTTYPE:Ljava/lang/String; = "application/vnd.omaloc-supl-init"

.field private static final WAPPUSH_INT_APPID:I = 0x10

.field private static final WAPPUSH_INT_CONTENTTYPE:I = 0x312

.field private static final WAP_PDU_TYPE_PUSH:I = 0x6

.field private static final WAP_PUSH_RECEIVED_ACTION:Ljava/lang/String; = "android.provider.Telephony.WAP_PUSH_RECEIVED"

.field private static final WSP_PDU_APP_ID_TAG:I = 0x2f


# instance fields
.field private appIDHex:B

.field private appIDStr:Ljava/lang/String;

.field private contentTypeHex:I

.field private contentTypeStr:Ljava/lang/String;

.field private headerLength:I

.field private mShimProxy:Lcom/motorola/android/locationproxy/ISuplCommands;

.field private tag:B

.field private tid:B

.field private type:B


# direct methods
.method public constructor <init>(Lcom/motorola/android/locationproxy/ISuplCommands;)V
    .locals 1
    .parameter "shimProxy"

    .prologue
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/motorola/android/locationproxy/SuplWapPushReceiver;->mShimProxy:Lcom/motorola/android/locationproxy/ISuplCommands;

    iput-object p1, p0, Lcom/motorola/android/locationproxy/SuplWapPushReceiver;->mShimProxy:Lcom/motorola/android/locationproxy/ISuplCommands;

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .parameter "context"
    .parameter "intent"

    .prologue
    const-string v6, "null"

    const-string v5, "LocationProxyService"

    const-string v3, "LocationProxyService"

    const-string v3, "WAP PUSH Received."

    invoke-static {v5, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    const-string v4, "android.provider.Telephony.WAP_PUSH_RECEIVED"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v2

    .local v2, mimeType:Ljava/lang/String;
    const-string v3, "LocationProxyService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mimeType="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_2

    const-string v3, "null"

    move-object v3, v6

    :goto_1
    invoke-static {v5, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v2, :cond_1

    const-string v3, "application/vnd.omaloc-supl-init"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    const-string v3, "0x312"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    :cond_1
    const-string v3, "LocationProxyService"

    const-string v3, "Wrong MIME type."

    invoke-static {v5, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    move-object v3, v2

    goto :goto_1

    :cond_3
    const-string v3, "appId"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .local v0, appId:Ljava/lang/String;
    const-string v3, "LocationProxyService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "appId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_5

    const-string v3, "null"

    move-object v3, v6

    :goto_2
    invoke-static {v5, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_4

    const-string v3, "x-oma-application:ulp.ua"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    :cond_4
    const-string v3, "LocationProxyService"

    const-string v3, "Wrong APPID."

    invoke-static {v5, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_5
    move-object v3, v0

    goto :goto_2

    :cond_6
    const-string v3, "data"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v1

    .local v1, data:[B
    iget-object v3, p0, Lcom/motorola/android/locationproxy/SuplWapPushReceiver;->mShimProxy:Lcom/motorola/android/locationproxy/ISuplCommands;

    invoke-interface {v3, v1}, Lcom/motorola/android/locationproxy/ISuplCommands;->sendWapPushNotification([B)V

    goto/16 :goto_0
.end method
