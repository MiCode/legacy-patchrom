.class public Landroid/sec/clipboard/data/list/ClipboardDataText;
.super Landroid/sec/clipboard/data/ClipboardData;
.source "ClipboardDataText.java"


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private mValue:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 57
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Landroid/sec/clipboard/data/ClipboardData;-><init>(I)V

    .line 54
    const-string v0, ""

    iput-object v0, p0, Landroid/sec/clipboard/data/list/ClipboardDataText;->mValue:Ljava/lang/String;

    .line 58
    return-void
.end method


# virtual methods
.method public GetText()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 124
    iget-object v0, p0, Landroid/sec/clipboard/data/list/ClipboardDataText;->mValue:Ljava/lang/String;

    return-object v0
.end method

.method public SetAlternateFormat(ILandroid/sec/clipboard/data/ClipboardData;)Z
    .locals 4
    .parameter "format"
    .parameter "altData"

    .prologue
    .line 72
    invoke-super {p0, p1, p2}, Landroid/sec/clipboard/data/ClipboardData;->SetAlternateFormat(ILandroid/sec/clipboard/data/ClipboardData;)Z

    move-result v0

    .line 73
    .local v0, Result:Z
    if-eqz v0, :cond_0

    iget-object v2, p0, Landroid/sec/clipboard/data/list/ClipboardDataText;->mValue:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x1

    if-ge v2, v3, :cond_1

    :cond_0
    move v1, v0

    .line 89
    .end local v0           #Result:Z
    .end local p2
    .local v1, Result:Z
    :goto_0
    return v1

    .line 75
    .end local v1           #Result:Z
    .restart local v0       #Result:Z
    .restart local p2
    :cond_1
    packed-switch p1, :pswitch_data_0

    .end local p2
    :goto_1
    move v1, v0

    .line 89
    .end local v0           #Result:Z
    .restart local v1       #Result:Z
    goto :goto_0

    .line 78
    .end local v1           #Result:Z
    .restart local v0       #Result:Z
    .restart local p2
    :pswitch_0
    check-cast p2, Landroid/sec/clipboard/data/list/ClipboardDataText;

    .end local p2
    iget-object v2, p0, Landroid/sec/clipboard/data/list/ClipboardDataText;->mValue:Ljava/lang/String;

    invoke-virtual {p2, v2}, Landroid/sec/clipboard/data/list/ClipboardDataText;->SetText(Ljava/lang/CharSequence;)Z

    move-result v0

    .line 79
    goto :goto_1

    .line 81
    .restart local p2
    :pswitch_1
    const/4 v0, 0x0

    .line 82
    goto :goto_1

    .line 85
    :pswitch_2
    check-cast p2, Landroid/sec/clipboard/data/list/ClipboardDataHTMLFragment;

    .end local p2
    iget-object v2, p0, Landroid/sec/clipboard/data/list/ClipboardDataText;->mValue:Ljava/lang/String;

    invoke-virtual {p2, v2}, Landroid/sec/clipboard/data/list/ClipboardDataHTMLFragment;->SetHTMLFragment(Ljava/lang/CharSequence;)Z

    move-result v0

    goto :goto_1

    .line 75
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public SetText(Ljava/lang/CharSequence;)Z
    .locals 1
    .parameter "text"

    .prologue
    .line 111
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 112
    :cond_0
    const/4 v0, 0x0

    .line 115
    :goto_0
    return v0

    .line 114
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/sec/clipboard/data/list/ClipboardDataText;->mValue:Ljava/lang/String;

    .line 115
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public clearData()V
    .locals 1

    .prologue
    .line 99
    const-string v0, ""

    iput-object v0, p0, Landroid/sec/clipboard/data/list/ClipboardDataText;->mValue:Ljava/lang/String;

    .line 100
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6
    .parameter "o"

    .prologue
    .line 133
    const-string v4, "ClipboardServiceEx"

    const-string/jumbo v5, "text equals"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    const/4 v1, 0x0

    .line 135
    .local v1, Result:Z
    invoke-super {p0, p1}, Landroid/sec/clipboard/data/ClipboardData;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    move v2, v1

    .line 146
    .end local v1           #Result:Z
    .local v2, Result:I
    :goto_0
    return v2

    .line 138
    .end local v2           #Result:I
    .restart local v1       #Result:Z
    :cond_0
    instance-of v4, p1, Landroid/sec/clipboard/data/list/ClipboardDataText;

    if-nez v4, :cond_1

    move v2, v1

    .line 139
    .restart local v2       #Result:I
    goto :goto_0

    .line 141
    .end local v2           #Result:I
    :cond_1
    move-object v0, p1

    check-cast v0, Landroid/sec/clipboard/data/list/ClipboardDataText;

    move-object v3, v0

    .line 143
    .local v3, trgData:Landroid/sec/clipboard/data/list/ClipboardDataText;
    iget-object v4, p0, Landroid/sec/clipboard/data/list/ClipboardDataText;->mValue:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3}, Landroid/sec/clipboard/data/list/ClipboardDataText;->GetText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v4

    if-nez v4, :cond_2

    const/4 v4, 0x1

    move v1, v4

    :goto_1
    move v2, v1

    .line 146
    .restart local v2       #Result:I
    goto :goto_0

    .line 143
    .end local v2           #Result:I
    :cond_2
    const/4 v4, 0x0

    move v1, v4

    goto :goto_1
.end method

.method protected readFormSource(Landroid/os/Parcel;)V
    .locals 1
    .parameter "source"

    .prologue
    .line 161
    const-class v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Landroid/sec/clipboard/data/list/ClipboardDataText;->mValue:Ljava/lang/String;

    .line 162
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    const/16 v3, 0x14

    .line 166
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "this Text class. Value is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/sec/clipboard/data/list/ClipboardDataText;->mValue:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, v3, :cond_0

    iget-object v1, p0, Landroid/sec/clipboard/data/list/ClipboardDataText;->mValue:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v1, p0, Landroid/sec/clipboard/data/list/ClipboardDataText;->mValue:Ljava/lang/String;

    goto :goto_0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 152
    const-string v0, "ClipboardServiceEx"

    const-string/jumbo v1, "text write to parcel"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    invoke-super {p0, p1, p2}, Landroid/sec/clipboard/data/ClipboardData;->writeToParcel(Landroid/os/Parcel;I)V

    .line 154
    iget-object v0, p0, Landroid/sec/clipboard/data/list/ClipboardDataText;->mValue:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 156
    return-void
.end method
