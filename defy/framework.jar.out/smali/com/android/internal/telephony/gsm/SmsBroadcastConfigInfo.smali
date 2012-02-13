.class public Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;
.super Ljava/lang/Object;
.source "SmsBroadcastConfigInfo.java"


# instance fields
.field private fromCodeScheme:I

.field private fromServiceId:I

.field private selected:Z

.field private toCodeScheme:I

.field private toServiceId:I


# direct methods
.method public constructor <init>(IIIIZ)V
    .locals 0
    .parameter "fromId"
    .parameter "toId"
    .parameter "fromScheme"
    .parameter "toScheme"
    .parameter "selected"

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;->setFromServiceId(I)V

    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;->setToServiceId(I)V

    invoke-virtual {p0, p3}, Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;->setFromCodeScheme(I)V

    invoke-virtual {p0, p4}, Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;->setToCodeScheme(I)V

    invoke-virtual {p0, p5}, Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;->setSelected(Z)V

    return-void
.end method


# virtual methods
.method public getFromCodeScheme()I
    .locals 1

    .prologue
    iget v0, p0, Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;->fromCodeScheme:I

    return v0
.end method

.method public getFromServiceId()I
    .locals 1

    .prologue
    iget v0, p0, Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;->fromServiceId:I

    return v0
.end method

.method public getToCodeScheme()I
    .locals 1

    .prologue
    iget v0, p0, Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;->toCodeScheme:I

    return v0
.end method

.method public getToServiceId()I
    .locals 1

    .prologue
    iget v0, p0, Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;->toServiceId:I

    return v0
.end method

.method public isSelected()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;->selected:Z

    return v0
.end method

.method public setFromCodeScheme(I)V
    .locals 0
    .parameter "fromCodeScheme"

    .prologue
    iput p1, p0, Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;->fromCodeScheme:I

    return-void
.end method

.method public setFromServiceId(I)V
    .locals 0
    .parameter "fromServiceId"

    .prologue
    iput p1, p0, Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;->fromServiceId:I

    return-void
.end method

.method public setSelected(Z)V
    .locals 0
    .parameter "selected"

    .prologue
    iput-boolean p1, p0, Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;->selected:Z

    return-void
.end method

.method public setToCodeScheme(I)V
    .locals 0
    .parameter "toCodeScheme"

    .prologue
    iput p1, p0, Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;->toCodeScheme:I

    return-void
.end method

.method public setToServiceId(I)V
    .locals 0
    .parameter "toServiceId"

    .prologue
    iput p1, p0, Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;->toServiceId:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    const-string v2, ","

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SmsBroadcastConfigInfo: Id ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;->getFromServiceId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;->getToServiceId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "] Code ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;->getFromCodeScheme()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;->getToCodeScheme()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;->isSelected()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "ENABLED"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v1, "DISABLED"

    goto :goto_0
.end method
