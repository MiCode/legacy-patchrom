.class public final Landroid/pim/vcard/VCardComposer$HandlerForOutputStream;
.super Ljava/lang/Object;
.source "VCardComposer.java"

# interfaces
.implements Landroid/pim/vcard/VCardComposer$OneEntryHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/pim/vcard/VCardComposer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "HandlerForOutputStream"
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "VCardComposer.HandlerForOutputStream"


# instance fields
.field private mOnTerminateIsCalled:Z

.field private final mOutputStream:Ljava/io/OutputStream;

.field private mWriter:Ljava/io/Writer;

.field final synthetic this$0:Landroid/pim/vcard/VCardComposer;


# direct methods
.method public constructor <init>(Landroid/pim/vcard/VCardComposer;Ljava/io/OutputStream;)V
    .locals 1
    .parameter
    .parameter "outputStream"

    .prologue
    iput-object p1, p0, Landroid/pim/vcard/VCardComposer$HandlerForOutputStream;->this$0:Landroid/pim/vcard/VCardComposer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/pim/vcard/VCardComposer$HandlerForOutputStream;->mOnTerminateIsCalled:Z

    iput-object p2, p0, Landroid/pim/vcard/VCardComposer$HandlerForOutputStream;->mOutputStream:Ljava/io/OutputStream;

    return-void
.end method


# virtual methods
.method public closeOutputStream()V
    .locals 3

    .prologue
    :try_start_0
    iget-object v1, p0, Landroid/pim/vcard/VCardComposer$HandlerForOutputStream;->mWriter:Ljava/io/Writer;

    invoke-virtual {v1}, Ljava/io/Writer;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v1

    move-object v0, v1

    .local v0, e:Ljava/io/IOException;
    const-string v1, "VCardComposer.HandlerForOutputStream"

    const-string v2, "IOException is thrown during close(). Ignoring."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public finalize()V
    .locals 1

    .prologue
    iget-boolean v0, p0, Landroid/pim/vcard/VCardComposer$HandlerForOutputStream;->mOnTerminateIsCalled:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/pim/vcard/VCardComposer$HandlerForOutputStream;->onTerminate()V

    :cond_0
    return-void
.end method

