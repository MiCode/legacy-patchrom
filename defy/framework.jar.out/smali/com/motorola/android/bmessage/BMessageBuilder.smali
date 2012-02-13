.class public Lcom/motorola/android/bmessage/BMessageBuilder;
.super Ljava/lang/Object;
.source "BMessageBuilder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/android/bmessage/BMessageBuilder$Property;
    }
.end annotation


# static fields
.field private static LOG_TAG:Ljava/lang/String;

.field private static final folderMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field mCurrentProperty:Lcom/motorola/android/bmessage/BMessageBuilder$Property;

.field private mMessageEmailBccList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mMessageEmailCcList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mMessageEmailFromList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mMessageEmailReplyToList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mMessageEmailToList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mMessageReceiverDataList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mMessageSenderDataList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mMessageStruct:Lcom/motorola/android/bmessage/MessageStruct;

.field private messageIntType:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const-string v0, "bmessage.BMessageBuilder"

    sput-object v0, Lcom/motorola/android/bmessage/BMessageBuilder;->LOG_TAG:Ljava/lang/String;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/motorola/android/bmessage/BMessageBuilder;->folderMap:Ljava/util/Map;

    sget-object v0, Lcom/motorola/android/bmessage/BMessageBuilder;->folderMap:Ljava/util/Map;

    const-string v1, "Sms\\ALL"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/motorola/android/bmessage/BMessageBuilder;->folderMap:Ljava/util/Map;

    const-string v1, "Sms\\INBOX"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/motorola/android/bmessage/BMessageBuilder;->folderMap:Ljava/util/Map;

    const-string v1, "Sms\\SENT"

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/motorola/android/bmessage/BMessageBuilder;->folderMap:Ljava/util/Map;

    const-string v1, "Sms\\DRAFTS"

    const/4 v2, 0x3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/motorola/android/bmessage/BMessageBuilder;->folderMap:Ljava/util/Map;

    const-string v1, "Sms\\OUTBOX"

    const/4 v2, 0x4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/motorola/android/bmessage/BMessageBuilder;->folderMap:Ljava/util/Map;

    const-string v1, "Sms\\FAILED"

    const/4 v2, 0x5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/motorola/android/bmessage/BMessageBuilder;->folderMap:Ljava/util/Map;

    const-string v1, "Sms\\QUEUED"

    const/4 v2, 0x6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/motorola/android/bmessage/BMessageBuilder;->mMessageStruct:Lcom/motorola/android/bmessage/MessageStruct;

    iput-object v0, p0, Lcom/motorola/android/bmessage/BMessageBuilder;->mCurrentProperty:Lcom/motorola/android/bmessage/BMessageBuilder$Property;

    iput-object v0, p0, Lcom/motorola/android/bmessage/BMessageBuilder;->mMessageSenderDataList:Ljava/util/List;

    iput-object v0, p0, Lcom/motorola/android/bmessage/BMessageBuilder;->mMessageReceiverDataList:Ljava/util/List;

    iput-object v0, p0, Lcom/motorola/android/bmessage/BMessageBuilder;->mMessageEmailFromList:Ljava/util/List;

    iput-object v0, p0, Lcom/motorola/android/bmessage/BMessageBuilder;->mMessageEmailToList:Ljava/util/List;

    iput-object v0, p0, Lcom/motorola/android/bmessage/BMessageBuilder;->mMessageEmailCcList:Ljava/util/List;

    iput-object v0, p0, Lcom/motorola/android/bmessage/BMessageBuilder;->mMessageEmailBccList:Ljava/util/List;

    iput-object v0, p0, Lcom/motorola/android/bmessage/BMessageBuilder;->mMessageEmailReplyToList:Ljava/util/List;

    return-void
.end method

