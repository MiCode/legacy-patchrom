.class public Landroid/view/PtfViewDebug;
.super Landroid/view/ViewDebug;
.source "PtfViewDebug.java"


# static fields
.field private static final PTF_COMMAND_DUMP:Ljava/lang/String; = "PTF_DUMP"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Landroid/view/ViewDebug;-><init>()V

    return-void
.end method

.method private static configureEscapeSequence(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "text"

    .prologue
    const-string v0, "\\"

    const-string v1, "\\\\"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    const-string v0, ","

    const-string v1, "\\,"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "\n"

    const-string v1, "\\n"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static dispatchCommand(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;Ljava/io/OutputStream;)V
    .locals 1
    .parameter "view"
    .parameter "command"
    .parameter "parameters"
    .parameter "clientStream"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-string v0, "PTF_DUMP"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object p0

    invoke-static {p0, p3}, Landroid/view/PtfViewDebug;->dump(Landroid/view/View;Ljava/io/OutputStream;)V

    :goto_0
    return-void

    :cond_0
    invoke-static {p0, p1, p2, p3}, Landroid/view/ViewDebug;->dispatchCommand(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;Ljava/io/OutputStream;)V

    goto :goto_0
.end method

.method private static dump(Landroid/view/View;Ljava/io/OutputStream;)V
    .locals 9
    .parameter "root"
    .parameter "clientStream"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .local v4, out:Ljava/io/BufferedWriter;
    :try_start_0
    new-instance v5, Ljava/io/BufferedWriter;

    new-instance v7, Ljava/io/OutputStreamWriter;

    invoke-direct {v7, p1}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    const v8, 0x8000

    invoke-direct {v5, v7, v8}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .end local v4           #out:Ljava/io/BufferedWriter;
    .local v5, out:Ljava/io/BufferedWriter;
    :try_start_1
    invoke-virtual {p0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v6

    .local v6, view:Landroid/view/View;
    instance-of v7, v6, Landroid/view/ViewGroup;

    if-eqz v7, :cond_2

    move-object v0, v6

    check-cast v0, Landroid/view/ViewGroup;

    move-object v2, v0

    .local v2, group:Landroid/view/ViewGroup;
    const/4 v7, 0x0

    invoke-static {v2, v5, v7}, Landroid/view/PtfViewDebug;->dumpViewHierarchyWithProperties(Landroid/view/ViewGroup;Ljava/io/BufferedWriter;I)V

    .end local v2           #group:Landroid/view/ViewGroup;
    :goto_0
    const-string v7, "DONE."

    invoke-virtual {v5, v7}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/BufferedWriter;->newLine()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    if-eqz v5, :cond_0

    invoke-virtual {v5}, Ljava/io/BufferedWriter;->close()V

    :cond_0
    move-object v4, v5

    .end local v5           #out:Ljava/io/BufferedWriter;
    .end local v6           #view:Landroid/view/View;
    .restart local v4       #out:Ljava/io/BufferedWriter;
    :cond_1
    :goto_1
    return-void

    .end local v4           #out:Ljava/io/BufferedWriter;
    .restart local v5       #out:Ljava/io/BufferedWriter;
    .restart local v6       #view:Landroid/view/View;
    :cond_2
    const/4 v7, 0x0

    :try_start_2
    invoke-static {v6, v5, v7}, Landroid/view/PtfViewDebug;->dumpViewWithProperties(Landroid/view/View;Ljava/io/BufferedWriter;I)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    goto :goto_0

    .end local v6           #view:Landroid/view/View;
    :catch_0
    move-exception v7

    move-object v3, v7

    move-object v4, v5

    .end local v5           #out:Ljava/io/BufferedWriter;
    .local v3, iae:Ljava/lang/IllegalArgumentException;
    .restart local v4       #out:Ljava/io/BufferedWriter;
    :goto_2
    if-eqz v4, :cond_3

    :try_start_3
    invoke-virtual {v4}, Ljava/io/BufferedWriter;->newLine()V

    const-string v7, "ERROR 0A"

    invoke-virtual {v4, v7}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/BufferedWriter;->newLine()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4

    :cond_3
    :goto_3
    if-eqz v4, :cond_1

    .end local v3           #iae:Ljava/lang/IllegalArgumentException;
    :goto_4
    invoke-virtual {v4}, Ljava/io/BufferedWriter;->close()V

    goto :goto_1

    :catch_1
    move-exception v7

    move-object v1, v7

    .local v1, e:Ljava/lang/Exception;
    :goto_5
    :try_start_4
    const-string v7, "View"

    const-string v8, "Error while dumping PTF hierarchy tree."

    invoke-static {v7, v8, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz v4, :cond_4

    :try_start_5
    invoke-virtual {v4}, Ljava/io/BufferedWriter;->newLine()V

    const-string v7, "ERROR 00"

    invoke-virtual {v4, v7}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/BufferedWriter;->newLine()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    :cond_4
    :goto_6
    if-eqz v4, :cond_1

    goto :goto_4

    .end local v1           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v7

    :goto_7
    if-eqz v4, :cond_5

    invoke-virtual {v4}, Ljava/io/BufferedWriter;->close()V

    :cond_5
    throw v7

    .end local v4           #out:Ljava/io/BufferedWriter;
    .restart local v5       #out:Ljava/io/BufferedWriter;
    :catchall_1
    move-exception v7

    move-object v4, v5

    .end local v5           #out:Ljava/io/BufferedWriter;
    .restart local v4       #out:Ljava/io/BufferedWriter;
    goto :goto_7

    .restart local v1       #e:Ljava/lang/Exception;
    :catch_2
    move-exception v7

    goto :goto_6

    .end local v1           #e:Ljava/lang/Exception;
    .end local v4           #out:Ljava/io/BufferedWriter;
    .restart local v5       #out:Ljava/io/BufferedWriter;
    :catch_3
    move-exception v7

    move-object v1, v7

    move-object v4, v5

    .end local v5           #out:Ljava/io/BufferedWriter;
    .restart local v4       #out:Ljava/io/BufferedWriter;
    goto :goto_5

    .restart local v3       #iae:Ljava/lang/IllegalArgumentException;
    :catch_4
    move-exception v7

    goto :goto_3

    .end local v3           #iae:Ljava/lang/IllegalArgumentException;
    :catch_5
    move-exception v7

    move-object v3, v7

    goto :goto_2
.end method

.method private static dumpViewHierarchyWithProperties(Landroid/view/ViewGroup;Ljava/io/BufferedWriter;I)V
    .locals 5
    .parameter "group"
    .parameter "out"
    .parameter "level"

    .prologue
    invoke-static {p0, p1, p2}, Landroid/view/PtfViewDebug;->dumpViewWithProperties(Landroid/view/View;Ljava/io/BufferedWriter;I)Z

    move-result v3

    if-nez v3, :cond_1

    :cond_0
    return-void

    :cond_1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_0

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .local v2, view:Landroid/view/View;
    if-nez v2, :cond_2

    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Null value for Child Views. Inconsistent capture"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_2
    instance-of v3, v2, Landroid/view/ViewGroup;

    if-eqz v3, :cond_3

    check-cast v2, Landroid/view/ViewGroup;

    .end local v2           #view:Landroid/view/View;
    add-int/lit8 v3, p2, 0x1

    invoke-static {v2, p1, v3}, Landroid/view/PtfViewDebug;->dumpViewHierarchyWithProperties(Landroid/view/ViewGroup;Ljava/io/BufferedWriter;I)V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .restart local v2       #view:Landroid/view/View;
    :cond_3
    add-int/lit8 v3, p2, 0x1

    invoke-static {v2, p1, v3}, Landroid/view/PtfViewDebug;->dumpViewWithProperties(Landroid/view/View;Ljava/io/BufferedWriter;I)Z

    goto :goto_1
.end method

.method private static dumpViewWithProperties(Landroid/view/View;Ljava/io/BufferedWriter;I)Z
    .locals 6
    .parameter "view"
    .parameter "out"
    .parameter "level"

    .prologue
    if-nez p0, :cond_0

    const/4 p0, 0x0

    .end local p0
    .end local p1
    .end local p2
    :goto_0
    return p0

    .restart local p0
    .restart local p1
    .restart local p2
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_1

    const/4 p0, 0x0

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, p2, :cond_2

    const/16 v2, 0x20

    invoke-virtual {p1, v2}, Ljava/io/BufferedWriter;->write(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    const/16 p2, 0x20

    invoke-virtual {p1, p2}, Ljava/io/BufferedWriter;->write(I)V

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .local p2, dumpStr:Ljava/lang/StringBuilder;
    const-string v2, "NO_ID"

    .local v2, idStr:Ljava/lang/String;
    invoke-virtual {p0}, Landroid/view/View;->getId()I

    move-result v1

    .local v1, id:I
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v3

    .local v3, resources:Landroid/content/res/Resources;
    if-ltz v1, :cond_e

    :try_start_1
    new-instance v2, Ljava/lang/StringBuilder;

    .end local v2           #idStr:Ljava/lang/String;
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Landroid/content/res/Resources;->getResourceTypeName(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v4, 0x2f

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v3, v1}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    move-result-object v1

    .end local v1           #id:I
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object v1

    .local v1, idStr:Ljava/lang/String;
    :goto_2
    :try_start_2
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x2

    new-array v2, v1, [I
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .end local v1           #idStr:Ljava/lang/String;
    .local v2, position:[I
    :try_start_3
    invoke-virtual {p0, v2}, Landroid/view/View;->getLocationOnScreen([I)V
    :try_end_3
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .end local v3           #resources:Landroid/content/res/Resources;
    :cond_3
    :goto_3
    :try_start_4
    const-string v1, ","

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v3, 0x0

    aget v3, v2, v3

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v3, 0x1

    aget v2, v2, v3

    .end local v2           #position:[I
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/view/View;->hasFocus()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/view/View;->isClickable()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/view/View;->isFocused()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/view/View;->isSelected()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    instance-of v1, p0, Landroid/widget/AbsListView;

    if-eqz v1, :cond_9

    const-string v1, ","

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object v0, p0

    check-cast v0, Landroid/widget/AbsListView;

    move-object v1, v0

    invoke-virtual {v1}, Landroid/widget/AbsListView;->getCount()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object v0, p0

    check-cast v0, Landroid/widget/AbsListView;

    move-object v1, v0

    invoke-virtual {v1}, Landroid/widget/AbsListView;->getSelectedItemPosition()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_4
    const-string v1, ","

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    instance-of v1, p0, Landroid/widget/Checkable;

    if-eqz v1, :cond_4

    move-object v0, p0

    check-cast v0, Landroid/widget/Checkable;

    move-object v1, v0

    invoke-interface {v1}, Landroid/widget/Checkable;->isChecked()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
    const-string v1, ","

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    instance-of v1, p0, Landroid/widget/TextView;

    if-eqz v1, :cond_5

    move-object v0, p0

    check-cast v0, Landroid/widget/TextView;

    move-object v1, v0

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .local v1, text:Ljava/lang/String;
    invoke-static {v1}, Landroid/view/PtfViewDebug;->configureEscapeSequence(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .end local v1           #text:Ljava/lang/String;
    :cond_5
    instance-of v1, p0, Landroid/widget/ProgressBar;

    if-eqz v1, :cond_a

    move-object v0, p0

    check-cast v0, Landroid/widget/ProgressBar;

    move-object v1, v0

    invoke-virtual {v1}, Landroid/widget/ProgressBar;->getMax()I

    move-result v1

    .local v1, max:I
    move-object v0, p0

    check-cast v0, Landroid/widget/ProgressBar;

    move-object v2, v0

    invoke-virtual {v2}, Landroid/widget/ProgressBar;->getProgress()I

    move-result v2

    int-to-float v2, v2

    int-to-float v3, v1

    div-float/2addr v2, v3

    .local v2, progress1:F
    move-object v0, p0

    check-cast v0, Landroid/widget/ProgressBar;

    move-object v3, v0

    invoke-virtual {v3}, Landroid/widget/ProgressBar;->getSecondaryProgress()I

    move-result v3

    int-to-float v3, v3

    int-to-float v1, v1

    div-float v1, v3, v1

    .local v1, progress2:F
    const-string v3, ","

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/high16 v4, 0x42c8

    mul-float/2addr v2, v4

    float-to-int v2, v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .end local v2           #progress1:F
    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/high16 v3, 0x42c8

    mul-float/2addr v1, v3

    float-to-int v1, v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .end local v1           #progress2:F
    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_5
    const-string v1, ","

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    instance-of v1, p0, Landroid/widget/ImageView;

    if-eqz v1, :cond_b

    const/4 v1, 0x0

    .local v1, resString:Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, tempDrawable:Landroid/graphics/drawable/Drawable;
    move-object v0, p0

    check-cast v0, Landroid/widget/ImageView;

    move-object v2, v0

    .end local v2           #tempDrawable:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v2}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .restart local v2       #tempDrawable:Landroid/graphics/drawable/Drawable;
    if-eqz v2, :cond_6

    invoke-static {v2}, Landroid/view/PtfViewDebug;->getDrawableImageSource(Landroid/graphics/drawable/Drawable;)Ljava/lang/String;

    move-result-object v1

    :cond_6
    if-eqz v1, :cond_7

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .end local v1           #resString:Ljava/lang/String;
    .end local v2           #tempDrawable:Landroid/graphics/drawable/Drawable;
    :cond_7
    const-string v1, ","

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    .end local p0
    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/BufferedWriter;->newLine()V

    const/4 p0, 0x1

    goto/16 :goto_0

    .restart local v3       #resources:Landroid/content/res/Resources;
    .restart local p0
    :catch_0
    move-exception v1

    .local v1, e:Landroid/content/res/Resources$NotFoundException;
    const-string v1, "UNKNOWN"

    .local v1, idStr:Ljava/lang/String;
    goto/16 :goto_2

    .end local v1           #idStr:Ljava/lang/String;
    .local v2, position:[I
    :catch_1
    move-exception v1

    .local v1, e:Ljava/lang/NullPointerException;
    invoke-virtual {p0, v2}, Landroid/view/View;->getLocationInWindow([I)V

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    .end local v3           #resources:Landroid/content/res/Resources;
    .local v1, viewParent:Landroid/view/ViewParent;
    :goto_6
    instance-of v3, v1, Landroid/view/View;

    if-eqz v3, :cond_3

    check-cast v1, Landroid/view/View;

    .local v1, viewP:Landroid/view/View;
    iget-object v3, v1, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v3, :cond_8

    const/4 v3, 0x0

    aget v4, v2, v3

    iget-object v5, v1, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget v5, v5, Landroid/view/View$AttachInfo;->mWindowLeft:I

    add-int/2addr v4, v5

    aput v4, v2, v3

    const/4 v3, 0x1

    aget v4, v2, v3

    iget-object v1, v1, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    .end local v1           #viewP:Landroid/view/View;
    iget v1, v1, Landroid/view/View$AttachInfo;->mWindowTop:I

    add-int/2addr v1, v4

    aput v1, v2, v3
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto/16 :goto_3

    .end local v2           #position:[I
    .end local p0
    .end local p2           #dumpStr:Ljava/lang/StringBuilder;
    :catch_2
    move-exception p0

    .local p0, e:Ljava/io/IOException;
    const-string p0, "View"

    .end local p0           #e:Ljava/io/IOException;
    const-string p1, "Error while dumping PTF hierarchy tree."

    .end local p1
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    goto/16 :goto_0

    .restart local v1       #viewP:Landroid/view/View;
    .restart local v2       #position:[I
    .local p0, view:Landroid/view/View;
    .restart local p1
    .restart local p2       #dumpStr:Ljava/lang/StringBuilder;
    :cond_8
    :try_start_5
    iget-object v1, v1, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    .local v1, viewParent:Landroid/view/ViewParent;
    goto :goto_6

    .end local v1           #viewParent:Landroid/view/ViewParent;
    .end local v2           #position:[I
    :cond_9
    const-string v1, ",,"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_4

    :cond_a
    const-string v1, ",,"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_5

    :cond_b
    instance-of v1, p0, Landroid/widget/TextView;

    if-eqz v1, :cond_7

    move-object v0, p0

    check-cast v0, Landroid/widget/TextView;

    move-object v1, v0

    invoke-virtual {v1}, Landroid/widget/TextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .local v3, tempDrawables:[Landroid/graphics/drawable/Drawable;
    if-eqz v3, :cond_7

    const/4 v1, 0x0

    .local v1, i:I
    :goto_7
    array-length v2, v3

    if-ge v1, v2, :cond_7

    aget-object v2, v3, v1

    .local v2, tempDrawable:Landroid/graphics/drawable/Drawable;
    if-nez v2, :cond_d

    const-string v2, ""

    .local v2, tmpResString:Ljava/lang/String;
    :goto_8
    if-eqz v1, :cond_c

    const-string v4, ";"

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_c
    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .local v2, tempDrawable:Landroid/graphics/drawable/Drawable;
    :cond_d
    invoke-static {v2}, Landroid/view/PtfViewDebug;->getDrawableImageSource(Landroid/graphics/drawable/Drawable;)Ljava/lang/String;
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    move-result-object v2

    goto :goto_8

    .local v1, id:I
    .local v2, idStr:Ljava/lang/String;
    .local v3, resources:Landroid/content/res/Resources;
    :cond_e
    move-object v1, v2

    .end local v2           #idStr:Ljava/lang/String;
    .local v1, idStr:Ljava/lang/String;
    goto/16 :goto_2
.end method

.method private static getDrawableImageSource(Landroid/graphics/drawable/Drawable;)Ljava/lang/String;
    .locals 3
    .parameter "image"

    .prologue
    const/4 v1, 0x0

    .local v1, tempDrawable:Landroid/graphics/drawable/Drawable;
    const/4 v0, 0x0

    .local v0, imgSource:Ljava/lang/String;
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_0

    instance-of v2, v1, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v2, :cond_1

    check-cast v1, Landroid/graphics/drawable/BitmapDrawable;

    .end local v1           #tempDrawable:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v1}, Landroid/graphics/drawable/BitmapDrawable;->getImageSourceName()Ljava/lang/String;

    move-result-object v0

    :cond_0
    :goto_0
    return-object v0

    .restart local v1       #tempDrawable:Landroid/graphics/drawable/Drawable;
    :cond_1
    instance-of v2, v1, Landroid/graphics/drawable/NinePatchDrawable;

    if-eqz v2, :cond_0

    check-cast v1, Landroid/graphics/drawable/NinePatchDrawable;

    .end local v1           #tempDrawable:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v1}, Landroid/graphics/drawable/NinePatchDrawable;->getImageSourceName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
