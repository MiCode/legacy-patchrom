.class public Landroid/os/FileUtils;
.super Ljava/lang/Object;
.source "FileUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/FileUtils$FileStatus;
    }
.end annotation


# static fields
.field private static final SAFE_FILENAME_PATTERN:Ljava/util/regex/Pattern; = null

.field public static final S_IRGRP:I = 0x20

.field public static final S_IROTH:I = 0x4

.field public static final S_IRUSR:I = 0x100

.field public static final S_IRWXG:I = 0x38

.field public static final S_IRWXO:I = 0x7

.field public static final S_IRWXU:I = 0x1c0

.field public static final S_IWGRP:I = 0x10

.field public static final S_IWOTH:I = 0x2

.field public static final S_IWUSR:I = 0x80

.field public static final S_IXGRP:I = 0x8

.field public static final S_IXOTH:I = 0x1

.field public static final S_IXUSR:I = 0x40


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const-string v0, "[\\w%+,./=_-]+"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroid/os/FileUtils;->SAFE_FILENAME_PATTERN:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static copyFile(Ljava/io/File;Ljava/io/File;)Z
    .locals 4
    .parameter "srcFile"
    .parameter "destFile"

    .prologue
    const/4 v2, 0x0

    .local v2, result:Z
    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .local v1, in:Ljava/io/InputStream;
    :try_start_1
    invoke-static {v1, p1}, Landroid/os/FileUtils;->copyToFile(Ljava/io/InputStream;Ljava/io/File;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v2

    :try_start_2
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V

    .end local v1           #in:Ljava/io/InputStream;
    :goto_0
    return v2

    .restart local v1       #in:Ljava/io/InputStream;
    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V

    throw v3
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .end local v1           #in:Ljava/io/InputStream;
    :catch_0
    move-exception v3

    move-object v0, v3

    .local v0, e:Ljava/io/IOException;
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static copyToFile(Ljava/io/InputStream;Ljava/io/File;)Z
    .locals 7
    .parameter "inputStream"
    .parameter "destFile"

    .prologue
    const/4 v6, 0x0

    :try_start_0
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    :cond_0
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .local v3, out:Ljava/io/FileOutputStream;
    const/16 v4, 0x1000

    :try_start_1
    new-array v0, v4, [B

    .local v0, buffer:[B
    :goto_0
    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    .local v1, bytesRead:I
    if-ltz v1, :cond_1

    const/4 v4, 0x0

    invoke-virtual {v3, v0, v4, v1}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .end local v0           #buffer:[B
    .end local v1           #bytesRead:I
    :catchall_0
    move-exception v4

    :try_start_2
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->flush()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :try_start_3
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/FileDescriptor;->sync()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    :goto_1
    :try_start_4
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V

    throw v4

    .end local v3           #out:Ljava/io/FileOutputStream;
    :catch_0
    move-exception v4

    move-object v2, v4

    .local v2, e:Ljava/io/IOException;
    move v4, v6

    .end local v2           #e:Ljava/io/IOException;
    :goto_2
    return v4

    .restart local v0       #buffer:[B
    .restart local v1       #bytesRead:I
    .restart local v3       #out:Ljava/io/FileOutputStream;
    :cond_1
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->flush()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    :try_start_5
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/FileDescriptor;->sync()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    :goto_3
    :try_start_6
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0

    const/4 v4, 0x1

    goto :goto_2

    .end local v0           #buffer:[B
    .end local v1           #bytesRead:I
    :catch_1
    move-exception v5

    goto :goto_1

    .restart local v0       #buffer:[B
    .restart local v1       #bytesRead:I
    :catch_2
    move-exception v4

    goto :goto_3
.end method

.method public static native getFatVolumeId(Ljava/lang/String;)I
.end method

.method public static native getFileStatus(Ljava/lang/String;Landroid/os/FileUtils$FileStatus;)Z
.end method

.method public static native getPermissions(Ljava/lang/String;[I)I
.end method

.method public static isFilenameSafe(Ljava/io/File;)Z
    .locals 2
    .parameter "file"

    .prologue
    sget-object v0, Landroid/os/FileUtils;->SAFE_FILENAME_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    return v0
.end method

.method public static readTextFile(Ljava/io/File;ILjava/lang/String;)Ljava/lang/String;
    .locals 6
    .parameter "file"
    .parameter "max"
    .parameter "ellipsis"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .local v0, input:Ljava/io/InputStream;
    :try_start_0
    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v1

    .local v1, size:J
    if-gtz p1, :cond_0

    const-wide/16 v3, 0x0

    cmp-long p0, v1, v3

    if-lez p0, :cond_6

    .end local p0
    if-nez p1, :cond_6

    :cond_0
    const-wide/16 v3, 0x0

    cmp-long p0, v1, v3

    if-lez p0, :cond_2

    if-eqz p1, :cond_1

    int-to-long v3, p1

    cmp-long p0, v1, v3

    if-gez p0, :cond_2

    :cond_1
    long-to-int p1, v1

    :cond_2
    add-int/lit8 p0, p1, 0x1

    new-array p0, p0, [B

    .local p0, data:[B
    invoke-virtual {v0, p0}, Ljava/io/FileInputStream;->read([B)I

    move-result v1

    .local v1, length:I
    if-gtz v1, :cond_3

    const-string p0, ""
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local p0           #data:[B
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V

    .end local v1           #length:I
    .end local p2
    :goto_0
    return-object p0

    .restart local v1       #length:I
    .restart local p0       #data:[B
    .restart local p2
    :cond_3
    if-gt v1, p1, :cond_4

    :try_start_1
    new-instance p2, Ljava/lang/String;

    .end local p2
    const/4 v2, 0x0

    invoke-direct {p2, p0, v2, v1}, Ljava/lang/String;-><init>([BII)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V

    move-object p0, p2

    goto :goto_0

    .restart local p2
    :cond_4
    if-nez p2, :cond_5

    :try_start_2
    new-instance p2, Ljava/lang/String;

    .end local p2
    const/4 v1, 0x0

    invoke-direct {p2, p0, v1, p1}, Ljava/lang/String;-><init>([BII)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .end local v1           #length:I
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V

    move-object p0, p2

    goto :goto_0

    .restart local v1       #length:I
    .restart local p2
    :cond_5
    :try_start_3
    new-instance v1, Ljava/lang/StringBuilder;

    .end local v1           #length:I
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v2, Ljava/lang/String;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3, p1}, Ljava/lang/String;-><init>([BII)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    .end local p0           #data:[B
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object p0

    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V

    goto :goto_0

    .local v1, size:J
    :cond_6
    if-gez p1, :cond_d

    const/4 v2, 0x0

    .end local v1           #size:J
    .local v2, rolled:Z
    const/4 v1, 0x0

    .local v1, last:[B
    const/4 p0, 0x0

    .restart local p0       #data:[B
    :goto_1
    if-eqz v1, :cond_11

    const/4 v2, 0x1

    move v3, v2

    .end local v2           #rolled:Z
    .local v3, rolled:Z
    :goto_2
    move-object v2, v1

    .local v2, tmp:[B
    move-object v1, p0

    move-object p0, v2

    if-nez p0, :cond_7

    neg-int p0, p1

    :try_start_4
    new-array p0, p0, [B

    :cond_7
    invoke-virtual {v0, p0}, Ljava/io/FileInputStream;->read([B)I

    move-result v2

    .local v2, len:I
    array-length v4, p0

    if-eq v2, v4, :cond_10

    if-nez v1, :cond_8

    if-gtz v2, :cond_8

    const-string p0, ""
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .end local p0           #data:[B
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V

    goto :goto_0

    .restart local p0       #data:[B
    :cond_8
    if-nez v1, :cond_9

    :try_start_5
    new-instance p2, Ljava/lang/String;

    .end local p2
    const/4 v1, 0x0

    invoke-direct {p2, p0, v1, v2}, Ljava/lang/String;-><init>([BII)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .end local v1           #last:[B
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V

    move-object p0, p2

    goto :goto_0

    .restart local v1       #last:[B
    .restart local p2
    :cond_9
    if-lez v2, :cond_a

    const/4 v3, 0x1

    const/4 v4, 0x0

    :try_start_6
    array-length v5, v1

    sub-int/2addr v5, v2

    invoke-static {v1, v2, v1, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 v4, 0x0

    array-length v5, v1

    sub-int/2addr v5, v2

    invoke-static {p0, v4, v1, v5, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_a
    move p0, v3

    .end local v3           #rolled:Z
    .local p0, rolled:Z
    if-eqz p2, :cond_b

    if-nez p0, :cond_c

    :cond_b
    new-instance p0, Ljava/lang/String;

    .end local p0           #rolled:Z
    invoke-direct {p0, v1}, Ljava/lang/String;-><init>([B)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V

    goto/16 :goto_0

    .restart local p0       #rolled:Z
    :cond_c
    :try_start_7
    new-instance p0, Ljava/lang/StringBuilder;

    .end local p0           #rolled:Z
    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    new-instance p2, Ljava/lang/String;

    .end local p2
    invoke-direct {p2, v1}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    move-result-object p0

    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V

    goto/16 :goto_0

    .end local v2           #len:I
    .local v1, size:J
    .restart local p2
    :cond_d
    :try_start_8
    new-instance p0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {p0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .local p0, contents:Ljava/io/ByteArrayOutputStream;
    const/16 p2, 0x400

    new-array p2, p2, [B

    .end local v1           #size:J
    .local p2, data:[B
    :cond_e
    invoke-virtual {v0, p2}, Ljava/io/FileInputStream;->read([B)I

    move-result v1

    .local v1, len:I
    if-lez v1, :cond_f

    const/4 v2, 0x0

    invoke-virtual {p0, p2, v2, v1}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    :cond_f
    array-length v2, p2

    if-eq v1, v2, :cond_e

    invoke-virtual {p0}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    move-result-object p0

    .end local p0           #contents:Ljava/io/ByteArrayOutputStream;
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V

    goto/16 :goto_0

    .end local v1           #len:I
    .end local p2           #data:[B
    :catchall_0
    move-exception p0

    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V

    throw p0

    .local v1, last:[B
    .restart local v2       #len:I
    .restart local v3       #rolled:Z
    .local p0, data:[B
    .local p2, ellipsis:Ljava/lang/String;
    :cond_10
    move v2, v3

    .end local v3           #rolled:Z
    .local v2, rolled:Z
    goto/16 :goto_1

    :cond_11
    move v3, v2

    .end local v2           #rolled:Z
    .restart local v3       #rolled:Z
    goto/16 :goto_2
.end method

.method public static native setPermissions(Ljava/lang/String;III)I
.end method

.method public static sync(Ljava/io/FileOutputStream;)Z
    .locals 1
    .parameter "stream"

    .prologue
    if-eqz p0, :cond_0

    :try_start_0
    invoke-virtual {p0}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/FileDescriptor;->sync()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method
