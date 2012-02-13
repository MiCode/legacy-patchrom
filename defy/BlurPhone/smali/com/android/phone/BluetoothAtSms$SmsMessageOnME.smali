.class Lcom/android/phone/BluetoothAtSms$SmsMessageOnME;
.super Ljava/lang/Object;
.source "BluetoothAtSms.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/BluetoothAtSms;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SmsMessageOnME"
.end annotation


# instance fields
.field public address:Ljava/lang/String;

.field public body:Ljava/lang/String;

.field public date:I

.field public id:I

.field public person:Ljava/lang/String;

.field public person_id:I

.field public protocol:I

.field public read:I

.field public reply_path_present:Ljava/lang/String;

.field public service_center:Ljava/lang/String;

.field public status:I

.field public subject:Ljava/lang/String;

.field public thread_id:I

.field public type:I


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 489
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/phone/BluetoothAtSms$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 489
    invoke-direct {p0}, Lcom/android/phone/BluetoothAtSms$SmsMessageOnME;-><init>()V

    return-void
.end method


# virtual methods
.method public getEncodeMessagePdu(Landroid/content/Context;)[B
    .locals 8
    .parameter "context"

    .prologue
    const/4 v7, 0x0

    .line 554
    const-string v4, "getEncodeMessagePdu"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SC: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/phone/BluetoothAtSms$SmsMessageOnME;->service_center:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\naddress: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/phone/BluetoothAtSms$SmsMessageOnME;->address:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\nbody: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/phone/BluetoothAtSms$SmsMessageOnME;->body:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 556
    iget v4, p0, Lcom/android/phone/BluetoothAtSms$SmsMessageOnME;->type:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_0

    .line 558
    new-instance v3, Landroid/text/format/Time;

    invoke-direct {v3}, Landroid/text/format/Time;-><init>()V

    .line 559
    .local v3, timeStamp:Landroid/text/format/Time;
    iget v4, p0, Lcom/android/phone/BluetoothAtSms$SmsMessageOnME;->date:I

    int-to-long v4, v4

    invoke-virtual {v3, v4, v5}, Landroid/text/format/Time;->set(J)V

    .line 560
    iget-object v4, p0, Lcom/android/phone/BluetoothAtSms$SmsMessageOnME;->service_center:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/phone/BluetoothAtSms$SmsMessageOnME;->address:Ljava/lang/String;

    iget-object v6, p0, Lcom/android/phone/BluetoothAtSms$SmsMessageOnME;->body:Ljava/lang/String;

    invoke-static {v4, v5, v6, v3}, Lcom/android/internal/telephony/gsm/SmsMessage;->getDeliverPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/text/format/Time;)Lcom/android/internal/telephony/gsm/SmsMessage$DeliverPdu;

    move-result-object v0

    .line 562
    .local v0, pdu:Lcom/android/internal/telephony/gsm/SmsMessage$DeliverPdu;
    if-eqz v0, :cond_1

    iget-object v4, v0, Lcom/android/internal/telephony/gsm/SmsMessage$DeliverPdu;->encodedMessage:[B

    if-eqz v4, :cond_1

    .line 563
    iget-object v4, v0, Lcom/android/internal/telephony/gsm/SmsMessage$DeliverPdu;->encodedMessage:[B

    .line 575
    .end local v0           #pdu:Lcom/android/internal/telephony/gsm/SmsMessage$DeliverPdu;
    .end local v3           #timeStamp:Landroid/text/format/Time;
    :goto_0
    return-object v4

    .line 566
    :cond_0
    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 568
    .local v1, prefs:Landroid/content/SharedPreferences;
    const-string v4, "pref_key_sms_delivery_reports"

    const/4 v5, 0x0

    invoke-interface {v1, v4, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 570
    .local v2, requestDeliveryReport:Z
    iget-object v4, p0, Lcom/android/phone/BluetoothAtSms$SmsMessageOnME;->service_center:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/phone/BluetoothAtSms$SmsMessageOnME;->address:Ljava/lang/String;

    iget-object v6, p0, Lcom/android/phone/BluetoothAtSms$SmsMessageOnME;->body:Ljava/lang/String;

    invoke-static {v4, v5, v6, v2, v7}, Lcom/android/internal/telephony/gsm/SmsMessage;->getSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z[B)Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;

    move-result-object v0

    .line 572
    .local v0, pdu:Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    if-eqz v0, :cond_1

    iget-object v4, v0, Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;->encodedMessage:[B

    if-eqz v4, :cond_1

    .line 573
    iget-object v4, v0, Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;->encodedMessage:[B

    goto :goto_0

    .end local v0           #pdu:Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    .end local v1           #prefs:Landroid/content/SharedPreferences;
    .end local v2           #requestDeliveryReport:Z
    :cond_1
    move-object v4, v7

    .line 575
    goto :goto_0
.end method

.method public getEncodeMessagePduLength(Landroid/content/Context;)I
    .locals 2
    .parameter "context"

    .prologue
    .line 588
    invoke-virtual {p0, p1}, Lcom/android/phone/BluetoothAtSms$SmsMessageOnME;->getEncodeMessagePdu(Landroid/content/Context;)[B

    move-result-object v0

    .line 589
    .local v0, encodeMesagePdu:[B
    if-eqz v0, :cond_0

    .line 590
    array-length v1, v0

    .line 591
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getEncodePdu(Landroid/content/Context;)[B
    .locals 7
    .parameter "context"

    .prologue
    const-string v6, "getEncodePdu"

    .line 602
    const/4 v0, 0x0

    .line 603
    .local v0, arrayPdu:[B
    invoke-virtual {p0, p1}, Lcom/android/phone/BluetoothAtSms$SmsMessageOnME;->getEncodeMessagePdu(Landroid/content/Context;)[B

    move-result-object v2

    .line 604
    .local v2, encodeMesagePdu:[B
    if-eqz v2, :cond_3

    .line 605
    invoke-virtual {p0, p1}, Lcom/android/phone/BluetoothAtSms$SmsMessageOnME;->getEncodeScAddressPdu(Landroid/content/Context;)[B

    move-result-object v3

    .line 606
    .local v3, encodeScAddressPdu:[B
    if-eqz v3, :cond_1

    .line 607
    const-string v5, "getEncodePdu"

    const-string v5, "encodeScAddressPdu != null"

    invoke-static {v6, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 608
    array-length v5, v3

    array-length v6, v2

    add-int/2addr v5, v6

    new-array v0, v5, [B

    .line 609
    const/4 v1, 0x0

    .line 610
    .local v1, cur:I
    const/4 v4, 0x0

    .line 611
    .local v4, i:I
    const/4 v4, 0x0

    :goto_0
    array-length v5, v3

    if-ge v4, v5, :cond_0

    .line 612
    aget-byte v5, v3, v4

    aput-byte v5, v0, v1

    .line 613
    add-int/lit8 v1, v1, 0x1

    .line 611
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 615
    :cond_0
    const/4 v4, 0x0

    :goto_1
    array-length v5, v2

    if-ge v4, v5, :cond_3

    .line 616
    aget-byte v5, v2, v4

    aput-byte v5, v0, v1

    .line 617
    add-int/lit8 v1, v1, 0x1

    .line 615
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 620
    .end local v1           #cur:I
    .end local v4           #i:I
    :cond_1
    const-string v5, "getEncodePdu"

    const-string v5, "encodeScAddressPdu == null"

    invoke-static {v6, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 621
    array-length v5, v2

    add-int/lit8 v5, v5, 0x1

    new-array v0, v5, [B

    .line 622
    const/4 v1, 0x0

    .line 623
    .restart local v1       #cur:I
    const/4 v4, 0x0

    .line 624
    .restart local v4       #i:I
    const/4 v4, 0x0

    :goto_2
    const/4 v5, 0x1

    if-ge v4, v5, :cond_2

    .line 625
    const/4 v5, 0x0

    aput-byte v5, v0, v1

    .line 626
    add-int/lit8 v1, v1, 0x1

    .line 624
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 628
    :cond_2
    const/4 v4, 0x0

    :goto_3
    array-length v5, v2

    if-ge v4, v5, :cond_3

    .line 629
    aget-byte v5, v2, v4

    aput-byte v5, v0, v1

    .line 630
    add-int/lit8 v1, v1, 0x1

    .line 628
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 635
    .end local v1           #cur:I
    .end local v3           #encodeScAddressPdu:[B
    .end local v4           #i:I
    :cond_3
    return-object v0
.end method

.method public getEncodeScAddressPdu(Landroid/content/Context;)[B
    .locals 8
    .parameter "context"

    .prologue
    const/4 v7, 0x0

    .line 525
    iget v4, p0, Lcom/android/phone/BluetoothAtSms$SmsMessageOnME;->type:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_0

    .line 527
    new-instance v3, Landroid/text/format/Time;

    invoke-direct {v3}, Landroid/text/format/Time;-><init>()V

    .line 528
    .local v3, timeStamp:Landroid/text/format/Time;
    iget v4, p0, Lcom/android/phone/BluetoothAtSms$SmsMessageOnME;->date:I

    int-to-long v4, v4

    invoke-virtual {v3, v4, v5}, Landroid/text/format/Time;->set(J)V

    .line 529
    iget-object v4, p0, Lcom/android/phone/BluetoothAtSms$SmsMessageOnME;->service_center:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/phone/BluetoothAtSms$SmsMessageOnME;->address:Ljava/lang/String;

    iget-object v6, p0, Lcom/android/phone/BluetoothAtSms$SmsMessageOnME;->body:Ljava/lang/String;

    invoke-static {v4, v5, v6, v3}, Lcom/android/internal/telephony/gsm/SmsMessage;->getDeliverPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/text/format/Time;)Lcom/android/internal/telephony/gsm/SmsMessage$DeliverPdu;

    move-result-object v0

    .line 531
    .local v0, pdu:Lcom/android/internal/telephony/gsm/SmsMessage$DeliverPdu;
    if-eqz v0, :cond_1

    iget-object v4, v0, Lcom/android/internal/telephony/gsm/SmsMessage$DeliverPdu;->encodedScAddress:[B

    if-eqz v4, :cond_1

    .line 532
    iget-object v4, v0, Lcom/android/internal/telephony/gsm/SmsMessage$DeliverPdu;->encodedScAddress:[B

    .line 544
    .end local v0           #pdu:Lcom/android/internal/telephony/gsm/SmsMessage$DeliverPdu;
    .end local v3           #timeStamp:Landroid/text/format/Time;
    :goto_0
    return-object v4

    .line 535
    :cond_0
    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 537
    .local v1, prefs:Landroid/content/SharedPreferences;
    const-string v4, "pref_key_sms_delivery_reports"

    const/4 v5, 0x0

    invoke-interface {v1, v4, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 539
    .local v2, requestDeliveryReport:Z
    iget-object v4, p0, Lcom/android/phone/BluetoothAtSms$SmsMessageOnME;->service_center:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/phone/BluetoothAtSms$SmsMessageOnME;->address:Ljava/lang/String;

    iget-object v6, p0, Lcom/android/phone/BluetoothAtSms$SmsMessageOnME;->body:Ljava/lang/String;

    invoke-static {v4, v5, v6, v2, v7}, Lcom/android/internal/telephony/gsm/SmsMessage;->getSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z[B)Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;

    move-result-object v0

    .line 541
    .local v0, pdu:Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    if-eqz v0, :cond_1

    iget-object v4, v0, Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;->encodedScAddress:[B

    if-eqz v4, :cond_1

    .line 542
    iget-object v4, v0, Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;->encodedScAddress:[B

    goto :goto_0

    .end local v0           #pdu:Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    .end local v1           #prefs:Landroid/content/SharedPreferences;
    .end local v2           #requestDeliveryReport:Z
    :cond_1
    move-object v4, v7

    .line 544
    goto :goto_0
.end method
