.class public abstract Lcom/broadcom/bt/widget/IndexedDataArrayAdapter;
.super Landroid/widget/BaseAdapter;
.source "IndexedDataArrayAdapter.java"


# instance fields
.field protected mContext:Landroid/content/Context;

.field protected mDropDownResource:I

.field protected mFieldId:I

.field protected mInflater:Landroid/view/LayoutInflater;

.field protected mNotifyOnChange:Z

.field protected mObjects:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field protected mResource:I


# direct methods
.method public constructor <init>(Landroid/content/Context;IILjava/util/ArrayList;)V
    .locals 1
    .parameter "context"
    .parameter "resource"
    .parameter "textViewResourceId"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "II",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 102
    .local p4, objects:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 54
    const/4 v0, 0x0

    iput v0, p0, Lcom/broadcom/bt/widget/IndexedDataArrayAdapter;->mFieldId:I

    .line 60
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/broadcom/bt/widget/IndexedDataArrayAdapter;->mNotifyOnChange:Z

    .line 103
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/broadcom/bt/widget/IndexedDataArrayAdapter;->init(Landroid/content/Context;IILjava/util/ArrayList;)V

    .line 104
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILjava/util/ArrayList;)V
    .locals 2
    .parameter "context"
    .parameter "textViewResourceId"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p3, objects:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v1, 0x0

    .line 89
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 54
    iput v1, p0, Lcom/broadcom/bt/widget/IndexedDataArrayAdapter;->mFieldId:I

    .line 60
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/broadcom/bt/widget/IndexedDataArrayAdapter;->mNotifyOnChange:Z

    .line 90
    invoke-direct {p0, p1, p2, v1, p3}, Lcom/broadcom/bt/widget/IndexedDataArrayAdapter;->init(Landroid/content/Context;IILjava/util/ArrayList;)V

    .line 91
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/ArrayList;)V
    .locals 2
    .parameter "context"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, objects:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v1, 0x0

    .line 75
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 54
    iput v1, p0, Lcom/broadcom/bt/widget/IndexedDataArrayAdapter;->mFieldId:I

    .line 60
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/broadcom/bt/widget/IndexedDataArrayAdapter;->mNotifyOnChange:Z

    .line 76
    invoke-direct {p0, p1, v1, v1, p2}, Lcom/broadcom/bt/widget/IndexedDataArrayAdapter;->init(Landroid/content/Context;IILjava/util/ArrayList;)V

    .line 77
    return-void
.end method

.method private init(Landroid/content/Context;IILjava/util/ArrayList;)V
    .locals 1
    .parameter "context"
    .parameter "resource"
    .parameter "textViewResourceId"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "II",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 111
    .local p4, objects:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    iput-object p1, p0, Lcom/broadcom/bt/widget/IndexedDataArrayAdapter;->mContext:Landroid/content/Context;

    .line 112
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/broadcom/bt/widget/IndexedDataArrayAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 113
    iput p2, p0, Lcom/broadcom/bt/widget/IndexedDataArrayAdapter;->mDropDownResource:I

    iput p2, p0, Lcom/broadcom/bt/widget/IndexedDataArrayAdapter;->mResource:I

    .line 114
    iput-object p4, p0, Lcom/broadcom/bt/widget/IndexedDataArrayAdapter;->mObjects:Ljava/util/ArrayList;

    .line 115
    iput p3, p0, Lcom/broadcom/bt/widget/IndexedDataArrayAdapter;->mFieldId:I

    .line 116
    return-void
.end method


# virtual methods
.method public get()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 125
    iget-object v0, p0, Lcom/broadcom/bt/widget/IndexedDataArrayAdapter;->mObjects:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 168
    iget-object v0, p0, Lcom/broadcom/bt/widget/IndexedDataArrayAdapter;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 175
    iget-object v0, p0, Lcom/broadcom/bt/widget/IndexedDataArrayAdapter;->mObjects:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getDropDownView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 223
    invoke-virtual {p0, p1, p2, p3}, Lcom/broadcom/bt/widget/IndexedDataArrayAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 182
    iget-object v0, p0, Lcom/broadcom/bt/widget/IndexedDataArrayAdapter;->mObjects:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 200
    int-to-long v0, p1

    return-wide v0
.end method

.method public getPosition(I)I
    .locals 2
    .parameter "item"

    .prologue
    .line 193
    iget-object v0, p0, Lcom/broadcom/bt/widget/IndexedDataArrayAdapter;->mObjects:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public abstract getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end method

.method public notifyDataSetChanged()V
    .locals 1

    .prologue
    .line 137
    invoke-super {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 138
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/broadcom/bt/widget/IndexedDataArrayAdapter;->mNotifyOnChange:Z

    .line 139
    return-void
.end method

.method public set(Ljava/util/ArrayList;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 119
    .local p1, objects:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    iput-object p1, p0, Lcom/broadcom/bt/widget/IndexedDataArrayAdapter;->mObjects:Ljava/util/ArrayList;

    .line 120
    iget-boolean v0, p0, Lcom/broadcom/bt/widget/IndexedDataArrayAdapter;->mNotifyOnChange:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/broadcom/bt/widget/IndexedDataArrayAdapter;->notifyDataSetChanged()V

    .line 121
    :cond_0
    return-void
.end method

.method public setDropDownViewResource(I)V
    .locals 0
    .parameter "resource"

    .prologue
    .line 214
    iput p1, p0, Lcom/broadcom/bt/widget/IndexedDataArrayAdapter;->mDropDownResource:I

    .line 215
    return-void
.end method

.method public setNotifyOnChange(Z)V
    .locals 0
    .parameter "notifyOnChange"

    .prologue
    .line 156
    iput-boolean p1, p0, Lcom/broadcom/bt/widget/IndexedDataArrayAdapter;->mNotifyOnChange:Z

    .line 157
    return-void
.end method
