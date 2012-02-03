.class Landroid/media/MediaScanner$1;
.super Ljava/lang/Object;
.source "MediaScanner.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/media/MediaScanner;->pruneDeadThumbnailFiles()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/media/MediaScanner;

.field final synthetic val$existingFiles:Ljava/util/HashSet;


# direct methods
.method constructor <init>(Landroid/media/MediaScanner;Ljava/util/HashSet;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 2550
    iput-object p1, p0, Landroid/media/MediaScanner$1;->this$0:Landroid/media/MediaScanner;

    iput-object p2, p0, Landroid/media/MediaScanner$1;->val$existingFiles:Ljava/util/HashSet;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 2553
    :try_start_0
    iget-object v4, p0, Landroid/media/MediaScanner$1;->val$existingFiles:Ljava/util/HashSet;

    invoke-virtual {v4}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 2561
    .local v2, fileToDelete:Ljava/lang/String;
    :try_start_1
    iget-object v4, p0, Landroid/media/MediaScanner$1;->this$0:Landroid/media/MediaScanner;

    #getter for: Landroid/media/MediaScanner;->mGeneration:I
    invoke-static {v4}, Landroid/media/MediaScanner;->access$3300(Landroid/media/MediaScanner;)I

    move-result v4

    sget v5, Landroid/media/MediaScanner;->generation:I

    if-eq v4, v5, :cond_2

    .line 2574
    .end local v2           #fileToDelete:Ljava/lang/String;
    .end local v3           #i$:Ljava/util/Iterator;
    :cond_1
    :goto_1
    return-void

    .line 2564
    .restart local v2       #fileToDelete:Ljava/lang/String;
    .restart local v3       #i$:Ljava/util/Iterator;
    :cond_2
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2565
    .local v1, f:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 2566
    invoke-virtual {v1}, Ljava/io/File;->delete()Z
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 2568
    .end local v1           #f:Ljava/io/File;
    :catch_0
    move-exception v4

    goto :goto_0

    .line 2571
    .end local v2           #fileToDelete:Ljava/lang/String;
    .end local v3           #i$:Ljava/util/Iterator;
    :catch_1
    move-exception v4

    move-object v0, v4

    .line 2572
    .local v0, ex:Ljava/lang/Exception;
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " pruneDeadThumbnailFiles() deleting file thread: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_1
.end method
