.class public Lcom/broadcom/bt/util/bmsg/BMessageBody;
.super Lcom/broadcom/bt/util/bmsg/BMessageBase;
.source "BMessageBody.java"


# static fields
.field private static final ERR_CHECK:Z = true

.field private static final TAG:Ljava/lang/String; = "BMessageBody"


# instance fields
.field private mParent:Lcom/broadcom/bt/util/bmsg/BMessageEnvelope;


# direct methods
.method constructor <init>(Lcom/broadcom/bt/util/bmsg/BMessageEnvelope;I)V
    .locals 0
    .parameter "parent"
    .parameter "nativeRef"

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/broadcom/bt/util/bmsg/BMessageBase;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/broadcom/bt/util/bmsg/BMessageBody;->mParent:Lcom/broadcom/bt/util/bmsg/BMessageEnvelope;

    .line 30
    invoke-virtual {p0, p2}, Lcom/broadcom/bt/util/bmsg/BMessageBody;->setNativeRef(I)Z

    .line 31
    return-void
.end method


# virtual methods
.method public addContent()Lcom/broadcom/bt/util/bmsg/BMessageBodyContent;
    .locals 2

    .prologue
    .line 163
    invoke-virtual {p0}, Lcom/broadcom/bt/util/bmsg/BMessageBody;->isNativeCreated()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 164
    iget v1, p0, Lcom/broadcom/bt/util/bmsg/BMessageBase;->mNativeObjectRef:I

    invoke-static {v1}, Lcom/broadcom/bt/util/bmsg/BMessageManager;->addBBodyCont(I)I

    move-result v0

    .line 165
    .local v0, childNativeObject:I
    if-lez v0, :cond_0

    .line 166
    new-instance v1, Lcom/broadcom/bt/util/bmsg/BMessageBodyContent;

    invoke-direct {v1, p0, v0}, Lcom/broadcom/bt/util/bmsg/BMessageBodyContent;-><init>(Lcom/broadcom/bt/util/bmsg/BMessageBody;I)V

    .line 169
    .end local v0           #childNativeObject:I
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getCharSet()B
    .locals 1

    .prologue
    .line 120
    invoke-virtual {p0}, Lcom/broadcom/bt/util/bmsg/BMessageBody;->isNativeCreated()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/broadcom/bt/util/bmsg/BMessageBase;->mNativeObjectRef:I

    invoke-static {v0}, Lcom/broadcom/bt/util/bmsg/BMessageManager;->getBBodyCharset(I)B

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x2

    goto :goto_0
.end method

.method public getContent()Lcom/broadcom/bt/util/bmsg/BMessageBodyContent;
    .locals 2

    .prologue
    .line 173
    invoke-virtual {p0}, Lcom/broadcom/bt/util/bmsg/BMessageBody;->isNativeCreated()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 174
    iget v1, p0, Lcom/broadcom/bt/util/bmsg/BMessageBase;->mNativeObjectRef:I

    invoke-static {v1}, Lcom/broadcom/bt/util/bmsg/BMessageManager;->getBBodyCont(I)I

    move-result v0

    .line 175
    .local v0, childNativeObject:I
    if-lez v0, :cond_0

    .line 176
    new-instance v1, Lcom/broadcom/bt/util/bmsg/BMessageBodyContent;

    invoke-direct {v1, p0, v0}, Lcom/broadcom/bt/util/bmsg/BMessageBodyContent;-><init>(Lcom/broadcom/bt/util/bmsg/BMessageBody;I)V

    .line 179
    .end local v0           #childNativeObject:I
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getEncoding()B
    .locals 1

    .prologue
    .line 71
    invoke-virtual {p0}, Lcom/broadcom/bt/util/bmsg/BMessageBody;->isNativeCreated()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/broadcom/bt/util/bmsg/BMessageBase;->mNativeObjectRef:I

    invoke-static {v0}, Lcom/broadcom/bt/util/bmsg/BMessageManager;->getBBodyEnc(I)B

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/16 v0, 0xe

    goto :goto_0
