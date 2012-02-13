.class public final Landroid/pim/vcard/VCardParserImpl_V21$CustomBufferedReader;
.super Ljava/io/BufferedReader;
.source "VCardParserImpl_V21.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/pim/vcard/VCardParserImpl_V21;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1c
    name = "CustomBufferedReader"
.end annotation


# instance fields
.field private mNextLine:Ljava/lang/String;

.field private mNextLineIsValid:Z

.field private mTime:J


# direct methods
.method public constructor <init>(Ljava/io/Reader;)V
    .locals 0
    .parameter "in"

    .prologue
    invoke-direct {p0, p1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    return-void
.end method


# virtual methods
.method public getTotalmillisecond()J
    .locals 2

    .prologue
    iget-wide v0, p0, Landroid/pim/vcard/VCardParserImpl_V21$CustomBufferedReader;->mTime:J

    return-wide v0
.end method

.method public peekLine()Ljava/lang/String;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    iget-boolean v5, p0, Landroid/pim/vcard/VCardParserImpl_V21$CustomBufferedReader;->mNextLineIsValid:Z

    if-nez v5, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .local v3, start:J
    invoke-super {p0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    .local v2, line:Ljava/lang/String;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .local v0, end:J
    iget-wide v5, p0, Landroid/pim/vcard/VCardParserImpl_V21$CustomBufferedReader;->mTime:J

    sub-long v7, v0, v3

    add-long/2addr v5, v7

    iput-wide v5, p0, Landroid/pim/vcard/VCardParserImpl_V21$CustomBufferedReader;->mTime:J

    iput-object v2, p0, Landroid/pim/vcard/VCardParserImpl_V21$CustomBufferedReader;->mNextLine:Ljava/lang/String;

    const/4 v5, 0x1

    iput-boolean v5, p0, Landroid/pim/vcard/VCardParserImpl_V21$CustomBufferedReader;->mNextLineIsValid:Z

    .end local v0           #end:J
    .end local v2           #line:Ljava/lang/String;
    .end local v3           #start:J
    :cond_0
    iget-object v5, p0, Landroid/pim/vcard/VCardParserImpl_V21$CustomBufferedReader;->mNextLine:Ljava/lang/String;

    return-object v5
.end method

.method public readLine()Ljava/lang/String;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    iget-boolean v6, p0, Landroid/pim/vcard/VCardParserImpl_V21$CustomBufferedReader;->mNextLineIsValid:Z

    if-eqz v6, :cond_0

    iget-object v3, p0, Landroid/pim/vcard/VCardParserImpl_V21$CustomBufferedReader;->mNextLine:Ljava/lang/String;

    .local v3, ret:Ljava/lang/String;
    const/4 v6, 0x0

    iput-object v6, p0, Landroid/pim/vcard/VCardParserImpl_V21$CustomBufferedReader;->mNextLine:Ljava/lang/String;

    const/4 v6, 0x0

    iput-boolean v6, p0, Landroid/pim/vcard/VCardParserImpl_V21$CustomBufferedReader;->mNextLineIsValid:Z

    move-object v6, v3

    .end local v3           #ret:Ljava/lang/String;
    :goto_0
    return-object v6

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .local v4, start:J
    invoke-super {p0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    .local v2, line:Ljava/lang/String;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .local v0, end:J
    iget-wide v6, p0, Landroid/pim/vcard/VCardParserImpl_V21$CustomBufferedReader;->mTime:J

    sub-long v8, v0, v4

    add-long/2addr v6, v8

    iput-wide v6, p0, Landroid/pim/vcard/VCardParserImpl_V21$CustomBufferedReader;->mTime:J

    move-object v6, v2

    goto :goto_0
.end method
