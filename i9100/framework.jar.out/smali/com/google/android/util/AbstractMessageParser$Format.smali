.class public Lcom/google/android/util/AbstractMessageParser$Format;
.super Lcom/google/android/util/AbstractMessageParser$Token;
.source "AbstractMessageParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/util/AbstractMessageParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Format"
.end annotation


# instance fields
.field private ch:C

.field private matched:Z

.field private start:Z


# direct methods
.method public constructor <init>(CZ)V
    .locals 2
    .parameter "ch"
    .parameter "start"

    .prologue
    .line 1183
    sget-object v0, Lcom/google/android/util/AbstractMessageParser$Token$Type;->FORMAT:Lcom/google/android/util/AbstractMessageParser$Token$Type;

    invoke-static {p1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/google/android/util/AbstractMessageParser$Token;-><init>(Lcom/google/android/util/AbstractMessageParser$Token$Type;Ljava/lang/String;)V

    .line 1184
    iput-char p1, p0, Lcom/google/android/util/AbstractMessageParser$Format;->ch:C

    .line 1185
    iput-boolean p2, p0, Lcom/google/android/util/AbstractMessageParser$Format;->start:Z

    .line 1186
    return-void
.end method

.method private getFormatEnd(C)Ljava/lang/String;
    .locals 3
    .parameter "ch"

    .prologue
    .line 1224
    sparse-switch p1, :sswitch_data_0

    .line 1229
    new-instance v0, Ljava/lang/AssertionError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "unknown format \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 1225
    :sswitch_0
    const-string v0, "</b>"

    .line 1228
    :goto_0
    return-object v0

    .line 1226
    :sswitch_1
    const-string v0, "</i>"

    goto :goto_0

    .line 1227
    :sswitch_2
    const-string v0, "</font></b>"

    goto :goto_0

    .line 1228
    :sswitch_3
    const-string/jumbo v0, "\u201d</font>"

    goto :goto_0

    .line 1224
    :sswitch_data_0
    .sparse-switch
        0x22 -> :sswitch_3
        0x2a -> :sswitch_0
        0x5e -> :sswitch_2
        0x5f -> :sswitch_1
    .end sparse-switch
.end method

.method private getFormatStart(C)Ljava/lang/String;
    .locals 3
    .parameter "ch"

    .prologue
    .line 1214
    sparse-switch p1, :sswitch_data_0

    .line 1219
    new-instance v0, Ljava/lang/AssertionError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "unknown format \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 1215
    :sswitch_0
    const-string v0, "<b>"

    .line 1218
    :goto_0
    return-object v0

    .line 1216
    :sswitch_1
    const-string v0, "<i>"

    goto :goto_0

    .line 1217
    :sswitch_2
    const-string v0, "<b><font color=\"#005FFF\">"

    goto :goto_0

    .line 1218
    :sswitch_3
    const-string v0, "<font color=\"#999999\">\u201c"

    goto :goto_0

    .line 1214
    nop

    :sswitch_data_0
    .sparse-switch
        0x22 -> :sswitch_3
        0x2a -> :sswitch_0
        0x5e -> :sswitch_2
        0x5f -> :sswitch_1
    .end sparse-switch
.end method


# virtual methods
.method public controlCaps()Z
    .locals 2

    .prologue
    .line 1210
    iget-char v0, p0, Lcom/google/android/util/AbstractMessageParser$Format;->ch:C

    const/16 v1, 0x5e

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getInfo()Ljava/util/List;
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
    .line 1207
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public isHtml()Z
    .locals 1

    .prologue
    .line 1190
    const/4 v0, 0x1

    return v0
.end method

.method public setCaps()Z
    .locals 1

    .prologue
    .line 1211
    iget-boolean v0, p0, Lcom/google/android/util/AbstractMessageParser$Format;->start:Z

    return v0
.end method

.method public setMatched(Z)V
    .locals 0
    .parameter "matched"

    .prologue
    .line 1188
    iput-boolean p1, p0, Lcom/google/android/util/AbstractMessageParser$Format;->matched:Z

    return-void
.end method

.method public toHtml(Z)Ljava/lang/String;
    .locals 2
    .parameter "caps"

    .prologue
    .line 1195
    iget-boolean v0, p0, Lcom/google/android/util/AbstractMessageParser$Format;->matched:Z

    if-eqz v0, :cond_1

    .line 1196
    iget-boolean v0, p0, Lcom/google/android/util/AbstractMessageParser$Format;->start:Z

    if-eqz v0, :cond_0

    iget-char v0, p0, Lcom/google/android/util/AbstractMessageParser$Format;->ch:C

    invoke-direct {p0, v0}, Lcom/google/android/util/AbstractMessageParser$Format;->getFormatStart(C)Ljava/lang/String;

    move-result-object v0

    .line 1199
    :goto_0
    return-object v0

    .line 1196
    :cond_0
    iget-char v0, p0, Lcom/google/android/util/AbstractMessageParser$Format;->ch:C

    invoke-direct {p0, v0}, Lcom/google/android/util/AbstractMessageParser$Format;->getFormatEnd(C)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1199
    :cond_1
    iget-char v0, p0, Lcom/google/android/util/AbstractMessageParser$Format;->ch:C

    const/16 v1, 0x22

    if-ne v0, v1, :cond_2

    const-string v0, "&quot;"

    goto :goto_0

    :cond_2
    iget-char v0, p0, Lcom/google/android/util/AbstractMessageParser$Format;->ch:C

    invoke-static {v0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
