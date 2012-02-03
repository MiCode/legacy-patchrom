.class public Lcom/google/android/mms/pdu/PduBody;
.super Ljava/lang/Object;
.source "PduBody.java"


# instance fields
.field private mPartMapByContentId:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/mms/pdu/PduPart;",
            ">;"
        }
    .end annotation
.end field

.field private mPartMapByContentLocation:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/mms/pdu/PduPart;",
            ">;"
        }
    .end annotation
.end field

.field private mPartMapByFileName:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/mms/pdu/PduPart;",
            ">;"
        }
    .end annotation
.end field

.field private mPartMapByName:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/mms/pdu/PduPart;",
            ">;"
        }
    .end annotation
.end field

.field private mParts:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lcom/google/android/mms/pdu/PduPart;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object v0, p0, Lcom/google/android/mms/pdu/PduBody;->mParts:Ljava/util/Vector;

    .line 27
    iput-object v0, p0, Lcom/google/android/mms/pdu/PduBody;->mPartMapByContentId:Ljava/util/Map;

    .line 28
    iput-object v0, p0, Lcom/google/android/mms/pdu/PduBody;->mPartMapByContentLocation:Ljava/util/Map;

    .line 29
    iput-object v0, p0, Lcom/google/android/mms/pdu/PduBody;->mPartMapByName:Ljava/util/Map;

    .line 30
    iput-object v0, p0, Lcom/google/android/mms/pdu/PduBody;->mPartMapByFileName:Ljava/util/Map;

    .line 36
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/google/android/mms/pdu/PduBody;->mParts:Ljava/util/Vector;

    .line 38
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/mms/pdu/PduBody;->mPartMapByContentId:Ljava/util/Map;

    .line 39
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/mms/pdu/PduBody;->mPartMapByContentLocation:Ljava/util/Map;

    .line 40
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/mms/pdu/PduBody;->mPartMapByName:Ljava/util/Map;

    .line 41
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/mms/pdu/PduBody;->mPartMapByFileName:Ljava/util/Map;

    .line 42
    return-void
.end method

