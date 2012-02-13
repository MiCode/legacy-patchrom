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

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/mms/pdu/PduBody;->mParts:Ljava/util/Vector;

    iput-object v0, p0, Lcom/google/android/mms/pdu/PduBody;->mPartMapByContentId:Ljava/util/Map;

    iput-object v0, p0, Lcom/google/android/mms/pdu/PduBody;->mPartMapByContentLocation:Ljava/util/Map;

    iput-object v0, p0, Lcom/google/android/mms/pdu/PduBody;->mPartMapByName:Ljava/util/Map;

    iput-object v0, p0, Lcom/google/android/mms/pdu/PduBody;->mPartMapByFileName:Ljava/util/Map;

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/google/android/mms/pdu/PduBody;->mParts:Ljava/util/Vector;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/mms/pdu/PduBody;->mPartMapByContentId:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/mms/pdu/PduBody;->mPartMapByContentLocation:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/mms/pdu/PduBody;->mPartMapByName:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/mms/pdu/PduBody;->mPartMapByFileName:Ljava/util/Map;

    return-void
.end method

.method private putPartToMaps(Lcom/google/android/mms/pdu/PduPart;)V
    .locals 7
    .parameter "part"

    .prologue
    invoke-virtual {p1}, Lcom/google/android/mms/pdu/PduPart;->getContentId()[B

    move-result-object v1

    .local v1, contentId:[B
    if-eqz v1, :cond_0

    iget-object v5, p0, Lcom/google/android/mms/pdu/PduBody;->mPartMapByContentId:Ljava/util/Map;

    new-instance v6, Ljava/lang/String;

    invoke-direct {v6, v1}, Ljava/lang/String;-><init>([B)V

    invoke-interface {v5, v6, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    invoke-virtual {p1}, Lcom/google/android/mms/pdu/PduPart;->getContentLocation()[B

    move-result-object v2

    .local v2, contentLocation:[B
    if-eqz v2, :cond_1

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>([B)V

    .local v0, clc:Ljava/lang/String;
    iget-object v5, p0, Lcom/google/android/mms/pdu/PduBody;->mPartMapByContentLocation:Ljava/util/Map;

    invoke-interface {v5, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .end local v0           #clc:Ljava/lang/String;
    :cond_1
    invoke-virtual {p1}, Lcom/google/android/mms/pdu/PduPart;->getName()[B

    move-result-object v4

    .local v4, name:[B
    if-eqz v4, :cond_2

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v4}, Ljava/lang/String;-><init>([B)V

    .restart local v0       #clc:Ljava/lang/String;
    iget-object v5, p0, Lcom/google/android/mms/pdu/PduBody;->mPartMapByName:Ljava/util/Map;

    invoke-interface {v5, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .end local v0           #clc:Ljava/lang/String;
    :cond_2
    invoke-virtual {p1}, Lcom/google/android/mms/pdu/PduPart;->getFilename()[B

    move-result-object v3

    .local v3, fileName:[B
    if-eqz v3, :cond_3

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>([B)V

    .restart local v0       #clc:Ljava/lang/String;
    iget-object v5, p0, Lcom/google/android/mms/pdu/PduBody;->mPartMapByFileName:Ljava/util/Map;

    invoke-interface {v5, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

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
    if-nez p2, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    invoke-direct {p0, p2}, Lcom/google/android/mms/pdu/PduBody;->putPartToMaps(Lcom/google/android/mms/pdu/PduPart;)V

    iget-object v0, p0, Lcom/google/android/mms/pdu/PduBody;->mParts:Ljava/util/Vector;

    invoke-virtual {v0, p1, p2}, Ljava/util/Vector;->add(ILjava/lang/Object;)V

    return-void
.end method

.method public addPart(Lcom/google/android/mms/pdu/PduPart;)Z
    .locals 1
    .parameter "part"

    .prologue
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    invoke-direct {p0, p1}, Lcom/google/android/mms/pdu/PduBody;->putPartToMaps(Lcom/google/android/mms/pdu/PduPart;)V

    iget-object v0, p0, Lcom/google/android/mms/pdu/PduBody;->mParts:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public getPart(I)Lcom/google/android/mms/pdu/PduPart;
    .locals 1
    .parameter "index"

    .prologue
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
    iget-object v0, p0, Lcom/google/android/mms/pdu/PduBody;->mParts:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->indexOf(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public getPartsNum()I
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/google/android/mms/pdu/PduBody;->mParts:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    return v0
.end method

.method public removeAll()V
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/google/android/mms/pdu/PduBody;->mParts:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->clear()V

    return-void
.end method

.method public removePart(I)Lcom/google/android/mms/pdu/PduPart;
    .locals 1
    .parameter "index"

    .prologue
    iget-object v0, p0, Lcom/google/android/mms/pdu/PduBody;->mParts:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->remove(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/android/mms/pdu/PduPart;

    return-object p0
.end method
