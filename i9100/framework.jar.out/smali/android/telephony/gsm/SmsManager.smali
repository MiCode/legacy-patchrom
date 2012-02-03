.class public final Landroid/telephony/gsm/SmsManager;
.super Ljava/lang/Object;
.source "SmsManager.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final RESULT_ERROR_GENERIC_FAILURE:I = 0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final RESULT_ERROR_NO_SERVICE:I = 0x4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final RESULT_ERROR_NULL_PDU:I = 0x3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final RESULT_ERROR_RADIO_OFF:I = 0x2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final STATUS_ON_SIM_FREE:I = 0x0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final STATUS_ON_SIM_READ:I = 0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final STATUS_ON_SIM_SENT:I = 0x5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final STATUS_ON_SIM_UNREAD:I = 0x3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final STATUS_ON_SIM_UNSENT:I = 0x7
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static sInstance:Landroid/telephony/gsm/SmsManager;


# instance fields
.field private mSmsMgrProxy:Landroid/telephony/SmsManager;


# direct methods
.method private constructor <init>()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    invoke-static {}, Landroid/telephony/SmsManager;->getDefault()Landroid/telephony/SmsManager;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/gsm/SmsManager;->mSmsMgrProxy:Landroid/telephony/SmsManager;

    .line 49
    return-void
.end method

.method public static final getDefault()Landroid/telephony/gsm/SmsManager;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 40
    sget-object v0, Landroid/telephony/gsm/SmsManager;->sInstance:Landroid/telephony/gsm/SmsManager;

    if-nez v0, :cond_0

    .line 41
    new-instance v0, Landroid/telephony/gsm/SmsManager;

    invoke-direct {v0}, Landroid/telephony/gsm/SmsManager;-><init>()V

    sput-object v0, Landroid/telephony/gsm/SmsManager;->sInstance:Landroid/telephony/gsm/SmsManager;

    .line 43
    :cond_0
    sget-object v0, Landroid/telephony/gsm/SmsManager;->sInstance:Landroid/telephony/gsm/SmsManager;

    return-object v0
.end method


# virtual methods
.method public final MakeSimPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)I
    .locals 6
    .parameter "body"
    .parameter "scAddress"
    .parameter "Address"
    .parameter "SmsType"
    .parameter "date"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 191
    iget-object v0, p0, Landroid/telephony/gsm/SmsManager;->mSmsMgrProxy:Landroid/telephony/SmsManager;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Landroid/telephony/SmsManager;->MakeSimPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)I

    move-result v0

    return v0
.end method

.method public final copyMessageToSim([B[BI)Z
    .locals 1
    .parameter "smsc"
    .parameter "pdu"
    .parameter "status"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 181
    iget-object v0, p0, Landroid/telephony/gsm/SmsManager;->mSmsMgrProxy:Landroid/telephony/SmsManager;

    invoke-virtual {v0, p1, p2, p3}, Landroid/telephony/SmsManager;->copyMessageToIcc([B[BI)Z

    move-result v0

    return v0
.end method

.method public final deleteMessageFromSim(I)Z
    .locals 1
    .parameter "messageIndex"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 204
    iget-object v0, p0, Landroid/telephony/gsm/SmsManager;->mSmsMgrProxy:Landroid/telephony/SmsManager;

    invoke-virtual {v0, p1}, Landroid/telephony/SmsManager;->deleteMessageFromIcc(I)Z

    move-result v0

    return v0
.end method

.method public final divideMessage(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 1
    .parameter "text"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 94
    iget-object v0, p0, Landroid/telephony/gsm/SmsManager;->mSmsMgrProxy:Landroid/telephony/SmsManager;

    invoke-virtual {v0, p1}, Landroid/telephony/SmsManager;->divideMessage(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public final getAllMessagesFromSim()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/telephony/SmsMessage;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 232
    iget-object v0, p0, Landroid/telephony/gsm/SmsManager;->mSmsMgrProxy:Landroid/telephony/SmsManager;

    invoke-virtual {v0}, Landroid/telephony/SmsManager;->getAllMessagesFromIcc()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public final sendDataMessage(Ljava/lang/String;Ljava/lang/String;S[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;)V
    .locals 7
    .parameter "destinationAddress"
    .parameter "scAddress"
    .parameter "destinationPort"
    .parameter "data"
    .parameter "sentIntent"
    .parameter "deliveryIntent"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 164
    iget-object v0, p0, Landroid/telephony/gsm/SmsManager;->mSmsMgrProxy:Landroid/telephony/SmsManager;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Landroid/telephony/SmsManager;->sendDataMessage(Ljava/lang/String;Ljava/lang/String;S[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;)V

    .line 166
    return-void
.end method

.method public final sendMultipartTextMessage(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 6
    .parameter "destinationAddress"
    .parameter "scAddress"
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/PendingIntent;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/PendingIntent;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 131
    .local p3, parts:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local p4, sentIntents:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    .local p5, deliveryIntents:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    iget-object v0, p0, Landroid/telephony/gsm/SmsManager;->mSmsMgrProxy:Landroid/telephony/SmsManager;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Landroid/telephony/SmsManager;->sendMultipartTextMessage(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 133
    return-void
.end method

.method public final sendTextMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)V
    .locals 6
    .parameter "destinationAddress"
    .parameter "scAddress"
    .parameter "text"
    .parameter "sentIntent"
    .parameter "deliveryIntent"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 79
    iget-object v0, p0, Landroid/telephony/gsm/SmsManager;->mSmsMgrProxy:Landroid/telephony/SmsManager;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Landroid/telephony/SmsManager;->sendTextMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)V

    .line 81
    return-void
.end method

.method public final updateMessageOnSim(II[B)Z
    .locals 1
    .parameter "messageIndex"
    .parameter "newStatus"
    .parameter "pdu"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 221
    iget-object v0, p0, Landroid/telephony/gsm/SmsManager;->mSmsMgrProxy:Landroid/telephony/SmsManager;

    invoke-virtual {v0, p1, p2, p3}, Landroid/telephony/SmsManager;->updateMessageOnIcc(II[B)Z

    move-result v0

    return v0
.end method
