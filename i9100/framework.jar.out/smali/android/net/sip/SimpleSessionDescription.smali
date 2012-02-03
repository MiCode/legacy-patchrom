.class public Landroid/net/sip/SimpleSessionDescription;
.super Ljava/lang/Object;
.source "SimpleSessionDescription.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/sip/SimpleSessionDescription$1;,
        Landroid/net/sip/SimpleSessionDescription$Fields;,
        Landroid/net/sip/SimpleSessionDescription$Media;
    }
.end annotation


# instance fields
.field private final mFields:Landroid/net/sip/SimpleSessionDescription$Fields;

.field private final mMedia:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/net/sip/SimpleSessionDescription$Media;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(JLjava/lang/String;)V
    .locals 6
    .parameter "sessionId"
    .parameter "address"

    .prologue
    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    new-instance v0, Landroid/net/sip/SimpleSessionDescription$Fields;

    const-string/jumbo v1, "voscbtka"

    invoke-direct {v0, v1}, Landroid/net/sip/SimpleSessionDescription$Fields;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Landroid/net/sip/SimpleSessionDescription;->mFields:Landroid/net/sip/SimpleSessionDescription$Fields;

    .line 58
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/net/sip/SimpleSessionDescription;->mMedia:Ljava/util/ArrayList;

    .line 67
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0x3a

    invoke-virtual {p3, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-gez v1, :cond_0

    const-string v1, "IN IP4 "

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 68
    iget-object v0, p0, Landroid/net/sip/SimpleSessionDescription;->mFields:Landroid/net/sip/SimpleSessionDescription$Fields;

    const-string/jumbo v1, "v=0"

    #calls: Landroid/net/sip/SimpleSessionDescription$Fields;->parse(Ljava/lang/String;)V
    invoke-static {v0, v1}, Landroid/net/sip/SimpleSessionDescription$Fields;->access$000(Landroid/net/sip/SimpleSessionDescription$Fields;Ljava/lang/String;)V

    .line 69
    iget-object v0, p0, Landroid/net/sip/SimpleSessionDescription;->mFields:Landroid/net/sip/SimpleSessionDescription$Fields;

    const-string/jumbo v1, "o=- %d %d %s"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    aput-object p3, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    #calls: Landroid/net/sip/SimpleSessionDescription$Fields;->parse(Ljava/lang/String;)V
    invoke-static {v0, v1}, Landroid/net/sip/SimpleSessionDescription$Fields;->access$000(Landroid/net/sip/SimpleSessionDescription$Fields;Ljava/lang/String;)V

    .line 71
    iget-object v0, p0, Landroid/net/sip/SimpleSessionDescription;->mFields:Landroid/net/sip/SimpleSessionDescription$Fields;

    const-string/jumbo v1, "s=-"

    #calls: Landroid/net/sip/SimpleSessionDescription$Fields;->parse(Ljava/lang/String;)V
    invoke-static {v0, v1}, Landroid/net/sip/SimpleSessionDescription$Fields;->access$000(Landroid/net/sip/SimpleSessionDescription$Fields;Ljava/lang/String;)V

    .line 72
    iget-object v0, p0, Landroid/net/sip/SimpleSessionDescription;->mFields:Landroid/net/sip/SimpleSessionDescription$Fields;

    const-string/jumbo v1, "t=0 0"

    #calls: Landroid/net/sip/SimpleSessionDescription$Fields;->parse(Ljava/lang/String;)V
    invoke-static {v0, v1}, Landroid/net/sip/SimpleSessionDescription$Fields;->access$000(Landroid/net/sip/SimpleSessionDescription$Fields;Ljava/lang/String;)V

    .line 73
    iget-object v0, p0, Landroid/net/sip/SimpleSessionDescription;->mFields:Landroid/net/sip/SimpleSessionDescription$Fields;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "c="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    #calls: Landroid/net/sip/SimpleSessionDescription$Fields;->parse(Ljava/lang/String;)V
    invoke-static {v0, v1}, Landroid/net/sip/SimpleSessionDescription$Fields;->access$000(Landroid/net/sip/SimpleSessionDescription$Fields;Ljava/lang/String;)V

    .line 74
    return-void

    .line 67
    :cond_0
    const-string v1, "IN IP6 "

    goto :goto_0
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 23
    .parameter "message"

    .prologue
    .line 81
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 57
    new-instance v19, Landroid/net/sip/SimpleSessionDescription$Fields;

    const-string/jumbo v20, "voscbtka"

    invoke-direct/range {v19 .. v20}, Landroid/net/sip/SimpleSessionDescription$Fields;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/net/sip/SimpleSessionDescription;->mFields:Landroid/net/sip/SimpleSessionDescription$Fields;

    .line 58
    new-instance v19, Ljava/util/ArrayList;

    invoke-direct/range {v19 .. v19}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/net/sip/SimpleSessionDescription;->mMedia:Ljava/util/ArrayList;

    .line 82
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v19

    const-string v20, " +"

    const-string v21, " "

    invoke-virtual/range {v19 .. v21}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    const-string v20, "[\r\n]+"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v15

    .line 83
    .local v15, lines:[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/sip/SimpleSessionDescription;->mFields:Landroid/net/sip/SimpleSessionDescription$Fields;

    move-object v8, v0

    .line 85
    .local v8, fields:Landroid/net/sip/SimpleSessionDescription$Fields;
    move-object v5, v15

    .local v5, arr$:[Ljava/lang/String;
    array-length v12, v5

    .local v12, len$:I
    const/4 v10, 0x0

    .local v10, i$:I
    move v11, v10

    .end local v5           #arr$:[Ljava/lang/String;
    .end local v10           #i$:I
    .end local v12           #len$:I
    .local v11, i$:I
    :goto_0
    if-ge v11, v12, :cond_4

    aget-object v14, v5, v11

    .line 87
    .local v14, line:Ljava/lang/String;
    const/16 v19, 0x1

    :try_start_0
    move-object v0, v14

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v19

    const/16 v20, 0x3d

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_0

    .line 88
    new-instance v19, Ljava/lang/IllegalArgumentException;

    invoke-direct/range {v19 .. v19}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v19
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 103
    .end local v11           #i$:I
    :catch_0
    move-exception v19

    move-object/from16 v7, v19

    .line 104
    .local v7, e:Ljava/lang/Exception;
    new-instance v19, Ljava/lang/IllegalArgumentException;

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Invalid SDP: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object v1, v14

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-direct/range {v19 .. v20}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v19

    .line 90
    .end local v7           #e:Ljava/lang/Exception;
    .restart local v11       #i$:I
    :cond_0
    const/16 v19, 0x0

    :try_start_1
    move-object v0, v14

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v19

    const/16 v20, 0x6d

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_3

    .line 91
    const/16 v19, 0x2

    move-object v0, v14

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v19

    const-string v20, " "

    const/16 v21, 0x4

    invoke-virtual/range {v19 .. v21}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v17

    .line 92
    .local v17, parts:[Ljava/lang/String;
    const/16 v19, 0x1

    aget-object v19, v17, v19

    const-string v20, "/"

    const/16 v21, 0x2

    invoke-virtual/range {v19 .. v21}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v18

    .line 93
    .local v18, ports:[Ljava/lang/String;
    const/16 v19, 0x0

    aget-object v19, v17, v19

    const/16 v20, 0x0

    aget-object v20, v18, v20

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v20

    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v21, v0

    const/16 v22, 0x2

    move/from16 v0, v21

    move/from16 v1, v22

    if-ge v0, v1, :cond_1

    const/16 v21, 0x1

    :goto_1
    const/16 v22, 0x2

    aget-object v22, v17, v22

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, v21

    move-object/from16 v4, v22

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/net/sip/SimpleSessionDescription;->newMedia(Ljava/lang/String;IILjava/lang/String;)Landroid/net/sip/SimpleSessionDescription$Media;

    move-result-object v16

    .line 96
    .local v16, media:Landroid/net/sip/SimpleSessionDescription$Media;
    const/16 v19, 0x3

    aget-object v19, v17, v19

    const-string v20, " "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .local v6, arr$:[Ljava/lang/String;
    array-length v13, v6

    .local v13, len$:I
    const/4 v10, 0x0

    .end local v11           #i$:I
    .restart local v10       #i$:I
    :goto_2
    if-ge v10, v13, :cond_2

    aget-object v9, v6, v10

    .line 97
    .local v9, format:Ljava/lang/String;
    const/16 v19, 0x0

    move-object/from16 v0, v16

    move-object v1, v9

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/net/sip/SimpleSessionDescription$Media;->setFormat(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    .line 93
    .end local v6           #arr$:[Ljava/lang/String;
    .end local v9           #format:Ljava/lang/String;
    .end local v10           #i$:I
    .end local v13           #len$:I
    .end local v16           #media:Landroid/net/sip/SimpleSessionDescription$Media;
    .restart local v11       #i$:I
    :cond_1
    const/16 v21, 0x1

    aget-object v21, v18, v21

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v21

    goto :goto_1

    .line 99
    .end local v11           #i$:I
    .restart local v6       #arr$:[Ljava/lang/String;
    .restart local v10       #i$:I
    .restart local v13       #len$:I
    .restart local v16       #media:Landroid/net/sip/SimpleSessionDescription$Media;
    :cond_2
    move-object/from16 v8, v16

    .line 85
    .end local v6           #arr$:[Ljava/lang/String;
    .end local v10           #i$:I
    .end local v13           #len$:I
    .end local v16           #media:Landroid/net/sip/SimpleSessionDescription$Media;
    .end local v17           #parts:[Ljava/lang/String;
    .end local v18           #ports:[Ljava/lang/String;
    :goto_3
    add-int/lit8 v10, v11, 0x1

    .restart local v10       #i$:I
    move v11, v10

    .end local v10           #i$:I
    .restart local v11       #i$:I
    goto/16 :goto_0

    .line 101
    :cond_3
    #calls: Landroid/net/sip/SimpleSessionDescription$Fields;->parse(Ljava/lang/String;)V
    invoke-static {v8, v14}, Landroid/net/sip/SimpleSessionDescription$Fields;->access$000(Landroid/net/sip/SimpleSessionDescription$Fields;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    .line 107
    .end local v14           #line:Ljava/lang/String;
    :cond_4
    return-void
.end method


# virtual methods
.method public encode()Ljava/lang/String;
    .locals 4

    .prologue
    .line 137
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 138
    .local v0, buffer:Ljava/lang/StringBuilder;
    iget-object v3, p0, Landroid/net/sip/SimpleSessionDescription;->mFields:Landroid/net/sip/SimpleSessionDescription$Fields;

    #calls: Landroid/net/sip/SimpleSessionDescription$Fields;->write(Ljava/lang/StringBuilder;)V
    invoke-static {v3, v0}, Landroid/net/sip/SimpleSessionDescription$Fields;->access$200(Landroid/net/sip/SimpleSessionDescription$Fields;Ljava/lang/StringBuilder;)V

    .line 139
    iget-object v3, p0, Landroid/net/sip/SimpleSessionDescription;->mMedia:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/sip/SimpleSessionDescription$Media;

    .line 140
    .local v2, media:Landroid/net/sip/SimpleSessionDescription$Media;
    #calls: Landroid/net/sip/SimpleSessionDescription$Media;->write(Ljava/lang/StringBuilder;)V
    invoke-static {v2, v0}, Landroid/net/sip/SimpleSessionDescription$Media;->access$300(Landroid/net/sip/SimpleSessionDescription$Media;Ljava/lang/StringBuilder;)V

    goto :goto_0

    .line 142
    .end local v2           #media:Landroid/net/sip/SimpleSessionDescription$Media;
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public getAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 149
    iget-object v0, p0, Landroid/net/sip/SimpleSessionDescription;->mFields:Landroid/net/sip/SimpleSessionDescription$Fields;

    invoke-virtual {v0}, Landroid/net/sip/SimpleSessionDescription$Fields;->getAddress()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAttribute(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "name"

    .prologue
    .line 217
    iget-object v0, p0, Landroid/net/sip/SimpleSessionDescription;->mFields:Landroid/net/sip/SimpleSessionDescription$Fields;

    invoke-virtual {v0, p1}, Landroid/net/sip/SimpleSessionDescription$Fields;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAttributeNames()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 209
    iget-object v0, p0, Landroid/net/sip/SimpleSessionDescription;->mFields:Landroid/net/sip/SimpleSessionDescription$Fields;

    invoke-virtual {v0}, Landroid/net/sip/SimpleSessionDescription$Fields;->getAttributeNames()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getBandwidth(Ljava/lang/String;)I
    .locals 1
    .parameter "type"

    .prologue
    .line 194
    iget-object v0, p0, Landroid/net/sip/SimpleSessionDescription;->mFields:Landroid/net/sip/SimpleSessionDescription$Fields;

    invoke-virtual {v0, p1}, Landroid/net/sip/SimpleSessionDescription$Fields;->getBandwidth(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getBandwidthTypes()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 186
    iget-object v0, p0, Landroid/net/sip/SimpleSessionDescription;->mFields:Landroid/net/sip/SimpleSessionDescription$Fields;

    invoke-virtual {v0}, Landroid/net/sip/SimpleSessionDescription$Fields;->getBandwidthTypes()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getEncryptionKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 171
    iget-object v0, p0, Landroid/net/sip/SimpleSessionDescription;->mFields:Landroid/net/sip/SimpleSessionDescription$Fields;

    invoke-virtual {v0}, Landroid/net/sip/SimpleSessionDescription$Fields;->getEncryptionKey()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getEncryptionMethod()Ljava/lang/String;
    .locals 1

    .prologue
    .line 164
    iget-object v0, p0, Landroid/net/sip/SimpleSessionDescription;->mFields:Landroid/net/sip/SimpleSessionDescription$Fields;

    invoke-virtual {v0}, Landroid/net/sip/SimpleSessionDescription$Fields;->getEncryptionMethod()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMedia()[Landroid/net/sip/SimpleSessionDescription$Media;
    .locals 2

    .prologue
    .line 128
    iget-object v0, p0, Landroid/net/sip/SimpleSessionDescription;->mMedia:Ljava/util/ArrayList;

    iget-object v1, p0, Landroid/net/sip/SimpleSessionDescription;->mMedia:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Landroid/net/sip/SimpleSessionDescription$Media;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, [Landroid/net/sip/SimpleSessionDescription$Media;

    return-object p0
.end method

.method public newMedia(Ljava/lang/String;IILjava/lang/String;)Landroid/net/sip/SimpleSessionDescription$Media;
    .locals 6
    .parameter "type"
    .parameter "port"
    .parameter "portCount"
    .parameter "protocol"

    .prologue
    .line 119
    new-instance v0, Landroid/net/sip/SimpleSessionDescription$Media;

    const/4 v5, 0x0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Landroid/net/sip/SimpleSessionDescription$Media;-><init>(Ljava/lang/String;IILjava/lang/String;Landroid/net/sip/SimpleSessionDescription$1;)V

    .line 120
    .local v0, media:Landroid/net/sip/SimpleSessionDescription$Media;
    iget-object v1, p0, Landroid/net/sip/SimpleSessionDescription;->mMedia:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 121
    return-object v0
.end method

.method public setAddress(Ljava/lang/String;)V
    .locals 1
    .parameter "address"

    .prologue
    .line 157
    iget-object v0, p0, Landroid/net/sip/SimpleSessionDescription;->mFields:Landroid/net/sip/SimpleSessionDescription$Fields;

    invoke-virtual {v0, p1}, Landroid/net/sip/SimpleSessionDescription$Fields;->setAddress(Ljava/lang/String;)V

    .line 158
    return-void
.end method

.method public setAttribute(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "name"
    .parameter "value"

    .prologue
    .line 226
    iget-object v0, p0, Landroid/net/sip/SimpleSessionDescription;->mFields:Landroid/net/sip/SimpleSessionDescription$Fields;

    invoke-virtual {v0, p1, p2}, Landroid/net/sip/SimpleSessionDescription$Fields;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 227
    return-void
.end method

.method public setBandwidth(Ljava/lang/String;I)V
    .locals 1
    .parameter "type"
    .parameter "value"

    .prologue
    .line 202
    iget-object v0, p0, Landroid/net/sip/SimpleSessionDescription;->mFields:Landroid/net/sip/SimpleSessionDescription$Fields;

    invoke-virtual {v0, p1, p2}, Landroid/net/sip/SimpleSessionDescription$Fields;->setBandwidth(Ljava/lang/String;I)V

    .line 203
    return-void
.end method

.method public setEncryption(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "method"
    .parameter "key"

    .prologue
    .line 179
    iget-object v0, p0, Landroid/net/sip/SimpleSessionDescription;->mFields:Landroid/net/sip/SimpleSessionDescription$Fields;

    invoke-virtual {v0, p1, p2}, Landroid/net/sip/SimpleSessionDescription$Fields;->setEncryption(Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    return-void
.end method
