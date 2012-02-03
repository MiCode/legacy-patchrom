.class public Lcom/broadcom/bt/util/bmsg/BMessageBodyContent;
.super Lcom/broadcom/bt/util/bmsg/BMessageBase;
.source "BMessageBodyContent.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "BMessageBodyContent"


# instance fields
.field private mMsgBody:Lcom/broadcom/bt/util/bmsg/BMessageBody;

.field private mPreviousBodyContent:Lcom/broadcom/bt/util/bmsg/BMessageBodyContent;


# direct methods
.method constructor <init>(Lcom/broadcom/bt/util/bmsg/BMessageBody;I)V
    .locals 0
    .parameter "bMsgBody"
    .parameter "nativeRef"

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/broadcom/bt/util/bmsg/BMessageBase;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/broadcom/bt/util/bmsg/BMessageBodyContent;->mMsgBody:Lcom/broadcom/bt/util/bmsg/BMessageBody;

    .line 34
    invoke-virtual {p0, p2}, Lcom/broadcom/bt/util/bmsg/BMessageBodyContent;->setNativeRef(I)Z

    .line 35
    return-void
.end method

.method private constructor <init>(Lcom/broadcom/bt/util/bmsg/BMessageBodyContent;I)V
    .locals 1
    .parameter "previousBodyContent"
    .parameter "nativeRef"

    .prologue
    .line 38
    iget-object v0, p1, Lcom/broadcom/bt/util/bmsg/BMessageBodyContent;->mMsgBody:Lcom/broadcom/bt/util/bmsg/BMessageBody;

    invoke-direct {p0, v0, p2}, Lcom/broadcom/bt/util/bmsg/BMessageBodyContent;-><init>(Lcom/broadcom/bt/util/bmsg/BMessageBody;I)V

    .line 39
    iput-object p1, p0, Lcom/broadcom/bt/util/bmsg/BMessageBodyContent;->mPreviousBodyContent:Lcom/broadcom/bt/util/bmsg/BMessageBodyContent;

    .line 40
    return-void
.end method


# virtual methods
.method public addMessageContent(Ljava/lang/String;)V
    .locals 1
    .parameter "content"

    .prologue
    .line 83
    invoke-virtual {p0}, Lcom/broadcom/bt/util/bmsg/BMessageBodyContent;->isNativeCreated()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 84
    iget v0, p0, Lcom/broadcom/bt/util/bmsg/BMessageBase;->mNativeObjectRef:I

    invoke-static {v0, p1}, Lcom/broadcom/bt/util/bmsg/BMessageManager;->addBContMsg(ILjava/lang/String;)V

    .line 86
    :cond_0
    return-void
.end method

.method public addSubject(Ljava/lang/String;)V
    .locals 0
    .parameter "subject"

    .prologue
    .line 75
    return-void
.end method

.method public getFirstMessageContent()Ljava/lang/String;
    .locals 1

    .prologue
    .line 89
    invoke-virtual {p0}, Lcom/broadcom/bt/util/bmsg/BMessageBodyContent;->isNativeCreated()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/broadcom/bt/util/bmsg/BMessageBase;->mNativeObjectRef:I

    invoke-static {v0}, Lcom/broadcom/bt/util/bmsg/BMessageManager;->getBCont1stMsg(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getNextContent()Lcom/broadcom/bt/util/bmsg/BMessageBodyContent;
    .locals 2

    .prologue
    .line 46
    invoke-virtual {p0}, Lcom/broadcom/bt/util/bmsg/BMessageBodyContent;->isNativeCreated()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 47
    iget v1, p0, Lcom/broadcom/bt/util/bmsg/BMessageBase;->mNativeObjectRef:I

    invoke-static {v1}, Lcom/broadcom/bt/util/bmsg/BMessageManager;->getBContNext(I)I

    move-result v0

    .line 48
    .local v0, childNativeObject:I
    if-lez v0, :cond_0

    .line 49
    new-instance v1, Lcom/broadcom/bt/util/bmsg/BMessageBodyContent;

    invoke-direct {v1, p0, v0}, Lcom/broadcom/bt/util/bmsg/BMessageBodyContent;-><init>(Lcom/broadcom/bt/util/bmsg/BMessageBodyContent;I)V

    .line 52
    .end local v0           #childNativeObject:I
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getNextMessageContent()Ljava/lang/String;
    .locals 1

    .prologue
    .line 94
    invoke-virtual {p0}, Lcom/broadcom/bt/util/bmsg/BMessageBodyContent;->isNativeCreated()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/broadcom/bt/util/bmsg/BMessageBase;->mNativeObjectRef:I

    invoke-static {v0}, Lcom/broadcom/bt/util/bmsg/BMessageManager;->getBContNextMsg(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getSubject()Ljava/lang/String;
    .locals 1

    .prologue
    .line 79
    const-string v0, ""

    return-object v0
.end method