.method public onEntryCreated(Ljava/lang/String;)Z
    .locals 4
    .parameter "vcard"

    .prologue
    :try_start_0
    iget-object v1, p0, Landroid/pim/vcard/VCardComposer$HandlerForOutputStream;->mWriter:Ljava/io/Writer;

    invoke-virtual {v1, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :catch_0
    move-exception v1

    move-object v0, v1

    .local v0, e:Ljava/io/IOException;
    const-string v1, "VCardComposer.HandlerForOutputStream"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "IOException occurred during exportOneContactData: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Landroid/pim/vcard/VCardComposer$HandlerForOutputStream;->this$0:Landroid/pim/vcard/VCardComposer;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "IOException occurred: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    #setter for: Landroid/pim/vcard/VCardComposer;->mErrorReason:Ljava/lang/String;
    invoke-static {v1, v2}, Landroid/pim/vcard/VCardComposer;->access$102(Landroid/pim/vcard/VCardComposer;Ljava/lang/String;)Ljava/lang/String;

    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onInit(Landroid/content/Context;)Z
    .locals 8
    .parameter "context"

    .prologue
    const/4 v6, 0x0

    const-string v7, "VCardComposer.HandlerForOutputStream"

    :try_start_0
    new-instance v2, Ljava/io/BufferedWriter;

    new-instance v3, Ljava/io/OutputStreamWriter;

    iget-object v4, p0, Landroid/pim/vcard/VCardComposer$HandlerForOutputStream;->mOutputStream:Ljava/io/OutputStream;

    iget-object v5, p0, Landroid/pim/vcard/VCardComposer$HandlerForOutputStream;->this$0:Landroid/pim/vcard/VCardComposer;

    #getter for: Landroid/pim/vcard/VCardComposer;->mCharset:Ljava/lang/String;
    invoke-static {v5}, Landroid/pim/vcard/VCardComposer;->access$000(Landroid/pim/vcard/VCardComposer;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    iput-object v2, p0, Landroid/pim/vcard/VCardComposer$HandlerForOutputStream;->mWriter:Ljava/io/Writer;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v2, p0, Landroid/pim/vcard/VCardComposer$HandlerForOutputStream;->this$0:Landroid/pim/vcard/VCardComposer;

    #getter for: Landroid/pim/vcard/VCardComposer;->mIsDoCoMo:Z
    invoke-static {v2}, Landroid/pim/vcard/VCardComposer;->access$200(Landroid/pim/vcard/VCardComposer;)Z

    move-result v2

    if-eqz v2, :cond_0

    :try_start_1
    iget-object v2, p0, Landroid/pim/vcard/VCardComposer$HandlerForOutputStream;->mWriter:Ljava/io/Writer;

    iget-object v3, p0, Landroid/pim/vcard/VCardComposer$HandlerForOutputStream;->this$0:Landroid/pim/vcard/VCardComposer;

    const-string v4, "-1"

    const/4 v5, 0x0

    #calls: Landroid/pim/vcard/VCardComposer;->createOneEntryInternal(Ljava/lang/String;Ljava/lang/reflect/Method;)Ljava/lang/String;
    invoke-static {v3, v4, v5}, Landroid/pim/vcard/VCardComposer;->access$300(Landroid/pim/vcard/VCardComposer;Ljava/lang/String;Ljava/lang/reflect/Method;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/pim/vcard/exception/VCardException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    :cond_0
    const/4 v2, 0x1

    :goto_0
    return v2

    :catch_0
    move-exception v2

    move-object v1, v2

    .local v1, e1:Ljava/io/UnsupportedEncodingException;
    const-string v2, "VCardComposer.HandlerForOutputStream"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unsupported charset: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/pim/vcard/VCardComposer$HandlerForOutputStream;->this$0:Landroid/pim/vcard/VCardComposer;

    #getter for: Landroid/pim/vcard/VCardComposer;->mCharset:Ljava/lang/String;
    invoke-static {v3}, Landroid/pim/vcard/VCardComposer;->access$000(Landroid/pim/vcard/VCardComposer;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v7, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Landroid/pim/vcard/VCardComposer$HandlerForOutputStream;->this$0:Landroid/pim/vcard/VCardComposer;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Encoding is not supported (usually this does not happen!): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/pim/vcard/VCardComposer$HandlerForOutputStream;->this$0:Landroid/pim/vcard/VCardComposer;

    #getter for: Landroid/pim/vcard/VCardComposer;->mCharset:Ljava/lang/String;
    invoke-static {v4}, Landroid/pim/vcard/VCardComposer;->access$000(Landroid/pim/vcard/VCardComposer;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    #setter for: Landroid/pim/vcard/VCardComposer;->mErrorReason:Ljava/lang/String;
    invoke-static {v2, v3}, Landroid/pim/vcard/VCardComposer;->access$102(Landroid/pim/vcard/VCardComposer;Ljava/lang/String;)Ljava/lang/String;

    move v2, v6

    goto :goto_0

    .end local v1           #e1:Ljava/io/UnsupportedEncodingException;
    :catch_1
    move-exception v2

    move-object v0, v2

    .local v0, e:Landroid/pim/vcard/exception/VCardException;
    const-string v2, "VCardComposer.HandlerForOutputStream"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "VCardException has been thrown during on Init(): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/pim/vcard/exception/VCardException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v7, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v6

    goto :goto_0

    .end local v0           #e:Landroid/pim/vcard/exception/VCardException;
    :catch_2
    move-exception v2

    move-object v0, v2

    .local v0, e:Ljava/io/IOException;
    const-string v2, "VCardComposer.HandlerForOutputStream"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "IOException occurred during exportOneContactData: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v7, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Landroid/pim/vcard/VCardComposer$HandlerForOutputStream;->this$0:Landroid/pim/vcard/VCardComposer;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "IOException occurred: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    #setter for: Landroid/pim/vcard/VCardComposer;->mErrorReason:Ljava/lang/String;
    invoke-static {v2, v3}, Landroid/pim/vcard/VCardComposer;->access$102(Landroid/pim/vcard/VCardComposer;Ljava/lang/String;)Ljava/lang/String;

    move v2, v6

    goto/16 :goto_0
.end method

.method public onTerminate()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/pim/vcard/VCardComposer$HandlerForOutputStream;->mOnTerminateIsCalled:Z

    iget-object v1, p0, Landroid/pim/vcard/VCardComposer$HandlerForOutputStream;->mWriter:Ljava/io/Writer;

    if-eqz v1, :cond_1

    :try_start_0
    iget-object v1, p0, Landroid/pim/vcard/VCardComposer$HandlerForOutputStream;->mWriter:Ljava/io/Writer;

    invoke-virtual {v1}, Ljava/io/Writer;->flush()V

    iget-object v1, p0, Landroid/pim/vcard/VCardComposer$HandlerForOutputStream;->mOutputStream:Ljava/io/OutputStream;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/pim/vcard/VCardComposer$HandlerForOutputStream;->mOutputStream:Ljava/io/OutputStream;

    instance-of v1, v1, Ljava/io/FileOutputStream;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/pim/vcard/VCardComposer$HandlerForOutputStream;->mOutputStream:Ljava/io/OutputStream;

    check-cast v1, Ljava/io/FileOutputStream;

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/FileDescriptor;->sync()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    invoke-virtual {p0}, Landroid/pim/vcard/VCardComposer$HandlerForOutputStream;->closeOutputStream()V

    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception v1

    move-object v0, v1

    .local v0, e:Ljava/io/IOException;
    :try_start_1
    const-string v1, "VCardComposer.HandlerForOutputStream"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "IOException during closing the output stream: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {p0}, Landroid/pim/vcard/VCardComposer$HandlerForOutputStream;->closeOutputStream()V

    goto :goto_0

    .end local v0           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v1

    invoke-virtual {p0}, Landroid/pim/vcard/VCardComposer$HandlerForOutputStream;->closeOutputStream()V

    throw v1
.end method
