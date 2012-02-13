.class Lcom/android/phone/CallNotifier$4;
.super Ljava/lang/Thread;
.source "CallNotifier.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/CallNotifier;->onDisconnect(Landroid/os/AsyncResult;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/CallNotifier;

.field final synthetic val$callLogType:I

.field final synthetic val$ci:Lcom/android/internal/telephony/CallerInfo;

.field final synthetic val$date:J

.field final synthetic val$duration:J

.field final synthetic val$logNumber:Ljava/lang/String;

.field final synthetic val$number:Ljava/lang/String;

.field final synthetic val$presentation:I


# direct methods
.method constructor <init>(Lcom/android/phone/CallNotifier;Ljava/lang/String;Lcom/android/internal/telephony/CallerInfo;IIJJLjava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2082
    iput-object p1, p0, Lcom/android/phone/CallNotifier$4;->this$0:Lcom/android/phone/CallNotifier;

    iput-object p2, p0, Lcom/android/phone/CallNotifier$4;->val$logNumber:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/phone/CallNotifier$4;->val$ci:Lcom/android/internal/telephony/CallerInfo;

    iput p4, p0, Lcom/android/phone/CallNotifier$4;->val$presentation:I

    iput p5, p0, Lcom/android/phone/CallNotifier$4;->val$callLogType:I

    iput-wide p6, p0, Lcom/android/phone/CallNotifier$4;->val$date:J

    iput-wide p8, p0, Lcom/android/phone/CallNotifier$4;->val$duration:J

    iput-object p10, p0, Lcom/android/phone/CallNotifier$4;->val$number:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 25

    .prologue
    .line 2087
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallNotifier$4;->this$0:Lcom/android/phone/CallNotifier;

    move-object v4, v0

    #getter for: Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;
    invoke-static {v4}, Lcom/android/phone/CallNotifier;->access$1000(Lcom/android/phone/CallNotifier;)Lcom/android/phone/PhoneApp;

    move-result-object v4

    iget-object v4, v4, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "INTROAMCB_PREFIX"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallNotifier$4;->this$0:Lcom/android/phone/CallNotifier;

    move-object v6, v0

    #getter for: Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;
    invoke-static {v6}, Lcom/android/phone/CallNotifier;->access$1000(Lcom/android/phone/CallNotifier;)Lcom/android/phone/PhoneApp;

    move-result-object v6

    iget-object v6, v6, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v6}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    const/4 v6, 0x1

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v24

    .line 2088
    .local v24, shareddata:Landroid/content/SharedPreferences;
    const-string v4, "introamcb_prefix"

    const-string v5, ""

    move-object/from16 v0, v24

    move-object v1, v4

    move-object v2, v5

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    .line 2089
    .local v21, intlRoamCallbackPrefix:Ljava/lang/String;
    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_5

    .line 2090
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallNotifier$4;->val$logNumber:Ljava/lang/String;

    move-object v5, v0

    .line 2091
    .local v5, number_bk:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallNotifier$4;->val$ci:Lcom/android/internal/telephony/CallerInfo;

    move-object v3, v0

    .line 2092
    .local v3, ci_bk:Lcom/android/internal/telephony/CallerInfo;
    const/16 v20, 0x0

    .line 2095
    .local v20, hasIntlRoamCBPrefix:Z
    if-eqz v5, :cond_0

    move-object v0, v5

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 2096
    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    const/4 v7, 0x1

    sub-int/2addr v6, v7

    invoke-virtual {v5, v4, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 2097
    const/16 v20, 0x1

    .line 2100
    :cond_0
    if-eqz v3, :cond_3

    .line 2101
    iget-object v4, v3, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    if-eqz v4, :cond_1

    iget-object v4, v3, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    move-object v0, v4

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    if-eqz v5, :cond_1

    .line 2102
    iget-object v4, v3, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v7

    const/4 v8, 0x1

    sub-int/2addr v7, v8

    invoke-virtual {v4, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    .line 2103
    const/16 v20, 0x1

    .line 2105
    :cond_1
    iget-object v4, v3, Lcom/android/internal/telephony/CallerInfo;->contactRefUri:Landroid/net/Uri;

    if-eqz v4, :cond_2

    iget-object v4, v3, Lcom/android/internal/telephony/CallerInfo;->contactRefUri:Landroid/net/Uri;

    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 2106
    iget-object v4, v3, Lcom/android/internal/telephony/CallerInfo;->contactRefUri:Landroid/net/Uri;

    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->length()I

    move-result v6

    iget-object v7, v3, Lcom/android/internal/telephony/CallerInfo;->contactRefUri:Landroid/net/Uri;

    invoke-virtual {v7}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    const/4 v8, 0x1

    sub-int/2addr v7, v8

    invoke-virtual {v4, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    iput-object v4, v3, Lcom/android/internal/telephony/CallerInfo;->contactRefUri:Landroid/net/Uri;

    .line 2107
    const/16 v20, 0x1

    .line 2109
    :cond_2
    iget-object v4, v3, Lcom/android/internal/telephony/CallerInfo;->contactRingtoneUri:Landroid/net/Uri;

    if-eqz v4, :cond_3

    iget-object v4, v3, Lcom/android/internal/telephony/CallerInfo;->contactRingtoneUri:Landroid/net/Uri;

    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 2110
    iget-object v4, v3, Lcom/android/internal/telephony/CallerInfo;->contactRingtoneUri:Landroid/net/Uri;

    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->length()I

    move-result v6

    iget-object v7, v3, Lcom/android/internal/telephony/CallerInfo;->contactRingtoneUri:Landroid/net/Uri;

    invoke-virtual {v7}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    const/4 v8, 0x1

    sub-int/2addr v7, v8

    invoke-virtual {v4, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    iput-object v4, v3, Lcom/android/internal/telephony/CallerInfo;->contactRingtoneUri:Landroid/net/Uri;

    .line 2111
    const/16 v20, 0x1

    .line 2115
    :cond_3
    if-eqz v20, :cond_5

    .line 2116
    const-string v4, "CallNotifier"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "CallNotifier.onDisconnect> number = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2117
    if-eqz v3, :cond_4

    .line 2118
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallNotifier$4;->this$0:Lcom/android/phone/CallNotifier;

    move-object v4, v0

    #getter for: Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;
    invoke-static {v4}, Lcom/android/phone/CallNotifier;->access$1000(Lcom/android/phone/CallNotifier;)Lcom/android/phone/PhoneApp;

    move-result-object v4

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/phone/CallNotifier$4;->val$presentation:I

    move v6, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/phone/CallNotifier$4;->val$callLogType:I

    move v7, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/phone/CallNotifier$4;->val$date:J

    move-wide v8, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/phone/CallNotifier$4;->val$duration:J

    move-wide v10, v0

    long-to-int v10, v10

    div-int/lit16 v10, v10, 0x3e8

    const/4 v11, 0x1

    const/4 v12, 0x0

    iget-object v13, v3, Lcom/android/internal/telephony/CallerInfo;->cnapName:Ljava/lang/String;

    const/4 v14, 0x1

    move-object v15, v5

    invoke-static/range {v3 .. v15}, Lcom/motorola/blur/provider/contactsExtensions/BlurCallLogExtension$BlurCalls;->addCall(Lcom/android/internal/telephony/CallerInfo;Landroid/content/Context;Ljava/lang/String;IIJIZZLjava/lang/String;ZLjava/lang/String;)Landroid/net/Uri;

    .line 2121
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallNotifier$4;->this$0:Lcom/android/phone/CallNotifier;

    move-object v4, v0

    invoke-virtual {v4}, Lcom/android/phone/CallNotifier;->sendAddCallBroadcast()V

    .line 2187
    .end local v3           #ci_bk:Lcom/android/internal/telephony/CallerInfo;
    .end local v5           #number_bk:Ljava/lang/String;
    .end local v20           #hasIntlRoamCBPrefix:Z
    .end local v21           #intlRoamCallbackPrefix:Ljava/lang/String;
    .end local v24           #shareddata:Landroid/content/SharedPreferences;
    :goto_0
    return-void

    .line 2128
    .restart local v21       #intlRoamCallbackPrefix:Ljava/lang/String;
    .restart local v24       #shareddata:Landroid/content/SharedPreferences;
    :cond_5
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v23

    .line 2130
    .local v23, phoneapp:Lcom/android/phone/PhoneApp;
    sget-boolean v4, Lcom/android/phone/PhoneApp;->FTR_33076_IPCALL:Z

    if-eqz v4, :cond_c

    .line 2131
    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->ip_prefix:Ljava/lang/String;

    move-object/from16 v22, v0

    .line 2132
    .local v22, ip_prefix:Ljava/lang/String;
    const-string v5, ""

    .line 2133
    .restart local v5       #number_bk:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallNotifier$4;->val$ci:Lcom/android/internal/telephony/CallerInfo;

    move-object v3, v0

    .line 2135
    .restart local v3       #ci_bk:Lcom/android/internal/telephony/CallerInfo;
    const-string v4, "CallNotifier"

    new-instance v5, Ljava/lang/StringBuilder;

    .end local v5           #number_bk:Ljava/lang/String;
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "CallNotifier.onDisconnect> number = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallNotifier$4;->val$logNumber:Ljava/lang/String;

    move-object v6, v0

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " ip_prefix = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2137
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallNotifier$4;->val$logNumber:Ljava/lang/String;

    move-object v4, v0

    invoke-static {v4}, Lcom/android/phone/PhoneUtils;->RemoveHyphen(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 2140
    .restart local v5       #number_bk:Ljava/lang/String;
    if-eqz v5, :cond_6

    move-object v0, v5

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 2141
    const-string v4, ""

    move-object v0, v5

    move-object/from16 v1, v22

    move-object v2, v4

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 2143
    :cond_6
    if-nez v5, :cond_7

    .line 2144
    const-string v4, "CallNotifier"

    const-string v5, "number_bk is null"

    .end local v5           #number_bk:Ljava/lang/String;
    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2183
    .end local v3           #ci_bk:Lcom/android/internal/telephony/CallerInfo;
    .end local v21           #intlRoamCallbackPrefix:Ljava/lang/String;
    .end local v22           #ip_prefix:Ljava/lang/String;
    .end local v23           #phoneapp:Lcom/android/phone/PhoneApp;
    .end local v24           #shareddata:Landroid/content/SharedPreferences;
    :catch_0
    move-exception v4

    move-object/from16 v19, v4

    .line 2184
    .local v19, e:Ljava/lang/Exception;
    const-string v4, "CallNotifier"

    invoke-static/range {v19 .. v19}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2147
    .end local v19           #e:Ljava/lang/Exception;
    .restart local v3       #ci_bk:Lcom/android/internal/telephony/CallerInfo;
    .restart local v5       #number_bk:Ljava/lang/String;
    .restart local v21       #intlRoamCallbackPrefix:Ljava/lang/String;
    .restart local v22       #ip_prefix:Ljava/lang/String;
    .restart local v23       #phoneapp:Lcom/android/phone/PhoneApp;
    .restart local v24       #shareddata:Landroid/content/SharedPreferences;
    :cond_7
    :try_start_1
    invoke-static {v5}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 2149
    if-nez v3, :cond_8

    .line 2150
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallNotifier$4;->this$0:Lcom/android/phone/CallNotifier;

    move-object v4, v0

    #getter for: Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;
    invoke-static {v4}, Lcom/android/phone/CallNotifier;->access$1000(Lcom/android/phone/CallNotifier;)Lcom/android/phone/PhoneApp;

    move-result-object v4

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/phone/CallNotifier$4;->val$presentation:I

    move v6, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/phone/CallNotifier$4;->val$callLogType:I

    move v7, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/phone/CallNotifier$4;->val$date:J

    move-wide v8, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/phone/CallNotifier$4;->val$duration:J

    move-wide v10, v0

    long-to-int v10, v10

    div-int/lit16 v10, v10, 0x3e8

    const/4 v11, 0x1

    const/4 v12, 0x0

    iget-object v13, v3, Lcom/android/internal/telephony/CallerInfo;->cnapName:Ljava/lang/String;

    const/4 v14, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallNotifier$4;->val$number:Ljava/lang/String;

    move-object v15, v0

    invoke-static/range {v3 .. v15}, Lcom/motorola/blur/provider/contactsExtensions/BlurCallLogExtension$BlurCalls;->addCall(Lcom/android/internal/telephony/CallerInfo;Landroid/content/Context;Ljava/lang/String;IIJIZZLjava/lang/String;ZLjava/lang/String;)Landroid/net/Uri;

    .line 2153
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallNotifier$4;->this$0:Lcom/android/phone/CallNotifier;

    move-object v4, v0

    invoke-virtual {v4}, Lcom/android/phone/CallNotifier;->sendAddCallBroadcast()V

    goto/16 :goto_0

    .line 2157
    :cond_8
    iget-object v4, v3, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    if-eqz v4, :cond_9

    iget-object v4, v3, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    move-object v0, v4

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 2158
    iget-object v4, v3, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    const-string v6, ""

    move-object v0, v4

    move-object/from16 v1, v22

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    .line 2160
    :cond_9
    iget-object v4, v3, Lcom/android/internal/telephony/CallerInfo;->contactRefUri:Landroid/net/Uri;

    if-eqz v4, :cond_a

    iget-object v4, v3, Lcom/android/internal/telephony/CallerInfo;->contactRefUri:Landroid/net/Uri;

    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 2161
    iget-object v4, v3, Lcom/android/internal/telephony/CallerInfo;->contactRefUri:Landroid/net/Uri;

    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "/"

    invoke-virtual {v4, v6, v7}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    iput-object v4, v3, Lcom/android/internal/telephony/CallerInfo;->contactRefUri:Landroid/net/Uri;

    .line 2163
    :cond_a
    iget-object v4, v3, Lcom/android/internal/telephony/CallerInfo;->contactRingtoneUri:Landroid/net/Uri;

    if-eqz v4, :cond_b

    iget-object v4, v3, Lcom/android/internal/telephony/CallerInfo;->contactRingtoneUri:Landroid/net/Uri;

    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 2164
    iget-object v4, v3, Lcom/android/internal/telephony/CallerInfo;->contactRingtoneUri:Landroid/net/Uri;

    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "/"

    invoke-virtual {v4, v6, v7}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    iput-object v4, v3, Lcom/android/internal/telephony/CallerInfo;->contactRingtoneUri:Landroid/net/Uri;

    .line 2166
    :cond_b
    const-string v4, "CallNotifier"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "CallNotifier.onDisconnect> number = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2172
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallNotifier$4;->this$0:Lcom/android/phone/CallNotifier;

    move-object v4, v0

    #getter for: Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;
    invoke-static {v4}, Lcom/android/phone/CallNotifier;->access$1000(Lcom/android/phone/CallNotifier;)Lcom/android/phone/PhoneApp;

    move-result-object v4

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/phone/CallNotifier$4;->val$presentation:I

    move v6, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/phone/CallNotifier$4;->val$callLogType:I

    move v7, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/phone/CallNotifier$4;->val$date:J

    move-wide v8, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/phone/CallNotifier$4;->val$duration:J

    move-wide v10, v0

    long-to-int v10, v10

    div-int/lit16 v10, v10, 0x3e8

    const/4 v11, 0x1

    const/4 v12, 0x0

    iget-object v13, v3, Lcom/android/internal/telephony/CallerInfo;->cnapName:Ljava/lang/String;

    const/4 v14, 0x1

    move-object v15, v5

    invoke-static/range {v3 .. v15}, Lcom/motorola/blur/provider/contactsExtensions/BlurCallLogExtension$BlurCalls;->addCall(Lcom/android/internal/telephony/CallerInfo;Landroid/content/Context;Ljava/lang/String;IIJIZZLjava/lang/String;ZLjava/lang/String;)Landroid/net/Uri;

    .line 2182
    .end local v3           #ci_bk:Lcom/android/internal/telephony/CallerInfo;
    .end local v5           #number_bk:Ljava/lang/String;
    .end local v22           #ip_prefix:Ljava/lang/String;
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallNotifier$4;->this$0:Lcom/android/phone/CallNotifier;

    move-object v4, v0

    invoke-virtual {v4}, Lcom/android/phone/CallNotifier;->sendAddCallBroadcast()V

    goto/16 :goto_0

    .line 2177
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallNotifier$4;->val$ci:Lcom/android/internal/telephony/CallerInfo;

    move-object v6, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallNotifier$4;->this$0:Lcom/android/phone/CallNotifier;

    move-object v4, v0

    #getter for: Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;
    invoke-static {v4}, Lcom/android/phone/CallNotifier;->access$1000(Lcom/android/phone/CallNotifier;)Lcom/android/phone/PhoneApp;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallNotifier$4;->val$logNumber:Ljava/lang/String;

    move-object v8, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/phone/CallNotifier$4;->val$presentation:I

    move v9, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/phone/CallNotifier$4;->val$callLogType:I

    move v10, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/phone/CallNotifier$4;->val$date:J

    move-wide v11, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/phone/CallNotifier$4;->val$duration:J

    move-wide v13, v0

    long-to-int v4, v13

    div-int/lit16 v13, v4, 0x3e8

    const/4 v14, 0x1

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallNotifier$4;->val$ci:Lcom/android/internal/telephony/CallerInfo;

    move-object v4, v0

    move-object v0, v4

    iget-object v0, v0, Lcom/android/internal/telephony/CallerInfo;->cnapName:Ljava/lang/String;

    move-object/from16 v16, v0

    const/16 v17, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallNotifier$4;->val$number:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-static/range {v6 .. v18}, Lcom/motorola/blur/provider/contactsExtensions/BlurCallLogExtension$BlurCalls;->addCall(Lcom/android/internal/telephony/CallerInfo;Landroid/content/Context;Ljava/lang/String;IIJIZZLjava/lang/String;ZLjava/lang/String;)Landroid/net/Uri;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method
