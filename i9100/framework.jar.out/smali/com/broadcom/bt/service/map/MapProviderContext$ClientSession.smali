.class public Lcom/broadcom/bt/service/map/MapProviderContext$ClientSession;
.super Ljava/lang/Object;
.source "MapProviderContext.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/broadcom/bt/service/map/MapProviderContext;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ClientSession"
.end annotation


# instance fields
.field mCtx:Lcom/broadcom/bt/service/map/MapProviderContext;

.field mDevName:Ljava/lang/String;

.field mFolderInfo:[Lcom/broadcom/bt/service/map/FolderInfo;

.field mMessageInfo:[Lcom/broadcom/bt/service/map/MessageInfo;

.field mProviderCurrentPath:Ljava/lang/String;

.field mSessionId:I

.field pre_defined_folders:[Ljava/lang/String;

.field final synthetic this$0:Lcom/broadcom/bt/service/map/MapProviderContext;


# direct methods
.method public constructor <init>(Lcom/broadcom/bt/service/map/MapProviderContext;Lcom/broadcom/bt/service/map/MapProviderContext;ILjava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter
    .parameter "ctx"
    .parameter "session_id"
    .parameter "dev_name"
    .parameter "cur_path"

    .prologue
    .line 42
    iput-object p1, p0, Lcom/broadcom/bt/service/map/MapProviderContext$ClientSession;->this$0:Lcom/broadcom/bt/service/map/MapProviderContext;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/broadcom/bt/service/map/MapProviderContext$ClientSession;->pre_defined_folders:[Ljava/lang/String;

    .line 43
    iput p3, p0, Lcom/broadcom/bt/service/map/MapProviderContext$ClientSession;->mSessionId:I

    .line 44
    iput-object p4, p0, Lcom/broadcom/bt/service/map/MapProviderContext$ClientSession;->mDevName:Ljava/lang/String;

    .line 45
    iput-object p5, p0, Lcom/broadcom/bt/service/map/MapProviderContext$ClientSession;->mProviderCurrentPath:Ljava/lang/String;

    .line 46
    iput-object p2, p0, Lcom/broadcom/bt/service/map/MapProviderContext$ClientSession;->mCtx:Lcom/broadcom/bt/service/map/MapProviderContext;

    .line 48
    iget-object v0, p0, Lcom/broadcom/bt/service/map/MapProviderContext$ClientSession;->pre_defined_folders:[Ljava/lang/String;

    const/4 v1, 0x0

    new-instance v2, Ljava/lang/String;

    const-string v3, "inbox"

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    aput-object v2, v0, v1

    .line 49
    iget-object v0, p0, Lcom/broadcom/bt/service/map/MapProviderContext$ClientSession;->pre_defined_folders:[Ljava/lang/String;

    const/4 v1, 0x1

    new-instance v2, Ljava/lang/String;

    const-string/jumbo v3, "outbox"

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    aput-object v2, v0, v1

    .line 50
    iget-object v0, p0, Lcom/broadcom/bt/service/map/MapProviderContext$ClientSession;->pre_defined_folders:[Ljava/lang/String;

    const/4 v1, 0x2

    new-instance v2, Ljava/lang/String;

    const-string/jumbo v3, "sent"

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    aput-object v2, v0, v1

    .line 51
    iget-object v0, p0, Lcom/broadcom/bt/service/map/MapProviderContext$ClientSession;->pre_defined_folders:[Ljava/lang/String;

    const/4 v1, 0x3

    new-instance v2, Ljava/lang/String;

    const-string v3, "deleted"

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    aput-object v2, v0, v1

    .line 52
    iget-object v0, p0, Lcom/broadcom/bt/service/map/MapProviderContext$ClientSession;->pre_defined_folders:[Ljava/lang/String;

    const/4 v1, 0x4

    new-instance v2, Ljava/lang/String;

    const-string v3, "draft"

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    aput-object v2, v0, v1

    .line 55
    return-void
.end method


# virtual methods
.method public getProviderFolder(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .parameter "virtualFolder"

    .prologue
    const/16 v6, 0x2f

    const-string/jumbo v5, "root/telecom/msg"

    const-string/jumbo v4, "root/telecom"

    const-string/jumbo v3, "root"

    .line 89
    const-string v0, "MapProviderContext"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getProviderFolder virtualFolder = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 92
    iget-object p1, p0, Lcom/broadcom/bt/service/map/MapProviderContext$ClientSession;->mProviderCurrentPath:Ljava/lang/String;

    .line 94
    :cond_0
    const-string/jumbo v0, "root/telecom/msg"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 98
    const-string p1, "/"

    .line 137
    :cond_1
    :goto_0
    return-object p1

    .line 100
    :cond_2
    const-string/jumbo v0, "root/telecom"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "root"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 106
    const-string/jumbo v0, "root/telecom/msg"

    invoke-virtual {p1, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const-string/jumbo v1, "root/telecom/msg"

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v1

    if-le v0, v1, :cond_3

    const-string/jumbo v0, "root/telecom/msg"

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v0, v6, :cond_3

    .line 111
    const-string/jumbo v0, "root/telecom/msg"

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 113
    invoke-virtual {p0, p1}, Lcom/broadcom/bt/service/map/MapProviderContext$ClientSession;->subFolderMapping(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 115
    :cond_3
    const-string/jumbo v0, "root/telecom"

    invoke-virtual {p1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const-string/jumbo v1, "root/telecom"

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v1

    if-le v0, v1, :cond_4

    const-string/jumbo v0, "root/telecom"

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v0, v6, :cond_4

    .line 119
    const-string/jumbo v0, "root/telecom"

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 121
    invoke-virtual {p0, p1}, Lcom/broadcom/bt/service/map/MapProviderContext$ClientSession;->subFolderMapping(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 125
    :cond_4
    const-string/jumbo v0, "root"

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const-string/jumbo v1, "root"

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v1

    if-le v0, v1, :cond_1

    const-string/jumbo v0, "root"

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v0, v6, :cond_1

    .line 129
    const-string/jumbo v0, "root"

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 131
    invoke-virtual {p0, p1}, Lcom/broadcom/bt/service/map/MapProviderContext$ClientSession;->subFolderMapping(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_0
.end method

.method public getVirtualFolder(Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .parameter "providerFolder"

    .prologue
    const/4 v6, 0x1

    const-string v9, "/"

    const-string v8, ""

    const-string v7, "MapProviderContext"

    .line 143
    const-string v4, "MapProviderContext"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getVirtualFolder providerFolder = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v7, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    if-eqz p1, :cond_5

    const-string v4, ""

    invoke-virtual {p1, v8}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v4

    if-eqz v4, :cond_5

    .line 150
    const-string v4, "/"

    invoke-virtual {p1, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 151
    .local v3, provider_tokens:[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v4, v3

    if-ge v0, v4, :cond_0

    .line 153
    const-string v4, "MapProviderContext"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Parsed provider["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "] = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-object v5, v3, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v7, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 155
    :cond_0
    const/4 v0, 0x0

    :goto_1
    iget-object v4, p0, Lcom/broadcom/bt/service/map/MapProviderContext$ClientSession;->this$0:Lcom/broadcom/bt/service/map/MapProviderContext;

    iget-object v4, v4, Lcom/broadcom/bt/service/map/MapProviderContext;->mFolderMappings:[Ljava/lang/String;

    array-length v4, v4

    if-ge v0, v4, :cond_2

    .line 157
    iget-object v4, p0, Lcom/broadcom/bt/service/map/MapProviderContext$ClientSession;->this$0:Lcom/broadcom/bt/service/map/MapProviderContext;

    iget-object v4, v4, Lcom/broadcom/bt/service/map/MapProviderContext;->mFolderMappings:[Ljava/lang/String;

    aget-object v4, v4, v0

    const-string v5, "="

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 158
    .local v2, mapping_tokens:[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, j:I
    :goto_2
    array-length v4, v2

    if-ge v1, v4, :cond_1

    .line 160
    const-string v4, "MapProviderContext"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Parsed mapping "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-object v5, v2, v1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v7, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 164
    :cond_1
    aget-object v4, v2, v6

    aget-object v5, v3, v6

    invoke-virtual {v4, v5}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v4

    if-nez v4, :cond_4

    .line 166
    aget-object v4, v2, v6

    aput-object v4, v3, v6

    .line 170
    .end local v1           #j:I
    .end local v2           #mapping_tokens:[Ljava/lang/String;
    :cond_2
    const-string/jumbo p1, "root/telecom/msg"

    .line 171
    const/4 v0, 0x0

    :goto_3
    array-length v4, v3

    if-ge v0, v4, :cond_5

    .line 173
    aget-object v4, v3, v0

    const-string v5, ""

    invoke-virtual {v4, v8}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v4

    if-eqz v4, :cond_3

    .line 175
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-object v5, v3, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 171
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 155
    .restart local v1       #j:I
    .restart local v2       #mapping_tokens:[Ljava/lang/String;
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 179
    .end local v0           #i:I
    .end local v1           #j:I
    .end local v2           #mapping_tokens:[Ljava/lang/String;
    .end local v3           #provider_tokens:[Ljava/lang/String;
    :cond_5
    return-object p1
.end method

.method public subFolderMapping(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .parameter "virtualFolder"

    .prologue
    const-string v7, "="

    .line 60
    const-string v4, "MapProviderContext"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "subFolderMapping virtualFolder = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v4, p0, Lcom/broadcom/bt/service/map/MapProviderContext$ClientSession;->pre_defined_folders:[Ljava/lang/String;

    array-length v4, v4

    if-ge v0, v4, :cond_2

    .line 63
    iget-object v4, p0, Lcom/broadcom/bt/service/map/MapProviderContext$ClientSession;->pre_defined_folders:[Ljava/lang/String;

    aget-object v4, v4, v0

    invoke-virtual {p1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 66
    const/4 v1, 0x0

    .local v1, j:I
    :goto_1
    iget-object v4, p0, Lcom/broadcom/bt/service/map/MapProviderContext$ClientSession;->mCtx:Lcom/broadcom/bt/service/map/MapProviderContext;

    iget-object v4, v4, Lcom/broadcom/bt/service/map/MapProviderContext;->mFolderMappings:[Ljava/lang/String;

    array-length v4, v4

    if-ge v1, v4, :cond_1

    .line 69
    iget-object v4, p0, Lcom/broadcom/bt/service/map/MapProviderContext$ClientSession;->mCtx:Lcom/broadcom/bt/service/map/MapProviderContext;

    iget-object v4, v4, Lcom/broadcom/bt/service/map/MapProviderContext;->mFolderMappings:[Ljava/lang/String;

    aget-object v4, v4, v1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/broadcom/bt/service/map/MapProviderContext$ClientSession;->pre_defined_folders:[Ljava/lang/String;

    aget-object v6, v6, v0

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 73
    iget-object v4, p0, Lcom/broadcom/bt/service/map/MapProviderContext$ClientSession;->mCtx:Lcom/broadcom/bt/service/map/MapProviderContext;

    iget-object v4, v4, Lcom/broadcom/bt/service/map/MapProviderContext;->mFolderMappings:[Ljava/lang/String;

    aget-object v2, v4, v1

    .line 74
    .local v2, sTemp:Ljava/lang/String;
    iget-object v4, p0, Lcom/broadcom/bt/service/map/MapProviderContext$ClientSession;->pre_defined_folders:[Ljava/lang/String;

    aget-object v4, v4, v0

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    const-string v5, "="

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v4, v5

    invoke-virtual {v2, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 76
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/broadcom/bt/service/map/MapProviderContext$ClientSession;->pre_defined_folders:[Ljava/lang/String;

    aget-object v5, v5, v0

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {p1, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    move-object v3, p1

    .line 82
    .end local v1           #j:I
    .end local v2           #sTemp:Ljava/lang/String;
    .end local p1
    .local v3, virtualFolder:Ljava/lang/String;
    :goto_2
    return-object v3

    .line 66
    .end local v3           #virtualFolder:Ljava/lang/String;
    .restart local v1       #j:I
    .restart local p1
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 61
    .end local v1           #j:I
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    move-object v3, p1

    .line 82
    .end local p1
    .restart local v3       #virtualFolder:Ljava/lang/String;
    goto :goto_2
.end method