.end method

.method public getLanguage()B
    .locals 1

    .prologue
    .line 158
    invoke-virtual {p0}, Lcom/broadcom/bt/util/bmsg/BMessageBody;->isNativeCreated()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/broadcom/bt/util/bmsg/BMessageBase;->mNativeObjectRef:I

    invoke-static {v0}, Lcom/broadcom/bt/util/bmsg/BMessageManager;->getBBodyLang(I)B

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getPartId()I
    .locals 1

    .prologue
    .line 82
    invoke-virtual {p0}, Lcom/broadcom/bt/util/bmsg/BMessageBody;->isNativeCreated()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/broadcom/bt/util/bmsg/BMessageBase;->mNativeObjectRef:I

    invoke-static {v0}, Lcom/broadcom/bt/util/bmsg/BMessageManager;->getBBodyPartId(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :goto_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isMultipart()Z
    .locals 1

    .prologue
    .line 91
    invoke-virtual {p0}, Lcom/broadcom/bt/util/bmsg/BMessageBody;->isNativeCreated()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/broadcom/bt/util/bmsg/BMessageBase;->mNativeObjectRef:I

    invoke-static {v0}, Lcom/broadcom/bt/util/bmsg/BMessageManager;->isBBodyMultiP(I)Z

    move-result v0

    goto :goto_0
.end method

.method public setCharSet(B)V
    .locals 3
    .parameter "charset"

    .prologue
    .line 104
    if-ltz p1, :cond_0

    const/4 v0, 0x1

    if-le p1, v0, :cond_1

    .line 106
    :cond_0
    const-string v0, "BMessageBody"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid charset: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    :goto_0
    return-void

    .line 109
    :cond_1
    iget v0, p0, Lcom/broadcom/bt/util/bmsg/BMessageBase;->mNativeObjectRef:I

    invoke-static {v0, p1}, Lcom/broadcom/bt/util/bmsg/BMessageManager;->setBBodyCharset(IB)V

    goto :goto_0
.end method

.method public setEncoding(B)V
    .locals 3
    .parameter "encoding"

    .prologue
    .line 55
    if-ltz p1, :cond_0

    const/16 v0, 0xe

    if-lt p1, v0, :cond_1

    .line 57
    :cond_0
    const-string v0, "BMessageBody"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid encoding: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    :goto_0
    return-void

    .line 60
    :cond_1
    iget v0, p0, Lcom/broadcom/bt/util/bmsg/BMessageBase;->mNativeObjectRef:I

    invoke-static {v0, p1}, Lcom/broadcom/bt/util/bmsg/BMessageManager;->setBBodyEnc(IB)V

    goto :goto_0
.end method

.method public setLanguage(B)V
    .locals 3
    .parameter "lang"

    .prologue
    .line 142
    if-eqz p1, :cond_1

    const/4 v0, 0x2

    if-lt p1, v0, :cond_0

    const/16 v0, 0xa

    if-le p1, v0, :cond_1

    .line 144
    :cond_0
    const-string v0, "BMessageBody"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid language: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    :goto_0
    return-void

    .line 147
    :cond_1
    iget v0, p0, Lcom/broadcom/bt/util/bmsg/BMessageBase;->mNativeObjectRef:I

    invoke-static {v0, p1}, Lcom/broadcom/bt/util/bmsg/BMessageManager;->setBBodyLang(IB)V

    goto :goto_0
.end method

.method public setPartId(I)V
    .locals 1
    .parameter "partId"

    .prologue
    .line 76
    invoke-virtual {p0}, Lcom/broadcom/bt/util/bmsg/BMessageBody;->isNativeCreated()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 77
    iget v0, p0, Lcom/broadcom/bt/util/bmsg/BMessageBase;->mNativeObjectRef:I

    invoke-static {v0, p1}, Lcom/broadcom/bt/util/bmsg/BMessageManager;->setBBodyPartId(II)V

    .line 79
    :cond_0
    return-void
.end method
