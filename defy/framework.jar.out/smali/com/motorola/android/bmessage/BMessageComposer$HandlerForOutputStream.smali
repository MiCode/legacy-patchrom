.class public Lcom/motorola/android/bmessage/BMessageComposer$HandlerForOutputStream;
.super Ljava/lang/Object;
.source "BMessageComposer.java"

# interfaces
.implements Lcom/motorola/android/bmessage/BMessageComposer$OneEntryHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/android/bmessage/BMessageComposer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "HandlerForOutputStream"
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "bmessage.BMessageComposer.HandlerForOutputStream"


# instance fields
.field private mOnTerminateIsCalled:Z

.field private mOutputStream:Ljava/io/OutputStream;

.field final synthetic this$0:Lcom/motorola/android/bmessage/BMessageComposer;


# direct methods
.method public constructor <init>(Lcom/motorola/android/bmessage/BMessageComposer;Ljava/io/OutputStream;)V
    .locals 1
    .parameter
    .parameter "outputStream"

    .prologue
    iput-object p1, p0, Lcom/motorola/android/bmessage/BMessageComposer$HandlerForOutputStream;->this$0:Lcom/motorola/android/bmessage/BMessageComposer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/motorola/android/bmessage/BMessageComposer$HandlerForOutputStream;->mOnTerminateIsCalled:Z

    iput-object p2, p0, Lcom/motorola/android/bmessage/BMessageComposer$HandlerForOutputStream;->mOutputStream:Ljava/io/OutputStream;

    return-void
.end method


