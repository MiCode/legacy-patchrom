.class Lcom/android/internal/telephony/gsm/EonsHandler$PNNName;
.super Ljava/lang/Object;
.source "EonsHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/gsm/EonsHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PNNName"
.end annotation


# instance fields
.field longName:Ljava/lang/String;

.field shortName:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/internal/telephony/gsm/EonsHandler;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/gsm/EonsHandler;)V
    .locals 0
    .parameter

    .prologue
    iput-object p1, p0, Lcom/android/internal/telephony/gsm/EonsHandler$PNNName;->this$0:Lcom/android/internal/telephony/gsm/EonsHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getOuterType()Lcom/android/internal/telephony/gsm/EonsHandler;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/EonsHandler$PNNName;->this$0:Lcom/android/internal/telephony/gsm/EonsHandler;

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 6
    .parameter "obj"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    if-ne p0, p1, :cond_0

    move v2, v5

    :goto_0
    return v2

    :cond_0
    if-nez p1, :cond_1

    move v2, v4

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_2

    move v2, v4

    goto :goto_0

    :cond_2
    move-object v0, p1

    check-cast v0, Lcom/android/internal/telephony/gsm/EonsHandler$PNNName;

    move-object v1, v0

    .local v1, other:Lcom/android/internal/telephony/gsm/EonsHandler$PNNName;
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/EonsHandler$PNNName;->getOuterType()Lcom/android/internal/telephony/gsm/EonsHandler;

    move-result-object v2

    invoke-direct {v1}, Lcom/android/internal/telephony/gsm/EonsHandler$PNNName;->getOuterType()Lcom/android/internal/telephony/gsm/EonsHandler;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    move v2, v4

    goto :goto_0

    :cond_3
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/EonsHandler$PNNName;->longName:Ljava/lang/String;

    if-nez v2, :cond_4

    iget-object v2, v1, Lcom/android/internal/telephony/gsm/EonsHandler$PNNName;->longName:Ljava/lang/String;

    if-eqz v2, :cond_5

    move v2, v4

    goto :goto_0

    :cond_4
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/EonsHandler$PNNName;->longName:Ljava/lang/String;

    iget-object v3, v1, Lcom/android/internal/telephony/gsm/EonsHandler$PNNName;->longName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    move v2, v4

    goto :goto_0

    :cond_5
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/EonsHandler$PNNName;->shortName:Ljava/lang/String;

    if-nez v2, :cond_6

    iget-object v2, v1, Lcom/android/internal/telephony/gsm/EonsHandler$PNNName;->shortName:Ljava/lang/String;

    if-eqz v2, :cond_7

    move v2, v4

    goto :goto_0

    :cond_6
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/EonsHandler$PNNName;->shortName:Ljava/lang/String;

    iget-object v3, v1, Lcom/android/internal/telephony/gsm/EonsHandler$PNNName;->shortName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    move v2, v4

    goto :goto_0

    :cond_7
    move v2, v5

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PNNName [longName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/EonsHandler$PNNName;->longName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", shortName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/EonsHandler$PNNName;->shortName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