.method private putPartToMaps(Lcom/google/android/mms/pdu/PduPart;)V
    .locals 7
    .parameter "part"

    .prologue
    .line 46
    invoke-virtual {p1}, Lcom/google/android/mms/pdu/PduPart;->getContentId()[B

    move-result-object v1

    .line 47
    .local v1, contentId:[B
    if-eqz v1, :cond_0

    .line 48
    iget-object v5, p0, Lcom/google/android/mms/pdu/PduBody;->mPartMapByContentId:Ljava/util/Map;

    new-instance v6, Ljava/lang/String;

    invoke-direct {v6, v1}, Ljava/lang/String;-><init>([B)V

    invoke-interface {v5, v6, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    :cond_0
    invoke-virtual {p1}, Lcom/google/android/mms/pdu/PduPart;->getContentLocation()[B

    move-result-object v2

    .line 53
    .local v2, contentLocation:[B
    if-eqz v2, :cond_1

    .line 54
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>([B)V

    .line 55
    .local v0, clc:Ljava/lang/String;
    iget-object v5, p0, Lcom/google/android/mms/pdu/PduBody;->mPartMapByContentLocation:Ljava/util/Map;

    invoke-interface {v5, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    .end local v0           #clc:Ljava/lang/String;
    :cond_1
    invoke-virtual {p1}, Lcom/google/android/mms/pdu/PduPart;->getName()[B

    move-result-object v4

    .line 60
    .local v4, name:[B
    if-eqz v4, :cond_2

    .line 61
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v4}, Ljava/lang/String;-><init>([B)V

    .line 62
    .restart local v0       #clc:Ljava/lang/String;
    iget-object v5, p0, Lcom/google/android/mms/pdu/PduBody;->mPartMapByName:Ljava/util/Map;

    invoke-interface {v5, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    .end local v0           #clc:Ljava/lang/String;
    :cond_2
    invoke-virtual {p1}, Lcom/google/android/mms/pdu/PduPart;->getFilename()[B

    move-result-object v3

    .line 67
    .local v3, fileName:[B
    if-eqz v3, :cond_3

    .line 68
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>([B)V

    .line 69
    .restart local v0       #clc:Ljava/lang/String;
    iget-object v5, p0, Lcom/google/android/mms/pdu/PduBody;->mPartMapByFileName:Ljava/util/Map;

    invoke-interface {v5, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    .end local v0           #clc:Ljava/lang/String;
    :cond_3
    return-void
.end method


# virtual methods
.method public addPart(ILcom/google/android/mms/pdu/PduPart;)V
    .locals 1
    .parameter "index"
    .parameter "part"

    .prologue
    .line 97
    if-nez p2, :cond_0

    .line 98
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 101
    :cond_0
    invoke-direct {p0, p2}, Lcom/google/android/mms/pdu/PduBody;->putPartToMaps(Lcom/google/android/mms/pdu/PduPart;)V

    .line 102
    iget-object v0, p0, Lcom/google/android/mms/pdu/PduBody;->mParts:Ljava/util/Vector;

    invoke-virtual {v0, p1, p2}, Ljava/util/Vector;->add(ILjava/lang/Object;)V

    .line 103
    return-void
.end method

.method public addPart(Lcom/google/android/mms/pdu/PduPart;)Z
    .locals 1
    .parameter "part"

    .prologue
    .line 81
    if-nez p1, :cond_0

    .line 82
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 85
    :cond_0
    invoke-direct {p0, p1}, Lcom/google/android/mms/pdu/PduBody;->putPartToMaps(Lcom/google/android/mms/pdu/PduPart;)V

    .line 86
    iget-object v0, p0, Lcom/google/android/mms/pdu/PduBody;->mParts:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public getPart(I)Lcom/google/android/mms/pdu/PduPart;
    .locals 1
    .parameter "index"

    .prologue
    .line 129
    iget-object v0, p0, Lcom/google/android/mms/pdu/PduBody;->mParts:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/android/mms/pdu/PduPart;

    return-object p0
.end method

.method public getPartByContentId(Ljava/lang/String;)Lcom/google/android/mms/pdu/PduPart;
    .locals 1
    .parameter "cid"

    .prologue
    .line 158
    iget-object v0, p0, Lcom/google/android/mms/pdu/PduBody;->mPartMapByContentId:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/android/mms/pdu/PduPart;

    return-object p0
.end method

.method public getPartByContentLocation(Ljava/lang/String;)Lcom/google/android/mms/pdu/PduPart;
    .locals 1
    .parameter "contentLocation"

    .prologue
    .line 169
    iget-object v0, p0, Lcom/google/android/mms/pdu/PduBody;->mPartMapByContentLocation:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/android/mms/pdu/PduPart;

    return-object p0
.end method

.method public getPartByFileName(Ljava/lang/String;)Lcom/google/android/mms/pdu/PduPart;
    .locals 1
    .parameter "filename"

    .prologue
    .line 189
    iget-object v0, p0, Lcom/google/android/mms/pdu/PduBody;->mPartMapByFileName:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/android/mms/pdu/PduPart;

    return-object p0
.end method

.method public getPartByName(Ljava/lang/String;)Lcom/google/android/mms/pdu/PduPart;
    .locals 1
    .parameter "name"

    .prologue
    .line 179
    iget-object v0, p0, Lcom/google/android/mms/pdu/PduBody;->mPartMapByName:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/android/mms/pdu/PduPart;

    return-object p0
.end method

.method public getPartIndex(Lcom/google/android/mms/pdu/PduPart;)I
    .locals 1
    .parameter "part"

    .prologue
    .line 139
    iget-object v0, p0, Lcom/google/android/mms/pdu/PduBody;->mParts:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->indexOf(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public getPartsNum()I
    .locals 1

    .prologue
    .line 148
    iget-object v0, p0, Lcom/google/android/mms/pdu/PduBody;->mParts:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    return v0
.end method

.method public removeAll()V
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lcom/google/android/mms/pdu/PduBody;->mParts:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->clear()V

    .line 120
    return-void
.end method

.method public removePart(I)Lcom/google/android/mms/pdu/PduPart;
    .locals 1
    .parameter "index"

    .prologue
    .line 112
    iget-object v0, p0, Lcom/google/android/mms/pdu/PduBody;->mParts:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->remove(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/android/mms/pdu/PduPart;

    return-object p0
.end method