# virtual methods
.method protected finalize()V
    .locals 2

    .prologue
    const-string v1, "bmessage.BMessageComposer.HandlerForOutputStream"

    const-string v0, "bmessage.BMessageComposer.HandlerForOutputStream"

    const-string v0, " Enter HandlerForOutputStream.finalize()"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/motorola/android/bmessage/BMessageComposer$HandlerForOutputStream;->mOnTerminateIsCalled:Z

    if-nez v0, :cond_0

    const-string v0, "bmessage.BMessageComposer.HandlerForOutputStream"

    const-string v0, " Start run HandlerForOutputStream.onTerminate()."

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/motorola/android/bmessage/BMessageComposer$HandlerForOutputStream;->onTerminate()V

    :cond_0
    const-string v0, "bmessage.BMessageComposer.HandlerForOutputStream"

    const-string v0, " Exit HandlerForOutputStream.finalize()"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onEntryCreated(Ljava/lang/String;)Z
    .locals 8
    .parameter "bmessage"

    .prologue
    const-string v7, "IOException during closing the mOutputStream: "

    const-string v3, " mOutputStream.close()"

    const-string v5, "UTF-8"

    const-string v6, "bmessage.BMessageComposer.HandlerForOutputStream"

    const/4 v2, 0x0

    .local v2, retValue:Z
    const-string v3, "bmessage.BMessageComposer.HandlerForOutputStream"

    const-string v3, " Enter HandlerForOutputStream.onEntryCreated()"

    invoke-static {v6, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    const-string v3, "bmessage.BMessageComposer.HandlerForOutputStream"

    const-string v4, " onEntryCreated mOutputStream.write(byteArray)"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/motorola/android/bmessage/BMessageComposer$HandlerForOutputStream;->this$0:Lcom/motorola/android/bmessage/BMessageComposer;

    #getter for: Lcom/motorola/android/bmessage/BMessageComposer;->mMsgType:Ljava/lang/String;
    invoke-static {v3}, Lcom/motorola/android/bmessage/BMessageComposer;->access$100(Lcom/motorola/android/bmessage/BMessageComposer;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "MMS"

    if-eq v3, v4, :cond_0

    iget-object v3, p0, Lcom/motorola/android/bmessage/BMessageComposer$HandlerForOutputStream;->this$0:Lcom/motorola/android/bmessage/BMessageComposer;

    #getter for: Lcom/motorola/android/bmessage/BMessageComposer;->mMsgType:Ljava/lang/String;
    invoke-static {v3}, Lcom/motorola/android/bmessage/BMessageComposer;->access$100(Lcom/motorola/android/bmessage/BMessageComposer;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "EMAIL"

    if-ne v3, v4, :cond_1

    :cond_0
    iget-object v3, p0, Lcom/motorola/android/bmessage/BMessageComposer$HandlerForOutputStream;->mOutputStream:Ljava/io/OutputStream;

    const-string v4, "UTF-8"

    invoke-virtual {p1, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/OutputStream;->write([B)V

    :cond_1
    iget-object v3, p0, Lcom/motorola/android/bmessage/BMessageComposer$HandlerForOutputStream;->this$0:Lcom/motorola/android/bmessage/BMessageComposer;

    #getter for: Lcom/motorola/android/bmessage/BMessageComposer;->mMsgType:Ljava/lang/String;
    invoke-static {v3}, Lcom/motorola/android/bmessage/BMessageComposer;->access$100(Lcom/motorola/android/bmessage/BMessageComposer;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "SMS_GSM"

    if-eq v3, v4, :cond_2

    iget-object v3, p0, Lcom/motorola/android/bmessage/BMessageComposer$HandlerForOutputStream;->this$0:Lcom/motorola/android/bmessage/BMessageComposer;

    #getter for: Lcom/motorola/android/bmessage/BMessageComposer;->mMsgType:Ljava/lang/String;
    invoke-static {v3}, Lcom/motorola/android/bmessage/BMessageComposer;->access$100(Lcom/motorola/android/bmessage/BMessageComposer;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "SMS_CDMA"

    if-ne v3, v4, :cond_3

    :cond_2
    iget-object v3, p0, Lcom/motorola/android/bmessage/BMessageComposer$HandlerForOutputStream;->this$0:Lcom/motorola/android/bmessage/BMessageComposer;

    #getter for: Lcom/motorola/android/bmessage/BMessageComposer;->mCharSet:Ljava/lang/String;
    invoke-static {v3}, Lcom/motorola/android/bmessage/BMessageComposer;->access$200(Lcom/motorola/android/bmessage/BMessageComposer;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "UTF-8"

    if-ne v3, v5, :cond_4

    iget-object v3, p0, Lcom/motorola/android/bmessage/BMessageComposer$HandlerForOutputStream;->mOutputStream:Ljava/io/OutputStream;

    const-string v4, "UTF-8"

    invoke-virtual {p1, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/OutputStream;->write([B)V

    :cond_3
    :goto_0
    const-string v3, "bmessage.BMessageComposer.HandlerForOutputStream"

    const-string v4, " onEntryCreated mOutputStream.flush()"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/motorola/android/bmessage/BMessageComposer$HandlerForOutputStream;->mOutputStream:Ljava/io/OutputStream;

    invoke-virtual {v3}, Ljava/io/OutputStream;->flush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_5

    const/4 v2, 0x1

    :try_start_1
    const-string v3, "bmessage.BMessageComposer.HandlerForOutputStream"

    const-string v4, " mOutputStream.close()"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/motorola/android/bmessage/BMessageComposer$HandlerForOutputStream;->mOutputStream:Ljava/io/OutputStream;

    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V

    const/4 v3, 0x0

    iput-object v3, p0, Lcom/motorola/android/bmessage/BMessageComposer$HandlerForOutputStream;->mOutputStream:Ljava/io/OutputStream;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4

    :goto_1
    if-nez v2, :cond_9

    const-string v3, "bmessage.BMessageComposer.HandlerForOutputStream"

    const-string v3, " HandlerForOutputStream.onEntryCreated() return fail."

    invoke-static {v6, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    return v2

    :cond_4
    :try_start_2
    iget-object v3, p0, Lcom/motorola/android/bmessage/BMessageComposer$HandlerForOutputStream;->this$0:Lcom/motorola/android/bmessage/BMessageComposer;

    #getter for: Lcom/motorola/android/bmessage/BMessageComposer;->mSmsPdus:[[B
    invoke-static {v3}, Lcom/motorola/android/bmessage/BMessageComposer;->access$300(Lcom/motorola/android/bmessage/BMessageComposer;)[[B

    move-result-object v3

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/motorola/android/bmessage/BMessageComposer$HandlerForOutputStream;->this$0:Lcom/motorola/android/bmessage/BMessageComposer;

    #getter for: Lcom/motorola/android/bmessage/BMessageComposer;->mSmsPdus:[[B
    invoke-static {v3}, Lcom/motorola/android/bmessage/BMessageComposer;->access$300(Lcom/motorola/android/bmessage/BMessageComposer;)[[B

    move-result-object v3

    array-length v3, v3

    if-nez v3, :cond_6

    :cond_5
    iget-object v3, p0, Lcom/motorola/android/bmessage/BMessageComposer$HandlerForOutputStream;->mOutputStream:Ljava/io/OutputStream;

    const-string v4, "UTF-8"

    invoke-virtual {p1, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/OutputStream;->write([B)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_5

    goto :goto_0

    :catch_0
    move-exception v3

    move-object v0, v3

    .local v0, e:Ljava/lang/IndexOutOfBoundsException;
    :try_start_3
    const-string v3, "bmessage.BMessageComposer.HandlerForOutputStream"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "IndexOutOfBoundsException occurred during exportOneContactData: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/IndexOutOfBoundsException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/motorola/android/bmessage/BMessageComposer$HandlerForOutputStream;->this$0:Lcom/motorola/android/bmessage/BMessageComposer;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "IndexOutOfBoundsException occurred: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/IndexOutOfBoundsException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    #setter for: Lcom/motorola/android/bmessage/BMessageComposer;->mErrorReason:Ljava/lang/String;
    invoke-static {v3, v4}, Lcom/motorola/android/bmessage/BMessageComposer;->access$002(Lcom/motorola/android/bmessage/BMessageComposer;Ljava/lang/String;)Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    const-string v3, "bmessage.BMessageComposer.HandlerForOutputStream"

    const-string v4, " mOutputStream.close()"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/motorola/android/bmessage/BMessageComposer$HandlerForOutputStream;->mOutputStream:Ljava/io/OutputStream;

    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V

    const/4 v3, 0x0

    iput-object v3, p0, Lcom/motorola/android/bmessage/BMessageComposer$HandlerForOutputStream;->mOutputStream:Ljava/io/OutputStream;
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_1

    :catch_1
    move-exception v3

    move-object v0, v3

    .local v0, e:Ljava/io/IOException;
    const-string v3, "bmessage.BMessageComposer.HandlerForOutputStream"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "IOException during closing the mOutputStream: "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .end local v0           #e:Ljava/io/IOException;
    :cond_6
    :try_start_5
    iget-object v3, p0, Lcom/motorola/android/bmessage/BMessageComposer$HandlerForOutputStream;->mOutputStream:Ljava/io/OutputStream;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/motorola/android/bmessage/BMessageComposer$HandlerForOutputStream;->this$0:Lcom/motorola/android/bmessage/BMessageComposer;

    #getter for: Lcom/motorola/android/bmessage/BMessageComposer;->mBegPos:I
    invoke-static {v5}, Lcom/motorola/android/bmessage/BMessageComposer;->access$400(Lcom/motorola/android/bmessage/BMessageComposer;)I

    move-result v5

    invoke-virtual {p1, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    const-string v5, "UTF-8"

    invoke-virtual {v4, v5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/OutputStream;->write([B)V

    iget-object v3, p0, Lcom/motorola/android/bmessage/BMessageComposer$HandlerForOutputStream;->this$0:Lcom/motorola/android/bmessage/BMessageComposer;

    #getter for: Lcom/motorola/android/bmessage/BMessageComposer;->mBegPos:I
    invoke-static {v3}, Lcom/motorola/android/bmessage/BMessageComposer;->access$400(Lcom/motorola/android/bmessage/BMessageComposer;)I

    move-result v3

    iget-object v4, p0, Lcom/motorola/android/bmessage/BMessageComposer$HandlerForOutputStream;->this$0:Lcom/motorola/android/bmessage/BMessageComposer;

    #getter for: Lcom/motorola/android/bmessage/BMessageComposer;->mEndPos:I
    invoke-static {v4}, Lcom/motorola/android/bmessage/BMessageComposer;->access$500(Lcom/motorola/android/bmessage/BMessageComposer;)I

    move-result v4

    if-ne v3, v4, :cond_8

    iget-object v3, p0, Lcom/motorola/android/bmessage/BMessageComposer$HandlerForOutputStream;->mOutputStream:Ljava/io/OutputStream;

    const-string v4, "\r\n"

    const-string v5, "UTF-8"

    invoke-virtual {v4, v5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/OutputStream;->write([B)V

    :cond_7
    iget-object v3, p0, Lcom/motorola/android/bmessage/BMessageComposer$HandlerForOutputStream;->mOutputStream:Ljava/io/OutputStream;

    iget-object v4, p0, Lcom/motorola/android/bmessage/BMessageComposer$HandlerForOutputStream;->this$0:Lcom/motorola/android/bmessage/BMessageComposer;

    #getter for: Lcom/motorola/android/bmessage/BMessageComposer;->mEndPos:I
    invoke-static {v4}, Lcom/motorola/android/bmessage/BMessageComposer;->access$500(Lcom/motorola/android/bmessage/BMessageComposer;)I

    move-result v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "UTF-8"

    invoke-virtual {v4, v5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/OutputStream;->write([B)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_5

    goto/16 :goto_0

    :catch_2
    move-exception v3

    move-object v0, v3

    .local v0, e:Ljava/io/UnsupportedEncodingException;
    :try_start_6
    const-string v3, "bmessage.BMessageComposer.HandlerForOutputStream"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "UnsupportedEncodingException occurred during exportOneContactData: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/motorola/android/bmessage/BMessageComposer$HandlerForOutputStream;->this$0:Lcom/motorola/android/bmessage/BMessageComposer;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "UnsupportedEncodingException occurred: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    #setter for: Lcom/motorola/android/bmessage/BMessageComposer;->mErrorReason:Ljava/lang/String;
    invoke-static {v3, v4}, Lcom/motorola/android/bmessage/BMessageComposer;->access$002(Lcom/motorola/android/bmessage/BMessageComposer;Ljava/lang/String;)Ljava/lang/String;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :try_start_7
    const-string v3, "bmessage.BMessageComposer.HandlerForOutputStream"

    const-string v4, " mOutputStream.close()"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/motorola/android/bmessage/BMessageComposer$HandlerForOutputStream;->mOutputStream:Ljava/io/OutputStream;

    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V

    const/4 v3, 0x0

    iput-object v3, p0, Lcom/motorola/android/bmessage/BMessageComposer$HandlerForOutputStream;->mOutputStream:Ljava/io/OutputStream;
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3

    goto/16 :goto_1

    :catch_3
    move-exception v3

    move-object v0, v3

    .local v0, e:Ljava/io/IOException;
    const-string v3, "bmessage.BMessageComposer.HandlerForOutputStream"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "IOException during closing the mOutputStream: "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .end local v0           #e:Ljava/io/IOException;
    :cond_8
    const/4 v1, 0x0

    .local v1, i:I
    :goto_3
    :try_start_8
    iget-object v3, p0, Lcom/motorola/android/bmessage/BMessageComposer$HandlerForOutputStream;->this$0:Lcom/motorola/android/bmessage/BMessageComposer;

    #getter for: Lcom/motorola/android/bmessage/BMessageComposer;->mSmsPdus:[[B
    invoke-static {v3}, Lcom/motorola/android/bmessage/BMessageComposer;->access$300(Lcom/motorola/android/bmessage/BMessageComposer;)[[B

    move-result-object v3

    array-length v3, v3

    if-ge v1, v3, :cond_7

    iget-object v3, p0, Lcom/motorola/android/bmessage/BMessageComposer$HandlerForOutputStream;->this$0:Lcom/motorola/android/bmessage/BMessageComposer;

    #getter for: Lcom/motorola/android/bmessage/BMessageComposer;->mSmsPdus:[[B
    invoke-static {v3}, Lcom/motorola/android/bmessage/BMessageComposer;->access$300(Lcom/motorola/android/bmessage/BMessageComposer;)[[B

    move-result-object v3

    aget-object v3, v3, v1

    if-eqz v3, :cond_7

    iget-object v3, p0, Lcom/motorola/android/bmessage/BMessageComposer$HandlerForOutputStream;->mOutputStream:Ljava/io/OutputStream;

    const-string v4, "BEGIN:MSG\r\n"

    const-string v5, "UTF-8"

    invoke-virtual {v4, v5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/OutputStream;->write([B)V

    iget-object v3, p0, Lcom/motorola/android/bmessage/BMessageComposer$HandlerForOutputStream;->mOutputStream:Ljava/io/OutputStream;

    iget-object v4, p0, Lcom/motorola/android/bmessage/BMessageComposer$HandlerForOutputStream;->this$0:Lcom/motorola/android/bmessage/BMessageComposer;

    #getter for: Lcom/motorola/android/bmessage/BMessageComposer;->mSmsPdus:[[B
    invoke-static {v4}, Lcom/motorola/android/bmessage/BMessageComposer;->access$300(Lcom/motorola/android/bmessage/BMessageComposer;)[[B

    move-result-object v4

    aget-object v4, v4, v1

    invoke-virtual {v3, v4}, Ljava/io/OutputStream;->write([B)V

    iget-object v3, p0, Lcom/motorola/android/bmessage/BMessageComposer$HandlerForOutputStream;->mOutputStream:Ljava/io/OutputStream;

    const-string v4, "\r\n"

    const-string v5, "UTF-8"

    invoke-virtual {v4, v5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/OutputStream;->write([B)V

    iget-object v3, p0, Lcom/motorola/android/bmessage/BMessageComposer$HandlerForOutputStream;->mOutputStream:Ljava/io/OutputStream;

    const-string v4, "END:MSG\r\n"

    const-string v5, "UTF-8"

    invoke-virtual {v4, v5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/OutputStream;->write([B)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_8 .. :try_end_8} :catch_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_8 .. :try_end_8} :catch_2
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_5

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .end local v1           #i:I
    :catch_4
    move-exception v3

    move-object v0, v3

    .restart local v0       #e:Ljava/io/IOException;
    const-string v3, "bmessage.BMessageComposer.HandlerForOutputStream"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "IOException during closing the mOutputStream: "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .end local v0           #e:Ljava/io/IOException;
    :catch_5
    move-exception v3

    move-object v0, v3

    .restart local v0       #e:Ljava/io/IOException;
    :try_start_9
    const-string v3, "bmessage.BMessageComposer.HandlerForOutputStream"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "IOException occurred during exportOneContactData: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/motorola/android/bmessage/BMessageComposer$HandlerForOutputStream;->this$0:Lcom/motorola/android/bmessage/BMessageComposer;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "IOException occurred: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    #setter for: Lcom/motorola/android/bmessage/BMessageComposer;->mErrorReason:Ljava/lang/String;
    invoke-static {v3, v4}, Lcom/motorola/android/bmessage/BMessageComposer;->access$002(Lcom/motorola/android/bmessage/BMessageComposer;Ljava/lang/String;)Ljava/lang/String;
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    :try_start_a
    const-string v3, "bmessage.BMessageComposer.HandlerForOutputStream"

    const-string v4, " mOutputStream.close()"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/motorola/android/bmessage/BMessageComposer$HandlerForOutputStream;->mOutputStream:Ljava/io/OutputStream;

    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V

    const/4 v3, 0x0

    iput-object v3, p0, Lcom/motorola/android/bmessage/BMessageComposer$HandlerForOutputStream;->mOutputStream:Ljava/io/OutputStream;
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_6

    goto/16 :goto_1

    :catch_6
    move-exception v3

    move-object v0, v3

    const-string v3, "bmessage.BMessageComposer.HandlerForOutputStream"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "IOException during closing the mOutputStream: "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .end local v0           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v3

    :try_start_b
    const-string v4, "bmessage.BMessageComposer.HandlerForOutputStream"

    const-string v5, " mOutputStream.close()"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/motorola/android/bmessage/BMessageComposer$HandlerForOutputStream;->mOutputStream:Ljava/io/OutputStream;

    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V

    const/4 v4, 0x0

    iput-object v4, p0, Lcom/motorola/android/bmessage/BMessageComposer$HandlerForOutputStream;->mOutputStream:Ljava/io/OutputStream;
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_7

    :goto_4
    throw v3

    :catch_7
    move-exception v4

    move-object v0, v4

    .restart local v0       #e:Ljava/io/IOException;
    const-string v4, "bmessage.BMessageComposer.HandlerForOutputStream"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "IOException during closing the mOutputStream: "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .end local v0           #e:Ljava/io/IOException;
    :cond_9
    const-string v3, "bmessage.BMessageComposer.HandlerForOutputStream"

    const-string v3, " HandlerForOutputStream.onEntryCreated() return successfully."

    invoke-static {v6, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2
.end method

.method public onInit(Landroid/content/Context;)Z
    .locals 3
    .parameter "context"

    .prologue
    const-string v2, "bmessage.BMessageComposer.HandlerForOutputStream"

    const-string v0, "bmessage.BMessageComposer.HandlerForOutputStream"

    const-string v0, " Enter HandlerForOutputStream.onInit()"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/motorola/android/bmessage/BMessageComposer$HandlerForOutputStream;->mOutputStream:Ljava/io/OutputStream;

    if-nez v0, :cond_0

    const-string v0, "bmessage.BMessageComposer.HandlerForOutputStream"

    const-string v0, "output stream is null"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/motorola/android/bmessage/BMessageComposer$HandlerForOutputStream;->this$0:Lcom/motorola/android/bmessage/BMessageComposer;

    const-string v1, "output stream is null!"

    #setter for: Lcom/motorola/android/bmessage/BMessageComposer;->mErrorReason:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/motorola/android/bmessage/BMessageComposer;->access$002(Lcom/motorola/android/bmessage/BMessageComposer;Ljava/lang/String;)Ljava/lang/String;

    const-string v0, "bmessage.BMessageComposer.HandlerForOutputStream"

    const-string v0, " HandlerForOutputStream.onInit() return fail."

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const-string v0, "bmessage.BMessageComposer.HandlerForOutputStream"

    const-string v0, " HandlerForOutputStream.onInit() return successfully."

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onTerminate()V
    .locals 6

    .prologue
    const-string v5, "IOException during closing the mOutputStream: "

    const-string v1, " mOutputStream.close()"

    const-string v4, "bmessage.BMessageComposer.HandlerForOutputStream"

    const-string v1, "bmessage.BMessageComposer.HandlerForOutputStream"

    const-string v1, " Enter HandlerForOutputStream.onTerminate()"

    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/motorola/android/bmessage/BMessageComposer$HandlerForOutputStream;->mOnTerminateIsCalled:Z

    iget-object v1, p0, Lcom/motorola/android/bmessage/BMessageComposer$HandlerForOutputStream;->mOutputStream:Ljava/io/OutputStream;

    if-eqz v1, :cond_1

    :try_start_0
    const-string v1, "bmessage.BMessageComposer.HandlerForOutputStream"

    const-string v2, " mOutputStream.flush()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/motorola/android/bmessage/BMessageComposer$HandlerForOutputStream;->mOutputStream:Ljava/io/OutputStream;

    invoke-virtual {v1}, Ljava/io/OutputStream;->flush()V

    iget-object v1, p0, Lcom/motorola/android/bmessage/BMessageComposer$HandlerForOutputStream;->mOutputStream:Ljava/io/OutputStream;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/motorola/android/bmessage/BMessageComposer$HandlerForOutputStream;->mOutputStream:Ljava/io/OutputStream;

    instance-of v1, v1, Ljava/io/FileOutputStream;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/motorola/android/bmessage/BMessageComposer$HandlerForOutputStream;->mOutputStream:Ljava/io/OutputStream;

    check-cast v1, Ljava/io/FileOutputStream;

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/FileDescriptor;->sync()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    :cond_0
    :try_start_1
    const-string v1, "bmessage.BMessageComposer.HandlerForOutputStream"

    const-string v2, " mOutputStream.close()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/motorola/android/bmessage/BMessageComposer$HandlerForOutputStream;->mOutputStream:Ljava/io/OutputStream;

    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/motorola/android/bmessage/BMessageComposer$HandlerForOutputStream;->mOutputStream:Ljava/io/OutputStream;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    :cond_1
    :goto_0
    const-string v1, "bmessage.BMessageComposer.HandlerForOutputStream"

    const-string v1, " Exit HandlerForOutputStream.onTerminate()."

    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catch_0
    move-exception v1

    move-object v0, v1

    .local v0, e:Ljava/io/IOException;
    const-string v1, "bmessage.BMessageComposer.HandlerForOutputStream"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "IOException during closing the mOutputStream: "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .end local v0           #e:Ljava/io/IOException;
    :catch_1
    move-exception v1

    move-object v0, v1

    .restart local v0       #e:Ljava/io/IOException;
    :try_start_2
    const-string v1, "bmessage.BMessageComposer.HandlerForOutputStream"

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

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    const-string v1, "bmessage.BMessageComposer.HandlerForOutputStream"

    const-string v2, " mOutputStream.close()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/motorola/android/bmessage/BMessageComposer$HandlerForOutputStream;->mOutputStream:Ljava/io/OutputStream;

    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/motorola/android/bmessage/BMessageComposer$HandlerForOutputStream;->mOutputStream:Ljava/io/OutputStream;
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_0

    :catch_2
    move-exception v1

    move-object v0, v1

    const-string v1, "bmessage.BMessageComposer.HandlerForOutputStream"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "IOException during closing the mOutputStream: "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .end local v0           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v1

    :try_start_4
    const-string v2, "bmessage.BMessageComposer.HandlerForOutputStream"

    const-string v3, " mOutputStream.close()"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/motorola/android/bmessage/BMessageComposer$HandlerForOutputStream;->mOutputStream:Ljava/io/OutputStream;

    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/motorola/android/bmessage/BMessageComposer$HandlerForOutputStream;->mOutputStream:Ljava/io/OutputStream;
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    :goto_1
    throw v1

    :catch_3
    move-exception v2

    move-object v0, v2

    .restart local v0       #e:Ljava/io/IOException;
    const-string v2, "bmessage.BMessageComposer.HandlerForOutputStream"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "IOException during closing the mOutputStream: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method