.method private addProperty(Lcom/motorola/android/bmessage/BMessageBuilder$Property;)I
    .locals 14
    .parameter "property"

    .prologue
    const/4 v13, 0x2

    const/4 v12, 0x0

    const/4 v10, 0x1

    const-string v11, "MessageStruct.mMsgBodyData is set to <"

    const-string v9, ">."

    sget-object v6, Lcom/motorola/android/bmessage/BMessageBuilder;->LOG_TAG:Ljava/lang/String;

    const-string v7, "Enter addProperty(Property)!"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #getter for: Lcom/motorola/android/bmessage/BMessageBuilder$Property;->mPropertyName:I
    invoke-static {p1}, Lcom/motorola/android/bmessage/BMessageBuilder$Property;->access$000(Lcom/motorola/android/bmessage/BMessageBuilder$Property;)I

    move-result v2

    .local v2, propIntName:I
    #getter for: Lcom/motorola/android/bmessage/BMessageBuilder$Property;->mPropertyValue:Ljava/lang/String;
    invoke-static {p1}, Lcom/motorola/android/bmessage/BMessageBuilder$Property;->access$100(Lcom/motorola/android/bmessage/BMessageBuilder$Property;)Ljava/lang/String;

    move-result-object v3

    .local v3, propValue:Ljava/lang/String;
    #getter for: Lcom/motorola/android/bmessage/BMessageBuilder$Property;->mPropertyBytes:[[B
    invoke-static {p1}, Lcom/motorola/android/bmessage/BMessageBuilder$Property;->access$200(Lcom/motorola/android/bmessage/BMessageBuilder$Property;)[[B

    move-result-object v1

    .local v1, propBytes:[[B
    const/4 v4, 0x0

    .local v4, propValue_charset:Ljava/lang/String;
    const/4 v5, 0x0

    .local v5, propValue_encoding:Ljava/lang/String;
    sget-object v6, Lcom/motorola/android/bmessage/BMessageBuilder;->LOG_TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "addProperty() get propValue = <"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ">."

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-ne v2, v10, :cond_5

    const/4 v0, -0x1

    .local v0, msgIntType:I
    const-string v6, "SMS_CDMA"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    const/4 v0, 0x0

    :cond_0
    :goto_0
    iput v0, p0, Lcom/motorola/android/bmessage/BMessageBuilder;->messageIntType:I

    iget-object v6, p0, Lcom/motorola/android/bmessage/BMessageBuilder;->mMessageStruct:Lcom/motorola/android/bmessage/MessageStruct;

    invoke-virtual {v6, v0}, Lcom/motorola/android/bmessage/MessageStruct;->setMessageType(I)V

    .end local v0           #msgIntType:I
    :cond_1
    :goto_1
    return v12

    .restart local v0       #msgIntType:I
    :cond_2
    const-string v6, "SMS_GSM"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    const/4 v0, 0x1

    goto :goto_0

    :cond_3
    const-string v6, "EMAIL"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    const/4 v0, 0x2

    goto :goto_0

    :cond_4
    const-string v6, "MMS"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 v0, 0x3

    goto :goto_0

    .end local v0           #msgIntType:I
    :cond_5
    if-ne v2, v13, :cond_7

    const-string v6, "READ"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    iget-object v6, p0, Lcom/motorola/android/bmessage/BMessageBuilder;->mMessageStruct:Lcom/motorola/android/bmessage/MessageStruct;

    invoke-virtual {v6, v10}, Lcom/motorola/android/bmessage/MessageStruct;->setMessageReadStatus(I)V

    goto :goto_1

    :cond_6
    iget-object v6, p0, Lcom/motorola/android/bmessage/BMessageBuilder;->mMessageStruct:Lcom/motorola/android/bmessage/MessageStruct;

    invoke-virtual {v6, v12}, Lcom/motorola/android/bmessage/MessageStruct;->setMessageReadStatus(I)V

    goto :goto_1

    :cond_7
    const/4 v6, 0x3

    if-ne v2, v6, :cond_8

    iget-object v6, p0, Lcom/motorola/android/bmessage/BMessageBuilder;->mMessageStruct:Lcom/motorola/android/bmessage/MessageStruct;

    invoke-virtual {v6, v3}, Lcom/motorola/android/bmessage/MessageStruct;->setMessageLocatedFolder(Ljava/lang/String;)V

    goto :goto_1

    :cond_8
    const/4 v6, 0x4

    if-eq v2, v6, :cond_1

    const/4 v6, 0x6

    if-eq v2, v6, :cond_1

    const/16 v6, 0x8

    if-ne v2, v6, :cond_9

    iget-object v6, p0, Lcom/motorola/android/bmessage/BMessageBuilder;->mMessageSenderDataList:Ljava/util/List;

    invoke-interface {v6, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_9
    const/16 v6, 0xa

    if-ne v2, v6, :cond_a

    iget-object v6, p0, Lcom/motorola/android/bmessage/BMessageBuilder;->mMessageSenderDataList:Ljava/util/List;

    invoke-interface {v6, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_a
    const/4 v6, 0x5

    if-eq v2, v6, :cond_1

    const/4 v6, 0x7

    if-eq v2, v6, :cond_1

    const/16 v6, 0x9

    if-ne v2, v6, :cond_b

    iget-object v6, p0, Lcom/motorola/android/bmessage/BMessageBuilder;->mMessageReceiverDataList:Ljava/util/List;

    invoke-interface {v6, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_b
    const/16 v6, 0xb

    if-ne v2, v6, :cond_c

    iget-object v6, p0, Lcom/motorola/android/bmessage/BMessageBuilder;->mMessageReceiverDataList:Ljava/util/List;

    invoke-interface {v6, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_c
    const/16 v6, 0xc

    if-ne v2, v6, :cond_d

    iget-object v6, p0, Lcom/motorola/android/bmessage/BMessageBuilder;->mMessageStruct:Lcom/motorola/android/bmessage/MessageStruct;

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/motorola/android/bmessage/MessageStruct;->setMessageBodyPartId(I)V

    goto :goto_1

    :cond_d
    const/16 v6, 0x12

    if-ne v2, v6, :cond_e

    iget-object v6, p0, Lcom/motorola/android/bmessage/BMessageBuilder;->mMessageStruct:Lcom/motorola/android/bmessage/MessageStruct;

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/motorola/android/bmessage/MessageStruct;->setMessageBodyLength(I)V

    goto/16 :goto_1

    :cond_e
    const/16 v6, 0xe

    if-ne v2, v6, :cond_f

    move-object v5, v3

    iget-object v6, p0, Lcom/motorola/android/bmessage/BMessageBuilder;->mMessageStruct:Lcom/motorola/android/bmessage/MessageStruct;

    invoke-virtual {v6, v3}, Lcom/motorola/android/bmessage/MessageStruct;->setMessageBodyEncoding(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_f
    const/16 v6, 0xd

    if-ne v2, v6, :cond_10

    move-object v4, v3

    iget-object v6, p0, Lcom/motorola/android/bmessage/BMessageBuilder;->mMessageStruct:Lcom/motorola/android/bmessage/MessageStruct;

    invoke-virtual {v6, v3}, Lcom/motorola/android/bmessage/MessageStruct;->setMessageBodyCharset(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_10
    const/16 v6, 0xf

    if-ne v2, v6, :cond_11

    iget-object v6, p0, Lcom/motorola/android/bmessage/BMessageBuilder;->mMessageStruct:Lcom/motorola/android/bmessage/MessageStruct;

    invoke-virtual {v6, v3}, Lcom/motorola/android/bmessage/MessageStruct;->setMessageBodyLanguage(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_11
    const/16 v6, 0x10

    if-ne v2, v6, :cond_17

    sget-object v6, Lcom/motorola/android/bmessage/BMessageBuilder;->LOG_TAG:Ljava/lang/String;

    const-string v7, "Builder begins to set BODY!"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v6, p0, Lcom/motorola/android/bmessage/BMessageBuilder;->messageIntType:I

    if-eqz v6, :cond_12

    iget v6, p0, Lcom/motorola/android/bmessage/BMessageBuilder;->messageIntType:I

    if-ne v6, v10, :cond_14

    :cond_12
    sget-object v6, Lcom/motorola/android/bmessage/BMessageBuilder;->LOG_TAG:Ljava/lang/String;

    const-string v7, "The msg type is SMS."

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v6, p0, Lcom/motorola/android/bmessage/BMessageBuilder;->mMessageStruct:Lcom/motorola/android/bmessage/MessageStruct;

    invoke-virtual {v6}, Lcom/motorola/android/bmessage/MessageStruct;->getMessageBodyCharset()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_13

    const-string v6, "UTF-8"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_13

    iget-object v6, p0, Lcom/motorola/android/bmessage/BMessageBuilder;->mMessageStruct:Lcom/motorola/android/bmessage/MessageStruct;

    invoke-virtual {v6, v3}, Lcom/motorola/android/bmessage/MessageStruct;->setMessageBodyData(Ljava/lang/String;)V

    sget-object v6, Lcom/motorola/android/bmessage/BMessageBuilder;->LOG_TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "MessageStruct.mMsgBodyData is set to <"

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/motorola/android/bmessage/BMessageBuilder;->mMessageStruct:Lcom/motorola/android/bmessage/MessageStruct;

    invoke-virtual {v8}, Lcom/motorola/android/bmessage/MessageStruct;->getMessageBodyData()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ">."

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :cond_13
    iget-object v6, p0, Lcom/motorola/android/bmessage/BMessageBuilder;->mMessageStruct:Lcom/motorola/android/bmessage/MessageStruct;

    invoke-virtual {v6, v1}, Lcom/motorola/android/bmessage/MessageStruct;->setMessageBodyDataBytes([[B)V

    sget-object v6, Lcom/motorola/android/bmessage/BMessageBuilder;->LOG_TAG:Ljava/lang/String;

    const-string v7, "MessageStruct.mMsgBodyData is set to < bytes"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :cond_14
    iget v6, p0, Lcom/motorola/android/bmessage/BMessageBuilder;->messageIntType:I

    if-eq v6, v13, :cond_15

    iget v6, p0, Lcom/motorola/android/bmessage/BMessageBuilder;->messageIntType:I

    const/4 v7, 0x3

    if-ne v6, v7, :cond_16

    :cond_15
    sget-object v6, Lcom/motorola/android/bmessage/BMessageBuilder;->LOG_TAG:Ljava/lang/String;

    const-string v7, "The msg type is MMS/EMAIL."

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v6, p0, Lcom/motorola/android/bmessage/BMessageBuilder;->mMessageStruct:Lcom/motorola/android/bmessage/MessageStruct;

    invoke-virtual {v6, v3}, Lcom/motorola/android/bmessage/MessageStruct;->setMessageBodyData(Ljava/lang/String;)V

    sget-object v6, Lcom/motorola/android/bmessage/BMessageBuilder;->LOG_TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "MessageStruct.mMsgBodyData is set to <"

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/motorola/android/bmessage/BMessageBuilder;->mMessageStruct:Lcom/motorola/android/bmessage/MessageStruct;

    invoke-virtual {v8}, Lcom/motorola/android/bmessage/MessageStruct;->getMessageBodyData()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ">."

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :cond_16
    sget-object v6, Lcom/motorola/android/bmessage/BMessageBuilder;->LOG_TAG:Ljava/lang/String;

    const-string v7, "The msg type is unsupported!"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v6, p0, Lcom/motorola/android/bmessage/BMessageBuilder;->mMessageStruct:Lcom/motorola/android/bmessage/MessageStruct;

    invoke-virtual {v6, v3}, Lcom/motorola/android/bmessage/MessageStruct;->setMessageBodyData(Ljava/lang/String;)V

    sget-object v6, Lcom/motorola/android/bmessage/BMessageBuilder;->LOG_TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "MessageStruct.mMsgBodyData is set to <"

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/motorola/android/bmessage/BMessageBuilder;->mMessageStruct:Lcom/motorola/android/bmessage/MessageStruct;

    invoke-virtual {v8}, Lcom/motorola/android/bmessage/MessageStruct;->getMessageBodyData()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ">."

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :cond_17
    const/16 v6, 0x13

    if-ne v2, v6, :cond_18

    iget-object v6, p0, Lcom/motorola/android/bmessage/BMessageBuilder;->mMessageStruct:Lcom/motorola/android/bmessage/MessageStruct;

    invoke-virtual {v6, v3}, Lcom/motorola/android/bmessage/MessageStruct;->setEmailOrigDate(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_18
    const/16 v6, 0x14

    if-ne v2, v6, :cond_19

    iget-object v6, p0, Lcom/motorola/android/bmessage/BMessageBuilder;->mMessageEmailFromList:Ljava/util/List;

    invoke-interface {v6, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :cond_19
    const/16 v6, 0x15

    if-ne v2, v6, :cond_1a

    iget-object v6, p0, Lcom/motorola/android/bmessage/BMessageBuilder;->mMessageStruct:Lcom/motorola/android/bmessage/MessageStruct;

    invoke-virtual {v6, v3}, Lcom/motorola/android/bmessage/MessageStruct;->setEmailSender(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_1a
    const/16 v6, 0x16

    if-ne v2, v6, :cond_1b

    iget-object v6, p0, Lcom/motorola/android/bmessage/BMessageBuilder;->mMessageEmailToList:Ljava/util/List;

    invoke-interface {v6, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :cond_1b
    const/16 v6, 0x17

    if-ne v2, v6, :cond_1c

    iget-object v6, p0, Lcom/motorola/android/bmessage/BMessageBuilder;->mMessageEmailCcList:Ljava/util/List;

    invoke-interface {v6, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :cond_1c
    const/16 v6, 0x18

    if-ne v2, v6, :cond_1d

    iget-object v6, p0, Lcom/motorola/android/bmessage/BMessageBuilder;->mMessageEmailBccList:Ljava/util/List;

    invoke-interface {v6, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :cond_1d
    const/16 v6, 0x19

    if-ne v2, v6, :cond_1e

    iget-object v6, p0, Lcom/motorola/android/bmessage/BMessageBuilder;->mMessageEmailReplyToList:Ljava/util/List;

    invoke-interface {v6, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :cond_1e
    const/16 v6, 0x1a

    if-ne v2, v6, :cond_1f

    iget-object v6, p0, Lcom/motorola/android/bmessage/BMessageBuilder;->mMessageStruct:Lcom/motorola/android/bmessage/MessageStruct;

    invoke-virtual {v6, v3}, Lcom/motorola/android/bmessage/MessageStruct;->setEmailSubject(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_1f
    sget-object v6, Lcom/motorola/android/bmessage/BMessageBuilder;->LOG_TAG:Ljava/lang/String;

    const-string v7, "The propIntName inputed is unsupported!"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1
.end method


# virtual methods
.method endProperty()I
    .locals 2

    .prologue
    sget-object v0, Lcom/motorola/android/bmessage/BMessageBuilder;->LOG_TAG:Ljava/lang/String;

    const-string v1, "Enter endProperty()!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/motorola/android/bmessage/BMessageBuilder;->mCurrentProperty:Lcom/motorola/android/bmessage/BMessageBuilder$Property;

    invoke-direct {p0, v0}, Lcom/motorola/android/bmessage/BMessageBuilder;->addProperty(Lcom/motorola/android/bmessage/BMessageBuilder$Property;)I

    move-result v0

    return v0
.end method

.method endRecord()V
    .locals 3

    .prologue
    sget-object v0, Lcom/motorola/android/bmessage/BMessageBuilder;->LOG_TAG:Ljava/lang/String;

    const-string v1, "Enter endRecord()!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/motorola/android/bmessage/BMessageBuilder;->mMessageSenderDataList:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/motorola/android/bmessage/BMessageBuilder;->mMessageSenderDataList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-lt v0, v1, :cond_0

    iget-object v1, p0, Lcom/motorola/android/bmessage/BMessageBuilder;->mMessageStruct:Lcom/motorola/android/bmessage/MessageStruct;

    iget-object v0, p0, Lcom/motorola/android/bmessage/BMessageBuilder;->mMessageSenderDataList:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/motorola/android/bmessage/MessageStruct;->setMessageSenderData(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/motorola/android/bmessage/BMessageBuilder;->mMessageReceiverDataList:Ljava/util/List;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/motorola/android/bmessage/BMessageBuilder;->mMessageStruct:Lcom/motorola/android/bmessage/MessageStruct;

    iget-object v1, p0, Lcom/motorola/android/bmessage/BMessageBuilder;->mMessageReceiverDataList:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/motorola/android/bmessage/MessageStruct;->setMessageReceiverDataList(Ljava/util/List;)V

    :cond_1
    iget-object v0, p0, Lcom/motorola/android/bmessage/BMessageBuilder;->mMessageEmailFromList:Ljava/util/List;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/motorola/android/bmessage/BMessageBuilder;->mMessageStruct:Lcom/motorola/android/bmessage/MessageStruct;

    iget-object v1, p0, Lcom/motorola/android/bmessage/BMessageBuilder;->mMessageEmailFromList:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/motorola/android/bmessage/MessageStruct;->setEmailFromList(Ljava/util/List;)V

    :cond_2
    iget-object v0, p0, Lcom/motorola/android/bmessage/BMessageBuilder;->mMessageEmailToList:Ljava/util/List;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/motorola/android/bmessage/BMessageBuilder;->mMessageStruct:Lcom/motorola/android/bmessage/MessageStruct;

    iget-object v1, p0, Lcom/motorola/android/bmessage/BMessageBuilder;->mMessageEmailToList:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/motorola/android/bmessage/MessageStruct;->setEmailToList(Ljava/util/List;)V

    :cond_3
    iget-object v0, p0, Lcom/motorola/android/bmessage/BMessageBuilder;->mMessageEmailCcList:Ljava/util/List;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/motorola/android/bmessage/BMessageBuilder;->mMessageStruct:Lcom/motorola/android/bmessage/MessageStruct;

    iget-object v1, p0, Lcom/motorola/android/bmessage/BMessageBuilder;->mMessageEmailCcList:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/motorola/android/bmessage/MessageStruct;->setEmailCcList(Ljava/util/List;)V

    :cond_4
    iget-object v0, p0, Lcom/motorola/android/bmessage/BMessageBuilder;->mMessageEmailBccList:Ljava/util/List;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/motorola/android/bmessage/BMessageBuilder;->mMessageStruct:Lcom/motorola/android/bmessage/MessageStruct;

    iget-object v1, p0, Lcom/motorola/android/bmessage/BMessageBuilder;->mMessageEmailBccList:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/motorola/android/bmessage/MessageStruct;->setEmailBccList(Ljava/util/List;)V

    :cond_5
    iget-object v0, p0, Lcom/motorola/android/bmessage/BMessageBuilder;->mMessageEmailReplyToList:Ljava/util/List;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/motorola/android/bmessage/BMessageBuilder;->mMessageStruct:Lcom/motorola/android/bmessage/MessageStruct;

    iget-object v1, p0, Lcom/motorola/android/bmessage/BMessageBuilder;->mMessageEmailReplyToList:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/motorola/android/bmessage/MessageStruct;->setEmailReplyToList(Ljava/util/List;)V

    :cond_6
    iget-object v0, p0, Lcom/motorola/android/bmessage/BMessageBuilder;->mMessageStruct:Lcom/motorola/android/bmessage/MessageStruct;

    invoke-virtual {v0}, Lcom/motorola/android/bmessage/MessageStruct;->consolidateFields()V

    return-void
.end method

.method public getMessageStruct()Lcom/motorola/android/bmessage/MessageStruct;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/motorola/android/bmessage/BMessageBuilder;->mMessageStruct:Lcom/motorola/android/bmessage/MessageStruct;

    return-object v0
.end method

.method propertyName(I)V
    .locals 3
    .parameter "name"

    .prologue
    sget-object v0, Lcom/motorola/android/bmessage/BMessageBuilder;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Enter propertyName(int), property name = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/motorola/android/bmessage/BMessageBuilder;->mCurrentProperty:Lcom/motorola/android/bmessage/BMessageBuilder$Property;

    invoke-virtual {v0, p1}, Lcom/motorola/android/bmessage/BMessageBuilder$Property;->setPropertyName(I)V

    return-void
.end method

.method propertyValue(Ljava/lang/String;)V
    .locals 3
    .parameter "value"

    .prologue
    sget-object v0, Lcom/motorola/android/bmessage/BMessageBuilder;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Enter propertyValue(String), property value ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/motorola/android/bmessage/BMessageBuilder;->mCurrentProperty:Lcom/motorola/android/bmessage/BMessageBuilder$Property;

    invoke-virtual {v0, p1}, Lcom/motorola/android/bmessage/BMessageBuilder$Property;->setPropertyValue(Ljava/lang/String;)V

    return-void
.end method

.method propertyValue([[B)V
    .locals 2
    .parameter "value"

    .prologue
    sget-object v0, Lcom/motorola/android/bmessage/BMessageBuilder;->LOG_TAG:Ljava/lang/String;

    const-string v1, "Enter propertyValue(String), property value = bytes"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/motorola/android/bmessage/BMessageBuilder;->mCurrentProperty:Lcom/motorola/android/bmessage/BMessageBuilder$Property;

    invoke-virtual {v0, p1}, Lcom/motorola/android/bmessage/BMessageBuilder$Property;->setPropertyBytes([[B)V

    return-void
.end method

.method startProperty()V
    .locals 2

    .prologue
    sget-object v0, Lcom/motorola/android/bmessage/BMessageBuilder;->LOG_TAG:Ljava/lang/String;

    const-string v1, "Enter startProperty()!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/motorola/android/bmessage/BMessageBuilder;->mCurrentProperty:Lcom/motorola/android/bmessage/BMessageBuilder$Property;

    invoke-virtual {v0}, Lcom/motorola/android/bmessage/BMessageBuilder$Property;->clear()V

    return-void
.end method

.method startRecord()I
    .locals 2

    .prologue
    sget-object v0, Lcom/motorola/android/bmessage/BMessageBuilder;->LOG_TAG:Ljava/lang/String;

    const-string v1, "Enter startRecord()!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/motorola/android/bmessage/BMessageBuilder;->mMessageStruct:Lcom/motorola/android/bmessage/MessageStruct;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/motorola/android/bmessage/BMessageBuilder;->LOG_TAG:Ljava/lang/String;

    const-string v1, "Nested BMessage code is not supported now."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0xe

    :goto_0
    return v0

    :cond_0
    new-instance v0, Lcom/motorola/android/bmessage/MessageStruct;

    invoke-direct {v0}, Lcom/motorola/android/bmessage/MessageStruct;-><init>()V

    iput-object v0, p0, Lcom/motorola/android/bmessage/BMessageBuilder;->mMessageStruct:Lcom/motorola/android/bmessage/MessageStruct;

    iget-object v0, p0, Lcom/motorola/android/bmessage/BMessageBuilder;->mMessageStruct:Lcom/motorola/android/bmessage/MessageStruct;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/motorola/android/bmessage/BMessageBuilder;->LOG_TAG:Ljava/lang/String;

    const-string v1, "mMessageStruct is created."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    new-instance v0, Lcom/motorola/android/bmessage/BMessageBuilder$Property;

    invoke-direct {v0}, Lcom/motorola/android/bmessage/BMessageBuilder$Property;-><init>()V

    iput-object v0, p0, Lcom/motorola/android/bmessage/BMessageBuilder;->mCurrentProperty:Lcom/motorola/android/bmessage/BMessageBuilder$Property;

    iget-object v0, p0, Lcom/motorola/android/bmessage/BMessageBuilder;->mCurrentProperty:Lcom/motorola/android/bmessage/BMessageBuilder$Property;

    if-eqz v0, :cond_2

    sget-object v0, Lcom/motorola/android/bmessage/BMessageBuilder;->LOG_TAG:Ljava/lang/String;

    const-string v1, "mCurrentProperty is created."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    const/4 v0, -0x1

    iput v0, p0, Lcom/motorola/android/bmessage/BMessageBuilder;->messageIntType:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/motorola/android/bmessage/BMessageBuilder;->mMessageSenderDataList:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/motorola/android/bmessage/BMessageBuilder;->mMessageReceiverDataList:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/motorola/android/bmessage/BMessageBuilder;->mMessageEmailFromList:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/motorola/android/bmessage/BMessageBuilder;->mMessageEmailToList:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/motorola/android/bmessage/BMessageBuilder;->mMessageEmailCcList:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/motorola/android/bmessage/BMessageBuilder;->mMessageEmailBccList:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/motorola/android/bmessage/BMessageBuilder;->mMessageEmailReplyToList:Ljava/util/List;

    const/4 v0, 0x0

    goto :goto_0
.end method
