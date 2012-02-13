.class Lcom/motorola/pim/vcard/VcardAdapter$ActualExport;
.super Ljava/lang/Object;
.source "VcardAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/pim/vcard/VcardAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ActualExport"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/motorola/pim/vcard/VcardAdapter;


# direct methods
.method public constructor <init>(Lcom/motorola/pim/vcard/VcardAdapter;)V
    .locals 0
    .parameter

    .prologue
    iput-object p1, p0, Lcom/motorola/pim/vcard/VcardAdapter$ActualExport;->this$0:Lcom/motorola/pim/vcard/VcardAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public running(Ljava/lang/String;)Ljava/io/ByteArrayOutputStream;
    .locals 10
    .parameter "selectd"

    .prologue
    const-string v7, "VcardAdapter"

    const/4 v0, 0x0

    .local v0, composer:Landroid/pim/vcard/VCardComposer;
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .local v3, mOutputStream:Ljava/io/ByteArrayOutputStream;
    const/4 v4, 0x0

    .local v4, outputStream:Ljava/io/DataOutputStream;
    :try_start_0
    new-instance v5, Ljava/io/DataOutputStream;

    invoke-direct {v5, v3}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v4           #outputStream:Ljava/io/DataOutputStream;
    .local v5, outputStream:Ljava/io/DataOutputStream;
    :try_start_1
    new-instance v1, Landroid/pim/vcard/VCardComposer;

    iget-object v7, p0, Lcom/motorola/pim/vcard/VcardAdapter$ActualExport;->this$0:Lcom/motorola/pim/vcard/VcardAdapter;

    #getter for: Lcom/motorola/pim/vcard/VcardAdapter;->mContext:Landroid/content/Context;
    invoke-static {v7}, Lcom/motorola/pim/vcard/VcardAdapter;->access$000(Lcom/motorola/pim/vcard/VcardAdapter;)Landroid/content/Context;

    move-result-object v7

    iget-object v8, p0, Lcom/motorola/pim/vcard/VcardAdapter$ActualExport;->this$0:Lcom/motorola/pim/vcard/VcardAdapter;

    #getter for: Lcom/motorola/pim/vcard/VcardAdapter;->mVCardTypeStr:Ljava/lang/String;
    invoke-static {v8}, Lcom/motorola/pim/vcard/VcardAdapter;->access$100(Lcom/motorola/pim/vcard/VcardAdapter;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/pim/vcard/VCardConfig;->getVCardTypeFromString(Ljava/lang/String;)I

    move-result v8

    const/4 v9, 0x1

    invoke-direct {v1, v7, v8, v9}, Landroid/pim/vcard/VCardComposer;-><init>(Landroid/content/Context;IZ)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .end local v0           #composer:Landroid/pim/vcard/VCardComposer;
    .local v1, composer:Landroid/pim/vcard/VCardComposer;
    :try_start_2
    new-instance v7, Landroid/pim/vcard/VCardComposer$HandlerForOutputStream;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v7, v1, v5}, Landroid/pim/vcard/VCardComposer$HandlerForOutputStream;-><init>(Landroid/pim/vcard/VCardComposer;Ljava/io/OutputStream;)V

    invoke-virtual {v1, v7}, Landroid/pim/vcard/VCardComposer;->addHandler(Landroid/pim/vcard/VCardComposer$OneEntryHandler;)V

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "_id IN "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v1, v7, v8}, Landroid/pim/vcard/VCardComposer;->init(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_1

    invoke-virtual {v1}, Landroid/pim/vcard/VCardComposer;->getErrorReason()Ljava/lang/String;

    move-result-object v2

    .local v2, errorReason:Ljava/lang/String;
    const-string v7, "VcardAdapter"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "initialization of vCard composer failed: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/pim/vcard/VCardComposer;->terminate()V

    .end local v2           #errorReason:Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v3

    :cond_1
    :try_start_3
    invoke-virtual {v1}, Landroid/pim/vcard/VCardComposer;->getCount()I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    move-result v6

    .local v6, size:I
    if-nez v6, :cond_2

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/pim/vcard/VCardComposer;->terminate()V

    goto :goto_0

    :cond_2
    :try_start_4
    invoke-virtual {v1}, Landroid/pim/vcard/VCardComposer;->isAfterLast()Z

    move-result v7

    if-nez v7, :cond_3

    invoke-virtual {v1}, Landroid/pim/vcard/VCardComposer;->createOneEntry()Z

    move-result v7

    if-nez v7, :cond_2

    invoke-virtual {v1}, Landroid/pim/vcard/VCardComposer;->getErrorReason()Ljava/lang/String;

    move-result-object v2

    .restart local v2       #errorReason:Ljava/lang/String;
    const-string v7, "VcardAdapter"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Failed to read a contact: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/pim/vcard/VCardComposer;->terminate()V

    goto :goto_0

    .end local v2           #errorReason:Ljava/lang/String;
    :cond_3
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/pim/vcard/VCardComposer;->terminate()V

    goto :goto_0

    .end local v1           #composer:Landroid/pim/vcard/VCardComposer;
    .end local v5           #outputStream:Ljava/io/DataOutputStream;
    .end local v6           #size:I
    .restart local v0       #composer:Landroid/pim/vcard/VCardComposer;
    .restart local v4       #outputStream:Ljava/io/DataOutputStream;
    :catchall_0
    move-exception v7

    :goto_1
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroid/pim/vcard/VCardComposer;->terminate()V

    :cond_4
    throw v7

    .end local v4           #outputStream:Ljava/io/DataOutputStream;
    .restart local v5       #outputStream:Ljava/io/DataOutputStream;
    :catchall_1
    move-exception v7

    move-object v4, v5

    .end local v5           #outputStream:Ljava/io/DataOutputStream;
    .restart local v4       #outputStream:Ljava/io/DataOutputStream;
    goto :goto_1

    .end local v0           #composer:Landroid/pim/vcard/VCardComposer;
    .end local v4           #outputStream:Ljava/io/DataOutputStream;
    .restart local v1       #composer:Landroid/pim/vcard/VCardComposer;
    .restart local v5       #outputStream:Ljava/io/DataOutputStream;
    :catchall_2
    move-exception v7

    move-object v4, v5

    .end local v5           #outputStream:Ljava/io/DataOutputStream;
    .restart local v4       #outputStream:Ljava/io/DataOutputStream;
    move-object v0, v1

    .end local v1           #composer:Landroid/pim/vcard/VCardComposer;
    .restart local v0       #composer:Landroid/pim/vcard/VCardComposer;
    goto :goto_1
.end method

.method public runningEX(Ljava/util/Map;)Ljava/io/ByteArrayOutputStream;
    .locals 10
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Landroid/content/ContentValues;",
            ">;>;)",
            "Ljava/io/ByteArrayOutputStream;"
        }
    .end annotation

    .prologue
    .local p1, ContactValueMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Landroid/content/ContentValues;>;>;"
    const-string v7, "VcardAdapter"

    const/4 v0, 0x0

    .local v0, composer:Lcom/motorola/pim/vcard/VCardComposerEX;
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .local v3, mOutputStream:Ljava/io/ByteArrayOutputStream;
    const/4 v4, 0x0

    .local v4, outputStream:Ljava/io/DataOutputStream;
    :try_start_0
    new-instance v5, Ljava/io/DataOutputStream;

    invoke-direct {v5, v3}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v4           #outputStream:Ljava/io/DataOutputStream;
    .local v5, outputStream:Ljava/io/DataOutputStream;
    :try_start_1
    new-instance v1, Lcom/motorola/pim/vcard/VCardComposerEX;

    iget-object v7, p0, Lcom/motorola/pim/vcard/VcardAdapter$ActualExport;->this$0:Lcom/motorola/pim/vcard/VcardAdapter;

    #getter for: Lcom/motorola/pim/vcard/VcardAdapter;->mContext:Landroid/content/Context;
    invoke-static {v7}, Lcom/motorola/pim/vcard/VcardAdapter;->access$000(Lcom/motorola/pim/vcard/VcardAdapter;)Landroid/content/Context;

    move-result-object v7

    iget-object v8, p0, Lcom/motorola/pim/vcard/VcardAdapter$ActualExport;->this$0:Lcom/motorola/pim/vcard/VcardAdapter;

    #getter for: Lcom/motorola/pim/vcard/VcardAdapter;->mVCardTypeStr:Ljava/lang/String;
    invoke-static {v8}, Lcom/motorola/pim/vcard/VcardAdapter;->access$100(Lcom/motorola/pim/vcard/VcardAdapter;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/pim/vcard/VCardConfig;->getVCardTypeFromString(Ljava/lang/String;)I

    move-result v8

    const/4 v9, 0x1

    invoke-direct {v1, v7, v8, v9, p1}, Lcom/motorola/pim/vcard/VCardComposerEX;-><init>(Landroid/content/Context;IZLjava/util/Map;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .end local v0           #composer:Lcom/motorola/pim/vcard/VCardComposerEX;
    .local v1, composer:Lcom/motorola/pim/vcard/VCardComposerEX;
    :try_start_2
    new-instance v7, Lcom/motorola/pim/vcard/VCardComposerEX$HandlerForOutputStream;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v7, v1, v5}, Lcom/motorola/pim/vcard/VCardComposerEX$HandlerForOutputStream;-><init>(Lcom/motorola/pim/vcard/VCardComposerEX;Ljava/io/OutputStream;)V

    invoke-virtual {v1, v7}, Lcom/motorola/pim/vcard/VCardComposerEX;->addHandler(Lcom/motorola/pim/vcard/VCardComposerEX$OneEntryHandler;)V

    invoke-virtual {v1}, Lcom/motorola/pim/vcard/VCardComposerEX;->init()Z

    move-result v7

    if-nez v7, :cond_1

    invoke-virtual {v1}, Lcom/motorola/pim/vcard/VCardComposerEX;->getErrorReason()Ljava/lang/String;

    move-result-object v2

    .local v2, errorReason:Ljava/lang/String;
    const-string v7, "VcardAdapter"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "initialization of vCard composer failed: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/motorola/pim/vcard/VCardComposerEX;->terminate()V

    .end local v2           #errorReason:Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v3

    :cond_1
    :try_start_3
    invoke-virtual {v1}, Lcom/motorola/pim/vcard/VCardComposerEX;->getCount()I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    move-result v6

    .local v6, size:I
    if-nez v6, :cond_2

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/motorola/pim/vcard/VCardComposerEX;->terminate()V

    goto :goto_0

    :cond_2
    :try_start_4
    invoke-virtual {v1}, Lcom/motorola/pim/vcard/VCardComposerEX;->createOneEntry()Z

    move-result v7

    if-nez v7, :cond_3

    invoke-virtual {v1}, Lcom/motorola/pim/vcard/VCardComposerEX;->getErrorReason()Ljava/lang/String;

    move-result-object v2

    .restart local v2       #errorReason:Ljava/lang/String;
    const-string v7, "VcardAdapter"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Failed to read a contact: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/motorola/pim/vcard/VCardComposerEX;->terminate()V

    goto :goto_0

    .end local v2           #errorReason:Ljava/lang/String;
    :cond_3
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/motorola/pim/vcard/VCardComposerEX;->terminate()V

    goto :goto_0

    .end local v1           #composer:Lcom/motorola/pim/vcard/VCardComposerEX;
    .end local v5           #outputStream:Ljava/io/DataOutputStream;
    .end local v6           #size:I
    .restart local v0       #composer:Lcom/motorola/pim/vcard/VCardComposerEX;
    .restart local v4       #outputStream:Ljava/io/DataOutputStream;
    :catchall_0
    move-exception v7

    :goto_1
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/motorola/pim/vcard/VCardComposerEX;->terminate()V

    :cond_4
    throw v7

    .end local v4           #outputStream:Ljava/io/DataOutputStream;
    .restart local v5       #outputStream:Ljava/io/DataOutputStream;
    :catchall_1
    move-exception v7

    move-object v4, v5

    .end local v5           #outputStream:Ljava/io/DataOutputStream;
    .restart local v4       #outputStream:Ljava/io/DataOutputStream;
    goto :goto_1

    .end local v0           #composer:Lcom/motorola/pim/vcard/VCardComposerEX;
    .end local v4           #outputStream:Ljava/io/DataOutputStream;
    .restart local v1       #composer:Lcom/motorola/pim/vcard/VCardComposerEX;
    .restart local v5       #outputStream:Ljava/io/DataOutputStream;
    :catchall_2
    move-exception v7

    move-object v4, v5

    .end local v5           #outputStream:Ljava/io/DataOutputStream;
    .restart local v4       #outputStream:Ljava/io/DataOutputStream;
    move-object v0, v1

    .end local v1           #composer:Lcom/motorola/pim/vcard/VCardComposerEX;
    .restart local v0       #composer:Lcom/motorola/pim/vcard/VCardComposerEX;
    goto :goto_1
.end method
