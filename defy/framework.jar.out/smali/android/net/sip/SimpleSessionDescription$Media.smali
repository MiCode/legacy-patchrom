.class public Landroid/net/sip/SimpleSessionDescription$Media;
.super Landroid/net/sip/SimpleSessionDescription$Fields;
.source "SimpleSessionDescription.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/sip/SimpleSessionDescription;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Media"
.end annotation


# instance fields
.field private mFormats:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mPort:I

.field private final mPortCount:I

.field private final mProtocol:Ljava/lang/String;

.field private final mType:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;IILjava/lang/String;)V
    .locals 1
    .parameter "type"
    .parameter "port"
    .parameter "portCount"
    .parameter "protocol"

    .prologue
    const-string v0, "icbka"

    invoke-direct {p0, v0}, Landroid/net/sip/SimpleSessionDescription$Fields;-><init>(Ljava/lang/String;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/net/sip/SimpleSessionDescription$Media;->mFormats:Ljava/util/ArrayList;

    iput-object p1, p0, Landroid/net/sip/SimpleSessionDescription$Media;->mType:Ljava/lang/String;

    iput p2, p0, Landroid/net/sip/SimpleSessionDescription$Media;->mPort:I

    iput p3, p0, Landroid/net/sip/SimpleSessionDescription$Media;->mPortCount:I

    iput-object p4, p0, Landroid/net/sip/SimpleSessionDescription$Media;->mProtocol:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;IILjava/lang/String;Landroid/net/sip/SimpleSessionDescription$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/net/sip/SimpleSessionDescription$Media;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Landroid/net/sip/SimpleSessionDescription$Media;Ljava/lang/StringBuilder;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-direct {p0, p1}, Landroid/net/sip/SimpleSessionDescription$Media;->write(Ljava/lang/StringBuilder;)V

    return-void
.end method

.method private write(Ljava/lang/StringBuilder;)V
    .locals 5
    .parameter "buffer"

    .prologue
    const/16 v4, 0x20

    const-string v2, "m="

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/net/sip/SimpleSessionDescription$Media;->mType:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/net/sip/SimpleSessionDescription$Media;->mPort:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget v2, p0, Landroid/net/sip/SimpleSessionDescription$Media;->mPortCount:I

    const/4 v3, 0x1

    if-eq v2, v3, :cond_0

    const/16 v2, 0x2f

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/net/sip/SimpleSessionDescription$Media;->mPortCount:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :cond_0
    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/net/sip/SimpleSessionDescription$Media;->mProtocol:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroid/net/sip/SimpleSessionDescription$Media;->mFormats:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .local v0, format:Ljava/lang/String;
    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .end local v0           #format:Ljava/lang/String;
    :cond_1
    const-string v2, "\r\n"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #calls: Landroid/net/sip/SimpleSessionDescription$Fields;->write(Ljava/lang/StringBuilder;)V
    invoke-static {p0, p1}, Landroid/net/sip/SimpleSessionDescription$Fields;->access$200(Landroid/net/sip/SimpleSessionDescription$Fields;Ljava/lang/StringBuilder;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic getAddress()Ljava/lang/String;
    .locals 1

    .prologue
    invoke-super {p0}, Landroid/net/sip/SimpleSessionDescription$Fields;->getAddress()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getAttribute(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    invoke-super {p0, p1}, Landroid/net/sip/SimpleSessionDescription$Fields;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getAttributeNames()[Ljava/lang/String;
    .locals 1

    .prologue
    invoke-super {p0}, Landroid/net/sip/SimpleSessionDescription$Fields;->getAttributeNames()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getBandwidth(Ljava/lang/String;)I
    .locals 1
    .parameter "x0"

    .prologue
    invoke-super {p0, p1}, Landroid/net/sip/SimpleSessionDescription$Fields;->getBandwidth(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic getBandwidthTypes()[Ljava/lang/String;
    .locals 1

    .prologue
    invoke-super {p0}, Landroid/net/sip/SimpleSessionDescription$Fields;->getBandwidthTypes()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getEncryptionKey()Ljava/lang/String;
    .locals 1

    .prologue
    invoke-super {p0}, Landroid/net/sip/SimpleSessionDescription$Fields;->getEncryptionKey()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getEncryptionMethod()Ljava/lang/String;
    .locals 1

    .prologue
    invoke-super {p0}, Landroid/net/sip/SimpleSessionDescription$Fields;->getEncryptionMethod()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFmtp(I)Ljava/lang/String;
    .locals 2
    .parameter "type"

    .prologue
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "a=fmtp:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x20

    #calls: Landroid/net/sip/SimpleSessionDescription$Fields;->get(Ljava/lang/String;C)Ljava/lang/String;
    invoke-static {p0, v0, v1}, Landroid/net/sip/SimpleSessionDescription$Fields;->access$400(Landroid/net/sip/SimpleSessionDescription$Fields;Ljava/lang/String;C)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFmtp(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "format"

    .prologue
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "a=fmtp:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x20

    #calls: Landroid/net/sip/SimpleSessionDescription$Fields;->get(Ljava/lang/String;C)Ljava/lang/String;
    invoke-static {p0, v0, v1}, Landroid/net/sip/SimpleSessionDescription$Fields;->access$400(Landroid/net/sip/SimpleSessionDescription$Fields;Ljava/lang/String;C)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFormats()[Ljava/lang/String;
    .locals 2

    .prologue
    iget-object v0, p0, Landroid/net/sip/SimpleSessionDescription$Media;->mFormats:Ljava/util/ArrayList;

    iget-object v1, p0, Landroid/net/sip/SimpleSessionDescription$Media;->mFormats:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, [Ljava/lang/String;

    return-object p0
.end method

.method public getPort()I
    .locals 1

    .prologue
    iget v0, p0, Landroid/net/sip/SimpleSessionDescription$Media;->mPort:I

    return v0
.end method

.method public getPortCount()I
    .locals 1

    .prologue
    iget v0, p0, Landroid/net/sip/SimpleSessionDescription$Media;->mPortCount:I

    return v0
.end method

.method public getProtocol()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/net/sip/SimpleSessionDescription$Media;->mProtocol:Ljava/lang/String;

    return-object v0
.end method

.method public getRtpPayloadTypes()[I
    .locals 5

    .prologue
    iget-object v4, p0, Landroid/net/sip/SimpleSessionDescription$Media;->mFormats:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    new-array v3, v4, [I

    .local v3, types:[I
    const/4 v2, 0x0

    .local v2, length:I
    iget-object v4, p0, Landroid/net/sip/SimpleSessionDescription$Media;->mFormats:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .local v0, format:Ljava/lang/String;
    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    aput v4, v3, v2
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .end local v0           #format:Ljava/lang/String;
    :cond_0
    invoke-static {v3, v2}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v4

    return-object v4

    .restart local v0       #format:Ljava/lang/String;
    :catch_0
    move-exception v4

    goto :goto_0
.end method

.method public getRtpmap(I)Ljava/lang/String;
    .locals 2
    .parameter "type"

    .prologue
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "a=rtpmap:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x20

    #calls: Landroid/net/sip/SimpleSessionDescription$Fields;->get(Ljava/lang/String;C)Ljava/lang/String;
    invoke-static {p0, v0, v1}, Landroid/net/sip/SimpleSessionDescription$Fields;->access$400(Landroid/net/sip/SimpleSessionDescription$Fields;Ljava/lang/String;C)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/net/sip/SimpleSessionDescription$Media;->mType:Ljava/lang/String;

    return-object v0
.end method

.method public removeFormat(Ljava/lang/String;)V
    .locals 4
    .parameter "format"

    .prologue
    const/4 v3, 0x0

    const/16 v2, 0x20

    iget-object v0, p0, Landroid/net/sip/SimpleSessionDescription$Media;->mFormats:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "a=rtpmap:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    #calls: Landroid/net/sip/SimpleSessionDescription$Fields;->set(Ljava/lang/String;CLjava/lang/String;)V
    invoke-static {p0, v0, v2, v3}, Landroid/net/sip/SimpleSessionDescription$Fields;->access$500(Landroid/net/sip/SimpleSessionDescription$Fields;Ljava/lang/String;CLjava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "a=fmtp:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    #calls: Landroid/net/sip/SimpleSessionDescription$Fields;->set(Ljava/lang/String;CLjava/lang/String;)V
    invoke-static {p0, v0, v2, v3}, Landroid/net/sip/SimpleSessionDescription$Fields;->access$500(Landroid/net/sip/SimpleSessionDescription$Fields;Ljava/lang/String;CLjava/lang/String;)V

    return-void
.end method

.method public removeRtpPayload(I)V
    .locals 1
    .parameter "type"

    .prologue
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/net/sip/SimpleSessionDescription$Media;->removeFormat(Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic setAddress(Ljava/lang/String;)V
    .locals 0
    .parameter "x0"

    .prologue
    invoke-super {p0, p1}, Landroid/net/sip/SimpleSessionDescription$Fields;->setAddress(Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic setAttribute(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-super {p0, p1, p2}, Landroid/net/sip/SimpleSessionDescription$Fields;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic setBandwidth(Ljava/lang/String;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-super {p0, p1, p2}, Landroid/net/sip/SimpleSessionDescription$Fields;->setBandwidth(Ljava/lang/String;I)V

    return-void
.end method

.method public bridge synthetic setEncryption(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-super {p0, p1, p2}, Landroid/net/sip/SimpleSessionDescription$Fields;->setEncryption(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setFormat(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "format"
    .parameter "fmtp"

    .prologue
    const/16 v2, 0x20

    iget-object v0, p0, Landroid/net/sip/SimpleSessionDescription$Media;->mFormats:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Landroid/net/sip/SimpleSessionDescription$Media;->mFormats:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "a=rtpmap:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    #calls: Landroid/net/sip/SimpleSessionDescription$Fields;->set(Ljava/lang/String;CLjava/lang/String;)V
    invoke-static {p0, v0, v2, v1}, Landroid/net/sip/SimpleSessionDescription$Fields;->access$500(Landroid/net/sip/SimpleSessionDescription$Fields;Ljava/lang/String;CLjava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "a=fmtp:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    #calls: Landroid/net/sip/SimpleSessionDescription$Fields;->set(Ljava/lang/String;CLjava/lang/String;)V
    invoke-static {p0, v0, v2, p2}, Landroid/net/sip/SimpleSessionDescription$Fields;->access$500(Landroid/net/sip/SimpleSessionDescription$Fields;Ljava/lang/String;CLjava/lang/String;)V

    return-void
.end method

.method public setRtpPayload(ILjava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter "type"
    .parameter "rtpmap"
    .parameter "fmtp"

    .prologue
    const/16 v3, 0x20

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .local v0, format:Ljava/lang/String;
    iget-object v1, p0, Landroid/net/sip/SimpleSessionDescription$Media;->mFormats:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v1, p0, Landroid/net/sip/SimpleSessionDescription$Media;->mFormats:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "a=rtpmap:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    #calls: Landroid/net/sip/SimpleSessionDescription$Fields;->set(Ljava/lang/String;CLjava/lang/String;)V
    invoke-static {p0, v1, v3, p2}, Landroid/net/sip/SimpleSessionDescription$Fields;->access$500(Landroid/net/sip/SimpleSessionDescription$Fields;Ljava/lang/String;CLjava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "a=fmtp:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    #calls: Landroid/net/sip/SimpleSessionDescription$Fields;->set(Ljava/lang/String;CLjava/lang/String;)V
    invoke-static {p0, v1, v3, p3}, Landroid/net/sip/SimpleSessionDescription$Fields;->access$500(Landroid/net/sip/SimpleSessionDescription$Fields;Ljava/lang/String;CLjava/lang/String;)V

    return-void
.end method
