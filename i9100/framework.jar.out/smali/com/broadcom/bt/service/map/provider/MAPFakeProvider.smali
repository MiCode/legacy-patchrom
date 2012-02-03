.class public Lcom/broadcom/bt/service/map/provider/MAPFakeProvider;
.super Lcom/broadcom/bt/service/map/provider/BaseProvider;
.source "MAPFakeProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/broadcom/bt/service/map/provider/MAPFakeProvider$1;,
        Lcom/broadcom/bt/service/map/provider/MAPFakeProvider$EventBroadcastReceiver;
    }
.end annotation


# static fields
.field private static final ACTION_SMS_RECEIVED:Ljava/lang/String; = "android.provider.Telephony.SMS_RECEIVED"

.field private static final DS_SMS_DISPLAY_NAME_ID:I = 0x0

.field private static final DS_SMS_FOLDER_MAP:[Ljava/lang/String; = null

.field private static final DS_SMS_ID:Ljava/lang/String; = "sms"

.field private static final PROVIDER_DISPLAY_NAME_ID:I = 0x0

.field private static final PROVIDER_ID:Ljava/lang/String; = "com.broadcom.bt"

.field private static final SMS_PERMISSION:Ljava/lang/String; = "android.permission.RECEIVE_SMS"

.field private static final TAG:Ljava/lang/String; = "MapFakeProvider"


# instance fields
.field mHelper:Lcom/broadcom/bt/service/map/provider/ProviderHelper;

.field private mReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 40
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    sput-object v0, Lcom/broadcom/bt/service/map/provider/MAPFakeProvider;->DS_SMS_FOLDER_MAP:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/broadcom/bt/service/map/provider/BaseProvider;-><init>()V

    .line 47
    return-void
.end method

.method static synthetic access$000(Lcom/broadcom/bt/service/map/provider/MAPFakeProvider;Landroid/content/Intent;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 34
    invoke-direct {p0, p1}, Lcom/broadcom/bt/service/map/provider/MAPFakeProvider;->onSMSReceived(Landroid/content/Intent;)V

    return-void
.end method

.method private onSMSReceived(Landroid/content/Intent;)V
    .locals 11
    .parameter "intent"

    .prologue
    .line 134
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 135
    .local v1, bundle:Landroid/os/Bundle;
    const-string/jumbo v8, "pdus"

    invoke-virtual {p1, v8}, Landroid/content/Intent;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Ljava/lang/Object;

    move-object v0, v8

    check-cast v0, [Ljava/lang/Object;

    move-object v4, v0

    .line 136
    .local v4, messages:[Ljava/lang/Object;
    array-length v8, v4

    new-array v6, v8, [Landroid/telephony/SmsMessage;

    .line 137
    .local v6, smsMessage:[Landroid/telephony/SmsMessage;
    const/4 v5, 0x0

    .local v5, n:I
    :goto_0
    array-length v8, v4

    if-ge v5, v8, :cond_0

    .line 138
    aget-object v8, v4, v5

    check-cast v8, [B

    check-cast v8, [B

    invoke-static {v8}, Landroid/telephony/SmsMessage;->createFromPdu([B)Landroid/telephony/SmsMessage;

    move-result-object v8

    aput-object v8, v6, v5

    .line 137
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 142
    :cond_0
    iget-object v8, p0, Lcom/broadcom/bt/service/map/provider/BaseProvider;->mContext:Landroid/content/Context;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Received SMS: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const/4 v10, 0x0

    aget-object v10, v6, v10

    invoke-virtual {v10}, Landroid/telephony/SmsMessage;->getMessageBody()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x1

    invoke-static {v8, v9, v10}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v7

    .line 145
    .local v7, toast:Landroid/widget/Toast;
    const/4 v3, 0x0

    .line 146
    .local v3, messageId:Ljava/lang/String;
    const/4 v2, 0x0

    .line 147
    .local v2, folderPath:Ljava/lang/String;
    iget-object v8, p0, Lcom/broadcom/bt/service/map/provider/MAPFakeProvider;->mHelper:Lcom/broadcom/bt/service/map/provider/ProviderHelper;

    const-string/jumbo v9, "sms"

    invoke-virtual {v8, v9, v3, v2}, Lcom/broadcom/bt/service/map/provider/ProviderHelper;->sendNotification_MessageDelivered(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    return-void
.end method


# virtual methods
.method protected disableNotifications(Ljava/lang/String;)Z
    .locals 2
    .parameter "datasourceId"

    .prologue
    .line 117
    const-string v0, "MapFakeProvider"

    const-string v1, "disableNotifications"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    iget-object v0, p0, Lcom/broadcom/bt/service/map/provider/BaseProvider;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 119
    const/4 v0, 0x0

    .line 125
    :goto_0
    return v0

    .line 121
    :cond_0
    iget-object v0, p0, Lcom/broadcom/bt/service/map/provider/MAPFakeProvider;->mReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_1

    .line 122
    iget-object v0, p0, Lcom/broadcom/bt/service/map/provider/BaseProvider;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/broadcom/bt/service/map/provider/MAPFakeProvider;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 123
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/broadcom/bt/service/map/provider/MAPFakeProvider;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 125
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected enableNotifications(Ljava/lang/String;)Z
    .locals 6
    .parameter "datasourceId"

    .prologue
    .line 103
    const-string v2, "MapFakeProvider"

    const-string v3, "enableNotifications"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    iget-object v2, p0, Lcom/broadcom/bt/service/map/provider/BaseProvider;->mContext:Landroid/content/Context;

    if-nez v2, :cond_0

    .line 105
    const/4 v2, 0x0

    .line 112
    :goto_0
    return v2

    .line 107
    :cond_0
    new-instance v2, Lcom/broadcom/bt/service/map/provider/MAPFakeProvider$EventBroadcastReceiver;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/broadcom/bt/service/map/provider/MAPFakeProvider$EventBroadcastReceiver;-><init>(Lcom/broadcom/bt/service/map/provider/MAPFakeProvider;Lcom/broadcom/bt/service/map/provider/MAPFakeProvider$1;)V

    iput-object v2, p0, Lcom/broadcom/bt/service/map/provider/MAPFakeProvider;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 108
    invoke-virtual {p0}, Lcom/broadcom/bt/service/map/provider/MAPFakeProvider;->getEventCallbackHandler()Lcom/broadcom/bt/service/map/provider/EventCallbackHandler;

    move-result-object v1

    .line 109
    .local v1, handler:Lcom/broadcom/bt/service/map/provider/EventCallbackHandler;
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 110
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v2, "android.provider.Telephony.SMS_RECEIVED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 111
    iget-object v2, p0, Lcom/broadcom/bt/service/map/provider/BaseProvider;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/broadcom/bt/service/map/provider/MAPFakeProvider;->mReceiver:Landroid/content/BroadcastReceiver;

    const-string v4, "android.permission.RECEIVE_SMS"

    iget-object v5, v1, Lcom/broadcom/bt/service/map/provider/EventCallbackHandler;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v3, v0, v4, v5}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 112
    const/4 v2, 0x1

    goto :goto_0
.end method

.method protected getProviderId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 63
    const-string v0, "com.broadcom.bt"

    return-object v0
.end method

.method protected onClientConnected(Ljava/lang/String;)V
    .locals 3
    .parameter "deviceName"

    .prologue
    .line 152
    const-string v0, "MapFakeProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onClientConnected "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    return-void
.end method

.method protected onClientDisconnected()V
    .locals 2

    .prologue
    .line 161
    const-string v0, "MapFakeProvider"

    const-string/jumbo v1, "onClientDisconnected"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    return-void
.end method

.method protected onGetFolderListing(ILjava/lang/String;Ljava/lang/String;II)V
    .locals 9
    .parameter "request_id"
    .parameter "datasourceId"
    .parameter "folderPath"
    .parameter "maxEntries"
    .parameter "offset"

    .prologue
    .line 167
    const-string v0, "MapFakeProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onGetFolderListing "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    const/4 v0, 0x4

    new-array v7, v0, [Lcom/broadcom/bt/service/map/FolderInfo;

    .line 169
    .local v7, folderInfo:[Lcom/broadcom/bt/service/map/FolderInfo;
    const/4 v8, 0x0

    new-instance v0, Lcom/broadcom/bt/service/map/FolderInfo;

    const-string v1, "inbox"

    const-wide/16 v2, 0xc8

    const-string v4, "20100101T010203Z"

    const-wide/16 v5, 0x1

    invoke-direct/range {v0 .. v6}, Lcom/broadcom/bt/service/map/FolderInfo;-><init>(Ljava/lang/String;JLjava/lang/String;J)V

    aput-object v0, v7, v8

    .line 171
    const/4 v8, 0x1

    new-instance v0, Lcom/broadcom/bt/service/map/FolderInfo;

    const-string/jumbo v1, "outbox"

    const-wide/16 v2, 0xc9

    const-string v4, "20100202T030405Z"

    const-wide/16 v5, 0x0

    invoke-direct/range {v0 .. v6}, Lcom/broadcom/bt/service/map/FolderInfo;-><init>(Ljava/lang/String;JLjava/lang/String;J)V

    aput-object v0, v7, v8

    .line 173
    const/4 v8, 0x2

    new-instance v0, Lcom/broadcom/bt/service/map/FolderInfo;

    const-string/jumbo v1, "sent"

    const-wide/16 v2, 0x14

    const-string v4, "20100303T040506Z"

    const-wide/16 v5, 0x0

    invoke-direct/range {v0 .. v6}, Lcom/broadcom/bt/service/map/FolderInfo;-><init>(Ljava/lang/String;JLjava/lang/String;J)V

    aput-object v0, v7, v8

    .line 175
    const/4 v8, 0x3

    new-instance v0, Lcom/broadcom/bt/service/map/FolderInfo;

    const-string v1, "deleted"

    const-wide/16 v2, 0x2

    const-string v4, "20100404T050607Z"

    const-wide/16 v5, 0x0

    invoke-direct/range {v0 .. v6}, Lcom/broadcom/bt/service/map/FolderInfo;-><init>(Ljava/lang/String;JLjava/lang/String;J)V

    aput-object v0, v7, v8

    .line 178
    const-string v0, "/"

    if-ne p3, v0, :cond_0

    .line 179
    iget-object v0, p0, Lcom/broadcom/bt/service/map/provider/MAPFakeProvider;->mHelper:Lcom/broadcom/bt/service/map/provider/ProviderHelper;

    invoke-virtual {p0}, Lcom/broadcom/bt/service/map/provider/MAPFakeProvider;->getProviderId()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "sms"

    const/4 v5, 0x0

    move v1, p1

    move-object v4, p3

    move-object v6, v7

    invoke-virtual/range {v0 .. v6}, Lcom/broadcom/bt/service/map/provider/ProviderHelper;->sendFolderInfo(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;B[Lcom/broadcom/bt/service/map/FolderInfo;)Z

    .line 187
    :goto_0
    return-void

    .line 183
    :cond_0
    iget-object v0, p0, Lcom/broadcom/bt/service/map/provider/MAPFakeProvider;->mHelper:Lcom/broadcom/bt/service/map/provider/ProviderHelper;

    invoke-virtual {p0}, Lcom/broadcom/bt/service/map/provider/MAPFakeProvider;->getProviderId()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "sms"

    const/4 v5, 0x1

    move v1, p1

    move-object v4, p3

    move-object v6, v7

    invoke-virtual/range {v0 .. v6}, Lcom/broadcom/bt/service/map/provider/ProviderHelper;->sendFolderInfo(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;B[Lcom/broadcom/bt/service/map/FolderInfo;)Z

    goto :goto_0
.end method

.method protected onGetMsg(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;BB)V
    .locals 13
    .parameter "requestId"
    .parameter "datasourceId"
    .parameter "folderPath"
    .parameter "virtualFolderPath"
    .parameter "messageId"
    .parameter "charSet"
    .parameter "includeAttachment"

    .prologue
    .line 194
    const-string v2, "MapFakeProvider"

    const-string/jumbo v3, "onGetMsg"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    const-string v12, "BEGIN:BMSG \n"

    .line 196
    .local v12, sMsg:Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "VERSION:1.0 \n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 197
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "STATUS:UNREAD \n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 198
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "TYPE:SMS_GSM \n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 199
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "FOLDER:TELECOM\\MSG\\INBOX \n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 200
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "BEGIN:VCARD \n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 201
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "VERSION:2.1 \n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 202
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "Mickey Mouse \n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 203
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "TEL:+1-800-GO-DISNEY \n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 204
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "END:VCARD \n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 205
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "BEGIN:Minne Mouse \n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 206
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "BEGIN:VCARD \n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 207
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "VERSION:2.1 \n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 208
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "N:Minne \n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 209
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "TEL:+1-800-YESDISNEY \n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 210
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "END:VCARD \n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 211
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "BEGIN:BBODY \n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 212
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "CHARSET:UTF-8 \n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 213
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "LENGTH:10 \n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 214
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "BEGIN:MSG \n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 215
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "hellohello \n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 216
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "END:MSG \n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 217
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "END:BBODY \n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 218
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "END:BENV \n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 219
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "END:BMSGDY \n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 220
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "END:BENV \n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 221
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "END:BMSG"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 223
    const/4 v9, 0x0

    .line 224
    .local v9, bmsgFile:Ljava/io/BufferedWriter;
    const/4 v7, 0x0

    .line 225
    .local v7, status:B
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "/data/bmsg"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object v0, v2

    move-object/from16 v1, p5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".msg"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 227
    .local v8, sFileName:Ljava/lang/String;
    :try_start_0
    new-instance v10, Ljava/io/BufferedWriter;

    new-instance v2, Ljava/io/FileWriter;

    invoke-direct {v2, v8}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;)V

    invoke-direct {v10, v2}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 229
    .end local v9           #bmsgFile:Ljava/io/BufferedWriter;
    .local v10, bmsgFile:Ljava/io/BufferedWriter;
    const/4 v2, 0x0

    :try_start_1
    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v10, v12, v2, v3}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;II)V

    .line 230
    invoke-virtual {v10}, Ljava/io/BufferedWriter;->flush()V

    .line 231
    invoke-virtual {v10}, Ljava/io/BufferedWriter;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-object v9, v10

    .line 237
    .end local v10           #bmsgFile:Ljava/io/BufferedWriter;
    .restart local v9       #bmsgFile:Ljava/io/BufferedWriter;
    :goto_0
    iget-object v2, p0, Lcom/broadcom/bt/service/map/provider/MAPFakeProvider;->mHelper:Lcom/broadcom/bt/service/map/provider/ProviderHelper;

    invoke-virtual {p0}, Lcom/broadcom/bt/service/map/provider/MAPFakeProvider;->getProviderId()Ljava/lang/String;

    move-result-object v4

    move v3, p1

    move-object v5, p2

    move-object/from16 v6, p5

    invoke-virtual/range {v2 .. v8}, Lcom/broadcom/bt/service/map/provider/ProviderHelper;->sendMsg(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;BLjava/lang/String;)Z

    .line 239
    return-void

    .line 232
    :catch_0
    move-exception v2

    move-object v11, v2

    .line 233
    .local v11, e:Ljava/lang/Exception;
    :goto_1
    const/4 v7, 0x3

    .line 235
    const-string v2, "MapFakeProvider"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error writing bmsg file"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v11}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 232
    .end local v9           #bmsgFile:Ljava/io/BufferedWriter;
    .end local v11           #e:Ljava/lang/Exception;
    .restart local v10       #bmsgFile:Ljava/io/BufferedWriter;
    :catch_1
    move-exception v2

    move-object v11, v2

    move-object v9, v10

    .end local v10           #bmsgFile:Ljava/io/BufferedWriter;
    .restart local v9       #bmsgFile:Ljava/io/BufferedWriter;
    goto :goto_1
.end method

.method protected onGetMsgListing(Ljava/lang/String;ILjava/lang/String;IIIBBLjava/lang/String;Ljava/lang/String;BLjava/lang/String;Ljava/lang/String;B)V
    .locals 22
    .parameter "datasourceId"
    .parameter "requestId"
    .parameter "folderPath"
    .parameter "parameterMask"
    .parameter "maxListCnt"
    .parameter "listStartOffset"
    .parameter "subjectLength"
    .parameter "msgMask"
    .parameter "periodBegin"
    .parameter "periodEnd"
    .parameter "readStatus"
    .parameter "recipient"
    .parameter "originator"
    .parameter "pri_status"

    .prologue
    .line 246
    const-string v1, "MapFakeProvider"

    const-string/jumbo v2, "onGetMsgListing"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    const/4 v1, 0x1

    move v0, v1

    new-array v0, v0, [Lcom/broadcom/bt/service/map/MessageInfo;

    move-object/from16 v20, v0

    .line 249
    .local v20, msgInfo:[Lcom/broadcom/bt/service/map/MessageInfo;
    const/16 v2, 0x10d7

    .line 254
    .local v2, parameter_mask:I
    const/16 v21, 0x0

    new-instance v1, Lcom/broadcom/bt/service/map/MessageInfo;

    const/16 v3, 0xa

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    const-string v10, "1"

    const/4 v11, 0x2

    const/4 v12, 0x0

    const-string v13, "Vivek Test Message"

    const-string v14, "20100101T010203Z"

    const-string v15, "Mickey Mouse"

    const-string v16, "1800GODISNEY"

    const-string v17, "Minne Mouse"

    const-string v18, "1800YESDISNEY"

    const-string v19, "1800replyDISNEY"

    invoke-direct/range {v1 .. v19}, Lcom/broadcom/bt/service/map/MessageInfo;-><init>(IIIZZZZZLjava/lang/String;BBLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v1, v20, v21

    .line 259
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/broadcom/bt/service/map/provider/MAPFakeProvider;->mHelper:Lcom/broadcom/bt/service/map/provider/ProviderHelper;

    move-object v3, v0

    invoke-virtual/range {p0 .. p0}, Lcom/broadcom/bt/service/map/provider/MAPFakeProvider;->getProviderId()Ljava/lang/String;

    move-result-object v5

    const/4 v8, 0x0

    const-string v9, "20100101T010203Z"

    const/4 v10, 0x0

    move/from16 v4, p2

    move-object/from16 v6, p1

    move-object/from16 v7, p3

    move-object/from16 v11, v20

    invoke-virtual/range {v3 .. v11}, Lcom/broadcom/bt/service/map/provider/ProviderHelper;->sendMsgListInfo(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;BLjava/lang/String;B[Lcom/broadcom/bt/service/map/MessageInfo;)Z

    .line 261
    return-void
.end method

.method public onMCERegisterForNotification(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "requestId"
    .parameter "providerId"
    .parameter "datasourceId"
    .parameter "notificationMode"

    .prologue
    .line 280
    return-void
.end method

.method protected onPushMsg(ILjava/lang/String;BBBLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .parameter "request_id"
    .parameter "data_source_id"
    .parameter "msg_transparent"
    .parameter "msg_retry"
    .parameter "msg_charset"
    .parameter "folderPath"
    .parameter "virtualFolderPath"
    .parameter "msg_content_uri"

    .prologue
    .line 266
    const-string v0, "MapFakeProvider"

    const-string/jumbo v1, "onPushMsg"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 268
    iget-object v0, p0, Lcom/broadcom/bt/service/map/provider/MAPFakeProvider;->mHelper:Lcom/broadcom/bt/service/map/provider/ProviderHelper;

    invoke-virtual {p0}, Lcom/broadcom/bt/service/map/provider/MAPFakeProvider;->getProviderId()Ljava/lang/String;

    move-result-object v2

    const-string v4, "2"

    const/4 v5, 0x0

    move v1, p1

    move-object v3, p2

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/broadcom/bt/service/map/provider/ProviderHelper;->sendPushResponse(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;BLjava/lang/String;)Z

    .line 271
    return-void
.end method

.method protected onSetMessageDeletedStatus(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;B)V
    .locals 8
    .parameter "requestId"
    .parameter "datasourceId"
    .parameter "folderPath"
    .parameter "messageId"
    .parameter "deletedStatus"

    .prologue
    .line 286
    iget-object v0, p0, Lcom/broadcom/bt/service/map/provider/MAPFakeProvider;->mHelper:Lcom/broadcom/bt/service/map/provider/ProviderHelper;

    invoke-virtual {p0}, Lcom/broadcom/bt/service/map/provider/MAPFakeProvider;->getProviderId()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x2

    const/4 v5, 0x0

    move v1, p1

    move-object v3, p2

    move-object v6, p4

    move-object v7, p3

    invoke-virtual/range {v0 .. v7}, Lcom/broadcom/bt/service/map/provider/ProviderHelper;->sendMsgStatusResponse(ILjava/lang/String;Ljava/lang/String;BBLjava/lang/String;Ljava/lang/String;)Z

    .line 289
    return-void
.end method

.method protected onSetMessageReadStatus(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;B)V
    .locals 8
    .parameter "requestId"
    .parameter "datasourceId"
    .parameter "folderPath"
    .parameter "messageId"
    .parameter "readStatus"

    .prologue
    .line 295
    iget-object v0, p0, Lcom/broadcom/bt/service/map/provider/MAPFakeProvider;->mHelper:Lcom/broadcom/bt/service/map/provider/ProviderHelper;

    invoke-virtual {p0}, Lcom/broadcom/bt/service/map/provider/MAPFakeProvider;->getProviderId()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x1

    const/4 v5, 0x0

    move v1, p1

    move-object v3, p2

    move-object v6, p4

    move-object v7, p3

    invoke-virtual/range {v0 .. v7}, Lcom/broadcom/bt/service/map/provider/ProviderHelper;->sendMsgStatusResponse(ILjava/lang/String;Ljava/lang/String;BBLjava/lang/String;Ljava/lang/String;)Z

    .line 298
    return-void
.end method

.method protected onStarted()V
    .locals 1

    .prologue
    .line 85
    invoke-super {p0}, Lcom/broadcom/bt/service/map/provider/BaseProvider;->onStarted()V

    .line 86
    new-instance v0, Lcom/broadcom/bt/service/map/provider/ProviderHelper;

    invoke-direct {v0, p0}, Lcom/broadcom/bt/service/map/provider/ProviderHelper;-><init>(Lcom/broadcom/bt/service/map/provider/BaseProvider;)V

    iput-object v0, p0, Lcom/broadcom/bt/service/map/provider/MAPFakeProvider;->mHelper:Lcom/broadcom/bt/service/map/provider/ProviderHelper;

    .line 87
    return-void
.end method

.method protected onUpdateInbox(Ljava/lang/String;)V
    .locals 3
    .parameter "datasourceId"

    .prologue
    .line 275
    const-string v0, "MapFakeProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onUpdateInbox "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 276
    return-void
.end method

.method protected registerDatasources()V
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 68
    const-string v0, "MapFakeProvider"

    const-string/jumbo v1, "registerDatasources"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    const/4 v1, 0x2

    const-string/jumbo v3, "sms"

    sget-object v7, Lcom/broadcom/bt/service/map/provider/MAPFakeProvider;->DS_SMS_FOLDER_MAP:[Ljava/lang/String;

    move-object v0, p0

    move v4, v2

    move v5, v2

    move v6, v2

    invoke-virtual/range {v0 .. v7}, Lcom/broadcom/bt/service/map/provider/MAPFakeProvider;->registerDS(IILjava/lang/String;IZZ[Ljava/lang/String;)Z

    .line 71
    invoke-virtual {p0}, Lcom/broadcom/bt/service/map/provider/MAPFakeProvider;->startMSEInstance()V

    .line 73
    return-void
.end method

.method protected startMSEInstance()V
    .locals 2

    .prologue
    .line 91
    const-string v0, "MapFakeProvider"

    const-string/jumbo v1, "startMSEInstance"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    invoke-virtual {p0}, Lcom/broadcom/bt/service/map/provider/MAPFakeProvider;->getProviderId()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "sms"

    invoke-virtual {p0, v0, v1}, Lcom/broadcom/bt/service/map/provider/MAPFakeProvider;->startMSE(Ljava/lang/String;Ljava/lang/String;)Z

    .line 93
    return-void
.end method

.method protected stopMSEInstance()V
    .locals 2

    .prologue
    .line 97
    const-string v0, "MapFakeProvider"

    const-string/jumbo v1, "startMSEInstance"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    invoke-virtual {p0}, Lcom/broadcom/bt/service/map/provider/MAPFakeProvider;->getProviderId()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "sms"

    invoke-virtual {p0, v0, v1}, Lcom/broadcom/bt/service/map/provider/MAPFakeProvider;->stopMSE(Ljava/lang/String;Ljava/lang/String;)Z

    .line 99
    return-void
.end method

.method protected unregisterDatasources()V
    .locals 2

    .prologue
    .line 77
    const-string v0, "MapFakeProvider"

    const-string/jumbo v1, "unregisterDatasources"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    const-string/jumbo v0, "sms"

    invoke-virtual {p0, v0}, Lcom/broadcom/bt/service/map/provider/MAPFakeProvider;->unregisterDS(Ljava/lang/String;)Z

    .line 79
    invoke-virtual {p0}, Lcom/broadcom/bt/service/map/provider/MAPFakeProvider;->stopMSEInstance()V

    .line 80
    return-void
.end method
