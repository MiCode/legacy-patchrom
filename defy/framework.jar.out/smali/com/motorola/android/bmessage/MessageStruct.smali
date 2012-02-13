.class public Lcom/motorola/android/bmessage/MessageStruct;
.super Ljava/lang/Object;
.source "MessageStruct.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "bmessage.MessageStruct"


# instance fields
.field private mMsgBodyCharset:Ljava/lang/String;

.field private mMsgBodyData:Ljava/lang/String;

.field private mMsgBodyDataBytes:[[B

.field private mMsgBodyEncoding:Ljava/lang/String;

.field private mMsgBodyLanguage:Ljava/lang/String;

.field private mMsgBodyLength:I

.field private mMsgBodyPartId:I

.field private mMsgEmailBccList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mMsgEmailCcList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mMsgEmailFromList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mMsgEmailOrigDate:Ljava/lang/String;

.field private mMsgEmailReplyToList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mMsgEmailSender:Ljava/lang/String;

.field private mMsgEmailSubject:Ljava/lang/String;

.field private mMsgEmailToList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mMsgLocatedFolder:Ljava/lang/String;

.field private mMsgLocatedFolderIndex:I

.field private mMsgReadStatus:I

.field private mMsgReceiverDataList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mMsgReceiverNameList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mMsgSenderData:Ljava/lang/String;

.field private mMsgSenderName:Ljava/lang/String;

.field private mMsgType:I


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v1, -0x1

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v1, p0, Lcom/motorola/android/bmessage/MessageStruct;->mMsgType:I

    iput v1, p0, Lcom/motorola/android/bmessage/MessageStruct;->mMsgReadStatus:I

    iput-object v2, p0, Lcom/motorola/android/bmessage/MessageStruct;->mMsgLocatedFolder:Ljava/lang/String;

    iput v1, p0, Lcom/motorola/android/bmessage/MessageStruct;->mMsgLocatedFolderIndex:I

    iput-object v2, p0, Lcom/motorola/android/bmessage/MessageStruct;->mMsgSenderName:Ljava/lang/String;

    iput-object v2, p0, Lcom/motorola/android/bmessage/MessageStruct;->mMsgSenderData:Ljava/lang/String;

    iput-object v2, p0, Lcom/motorola/android/bmessage/MessageStruct;->mMsgReceiverNameList:Ljava/util/List;

    iput-object v2, p0, Lcom/motorola/android/bmessage/MessageStruct;->mMsgReceiverDataList:Ljava/util/List;

    iput v1, p0, Lcom/motorola/android/bmessage/MessageStruct;->mMsgBodyPartId:I

    iput v1, p0, Lcom/motorola/android/bmessage/MessageStruct;->mMsgBodyLength:I

    iput-object v2, p0, Lcom/motorola/android/bmessage/MessageStruct;->mMsgBodyData:Ljava/lang/String;

    move-object v0, v2

    check-cast v0, [[B

    move-object v1, v0

    iput-object v1, p0, Lcom/motorola/android/bmessage/MessageStruct;->mMsgBodyDataBytes:[[B

    iput-object v2, p0, Lcom/motorola/android/bmessage/MessageStruct;->mMsgBodyEncoding:Ljava/lang/String;

    iput-object v2, p0, Lcom/motorola/android/bmessage/MessageStruct;->mMsgBodyLanguage:Ljava/lang/String;

    iput-object v2, p0, Lcom/motorola/android/bmessage/MessageStruct;->mMsgBodyCharset:Ljava/lang/String;

    iput-object v2, p0, Lcom/motorola/android/bmessage/MessageStruct;->mMsgEmailOrigDate:Ljava/lang/String;

    iput-object v2, p0, Lcom/motorola/android/bmessage/MessageStruct;->mMsgEmailFromList:Ljava/util/List;

    iput-object v2, p0, Lcom/motorola/android/bmessage/MessageStruct;->mMsgEmailSender:Ljava/lang/String;

    iput-object v2, p0, Lcom/motorola/android/bmessage/MessageStruct;->mMsgEmailToList:Ljava/util/List;

    iput-object v2, p0, Lcom/motorola/android/bmessage/MessageStruct;->mMsgEmailCcList:Ljava/util/List;

    iput-object v2, p0, Lcom/motorola/android/bmessage/MessageStruct;->mMsgEmailBccList:Ljava/util/List;

    iput-object v2, p0, Lcom/motorola/android/bmessage/MessageStruct;->mMsgEmailReplyToList:Ljava/util/List;

    iput-object v2, p0, Lcom/motorola/android/bmessage/MessageStruct;->mMsgEmailSubject:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;ILjava/lang/String;Ljava/lang/String;[[BLjava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/lang/String;)V
    .locals 3
    .parameter "msgReadStatus"
    .parameter "msgLocatedFolder"
    .parameter "msgBodyCharset"
    .parameter "msgBodyLanguage"
    .parameter "msgBodyLength"
    .parameter "msgType"
    .parameter "msgSenderName"
    .parameter "msgSenderData"
    .parameter
    .parameter
    .parameter "msgBodyPartId"
    .parameter "msgBodyEncoding"
    .parameter "msgBodyData"
    .parameter "msgBodyDataBytes"
    .parameter "msgEmailOrigDate"
    .parameter "msgEmailSender"
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter "msgEmailSubject"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "II",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "[[B",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .local p9, msgReceiverNameList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .local p10, msgReceiverDataList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .local p17, msgEmailFromList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .local p18, msgEmailToList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .local p19, msgEmailCcList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .local p20, msgEmailBccList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .local p21, msgEmailReplyToList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v2, -0x1

    iput v2, p0, Lcom/motorola/android/bmessage/MessageStruct;->mMsgType:I

    const/4 v2, -0x1

    iput v2, p0, Lcom/motorola/android/bmessage/MessageStruct;->mMsgReadStatus:I

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/motorola/android/bmessage/MessageStruct;->mMsgLocatedFolder:Ljava/lang/String;

    const/4 v2, -0x1

    iput v2, p0, Lcom/motorola/android/bmessage/MessageStruct;->mMsgLocatedFolderIndex:I

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/motorola/android/bmessage/MessageStruct;->mMsgSenderName:Ljava/lang/String;

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/motorola/android/bmessage/MessageStruct;->mMsgSenderData:Ljava/lang/String;

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/motorola/android/bmessage/MessageStruct;->mMsgReceiverNameList:Ljava/util/List;

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/motorola/android/bmessage/MessageStruct;->mMsgReceiverDataList:Ljava/util/List;

    const/4 v2, -0x1

    iput v2, p0, Lcom/motorola/android/bmessage/MessageStruct;->mMsgBodyPartId:I

    const/4 v2, -0x1

    iput v2, p0, Lcom/motorola/android/bmessage/MessageStruct;->mMsgBodyLength:I

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/motorola/android/bmessage/MessageStruct;->mMsgBodyData:Ljava/lang/String;

    const/4 v2, 0x0

    check-cast v2, [[B

    iput-object v2, p0, Lcom/motorola/android/bmessage/MessageStruct;->mMsgBodyDataBytes:[[B

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/motorola/android/bmessage/MessageStruct;->mMsgBodyEncoding:Ljava/lang/String;

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/motorola/android/bmessage/MessageStruct;->mMsgBodyLanguage:Ljava/lang/String;

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/motorola/android/bmessage/MessageStruct;->mMsgBodyCharset:Ljava/lang/String;

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/motorola/android/bmessage/MessageStruct;->mMsgEmailOrigDate:Ljava/lang/String;

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/motorola/android/bmessage/MessageStruct;->mMsgEmailFromList:Ljava/util/List;

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/motorola/android/bmessage/MessageStruct;->mMsgEmailSender:Ljava/lang/String;

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/motorola/android/bmessage/MessageStruct;->mMsgEmailToList:Ljava/util/List;

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/motorola/android/bmessage/MessageStruct;->mMsgEmailCcList:Ljava/util/List;

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/motorola/android/bmessage/MessageStruct;->mMsgEmailBccList:Ljava/util/List;

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/motorola/android/bmessage/MessageStruct;->mMsgEmailReplyToList:Ljava/util/List;

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/motorola/android/bmessage/MessageStruct;->mMsgEmailSubject:Ljava/lang/String;

    iput p1, p0, Lcom/motorola/android/bmessage/MessageStruct;->mMsgReadStatus:I

    iput-object p2, p0, Lcom/motorola/android/bmessage/MessageStruct;->mMsgLocatedFolder:Ljava/lang/String;

    iput-object p3, p0, Lcom/motorola/android/bmessage/MessageStruct;->mMsgBodyCharset:Ljava/lang/String;

    iput-object p4, p0, Lcom/motorola/android/bmessage/MessageStruct;->mMsgBodyLanguage:Ljava/lang/String;

    iput p5, p0, Lcom/motorola/android/bmessage/MessageStruct;->mMsgBodyLength:I

    iput p6, p0, Lcom/motorola/android/bmessage/MessageStruct;->mMsgType:I

    iput-object p7, p0, Lcom/motorola/android/bmessage/MessageStruct;->mMsgSenderName:Ljava/lang/String;

    iput-object p8, p0, Lcom/motorola/android/bmessage/MessageStruct;->mMsgSenderData:Ljava/lang/String;

    iput-object p9, p0, Lcom/motorola/android/bmessage/MessageStruct;->mMsgReceiverNameList:Ljava/util/List;

    iput-object p10, p0, Lcom/motorola/android/bmessage/MessageStruct;->mMsgReceiverDataList:Ljava/util/List;

    iput p11, p0, Lcom/motorola/android/bmessage/MessageStruct;->mMsgBodyPartId:I

    iput-object p12, p0, Lcom/motorola/android/bmessage/MessageStruct;->mMsgBodyEncoding:Ljava/lang/String;

    move-object/from16 v0, p13

    move-object v1, p0

    iput-object v0, v1, Lcom/motorola/android/bmessage/MessageStruct;->mMsgBodyData:Ljava/lang/String;

    move-object/from16 v0, p14

    move-object v1, p0

    iput-object v0, v1, Lcom/motorola/android/bmessage/MessageStruct;->mMsgBodyDataBytes:[[B

    move-object/from16 v0, p15

    move-object v1, p0

    iput-object v0, v1, Lcom/motorola/android/bmessage/MessageStruct;->mMsgEmailOrigDate:Ljava/lang/String;

    move-object/from16 v0, p17

    move-object v1, p0

    iput-object v0, v1, Lcom/motorola/android/bmessage/MessageStruct;->mMsgEmailFromList:Ljava/util/List;

    move-object/from16 v0, p16

    move-object v1, p0

    iput-object v0, v1, Lcom/motorola/android/bmessage/MessageStruct;->mMsgEmailSender:Ljava/lang/String;

    move-object/from16 v0, p18

    move-object v1, p0

    iput-object v0, v1, Lcom/motorola/android/bmessage/MessageStruct;->mMsgEmailToList:Ljava/util/List;

    move-object/from16 v0, p19

    move-object v1, p0

    iput-object v0, v1, Lcom/motorola/android/bmessage/MessageStruct;->mMsgEmailCcList:Ljava/util/List;

    move-object/from16 v0, p20

    move-object v1, p0

    iput-object v0, v1, Lcom/motorola/android/bmessage/MessageStruct;->mMsgEmailBccList:Ljava/util/List;

    move-object/from16 v0, p21

    move-object v1, p0

    iput-object v0, v1, Lcom/motorola/android/bmessage/MessageStruct;->mMsgEmailReplyToList:Ljava/util/List;

    move-object/from16 v0, p22

    move-object v1, p0

    iput-object v0, v1, Lcom/motorola/android/bmessage/MessageStruct;->mMsgEmailSubject:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public consolidateFields()V
    .locals 3

    .prologue
    const/4 v2, -0x1

    const-string v0, "bmessage.MessageStruct"

    const-string v1, "Entered consolidateFields."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/motorola/android/bmessage/MessageStruct;->mMsgReadStatus:I

    if-ne v0, v2, :cond_0

    const/4 v0, 0x1

    iput v0, p0, Lcom/motorola/android/bmessage/MessageStruct;->mMsgReadStatus:I

    :cond_0
    iget v0, p0, Lcom/motorola/android/bmessage/MessageStruct;->mMsgBodyPartId:I

    if-ne v0, v2, :cond_1

    const/4 v0, 0x0

    iput v0, p0, Lcom/motorola/android/bmessage/MessageStruct;->mMsgBodyPartId:I

    :cond_1
    const-string v0, ""

    iput-object v0, p0, Lcom/motorola/android/bmessage/MessageStruct;->mMsgSenderName:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/motorola/android/bmessage/MessageStruct;->mMsgReceiverNameList:Ljava/util/List;

    return-void
.end method

.method public getEmailBccList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    iget-object v0, p0, Lcom/motorola/android/bmessage/MessageStruct;->mMsgEmailBccList:Ljava/util/List;

    return-object v0
.end method

.method public getEmailCcList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    iget-object v0, p0, Lcom/motorola/android/bmessage/MessageStruct;->mMsgEmailCcList:Ljava/util/List;

    return-object v0
.end method

.method public getEmailFromList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    iget-object v0, p0, Lcom/motorola/android/bmessage/MessageStruct;->mMsgEmailFromList:Ljava/util/List;

    return-object v0
.end method

.method public getEmailOrigDate()Ljava/lang/String;
    .locals 3

    .prologue
    const-string v2, "bmessage.MessageStruct"

    iget-object v0, p0, Lcom/motorola/android/bmessage/MessageStruct;->mMsgEmailOrigDate:Ljava/lang/String;

    if-eqz v0, :cond_0

    const-string v0, "bmessage.MessageStruct"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getEmailOrigDate() return the string: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/motorola/android/bmessage/MessageStruct;->mMsgEmailOrigDate:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    iget-object v0, p0, Lcom/motorola/android/bmessage/MessageStruct;->mMsgEmailOrigDate:Ljava/lang/String;

    return-object v0

    :cond_0
    const-string v0, "bmessage.MessageStruct"

    const-string v0, "getEmailOrigDate() return (null) string."

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getEmailReplyToList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    iget-object v0, p0, Lcom/motorola/android/bmessage/MessageStruct;->mMsgEmailReplyToList:Ljava/util/List;

    return-object v0
.end method

.method public getEmailSender()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/motorola/android/bmessage/MessageStruct;->mMsgEmailSender:Ljava/lang/String;

    return-object v0
.end method

.method public getEmailSubject()Ljava/lang/String;
    .locals 3

    .prologue
    const-string v2, "bmessage.MessageStruct"

    iget-object v0, p0, Lcom/motorola/android/bmessage/MessageStruct;->mMsgEmailSubject:Ljava/lang/String;

    if-eqz v0, :cond_0

    const-string v0, "bmessage.MessageStruct"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getEmailSubject() return the string: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/motorola/android/bmessage/MessageStruct;->mMsgEmailSubject:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    iget-object v0, p0, Lcom/motorola/android/bmessage/MessageStruct;->mMsgEmailSubject:Ljava/lang/String;

    return-object v0

    :cond_0
    const-string v0, "bmessage.MessageStruct"

    const-string v0, "getEmailSubject() return (null) string."

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getEmailToList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    iget-object v0, p0, Lcom/motorola/android/bmessage/MessageStruct;->mMsgEmailToList:Ljava/util/List;

    return-object v0
.end method

.method public getMessageBodyCharset()Ljava/lang/String;
    .locals 3

    .prologue
    const-string v2, "bmessage.MessageStruct"

    iget-object v0, p0, Lcom/motorola/android/bmessage/MessageStruct;->mMsgBodyCharset:Ljava/lang/String;

    if-eqz v0, :cond_0

    const-string v0, "bmessage.MessageStruct"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getMessageBodyCharset() return the string: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/motorola/android/bmessage/MessageStruct;->mMsgBodyCharset:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    iget-object v0, p0, Lcom/motorola/android/bmessage/MessageStruct;->mMsgBodyCharset:Ljava/lang/String;

    return-object v0

    :cond_0
    const-string v0, "bmessage.MessageStruct"

    const-string v0, "getMessageBodyCharset() return (null) string."

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getMessageBodyData()Ljava/lang/String;
    .locals 3

    .prologue
    const-string v2, "bmessage.MessageStruct"

    iget-object v0, p0, Lcom/motorola/android/bmessage/MessageStruct;->mMsgBodyData:Ljava/lang/String;

    if-eqz v0, :cond_0

    const-string v0, "bmessage.MessageStruct"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getMessageBodyData() return the string: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/motorola/android/bmessage/MessageStruct;->mMsgBodyData:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    iget-object v0, p0, Lcom/motorola/android/bmessage/MessageStruct;->mMsgBodyData:Ljava/lang/String;

    return-object v0

    :cond_0
    const-string v0, "bmessage.MessageStruct"

    const-string v0, "getMessageBodyData() return (null) string."

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getMessageBodyDataBytes()[[B
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/motorola/android/bmessage/MessageStruct;->mMsgBodyDataBytes:[[B

    return-object v0
.end method

.method public getMessageBodyEncoding()Ljava/lang/String;
    .locals 3

    .prologue
    const-string v2, "bmessage.MessageStruct"

    iget-object v0, p0, Lcom/motorola/android/bmessage/MessageStruct;->mMsgBodyEncoding:Ljava/lang/String;

    if-eqz v0, :cond_0

    const-string v0, "bmessage.MessageStruct"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getMessageBodyEncoding() return the string: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/motorola/android/bmessage/MessageStruct;->mMsgBodyEncoding:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    iget-object v0, p0, Lcom/motorola/android/bmessage/MessageStruct;->mMsgBodyEncoding:Ljava/lang/String;

    return-object v0

    :cond_0
    const-string v0, "bmessage.MessageStruct"

    const-string v0, "getMessageBodyEncoding() return (null) string."

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getMessageBodyLanguage()Ljava/lang/String;
    .locals 3

    .prologue
    const-string v2, "bmessage.MessageStruct"

    iget-object v0, p0, Lcom/motorola/android/bmessage/MessageStruct;->mMsgBodyLanguage:Ljava/lang/String;

    if-eqz v0, :cond_0

    const-string v0, "bmessage.MessageStruct"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getMessageBodyLanguage() return the string: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/motorola/android/bmessage/MessageStruct;->mMsgBodyLanguage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    iget-object v0, p0, Lcom/motorola/android/bmessage/MessageStruct;->mMsgBodyLanguage:Ljava/lang/String;

    return-object v0

    :cond_0
    const-string v0, "bmessage.MessageStruct"

    const-string v0, "getMessageBodyLanguage() return (null) string."

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getMessageBodyLength()I
    .locals 5

    .prologue
    const-string v4, "bmessage.MessageStruct"

    iget-object v0, p0, Lcom/motorola/android/bmessage/MessageStruct;->mMsgBodyData:Ljava/lang/String;

    if-eqz v0, :cond_0

    const-string v0, "bmessage.MessageStruct"

    const-string v0, "getMessageBodyLength() return the int: (%d)"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/motorola/android/bmessage/MessageStruct;->mMsgBodyData:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/motorola/android/bmessage/MessageStruct;->mMsgBodyData:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const-string v0, "bmessage.MessageStruct"

    const-string v0, "getMessageBodyLength() return (-1) length."

    invoke-static {v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getMessageBodyPartId()I
    .locals 1

    .prologue
    iget v0, p0, Lcom/motorola/android/bmessage/MessageStruct;->mMsgBodyPartId:I

    return v0
.end method

.method public getMessageLocatedFolder()Ljava/lang/String;
    .locals 3

    .prologue
    const-string v2, "bmessage.MessageStruct"

    iget-object v0, p0, Lcom/motorola/android/bmessage/MessageStruct;->mMsgLocatedFolder:Ljava/lang/String;

    if-eqz v0, :cond_0

    const-string v0, "bmessage.MessageStruct"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getMessageLocatedFolder() return the string: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/motorola/android/bmessage/MessageStruct;->mMsgLocatedFolder:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    iget-object v0, p0, Lcom/motorola/android/bmessage/MessageStruct;->mMsgLocatedFolder:Ljava/lang/String;

    return-object v0

    :cond_0
    const-string v0, "bmessage.MessageStruct"

    const-string v0, "getMessageLocatedFolder() return (null) string."

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getMessageReadStatus()I
    .locals 2

    .prologue
    const-string v0, "bmessage.MessageStruct"

    const-string v1, "getMessageReadStatus"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/motorola/android/bmessage/MessageStruct;->mMsgReadStatus:I

    return v0
.end method

.method public getMessageReceiverDataList()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const-string v3, "bmessage.MessageStruct"

    iget-object v0, p0, Lcom/motorola/android/bmessage/MessageStruct;->mMsgReceiverDataList:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/motorola/android/bmessage/MessageStruct;->mMsgReceiverDataList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-lt v0, v1, :cond_0

    const-string v0, "bmessage.MessageStruct"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getMessageReceiverDataList() list(0) is: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lcom/motorola/android/bmessage/MessageStruct;->mMsgReceiverDataList:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    iget-object v0, p0, Lcom/motorola/android/bmessage/MessageStruct;->mMsgReceiverDataList:Ljava/util/List;

    return-object v0

    :cond_0
    const-string v0, "bmessage.MessageStruct"

    const-string v0, "getMessageReceiverDataList() return an empty list or null."

    invoke-static {v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getMessageReceiverNameList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    iget-object v0, p0, Lcom/motorola/android/bmessage/MessageStruct;->mMsgReceiverNameList:Ljava/util/List;

    return-object v0
.end method

.method public getMessageSenderData()Ljava/lang/String;
    .locals 3

    .prologue
    const-string v2, "bmessage.MessageStruct"

    iget-object v0, p0, Lcom/motorola/android/bmessage/MessageStruct;->mMsgSenderData:Ljava/lang/String;

    if-eqz v0, :cond_0

    const-string v0, "bmessage.MessageStruct"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getMessageSenderData() return the string: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/motorola/android/bmessage/MessageStruct;->mMsgSenderData:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    iget-object v0, p0, Lcom/motorola/android/bmessage/MessageStruct;->mMsgSenderData:Ljava/lang/String;

    return-object v0

    :cond_0
    const-string v0, "bmessage.MessageStruct"

    const-string v0, "getMessageSenderData() return (null) string."

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getMessageSenderName()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/motorola/android/bmessage/MessageStruct;->mMsgSenderName:Ljava/lang/String;

    return-object v0
.end method

.method public getMessageType()I
    .locals 2

    .prologue
    const-string v0, "bmessage.MessageStruct"

    const-string v1, "getMessageType"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/motorola/android/bmessage/MessageStruct;->mMsgType:I

    return v0
.end method

.method public setEmailBccList(Ljava/util/List;)V
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, bcclist:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const-string v3, "bmessage.MessageStruct"

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_1

    :cond_0
    const-string v0, "bmessage.MessageStruct"

    const-string v0, "This bMessage object has no valid email bcc field."

    invoke-static {v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .end local p0
    :goto_0
    return-void

    .restart local p0
    :cond_1
    iput-object p1, p0, Lcom/motorola/android/bmessage/MessageStruct;->mMsgEmailBccList:Ljava/util/List;

    const-string v0, "bmessage.MessageStruct"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setEmailBccList() set string(0): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/motorola/android/bmessage/MessageStruct;->mMsgEmailBccList:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setEmailCcList(Ljava/util/List;)V
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, cclist:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const-string v3, "bmessage.MessageStruct"

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_1

    :cond_0
    const-string v0, "bmessage.MessageStruct"

    const-string v0, "This bMessage object has no valid email cc field."

    invoke-static {v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .end local p0
    :goto_0
    return-void

    .restart local p0
    :cond_1
    iput-object p1, p0, Lcom/motorola/android/bmessage/MessageStruct;->mMsgEmailCcList:Ljava/util/List;

    const-string v0, "bmessage.MessageStruct"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setEmailCcList() set string(0): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/motorola/android/bmessage/MessageStruct;->mMsgEmailCcList:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setEmailFromList(Ljava/util/List;)V
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, fromlist:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const-string v3, "bmessage.MessageStruct"

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_1

    :cond_0
    const-string v0, "bmessage.MessageStruct"

    const-string v0, "This bMessage object has no valid email from field."

    invoke-static {v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .end local p0
    :goto_0
    return-void

    .restart local p0
    :cond_1
    iput-object p1, p0, Lcom/motorola/android/bmessage/MessageStruct;->mMsgEmailFromList:Ljava/util/List;

    const-string v0, "bmessage.MessageStruct"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setEmailFromList() set string(0): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/motorola/android/bmessage/MessageStruct;->mMsgEmailFromList:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setEmailOrigDate(Ljava/lang/String;)V
    .locals 3
    .parameter "origdate"

    .prologue
    const-string v2, "bmessage.MessageStruct"

    if-nez p1, :cond_0

    const-string v0, "bmessage.MessageStruct"

    const-string v0, "This bMessage object has no valid email origdate field."

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    iput-object p1, p0, Lcom/motorola/android/bmessage/MessageStruct;->mMsgEmailOrigDate:Ljava/lang/String;

    const-string v0, "bmessage.MessageStruct"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setEmailOrigDate() set string: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/motorola/android/bmessage/MessageStruct;->mMsgEmailOrigDate:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setEmailReplyToList(Ljava/util/List;)V
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, replytolist:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const-string v3, "bmessage.MessageStruct"

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_1

    :cond_0
    const-string v0, "bmessage.MessageStruct"

    const-string v0, "This bMessage object has no valid email replyto field."

    invoke-static {v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .end local p0
    :goto_0
    return-void

    .restart local p0
    :cond_1
    iput-object p1, p0, Lcom/motorola/android/bmessage/MessageStruct;->mMsgEmailReplyToList:Ljava/util/List;

    const-string v0, "bmessage.MessageStruct"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setEmailReplyToList() set string(0): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/motorola/android/bmessage/MessageStruct;->mMsgEmailReplyToList:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setEmailSender(Ljava/lang/String;)V
    .locals 3
    .parameter "sender"

    .prologue
    const-string v2, "bmessage.MessageStruct"

    if-nez p1, :cond_0

    const-string v0, "bmessage.MessageStruct"

    const-string v0, "This bMessage object has no valid email sender field."

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    iput-object p1, p0, Lcom/motorola/android/bmessage/MessageStruct;->mMsgEmailSender:Ljava/lang/String;

    const-string v0, "bmessage.MessageStruct"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setEmailSender() set string: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/motorola/android/bmessage/MessageStruct;->mMsgEmailSender:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setEmailSubject(Ljava/lang/String;)V
    .locals 3
    .parameter "subject"

    .prologue
    const-string v2, "bmessage.MessageStruct"

    if-nez p1, :cond_0

    const-string v0, "bmessage.MessageStruct"

    const-string v0, "This bMessage object has no valid email subject field."

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    iput-object p1, p0, Lcom/motorola/android/bmessage/MessageStruct;->mMsgEmailSubject:Ljava/lang/String;

    const-string v0, "bmessage.MessageStruct"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setEmailSubject() set string: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/motorola/android/bmessage/MessageStruct;->mMsgEmailSubject:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setEmailToList(Ljava/util/List;)V
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, tolist:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const-string v3, "bmessage.MessageStruct"

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_1

    :cond_0
    const-string v0, "bmessage.MessageStruct"

    const-string v0, "This bMessage object has no valid email to field."

    invoke-static {v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .end local p0
    :goto_0
    return-void

    .restart local p0
    :cond_1
    iput-object p1, p0, Lcom/motorola/android/bmessage/MessageStruct;->mMsgEmailToList:Ljava/util/List;

    const-string v0, "bmessage.MessageStruct"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setEmailToList() set string(0): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/motorola/android/bmessage/MessageStruct;->mMsgEmailToList:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setMessageBodyCharset(Ljava/lang/String;)V
    .locals 3
    .parameter "charset"

    .prologue
    const-string v2, "bmessage.MessageStruct"

    if-nez p1, :cond_0

    const-string v0, "bmessage.MessageStruct"

    const-string v0, "This bMessage object has no valid msg body charset field."

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    iput-object p1, p0, Lcom/motorola/android/bmessage/MessageStruct;->mMsgBodyCharset:Ljava/lang/String;

    const-string v0, "bmessage.MessageStruct"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setMessageBodyCharset() set string: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/motorola/android/bmessage/MessageStruct;->mMsgBodyCharset:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setMessageBodyData(Ljava/lang/String;)V
    .locals 3
    .parameter "data"

    .prologue
    const-string v2, "bmessage.MessageStruct"

    if-nez p1, :cond_0

    const-string v0, "bmessage.MessageStruct"

    const-string v0, "This bMessage object has no valid msg body data field."

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    iput-object p1, p0, Lcom/motorola/android/bmessage/MessageStruct;->mMsgBodyData:Ljava/lang/String;

    const-string v0, "bmessage.MessageStruct"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setMessageBodyData() set the body string: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/motorola/android/bmessage/MessageStruct;->mMsgBodyData:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setMessageBodyDataBytes([[B)V
    .locals 0
    .parameter "bytes"

    .prologue
    iput-object p1, p0, Lcom/motorola/android/bmessage/MessageStruct;->mMsgBodyDataBytes:[[B

    return-void
.end method

.method public setMessageBodyEncoding(Ljava/lang/String;)V
    .locals 3
    .parameter "encoding"

    .prologue
    const-string v2, "bmessage.MessageStruct"

    if-nez p1, :cond_0

    const-string v0, "bmessage.MessageStruct"

    const-string v0, "This bMessage object has no valid msg body encoding field."

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    iput-object p1, p0, Lcom/motorola/android/bmessage/MessageStruct;->mMsgBodyEncoding:Ljava/lang/String;

    const-string v0, "bmessage.MessageStruct"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setMessageBodyEncoding() set string: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/motorola/android/bmessage/MessageStruct;->mMsgBodyEncoding:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setMessageBodyLanguage(Ljava/lang/String;)V
    .locals 3
    .parameter "language"

    .prologue
    const-string v2, "bmessage.MessageStruct"

    if-nez p1, :cond_0

    const-string v0, "bmessage.MessageStruct"

    const-string v0, "This bMessage object has no valid msg body language field."

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    iput-object p1, p0, Lcom/motorola/android/bmessage/MessageStruct;->mMsgBodyLanguage:Ljava/lang/String;

    const-string v0, "bmessage.MessageStruct"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setMessageBodyLanguage() set string: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/motorola/android/bmessage/MessageStruct;->mMsgBodyLanguage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setMessageBodyLength(I)V
    .locals 0
    .parameter "len"

    .prologue
    iput p1, p0, Lcom/motorola/android/bmessage/MessageStruct;->mMsgBodyLength:I

    return-void
.end method

.method public setMessageBodyPartId(I)V
    .locals 0
    .parameter "id"

    .prologue
    iput p1, p0, Lcom/motorola/android/bmessage/MessageStruct;->mMsgBodyPartId:I

    return-void
.end method

.method public setMessageLocatedFolder(Ljava/lang/String;)V
    .locals 3
    .parameter "folder"

    .prologue
    const-string v2, "bmessage.MessageStruct"

    if-nez p1, :cond_0

    const-string v0, "bmessage.MessageStruct"

    const-string v0, "This bMessage object has no valid msg folder field."

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    iput-object p1, p0, Lcom/motorola/android/bmessage/MessageStruct;->mMsgLocatedFolder:Ljava/lang/String;

    const-string v0, "bmessage.MessageStruct"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setMessageLocatedFolder() set string: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/motorola/android/bmessage/MessageStruct;->mMsgLocatedFolder:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setMessageReadStatus(I)V
    .locals 2
    .parameter "status"

    .prologue
    iput p1, p0, Lcom/motorola/android/bmessage/MessageStruct;->mMsgReadStatus:I

    const-string v0, "bmessage.MessageStruct"

    const-string v1, "setMessageReadStatus"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setMessageReceiverDataList(Ljava/util/List;)V
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, datalist:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const-string v3, "bmessage.MessageStruct"

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_1

    :cond_0
    const-string v0, "bmessage.MessageStruct"

    const-string v0, "This bMessage object has no valid msg receiver data field."

    invoke-static {v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .end local p0
    :goto_0
    return-void

    .restart local p0
    :cond_1
    iput-object p1, p0, Lcom/motorola/android/bmessage/MessageStruct;->mMsgReceiverDataList:Ljava/util/List;

    const-string v0, "bmessage.MessageStruct"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setMessageReceiverDataList() set string(0): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/motorola/android/bmessage/MessageStruct;->mMsgReceiverDataList:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setMessageReceiverNameList(Ljava/util/List;)V
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, namelist:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const-string v3, "bmessage.MessageStruct"

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_1

    :cond_0
    const-string v0, "bmessage.MessageStruct"

    const-string v0, "This bMessage object has no valid msg receiver name field."

    invoke-static {v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .end local p0
    :goto_0
    return-void

    .restart local p0
    :cond_1
    iput-object p1, p0, Lcom/motorola/android/bmessage/MessageStruct;->mMsgReceiverNameList:Ljava/util/List;

    const-string v0, "bmessage.MessageStruct"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setMessageReceiverNameList() set string(0): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/motorola/android/bmessage/MessageStruct;->mMsgReceiverNameList:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setMessageSenderData(Ljava/lang/String;)V
    .locals 3
    .parameter "data"

    .prologue
    const-string v2, "bmessage.MessageStruct"

    if-nez p1, :cond_0

    const-string v0, "bmessage.MessageStruct"

    const-string v0, "This bMessage object has no valid msg sender data field."

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    iput-object p1, p0, Lcom/motorola/android/bmessage/MessageStruct;->mMsgSenderData:Ljava/lang/String;

    const-string v0, "bmessage.MessageStruct"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setMessageSenderData() set string: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/motorola/android/bmessage/MessageStruct;->mMsgSenderData:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setMessageSenderName(Ljava/lang/String;)V
    .locals 3
    .parameter "name"

    .prologue
    const-string v2, "bmessage.MessageStruct"

    if-nez p1, :cond_0

    const-string v0, "bmessage.MessageStruct"

    const-string v0, "This bMessage object has no valid msg sender name field."

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    iput-object p1, p0, Lcom/motorola/android/bmessage/MessageStruct;->mMsgSenderName:Ljava/lang/String;

    const-string v0, "bmessage.MessageStruct"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setMessageSenderName() set string: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/motorola/android/bmessage/MessageStruct;->mMsgSenderName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setMessageType(I)V
    .locals 2
    .parameter "type"

    .prologue
    iput p1, p0, Lcom/motorola/android/bmessage/MessageStruct;->mMsgType:I

    const-string v0, "bmessage.MessageStruct"

    const-string v1, "setMessageType"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
