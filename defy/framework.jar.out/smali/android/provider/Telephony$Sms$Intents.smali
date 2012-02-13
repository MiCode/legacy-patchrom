.class public final Landroid/provider/Telephony$Sms$Intents;
.super Ljava/lang/Object;
.source "Telephony.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/Telephony$Sms;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Intents"
.end annotation


# static fields
.field public static final CMAS_RECEIVED_ACTION:Ljava/lang/String; = "android.provider.Telephony.CMAS_RECEIVED"

.field public static final DATA_SMS_RECEIVED_ACTION:Ljava/lang/String; = "android.intent.action.DATA_SMS_RECEIVED"

.field public static final DELETED_SMS_LIST:Ljava/lang/String; = "deleted_sms_list"

.field public static final INSERTED_SMS_LIST:Ljava/lang/String; = "inserted_sms_list"

.field public static final OLD_STATUS:Ljava/lang/String; = "old_status"

.field public static final OLD_TYPE:Ljava/lang/String; = "old_type"

.field public static final OTA_MDN_UPDATE_ACTION:Ljava/lang/String; = "android.provider.Telephony.OTA_MDN_UPDATE"

.field public static final PHONE_SMS_FULL_ACTION:Ljava/lang/String; = "android.provider.Telephony.PHONE_SMS_FULL"

.field public static final RESULT_SMS_DENIED:I = 0x5

.field public static final RESULT_SMS_GENERIC_ERROR:I = 0x2

.field public static final RESULT_SMS_HANDLED:I = 0x1

.field public static final RESULT_SMS_OUT_OF_MEMORY:I = 0x3

.field public static final RESULT_SMS_UNSUPPORTED:I = 0x4

.field public static final SIM_FULL_ACTION:Ljava/lang/String; = "android.provider.Telephony.SIM_FULL"

.field public static final SMS_DELETED_ACTION:Ljava/lang/String; = "com.motorola.android.intent.action.SMS_DELETED"

.field public static final SMS_INSERTED_ACTION:Ljava/lang/String; = "com.motorola.android.intent.action.SMS_INSERTED"

.field public static final SMS_RECEIVED_ACTION:Ljava/lang/String; = "android.provider.Telephony.SMS_RECEIVED"

.field public static final SMS_RECEIVED_STORED_ACTION:Ljava/lang/String; = "android.provider.Telephony.SMS_RECEIVED_STORED"

.field public static final SMS_REJECTED_ACTION:Ljava/lang/String; = "android.provider.Telephony.SMS_REJECTED"

.field public static final SMS_UPDATED_ACTION:Ljava/lang/String; = "com.motorola.android.intent.action.SMS_UPDATED"

.field public static final UPDATED_SMS_LIST:Ljava/lang/String; = "updated_sms_list"

.field public static final WAP_PUSH_RECEIVED_ACTION:Ljava/lang/String; = "android.provider.Telephony.WAP_PUSH_RECEIVED"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final getMessagesFromIntent(Landroid/content/Intent;)[Landroid/telephony/SmsMessage;
    .locals 8
    .parameter "intent"

    .prologue
    const-string v7, "pdus"

    invoke-virtual {p0, v7}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p0

    .end local p0
    check-cast p0, [Ljava/lang/Object;

    move-object v0, p0

    check-cast v0, [Ljava/lang/Object;

    move-object v2, v0

    .local v2, messages:[Ljava/lang/Object;
    array-length v7, v2

    new-array v5, v7, [[B

    .local v5, pduObjs:[[B
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v7, v2

    if-ge v1, v7, :cond_0

    aget-object p0, v2, v1

    check-cast p0, [B

    check-cast p0, [B

    aput-object p0, v5, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    array-length v7, v5

    new-array v6, v7, [[B

    .local v6, pdus:[[B
    array-length v4, v6

    .local v4, pduCount:I
    new-array v3, v4, [Landroid/telephony/SmsMessage;

    .local v3, msgs:[Landroid/telephony/SmsMessage;
    const/4 v1, 0x0

    :goto_1
    if-ge v1, v4, :cond_1

    aget-object v7, v5, v1

    aput-object v7, v6, v1

    aget-object v7, v6, v1

    invoke-static {v7}, Landroid/telephony/SmsMessage;->createFromPdu([B)Landroid/telephony/SmsMessage;

    move-result-object v7

    aput-object v7, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    return-object v3
.end method
